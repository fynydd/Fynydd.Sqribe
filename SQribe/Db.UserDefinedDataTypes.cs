// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Linq;
using System.Threading;
using Humanizer;
using SQribe.Halide.Core;

namespace SQribe;

public interface IUserDefinedDataTypes
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}

public class UserDefinedDataTypes : IUserDefinedDataTypes
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

    public UserDefinedDataTypes(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create user-defined data types.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",uddt,") && settings.Abort == false)
        {
            const string objectName = "user-defined data type";
            var prefix = objectName.Pluralize().Humanize(LetterCasing.Sentence);
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.UserDefinedDataTypesFilename, 
                (script, token) => {

                    using (var reader = new SqlReader(new SqlReaderConfiguration
                           {
                               ConnectionString = settings.DataSource,
                               CommandText = helpers.LoadScript("select-user-defined-data-types.sql")
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
                                    while (reader.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                    {
                                        totalCount++;

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
                                reader.Close();

                                using (reader.ExecuteReader())
                                {
                                    if (reader.HasRows)
                                    {
                                        while (reader.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                        {
                                            if (settings.Abort)
                                            {
                                                cts.Cancel();
                                                break;
                                            }

                                            currentCount++;

                                            var dataType = reader.SafeGetString("DATA_TYPE");
                                            var colSize = string.Empty;
                                            var bytes = reader.SafeGetString("max_length");

                                            if (Constants.SqlSizedTypes.Contains(dataType))
                                            {
                                                switch (dataType.ToLower())
                                                {
                                                    case "nvarchar":
                                                    case "varbinary":
                                                    case "varchar":
                                                        if (bytes == "-1")
                                                        {
                                                            bytes = "max";
                                                        }

                                                        else
                                                        {
                                                            if (dataType.ToLower().StartsWith("n"))
                                                            {
                                                                var sbytes = reader.SafeGetInt("max_length");
                                                                    
                                                                if (sbytes > 0)
                                                                {
                                                                    sbytes = sbytes / 2;
                                                                    bytes = sbytes.ToString();
                                                                }
                                                            }
                                                        }
                                                        colSize = @"(" + bytes + @")";
                                                        break;
                                                    case "datetime2":
                                                    case "datetimeoffset":
                                                    case "time":
                                                        colSize = @"(" + reader.SafeGetString("scale") + @")";
                                                        break;
                                                    case "decimal":
                                                    case "numeric":
                                                        colSize = @"(" + reader.SafeGetString("precision") + @"," + reader.SafeGetString("scale") + @")";
                                                        break;
                                                    default: 
                                                        colSize = @"(" + bytes + @")";
                                                        break; 
                                                }
                                            }

                                            script += Constants.LineFeed + "-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed;
                                            script += "CREATE TYPE [" + reader.SafeGetString("SCHEMA_NAME") + "].[" + reader.SafeGetString("name") + "] FROM " + dataType + colSize + (reader.SafeGetBoolean("is_nullable") == false ? " NOT NULL" : " NULL") + Constants.LineFeed;
                                            script += @"GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed;

                                            if (string.IsNullOrWhiteSpace(reader.SafeGetString("DEFAULT_NAME")) == false)
                                            {
                                                // CREATE DEFAULT IntDefault AS 420
                                                var defaultName = reader.SafeGetString("DEFAULT_NAME");

                                                script += helpers.LoadTemplate("bind-default-to-column.sql")
                                                    .Replace("DEFAULT_NAME", defaultName)
                                                    .Replace("SCHEMA_NAME.TABLE_NAME", reader.SafeGetString("SCHEMA_NAME"))
                                                    .Replace("COLUMN_NAME", reader.SafeGetString("name"));
                                            }

                                            helpers.ShowPercentageComplete(token, currentCount, totalCount, startDate, ref lastTimeUpdate, prefix + " ");
                                        }
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
            ",uddt,", 
            settings.ScriptPath + settings.UserDefinedDataTypesFilename, 
            "user-defined data type", 
            "drops" + Path.DirectorySeparatorChar + "drop-user-defined-data-types.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",uddt,", 
            "user-defined data type", 
            settings.ScriptPath + settings.UserDefinedDataTypesFilename
        );
    }
}