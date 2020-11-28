// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Linq;
using System.Threading;
using Fynydd.Halide;

namespace SQribe
{
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

        public ISettings settings
        {
            get
            {
                return _settings;
            }
        }

        public IOutput output
        {
            get
            {
                return _output;
            }
        }

        public IHelpers helpers
        {
            get
            {
                return _helpers;
            }
        }

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
                var objectName = "user-defined table type";
                var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";
                int currentCount = 0;
                int totalCount = 0;

                helpers.GenerateCreateScript (
                    objectName, 
                    settings.OutputPath + settings.UserDefinedTableTypesFilename, 
                    (script, token) => {

                        using (var tables = new DataReader(helpers.LoadScript("select-user-defined-table-names.sql"), settings.DataSource, useRewind: true))
                        {
                            if (settings.Abort == false)
                            {
                                var cts = new CancellationTokenSource();
                                var task = tables.ExecuteAsync(cts.Token);

                                while (task.IsCompleted == false)
                                {
                                    if (settings.Abort)
                                    {
                                        cts.Cancel();
                                    }

                                    System.Threading.Thread.Sleep(Constants.SleepNumber);
                                }

                                if (tables.IsReady)
                                {
                                    if (tables.HasRows)
                                    {
                                        while (tables.Read() && settings.Abort == false)
                                        {
                                            totalCount++;
                                        }
                                    }
                                }
                            }

                            if (settings.Abort == false)
                            {
                                if (tables.Rewind())
                                {
                                    if (tables.HasRows)
                                    {
                                        while (tables.Read() && settings.Abort == false)
                                        {
                                            var primaryKeys = "";
                                            var keyType = "";
                                            var keySpecs = "";

                                            currentCount++;

                                            script += helpers.LoadTemplate("print-message.sql").Replace("{MESSAGE}", "Creating user-defined table [" + tables["SCHEMA_NAME"] + "].[" + tables["TABLE_NAME"] + "]");
                                            script += Constants.LineFeed + "-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed;
                                            script += @"CREATE TYPE [" + tables["SCHEMA_NAME"] + @"].[" + tables["TABLE_NAME"] + @"] AS TABLE (" + Constants.LineFeed;

                                            using (var columns = new DataReader(helpers.LoadScript("select-user-defined-table-column-schema.sql").Replace("{TABLE_NAME}", tables["TABLE_NAME"]).Replace("{SCHEMA_NAME}", tables["SCHEMA_NAME"]), settings.DataSource))
                                            {
                                                if (settings.Abort == false)
                                                {
                                                    var cts2 = new CancellationTokenSource();
                                                    var task2 = columns.ExecuteAsync(cts2.Token);

                                                    while (task2.IsCompleted == false)
                                                    {
                                                        if (settings.Abort)
                                                        {
                                                            cts2.Cancel();
                                                        }

                                                        System.Threading.Thread.Sleep(Constants.SleepNumber);
                                                    }

                                                    if (columns.IsReady)
                                                    {
                                                        if (columns.HasRows)
                                                        {
                                                            if (columns.HasRows)
                                                            {
                                                                var fieldCounter = 1;
                                                                var rowCount = columns.ReadTable().Rows.Count;
                                
                                                                while (columns.Read())
                                                                {
                                                                    if (settings.Abort == false)
                                                                    {
                                                                        var dataType = columns["DATA_TYPE"];
                                                                        var identity = "";
                                                                        var colSize = "";

                                                                        if (columns.GetBoolean("IS_COMPUTED") == true && columns["COMPUTED_VALUE"] != "")
                                                                        {
                                                                            script += @"    [" + columns["COLUMN_NAME"] + "] AS " + columns["COMPUTED_VALUE"];
                                                                            script += (fieldCounter++ < rowCount || primaryKeys != "" ? "," + Constants.LineFeed : Constants.LineFeed);
                                                                        }

                                                                        else
                                                                        {
                                                                            if (columns["DOMAIN_SCHEMA"] == "sys")
                                                                            {
                                                                                if (Constants.SqlSizedTypes.Contains(dataType))
                                                                                {
                                                                                    var bytes = columns["CHARACTER_MAXIMUM_LENGTH"];

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
                                                                                            colSize = @"(" + columns["DATETIME_PRECISION"] + @")";
                                                                                            break;
                                                                                        case "decimal":
                                                                                        case "numeric":
                                                                                            colSize = @"(" + columns["NUMERIC_PRECISION"] + @"," + columns["NUMERIC_SCALE"] + @")";
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
                                                                                        if (string.IsNullOrWhiteSpace(columns["XML_SCHEMA_NAME"]) == false && string.IsNullOrWhiteSpace(columns["XML_SCHEMA_COLLECTION_NAME"]) == false)
                                                                                        {
                                                                                            dataType = "[" + dataType + "](CONTENT [" + columns["XML_SCHEMA_NAME"] + "].[" + columns["XML_SCHEMA_COLLECTION_NAME"] + "])";
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
                                                                                dataType = "[" + columns["DOMAIN_SCHEMA"] + "]";
                                                                                colSize = ".[" + columns["DOMAIN_NAME"] + "]";
                                                                            }

                                                                            if (columns.GetBoolean("IS_PRIMARY_KEY") == true)
                                                                            {
                                                                                if (primaryKeys != "")
                                                                                {
                                                                                    primaryKeys += ", ";
                                                                                }

                                                                                primaryKeys += "[" + columns["COLUMN_NAME"] + "] " + (columns.GetBoolean("IS_DESCENDING_KEY") == true ? "DESC" : "");
                                                                                keyType = columns["KEY_TYPE"];

                                                                                keySpecs += "IGNORE_DUP_KEY = " + (columns.GetBoolean("ignore_dup_key") == true ? "ON" : "OFF");
                                                                            }

                                                                            if (string.IsNullOrWhiteSpace(columns["IDENTITY_COLUMN_NAME"]) == false)
                                                                            {
                                                                                identity = @" IDENTITY(" + columns["SEED_VALUE"] + "," + columns["INCREMENT_VALUE"] + @")";
                                                                            }

                                                                            script += @"    " + columns["COLUMN_NAME"] + @" " + dataType + colSize + identity + (columns.GetBoolean("IS_NULLABLE") == true ? " NULL" : " NOT NULL") + (string.IsNullOrWhiteSpace(columns["COLUMN_DEFAULT"]) == false ? " DEFAULT " + columns["COLUMN_DEFAULT"] : "");
                                                                            script += (fieldCounter++ < rowCount || primaryKeys != "" ? "," + Constants.LineFeed : Constants.LineFeed);
                                                                        }
                                                                    }
                                                                }

                                                                if (primaryKeys != "")
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
                                            }

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
                ",udtt,", 
                settings.ScriptPath + settings.UserDefinedTableTypesFilename, 
                "user-defined table type", 
                "drops" + Path.DirectorySeparatorChar.ToString() + "drop-user-defined-table-types.sql"
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
}
