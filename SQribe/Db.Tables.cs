// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using Fynydd.Halide;

namespace SQribe
{
    public interface ITables
	{
        ISettings settings { get; }

        IOutput output { get; }

        IHelpers helpers { get; }

        void GenerateCreateScript(ref int counter, ref int total, long groupToken);

        void DropAll(long token);

        void Restore(long token);

        void RestoreComputedColumns(long token);

        void RestoreDefaultValues(long token);
    }

	public class Tables : ITables
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

        public Tables(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
        {
            _settings = singletonSettings;
            _output = singletonOutput;
            _helpers = singletonHelpers;
        }

		/// <summary>
		/// Generate script to create tables.
		/// </summary>
        public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
        {
            var log = "### Started table schema script creation" + Environment.NewLine;

            if (settings.SqlObjects.Contains(",table,") && settings.Abort == false)
            {
                int processedCount = 0;
                string script = "";
                string scriptCC = "";
                string scriptDV = "";
                var objectTypeName = "table definition";
                int tableCount = 0;
                var schemaInitScript = helpers.LoadTemplate("init-schemas.sql");
                var outputFilename = settings.TablesFilename;
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";
                long token = -1;

                while (token == -1)
                {
                    token = output.ClaimThreadToken();

                    System.Threading.Thread.Sleep(Constants.SleepNumber);
                }

                try
                {
                    var createTemplate = helpers.LoadTemplate("table-create.sql");
                    var prefix = objectTypeName.PluralizeNoun(2).ToUpperFirstCharacter();

                    File.AppendAllText(settings.OutputPath + outputFilename, schemaInitScript, Encoding.UTF8);
                    File.AppendAllText(settings.OutputPath + settings.TablesComputedColumnsFilename, schemaInitScript, Encoding.UTF8);
                    File.AppendAllText(settings.OutputPath + settings.TableDefaultValuesFilename, schemaInitScript, Encoding.UTF8);

                    using (var tables = new DataReader(helpers.LoadScript("select-table-names.sql"), settings.DataSource, useRewind: true))
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
                                        tableCount++;
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
                                        var generatedDefaultValues = "";
                                        var generated = createTemplate;
                                        var generatedColumns = "";
                                        var generatedCC = createTemplate;
                                        var generatedComputedColumns = "";
                                        var needsAlter = false;
                                        var columnTemplate = createTemplate.GetStringRow(" NULL,", Constants.LineFeed);

                                        processedCount++;

                                        generated = generated.Replace("SCHEMA_NAME", tables["SCHEMA_NAME"]);
                                        generated = generated.Replace("TABLE_NAME", tables["TABLE_NAME"]);

                                        needsAlter = false;

                                        log += Environment.NewLine + "#### [" + tables["SCHEMA_NAME"] + "].[" + tables["TABLE_NAME"] + "]" + Environment.NewLine;

                                        using (var columns = new DataReader(helpers.LoadScript("select-table-column-schema.sql").Replace("{TABLE_NAME}", tables["TABLE_NAME"]).Replace("{SCHEMA_NAME}", tables["SCHEMA_NAME"]), settings.DataSource))
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
                                                        var fieldCounter = 1;
                                                        var rowCount = columns.ReadTable().Rows.Count;

                                                        log += "- Column count: " + rowCount + Environment.NewLine;

                                                        while (columns.Read() && settings.Abort == false)
                                                        {
                                                            #region Process columns

                                                            var generatedCol = columnTemplate;
                                                            var generatedComputedCol = columnTemplate;
                                                            var dataType = columns["DATA_TYPE"];
                                                            var colSize = "";

                                                            if (columns.GetBoolean("IS_COMPUTED") && columns["COMPUTED_VALUE"] != "")
                                                            {
                                                                needsAlter = true;

                                                                // Generate placeholder computed column for initial creation
                                                                generatedCol = generatedCol.Left(generatedCol.IndexOf("[COLUMN_NAME]"));
                                                                generatedCol += "[" + columns["COLUMN_NAME"] + "] AS ('')," + Constants.LineFeed;

                                                                // Generate real computed column for later drop and create
                                                                generatedComputedCol = generatedComputedCol.Left(generatedComputedCol.IndexOf("[COLUMN_NAME]"));
                                                                generatedComputedCol += "[" + columns["COLUMN_NAME"] + "] AS " + columns["COMPUTED_VALUE"] + (columns.GetBoolean("IS_PERSISTED") ? " PERSISTED" : "") + "," + Constants.LineFeed;

                                                                if (fieldCounter++ >= rowCount)
                                                                {
                                                                    generatedCol = generatedCol.Replace("," + Constants.LineFeed, Constants.LineFeed);
                                                                    generatedComputedCol = generatedComputedCol.Replace("," + Constants.LineFeed, Constants.LineFeed);
                                                                }
                                                            }

                                                            else
                                                            {
                                                                generatedCol = generatedCol.Replace("COLUMN_NAME", columns["COLUMN_NAME"]);

                                                                if (string.IsNullOrWhiteSpace(columns["DOMAIN_SCHEMA"]) == true)
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

                                                                    generatedCol = generatedCol.Replace("[DATA_TYPE]", dataType);
                                                                    generatedCol = generatedCol.Replace("(max)", colSize);
                                                                    
                                                                    if (string.IsNullOrWhiteSpace(columns["COLLATION_NAME"]) == false)
                                                                    {
                                                                        generatedCol = generatedCol.Replace("SQL_Latin1_General_CP1_CI_AS", columns["COLLATION_NAME"]);
                                                                    }

                                                                    else
                                                                    {
                                                                        generatedCol = generatedCol.Replace(" COLLATE SQL_Latin1_General_CP1_CI_AS", "");
                                                                    }
                                                                }

                                                                else
                                                                {
                                                                    // If a UDDT, hijack dataType and colSize to render out the UDDT as [dbo].[name]
                                                                    generatedCol = generatedCol.Replace("DATA_TYPE", columns["DOMAIN_SCHEMA"]);
                                                                    generatedCol = generatedCol.Replace("(max)", ".[" + columns["DOMAIN_NAME"] + "]");
                                                                    generatedCol = generatedCol.Replace(" COLLATE SQL_Latin1_General_CP1_CI_AS", "");
                                                                }

                                                                if (string.IsNullOrWhiteSpace(columns["IDENTITY_COLUMN_NAME"]) == false)
                                                                {
                                                                    generatedCol = generatedCol.Replace("1,1", columns["SEED_VALUE"] + "," + columns["INCREMENT_VALUE"]);
                                                                }

                                                                else
                                                                {
                                                                    generatedCol = generatedCol.Replace(" IDENTITY(1,1)", "");
                                                                }

                                                                generatedCol = generatedCol.Replace(" NULL,", columns.GetBoolean("IS_ROWGUIDCOL") ? " ROWGUIDCOL NULL," : " NULL,");
                                                                generatedCol = generatedCol.Replace(" NULL,", (columns.GetBoolean("IS_NULLABLE") == true ? " NULL," : " NOT NULL,"));

                                                                if (fieldCounter++ >= rowCount)
                                                                {
                                                                    generatedCol = generatedCol.Replace("," + Constants.LineFeed, Constants.LineFeed);
                                                                }

                                                                generatedComputedCol = generatedCol;
                                                            }

                                                            generatedColumns += generatedCol;
                                                            generatedComputedColumns += generatedComputedCol;

                                                            #endregion

                                                            #region Process column default values

                                                            if (string.IsNullOrWhiteSpace(columns["COLUMN_DEFAULT"]) == false)
                                                            {
                                                                if (columns["COLUMN_DEFAULT"].ToUpper().StartsWith("CREATE DEFAULT"))
                                                                {
                                                                    var defaultName = columns["COLUMN_DEFAULT"].Split("CREATE DEFAULT ")[1];
                                                                    defaultName = defaultName.Split(" AS ")[0];

                                                                    if (string.IsNullOrWhiteSpace(defaultName) == false)
                                                                    {
                                                                        generatedDefaultValues += helpers.LoadTemplate("bind-default-to-column.sql")
                                                                            .Replace("DEFAULT_NAME", defaultName)
                                                                            .Replace("SCHEMA_NAME", tables["SCHEMA_NAME"])
                                                                            .Replace("TABLE_NAME", tables["TABLE_NAME"])
                                                                            .Replace("COLUMN_NAME", columns["COLUMN_NAME"]);
                                                                    }
                                                                }

                                                                else
                                                                {
                                                                    generatedDefaultValues += helpers.LoadTemplate("alter-table-column-default-value.sql")
                                                                        .Replace("TABLE_SCHEMA", columns["TABLE_SCHEMA"])
                                                                        .Replace("TABLE_NAME", columns["TABLE_NAME"])
                                                                        .Replace("COLUMN_NAME", columns["COLUMN_NAME"])
                                                                        .Replace("COLUMN_DEFAULT", columns["COLUMN_DEFAULT"]);
                                                                }
                                                            }

                                                            log += "- [" + columns["COLUMN_NAME"] + "]" + dataType + colSize + Environment.NewLine;

                                                            #endregion
                                                        }

                                                        if (tables.GetBoolean("TABLE_IS_MEMORY_OPTIMIZED") == true)
                                                        {
                                                            generated = generated.Replace(") ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] -- SQRIBE/END", 
                                                                ") WITH ( MEMORY_OPTIMIZED = ON, DURABILITY = " + tables["TABLE_DURABILITY_DESC"] + " )");
                                                        }

                                                        else
                                                        {
                                                            if (1 == 0)
                                                            {
                                                                // FUTURE USE
                                                            }

                                                            else
                                                            {
                                                                generated = generated.Replace(" TEXTIMAGE_ON [PRIMARY] -- SQRIBE/END", "");
                                                            }
                                                        }

                                                        if (needsAlter == true)
                                                        {
                                                            generatedCC = generated.Replace(columnTemplate, generatedComputedColumns);

                                                            generatedCC = Constants.LineFeed + "DROP TABLE [" + tables["SCHEMA_NAME"] + "].[" + tables["TABLE_NAME"] + "];" + Constants.LineFeed
                                                                + "GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed
                                                                + generatedCC; 
                                                            
                                                            scriptCC += generatedCC;
                                                        }

                                                        generated = generated.Replace(columnTemplate, generatedColumns);
                                                        script += generated;

                                                        if (string.IsNullOrWhiteSpace(generatedDefaultValues) == false)
                                                        {
                                                            scriptDV += generatedDefaultValues;
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        helpers.ShowPercentageComplete(token, tableCount, processedCount, startDate, ref lastTimeUpdate, prefix + " ");

                                        log += "- Result: DONE" + Environment.NewLine;
                                    }
                                }
                            }
                        }

