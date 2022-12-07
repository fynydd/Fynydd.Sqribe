// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using SQribe.Halide.Core;

namespace SQribe;

public interface ITableForeignKeys
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}


public class TableForeignKeys : ITableForeignKeys
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

    public TableForeignKeys(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create table foreign keys.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",fkc,") && settings.Abort == false)
        {
            const string objectName = "foreign key constraint";
            var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.TableForeignKeysFilename, 
                (script, token) => {

                    using (var reader = new DataReader(helpers.LoadScript("generate-alter-table-foreign-key-constraints.sql"), settings.DataSource, useRewind: true))
                    {
                        if (settings.Abort == false)
                        {
                            var cts = new CancellationTokenSource();
                            var task = reader.ExecuteAsync(cts.Token);

                            while (task.IsCompleted == false)
                            {
                                if (settings.Abort)
                                {
                                    cts.Cancel();
                                }

                                Thread.Sleep(Constants.SleepNumber);
                            }

                            if (reader.IsReady)
                            {
                                if (reader.HasRows)
                                {
                                    do
                                    {

                                        while (reader.Read() && settings.Abort == false)
                                        {
                                            totalCount++;
                                        }

                                        Thread.Sleep(Constants.SleepNumber);

                                    } while (reader.NextResult() && settings.Abort == false);
                                }
                            }
                        }

                        if (settings.Abort == false)
                        {
                            if (reader.Rewind())
                            {
                                if (reader.HasRows)
                                {
                                    do
                                    {
                                        while (reader.Read() && settings.Abort == false)
                                        {
                                            var val = reader[0];
                                            script += val;

                                            currentCount++;

                                            helpers.ShowPercentageComplete(token, currentCount, totalCount, startDate, ref lastTimeUpdate, prefix + " ");
                                        }

                                        Thread.Sleep(Constants.SleepNumber);

                                    } while (reader.NextResult() && settings.Abort == false);
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
            ",fkc,", 
            settings.ScriptPath + settings.TableForeignKeysFilename, 
            "table foreign key constraint", 
            "drops" + Path.DirectorySeparatorChar + "drop-foreign-keys.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",fkc,", 
            "table foreign key constraint", 
            settings.ScriptPath + settings.TableForeignKeysFilename
        );
    }
}