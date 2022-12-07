// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using SQribe.Halide.Core;

namespace SQribe;

public interface IStoredProcedures
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}


public class StoredProcedures : IStoredProcedures
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

    public StoredProcedures(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create stored procedures.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",usp,") && settings.Abort == false)
        {
            const string objectName = "stored procedure";
            var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.StoredProceduresFilename, 
                (script, token) => {

                    using (var reader = new DataReader(helpers.LoadScript("generate-stored-procedures.sql"), settings.DataSource, useRewind: true))
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
                                    while (reader.Read() && settings.Abort == false)
                                    {
                                        totalCount++;
                                    }
                                }
                            }
                        }

                        if (settings.Abort == false)
                        {
                            if (reader.Rewind())
                            {
                                if (reader.HasRows)
                                {
                                    while (reader.Read() && settings.Abort == false)
                                    {
                                        var val = reader[0];
                                        
                                        script += val
                                            .Replace(Constants.LineFeed + Constants.LineFeed + "CREATE PROCEDURE", Constants.LineFeed + "CREATE PROCEDURE")
                                            .Replace(Constants.LineFeed + Constants.LineFeed + "END" + Constants.LineFeed, Constants.LineFeed + "END" + Constants.LineFeed)
                                            .Replace(Constants.LineFeed + Constants.LineFeed + "GO -- SQRIBE/GO", Constants.LineFeed + "GO -- SQRIBE/GO");

                                        currentCount++;

                                        helpers.ShowPercentageComplete(token, currentCount, totalCount, startDate, ref lastTimeUpdate, prefix + " ");
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
            ",usp,", 
            settings.ScriptPath + settings.StoredProceduresFilename, 
            "stored procedure", 
            "drops" + Path.DirectorySeparatorChar + "drop-stored-procedures.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",usp,", 
            "stored procedure", 
            settings.ScriptPath + settings.StoredProceduresFilename
        );
    }
}