                        if (settings.Abort == false)
                        {
                            if (processedCount > 0)
                            {
                                File.AppendAllText(settings.OutputPath + outputFilename, script, Encoding.UTF8);

                                if (scriptCC != "")
                                {
                                    File.AppendAllText(settings.OutputPath + settings.TablesComputedColumnsFilename, scriptCC, Encoding.UTF8);
                                }

                                if (scriptDV != "")
                                {
                                    File.AppendAllText(settings.OutputPath + settings.TableDefaultValuesFilename, scriptDV, Encoding.UTF8);
                                }
                            }

                            else
                            {
                                script = "";
                            }
            
                            output.Write("idle", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);
                        }
                    }

                    if (settings.Abort == true)
                    {
                        output.Write("ABORTED", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                        log += "#### Result (tables): ABORTED" + Environment.NewLine;
                    }
                }

                catch (Exception e)
                {
                    output.Write(e.Message, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                    settings.Abort = true;

                    log += "#### Table Schema Exception: " + e.Message + Environment.NewLine;
                }

                output.UnclaimThreadToken(token);
            }

            Interlocked.Decrement(ref counter);

            if (settings.Abort == false)
            {
                output.Write(counter.ToString("#,##0") + " left", groupToken, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);
            }

            else
            {
                output.Write("ABORTED", groupToken, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                log += "#### Result (tables): ABORTED" + Environment.NewLine;
            }

            settings.Log(log, false);

            System.Threading.Thread.Sleep(Constants.SleepNumber);
        }

        public void DropAll(long token)
        {
            helpers.DropObject(
                token, 
                ",table,", 
                settings.ScriptPath + settings.TablesFilename, 
                "table definition", 
                "drops" + Path.DirectorySeparatorChar.ToString() + "drop-tables.sql"
                );
        }

        public void Restore(long token)
        {
            helpers.RestoreObject(
                token, 
                ",table,", 
                "table", 
                settings.ScriptPath + settings.TablesFilename
                );
        }

        public void RestoreComputedColumns(long token)
        {
            helpers.RestoreObject(
                token, 
                ",table,", 
                "table computed column", 
                settings.ScriptPath + settings.TablesComputedColumnsFilename
                );
        }

        public void RestoreDefaultValues(long token)
        {
            helpers.RestoreObject(
                token, 
                ",table,", 
                "table column default value", 
                settings.ScriptPath + settings.TableDefaultValuesFilename
                );
        }
    }
}
