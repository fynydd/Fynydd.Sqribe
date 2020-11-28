// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Linq;
using System.Threading;
using Fynydd.Halide;

namespace SQribe
{
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
                var objectName = "user-defined data type";
                var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";
                int currentCount = 0;
                int totalCount = 0;

                helpers.GenerateCreateScript (
                    objectName, 
                    settings.OutputPath + settings.UserDefinedDataTypesFilename, 
                    (script, token) => {

                        using (var reader = new DataReader(helpers.LoadScript("select-user-defined-data-types.sql"), settings.DataSource, useRewind: true))
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

                                    System.Threading.Thread.Sleep(Constants.SleepNumber);
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
                                            currentCount++;

                                            var dataType = reader["DATA_TYPE"];
                                            var colSize = "";
                                            var bytes = reader["max_length"];

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
                                                                var sbytes = reader.GetValue<int>("max_length");
                                                                
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
                                                        colSize = @"(" + reader["scale"] + @")";
                                                        break;
                                                    case "decimal":
                                                    case "numeric":
                                                        colSize = @"(" + reader["precision"] + @"," + reader["scale"] + @")";
                                                        break;
                                                    default: 
                                                        colSize = @"(" + bytes + @")";
                                                        break; 
                                                }
                                            }

                                            script += Constants.LineFeed + "-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed;
                                            script += "CREATE TYPE [" + reader["SCHEMA_NAME"] + "].[" + reader["name"] + "] FROM " + dataType + colSize + (reader.GetBoolean("is_nullable") == false ? " NOT NULL" : " NULL") + Constants.LineFeed;
                                            script += @"GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed;

                                            if (string.IsNullOrWhiteSpace(reader["DEFAULT_NAME"]) == false)
                                            {
                                                // CREATE DEFAULT IntDefault AS 420
                                                var defaultName = reader["DEFAULT_NAME"];

                                                script += helpers.LoadTemplate("bind-default-to-column.sql")
                                                    .Replace("DEFAULT_NAME", defaultName)
                                                    .Replace("SCHEMA_NAME.TABLE_NAME", reader["SCHEMA_NAME"])
                                                    .Replace("COLUMN_NAME", reader["name"]);
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
                ",uddt,", 
                settings.ScriptPath + settings.UserDefinedDataTypesFilename, 
                "user-defined data type", 
                "drops" + Path.DirectorySeparatorChar.ToString() + "drop-user-defined-data-types.sql"
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
}
