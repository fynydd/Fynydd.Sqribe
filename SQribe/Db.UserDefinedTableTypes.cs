// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Linq;
using System.Threading;
using Humanizer;
using SQribe.Halide.Core;

namespace SQribe;

public interface IUserDefinedTableTypes
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}

public class UserDefinedTableTypes : IUserDefinedTableTypes
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

    public UserDefinedTableTypes(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create user-defined table types.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",udtt,") && settings.Abort == false)
        {
            const string objectName = "user-defined table type";
            var prefix = objectName.Pluralize().Humanize(LetterCasing.Sentence);
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.UserDefinedTableTypesFilename, 
                (script, token) => {

                    using (var tables = new SqlReader(new SqlReaderConfiguration
                           {
                               ConnectionString = settings.DataSource,
                               CommandText = helpers.LoadScript("select-user-defined-table-names.sql")
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
                                tables.Close();

                                using (tables.ExecuteReader())
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

                                            var primaryKeys = string.Empty;
                                            var keyType = string.Empty;
                                            var keySpecs = string.Empty;

                                            currentCount++;

                                            script += helpers.LoadTemplate("print-message.sql").Replace("{MESSAGE}", "Creating user-defined table [" + tables.SafeGetString("SCHEMA_NAME") + "].[" + tables.SafeGetString("TABLE_NAME") + "]");
                                            script += Constants.LineFeed + "-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed;
                                            script += @"CREATE TYPE [" + tables.SafeGetString("SCHEMA_NAME") + @"].[" + tables.SafeGetString("TABLE_NAME") + @"] AS TABLE (" + Constants.LineFeed;

                                            using (var columns = new SqlReader(new SqlReaderConfiguration
                                                   {
                                                       ConnectionString = settings.DataSource,
                                                       CommandText = helpers.LoadScript("select-user-defined-table-column-schema.sql").Replace("{TABLE_NAME}", tables.SafeGetString("TABLE_NAME")).Replace("{SCHEMA_NAME}", tables.SafeGetString("SCHEMA_NAME"))
                                                   }))
                                            {
                                                if (settings.Abort == false)
                                                {
                                                    var cts2 = new CancellationTokenSource();
                                                    var task2 = tables.ExecuteReaderAsync(cts2.Token);
        
                                                    while (task2.IsCompleted == false)
                                                    {
                                                        if (settings.Abort)
                                                        {
                                                            cts.Cancel();
                                                            cts2.Cancel();
                                                        }

                                                        Thread.Sleep(Constants.SleepNumber);
                                                    }

                                                    if (settings.Abort == false)
                                                    {
                                                        if (columns.HasRows)
                                                        {
                                                            var fieldCounter = 1;
                                                            var rowCount = columns.ReadTable().Rows.Count;
                                
                                                            while (columns.Read())
                                                            {
                                                                if (settings.Abort)
                                                                {
                                                                    cts.Cancel();
                                                                    cts2.Cancel();
                                                                }
                                                                
                                                                if (settings.Abort == false)
                                                                {
                                                                    var dataType = columns.SafeGetString("DATA_TYPE");
                                                                    var identity = string.Empty;
                                                                    var colSize = string.Empty;

                                                                    if (columns.SafeGetBoolean("IS_COMPUTED") && columns.SafeGetString("COMPUTED_VALUE") != string.Empty)
                                                                    {
                                                                        script += @"    [" + columns.SafeGetString("COLUMN_NAME") + "] AS " + columns.SafeGetString("COMPUTED_VALUE");
                                                                        script += (fieldCounter++ < rowCount || primaryKeys != string.Empty ? "," + Constants.LineFeed : Constants.LineFeed);
                                                                    }

                                                                    else
                                                                    {
                                                                        if (columns.SafeGetString("DOMAIN_SCHEMA") == "sys")
                                                                        {
                                                                            if (Constants.SqlSizedTypes.Contains(dataType))
                                                                            {
                                                                                var bytes = columns.SafeGetString("CHARACTER_MAXIMUM_LENGTH");

                                                                                switch (dataType.ToLower())
                                                                                {
                                                                                    case "nvarchar":
                                                                                    case "varbinary":
                                                                                    case "varchar":
                                                                                        if (bytes == "-1")
                                                                                        {
                                                                                            bytes = "max";
                                                                                        }
                                                                                        colSize = @"(" + bytes + @")";
                                                                                        break;
                                                                                    case "datetime2":
                                                                                    case "datetimeoffset":
                                                                                    case "time":
                                                                                        colSize = @"(" + columns.SafeGetString("DATETIME_PRECISION") + @")";
                                                                                        break;
                                                                                    case "decimal":
                                                                                    case "numeric":
                                                                                        colSize = @"(" + columns.SafeGetString("NUMERIC_PRECISION") + @"," + columns.SafeGetString("NUMERIC_SCALE") + @")";
                                                                                        break;
                                                                                    default: 
                                                                                        colSize = @"(" + bytes + @")";
                                                                                        break; 
                                                                                }

                                                                                dataType = "[" + dataType + "]";
                                                                            }

                                                                            else
                                                                            {
                                                                                if (dataType.ToLower() == "xml")
                                                                                {
                                                                                    if (string.IsNullOrWhiteSpace(columns.SafeGetString("XML_SCHEMA_NAME")) == false && string.IsNullOrWhiteSpace(columns.SafeGetString("XML_SCHEMA_COLLECTION_NAME")) == false)
                                                                                    {
                                                                                        dataType = "[" + dataType + "](CONTENT [" + columns.SafeGetString("XML_SCHEMA_NAME") + "].[" + columns.SafeGetString("XML_SCHEMA_COLLECTION_NAME") + "])";
                                                                                    }
                                                                                }

                                                                                else
                                                                                {
                                                                                    dataType = "[" + dataType + "]";
                                                                                }
                                                                            }
                                                                        }

                                                                        else
                                                                        {
                                                                            // If a UDDT, hijack dataType and colSize to render out the UDDT as [dbo].[name]
                                                                            dataType = "[" + columns.SafeGetString("DOMAIN_SCHEMA") + "]";
                                                                            colSize = ".[" + columns.SafeGetString("DOMAIN_NAME") + "]";
                                                                        }

                                                                        if (columns.SafeGetBoolean("IS_PRIMARY_KEY"))
                                                                        {
                                                                            if (primaryKeys != string.Empty)
                                                                            {
                                                                                primaryKeys += ", ";
                                                                            }

                                                                            primaryKeys += "[" + columns.SafeGetString("COLUMN_NAME") + "] " + (columns.SafeGetBoolean("IS_DESCENDING_KEY") ? "DESC" : string.Empty);
                                                                            keyType = columns.SafeGetString("KEY_TYPE");

                                                                            keySpecs += "IGNORE_DUP_KEY = " + (columns.SafeGetBoolean("ignore_dup_key") ? "ON" : "OFF");
                                                                        }

                                                                        if (string.IsNullOrWhiteSpace(columns.SafeGetString("IDENTITY_COLUMN_NAME")) == false)
                                                                        {
                                                                            identity = @" IDENTITY(" + columns.SafeGetString("seed_value") + "," + columns.SafeGetString("increment_value") + @")";
                                                                        }

                                                                        script += @"    " + columns.SafeGetString("COLUMN_NAME") + @" " + dataType + colSize + identity + (columns.SafeGetBoolean("IS_NULLABLE") ? " NULL" : " NOT NULL") + (string.IsNullOrWhiteSpace(columns.SafeGetString("COLUMN_DEFAULT")) == false ? " DEFAULT " + columns.SafeGetString("COLUMN_DEFAULT") : string.Empty);
                                                                        script += (fieldCounter++ < rowCount || primaryKeys != string.Empty ? "," + Constants.LineFeed : Constants.LineFeed);
                                                                    }
                                                                }
                                                            }

                                                            if (primaryKeys != string.Empty)
                                                            {
                                                                script += "    PRIMARY KEY " + keyType + " (" + Constants.LineFeed;
                                                                script += "        " + primaryKeys + Constants.LineFeed;
                                                                script += "    ) WITH (" + keySpecs + ")" + Constants.LineFeed;
                                                            }

                                                            script += ")" + Constants.LineFeed;
                                                            script += "GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed;
                                                        }
                                                    }
                                                }
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
            ",udtt,", 
            settings.ScriptPath + settings.UserDefinedTableTypesFilename, 
            "user-defined table type", 
            "drops" + Path.DirectorySeparatorChar + "drop-user-defined-table-types.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",udtt,", 
            "user-defined table type", 
            settings.ScriptPath + settings.UserDefinedTableTypesFilename
        );
    }
}