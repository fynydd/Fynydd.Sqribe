// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using Humanizer;
using SQribe.Halide.Core;

namespace SQribe;

public interface ITableCheckConstraints
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}


public class TableCheckConstraints : ITableCheckConstraints
{
    #region Public properties

    public ISettings settings => _settings;

    public IOutput output => _output;

    public IHelpers helpers => _helpers;

    #endregion

    #region Private properties

    private readonly ISettings _settings;
    private readonly IOutput _output;
    private readonly IHelpers _helpers;

    #endregion

    public TableCheckConstraints(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create table check constraints.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",cc,") && settings.Abort == false)
        {
            const string objectName = "table check constraint";
            var prefix = objectName.Pluralize().Humanize(LetterCasing.Sentence);
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.TableCheckConstraintsFilename, 
                (script, token) => {
                        
                    var processedCount = 0;
                    var currentCount = 0;
                    var tableCount = 0;
                    var constraintTemplate = helpers.LoadTemplate("table-check-constraint.sql");

                    using (var tables = new SqlReader(new SqlReaderConfiguration
                           {
                               ConnectionString = settings.DataSource,
                               CommandText = helpers.LoadScript("select-table-names.sql")
                           }))
                    {
                        if (settings.Abort == false)
                        {
                            var cts = new CancellationTokenSource();
                            var task = tables.ExecuteReaderAsync(cts.Token);
        
                            while (task.IsCompleted == false)
                            {
                                if (settings.Abort)
                                {
                                    cts.Cancel();
                                }

                                Thread.Sleep(Constants.SleepNumber);
                            }

                            if (settings.Abort == false)
                            {
                                if (tables.HasRows)
                                {
                                    while (tables.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                    {
                                        tableCount++;

                                        if (settings.Abort)
                                        {
                                            cts.Cancel();
                                            break;
                                        }
                                    }
                                }
                            }

                            if (settings.Abort == false)
                            {
                                tables.Close();

                                using (tables.ExecuteReader(cts.Token))
                                {
                                    if (tables.HasRows)
                                    {
                                        while (tables.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                        {
                                            if (settings.Abort)
                                            {
                                                cts.Cancel();
                                                break;
                                            }
                                            
                                            using (var checks = new SqlReader(new SqlReaderConfiguration
                                                   {
                                                       ConnectionString = settings.DataSource,
                                                       CommandText = helpers.LoadScript("select-table-check-constraints.sql").Replace("{SCHEMA_NAME}", tables.SafeGetString("SCHEMA_NAME")).Replace("{TABLE_NAME}", tables.SafeGetString("TABLE_NAME"))
                                                   }))
                                            {
                                                if (settings.Abort == false)
                                                {
                                                    var task2 = checks.ExecuteReaderAsync(cts.Token);
        
                                                    while (task2.IsCompleted == false)
                                                    {
                                                        if (settings.Abort)
                                                        {
                                                            cts.Cancel();
                                                        }

                                                        Thread.Sleep(Constants.SleepNumber);
                                                    }

                                                    if (checks.HasRows)
                                                    {
                                                        while (checks.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                                        {
                                                            if (settings.Abort)
                                                            {
                                                                cts.Cancel();
                                                                break;
                                                            }

                                                            var generatedConstraint = constraintTemplate;

                                                            generatedConstraint = generatedConstraint.Replace("SCHEMA_NAME", tables.SafeGetString("SCHEMA_NAME"));
                                                            generatedConstraint = generatedConstraint.Replace("TABLE_NAME", tables.SafeGetString("TABLE_NAME"));
                                                            generatedConstraint = generatedConstraint.Replace("CONSTRAINT_NAME", checks.SafeGetString("CONSTRAINT_NAME"));
                                                            generatedConstraint = generatedConstraint.Replace("[COLUMN] IS NOT NULL", checks.SafeGetString("CONSTRAINT"));

                                                            script += generatedConstraint;

                                                            processedCount++;
                                                        }
                                                    }
                                                }
                                            }
                                        
                                            if (settings.Abort == false)
                                            {
                                                currentCount++;
                                                helpers.ShowPercentageComplete(token, tableCount, currentCount, startDate, ref lastTimeUpdate, prefix + " ");
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                        
                    return Tuple.Create(script, processedCount);
                },
                ref counter, ref total, groupToken
            );
        }
    }

    public void DropAll(long token)
    {
        helpers.DropObject(
            token, 
            ",cc,", 
            settings.ScriptPath + settings.TableCheckConstraintsFilename, 
            "check constraint", 
            "drops" + Path.DirectorySeparatorChar + "drop-check-constraints.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",cc,", 
            "table check constraint", 
            settings.ScriptPath + settings.TableCheckConstraintsFilename
        );
    }
}