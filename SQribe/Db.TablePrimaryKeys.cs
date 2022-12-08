// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using Humanizer;
using SQribe.Halide.Core;

namespace SQribe;

public interface ITablePrimaryKeys
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}


public class TablePrimaryKeys : ITablePrimaryKeys
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

    public TablePrimaryKeys(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create table primary key constraints.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",pkc,") && settings.Abort == false)
        {
            const string objectName = "table primary key constraint";
            var prefix = objectName.Pluralize().Humanize(LetterCasing.Sentence);
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.TablePrimaryKeysFilename, 
                (script, token) => {

                    using (var reader = new SqlReader(new SqlReaderConfiguration
                           {
                               ConnectionString = settings.DataSource,
                               CommandText = helpers.LoadScript("generate-table-primary-keys.sql")
                           }))
                    {
                        if (settings.Abort == false)
                        {
                            var cts = new CancellationTokenSource();
                            var task = reader.ExecuteReaderAsync(cts.Token);
        
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
                                if (reader.HasRows)
                                {
                                    do
                                    {
                                        while (reader.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                        {
                                            totalCount++;
                                            
                                            if (settings.Abort)
                                            {
                                                cts.Cancel();
                                                break;
                                            }
                                        }

                                        Thread.Sleep(Constants.SleepNumber);

                                    } while (reader.SqlDataReader!.NextResult() && settings.Abort == false);
                                }
                            }

                            if (settings.Abort == false)
                            {
                                reader.Close();

                                using (reader.ExecuteReader())
                                {
                                    if (reader.HasRows)
                                    {
                                        do
                                        {
                                            while (reader.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                            {
                                                if (settings.Abort)
                                                {
                                                    cts.Cancel();
                                                    break;
                                                }

                                                script += Constants.LineFeed + reader.SafeGetString(0);

                                                currentCount++;

                                                helpers.ShowPercentageComplete(token, currentCount, totalCount, startDate, ref lastTimeUpdate, prefix + " ");
                                            }

                                            Thread.Sleep(Constants.SleepNumber);

                                        } while (reader.SqlDataReader!.NextResult() && settings.Abort == false);
                                    }
                                }
                            }
                        }
                    }
                    
                    return Tuple.Create(script, currentCount);
                },
                ref counter, ref total, groupToken
            );
        }
    }

    public void DropAll(long token)
    {
        helpers.DropObject(
            token, 
            ",table,", 
            settings.ScriptPath + settings.TablesFilename, 
            "table primary key", 
            "drops" + Path.DirectorySeparatorChar + "drop-primary-keys.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",pkc,", 
            "table primary key constraint", 
            settings.ScriptPath + settings.TablePrimaryKeysFilename
        );
    }
}