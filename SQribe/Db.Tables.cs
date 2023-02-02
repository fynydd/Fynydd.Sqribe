// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using Humanizer;
using SQribe.Halide.Core;

namespace SQribe;

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

    public ISettings settings => _settings;

    public IOutput output => _output;

    public IHelpers helpers => _helpers;

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
            var processedCount = 0;
            var script = string.Empty;
            var scriptCC = string.Empty;
            var scriptDV = string.Empty;
            const string objectTypeName = "table definition";
            var tableCount = 0;
            var schemaInitScript = helpers.LoadTemplate("init-schemas.sql");
            var outputFilename = settings.TablesFilename;
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            long token = -1;

            while (token == -1)
            {
                token = output.ClaimThreadToken();

                Thread.Sleep(Constants.SleepNumber);
            }

            try
            {
                var createTemplate = helpers.LoadTemplate("table-create.sql");
                var prefix = objectTypeName.Pluralize().Humanize(LetterCasing.Sentence);

                File.AppendAllText(settings.OutputPath + outputFilename, schemaInitScript, Encoding.UTF8);
                File.AppendAllText(settings.OutputPath + settings.TablesComputedColumnsFilename, schemaInitScript, Encoding.UTF8);
                File.AppendAllText(settings.OutputPath + settings.TableDefaultValuesFilename, schemaInitScript, Encoding.UTF8);

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

                            #region Experimental SMO generation  
                            
                            // Add nuget dependency:
                            // <PackageReference Include="Microsoft.SqlServer.SqlManagementObjects" Version="170.8.0" />
                            
                            // var builder = new SqlConnectionStringBuilder(settings.DataSource)
                            // {
                            //     TrustServerCertificate = true
                            // };
                            //
                            // helpers.ShowPercentageComplete(token, tableCount, 0, startDate, ref lastTimeUpdate, prefix + " ");
                            //
                            // var sqlConnection = new SqlConnection(builder.ToString());
                            // var serverConnection = new ServerConnection(sqlConnection); 
                            // var server = new Server(serverConnection);
                            // var scripter = new Scripter(server)
                            // {
                            //     Options = new ScriptingOptions
                            //     {
                            //         ExtendedProperties = false,
                            //         WithDependencies = false,
                            //         AllowSystemObjects = false
                            //     }
                            // };
                            //
                            // var tableList = new List<Table>();
                            //
                            // foreach (Table table in server.Databases[settings.DatabaseName].Tables)
                            // {
                            //     tableList.Clear();
                            //     tableList.Add(table);
                            //
                            //     var tableScripts = Constants.LineFeed + $"-- SQRIBE/OBJ;{settings.Hash}" + Constants.LineFeed + 
                            //         string.Join(Constants.LineFeed + $"GO -- SQRIBE/OBJ;{settings.Hash}" + Constants.LineFeed + Constants.LineFeed + $"-- SQRIBE/OBJ;{settings.Hash}" + Constants.LineFeed, scripter.EnumScript(tableList.ToArray())
                            //         .ToList()
                            //         //.Where(s => s.StartsWith("CREATE", StringComparison.InvariantCultureIgnoreCase))
                            //         .Select(s => s.ToString())) + Constants.LineFeed + $"GO -- SQRIBE/OBJ;{settings.Hash}" + Constants.LineFeed + Constants.LineFeed;
                            //
                            //     script += tableScripts;
                            //
                            //     processedCount++;
                            //     
                            //     helpers.ShowPercentageComplete(token, tableCount, processedCount, startDate, ref lastTimeUpdate, prefix + " ");
                            // }
                            //
                            // helpers.ShowPercentageComplete(token, tableCount, processedCount, startDate, ref lastTimeUpdate, prefix + " ");
                            //
                            // log += "- Result: DONE" + Environment.NewLine;
                            
                            #endregion
                            
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

                                        var generatedDefaultValues = string.Empty;
                                        var generated = createTemplate;
                                        var generatedColumns = string.Empty;
                                        var generatedCC = createTemplate;
                                        var generatedComputedColumns = string.Empty;
                                        var needsAlter = false;
                                        var columnTemplate = createTemplate.GetStringRow(" NULL,", Constants.LineFeed);

                                        processedCount++;

                                        generated = generated.Replace("SCHEMA_NAME", tables.SafeGetString("SCHEMA_NAME"));
                                        generated = generated.Replace("TABLE_NAME", tables.SafeGetString("TABLE_NAME"));

                                        needsAlter = false;

                                        log += Environment.NewLine + "#### [" + tables.SafeGetString("SCHEMA_NAME") + "].[" + tables.SafeGetString("TABLE_NAME") + "]" + Environment.NewLine;

                                        using (var columns = new SqlReader(new SqlReaderConfiguration
                                               {
                                                   ConnectionString = settings.DataSource,
                                                   CommandText = helpers.LoadScript("select-table-column-schema.sql").Replace("{TABLE_NAME}", tables.SafeGetString("TABLE_NAME")).Replace("{SCHEMA_NAME}", tables.SafeGetString("SCHEMA_NAME"))
                                               }))
                                        {
                                            if (settings.Abort == false)
                                            {
                                                var task2 = columns.ExecuteReaderAsync(cts.Token);
        
                                                while (task2.IsCompleted == false)
                                                {
                                                    if (settings.Abort)
                                                    {
                                                        cts.Cancel();
                                                    }

                                                    Thread.Sleep(Constants.SleepNumber);
                                                }

                                                if (settings.Abort == false)
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
                                                            var dataType = columns.SafeGetString("DATA_TYPE");
                                                            var colSize = string.Empty;

                                                            if (columns.SafeGetBoolean("IS_COMPUTED") && columns.SafeGetString("COMPUTED_VALUE") != string.Empty)
                                                            {
                                                                needsAlter = true;

                                                                // Generate placeholder computed column for initial creation
                                                                generatedCol = generatedCol.Left(generatedCol.IndexOf("[COLUMN_NAME]", StringComparison.Ordinal));
                                                                generatedCol += "[" + columns.SafeGetString("COLUMN_NAME") + "] AS ('')," + Constants.LineFeed;

                                                                // Generate real computed column for later drop and create
                                                                generatedComputedCol = generatedComputedCol.Left(generatedComputedCol.IndexOf("[COLUMN_NAME]", StringComparison.Ordinal));
                                                                generatedComputedCol += "[" + columns.SafeGetString("COLUMN_NAME") + "] AS " + columns.SafeGetString("COMPUTED_VALUE") + (columns.SafeGetBoolean("IS_PERSISTED") ? " PERSISTED" : string.Empty) + "," + Constants.LineFeed;

                                                                if (fieldCounter++ >= rowCount)
                                                                {
                                                                    generatedCol = generatedCol.Replace("," + Constants.LineFeed, Constants.LineFeed);
                                                                    generatedComputedCol = generatedComputedCol.Replace("," + Constants.LineFeed, Constants.LineFeed);
                                                                }
                                                            }

                                                            else
                                                            {
                                                                generatedCol = generatedCol.Replace("COLUMN_NAME", columns.SafeGetString("COLUMN_NAME"));

                                                                if (string.IsNullOrWhiteSpace(columns.SafeGetString("DOMAIN_SCHEMA")))
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

                                                                    generatedCol = generatedCol.Replace("[DATA_TYPE]", dataType);
                                                                    generatedCol = generatedCol.Replace("(max)", colSize);
                                                                        
                                                                    if (string.IsNullOrWhiteSpace(columns.SafeGetString("COLLATION_NAME")) == false)
                                                                    {
                                                                        generatedCol = generatedCol.Replace("SQL_Latin1_General_CP1_CI_AS", columns.SafeGetString("COLLATION_NAME"));
                                                                    }

                                                                    else
                                                                    {
                                                                        generatedCol = generatedCol.Replace(" COLLATE SQL_Latin1_General_CP1_CI_AS", string.Empty);
                                                                    }
                                                                }

                                                                else
                                                                {
                                                                    // If a UDDT, hijack dataType and colSize to render out the UDDT as [dbo].[name]
                                                                    generatedCol = generatedCol.Replace("DATA_TYPE", columns.SafeGetString("DOMAIN_SCHEMA"));
                                                                    generatedCol = generatedCol.Replace("(max)", ".[" + columns.SafeGetString("DOMAIN_NAME") + "]");
                                                                    generatedCol = generatedCol.Replace(" COLLATE SQL_Latin1_General_CP1_CI_AS", string.Empty);
                                                                }

                                                                if (string.IsNullOrWhiteSpace(columns.SafeGetString("IDENTITY_COLUMN_NAME")) == false)
                                                                {
                                                                    generatedCol = generatedCol.Replace("1,1", columns.SafeGetString("seed_value") + "," + columns.SafeGetString("increment_value"));
                                                                }

                                                                else
                                                                {
                                                                    generatedCol = generatedCol.Replace(" IDENTITY(1,1)", string.Empty);
                                                                }

                                                                generatedCol = generatedCol.Replace(" NULL,", columns.SafeGetBoolean("IS_ROWGUIDCOL") ? " ROWGUIDCOL NULL," : " NULL,");
                                                                generatedCol = generatedCol.Replace(" NULL,", (columns.SafeGetBoolean("IS_NULLABLE") ? " NULL," : " NOT NULL,"));

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

                                                            if (string.IsNullOrWhiteSpace(columns.SafeGetString("COLUMN_DEFAULT")) == false)
                                                            {
                                                                if (columns.SafeGetString("COLUMN_DEFAULT").ToUpper().StartsWith("CREATE DEFAULT"))
                                                                {
                                                                    var defaultName = columns.SafeGetString("COLUMN_DEFAULT").Split("CREATE DEFAULT ")[1];
                                                                    defaultName = defaultName.Split(" AS ")[0];

                                                                    if (string.IsNullOrWhiteSpace(defaultName) == false)
                                                                    {
                                                                        generatedDefaultValues += helpers.LoadTemplate("bind-default-to-column.sql")
                                                                            .Replace("DEFAULT_NAME", defaultName)
                                                                            .Replace("SCHEMA_NAME", tables.SafeGetString("SCHEMA_NAME"))
                                                                            .Replace("TABLE_NAME", tables.SafeGetString("TABLE_NAME"))
                                                                            .Replace("COLUMN_NAME", columns.SafeGetString("COLUMN_NAME"));
                                                                    }
                                                                }

                                                                else
                                                                {
                                                                    generatedDefaultValues += helpers.LoadTemplate("alter-table-column-default-value.sql")
                                                                        .Replace("TABLE_SCHEMA", columns.SafeGetString("TABLE_SCHEMA"))
                                                                        .Replace("TABLE_NAME", columns.SafeGetString("TABLE_NAME"))
                                                                        .Replace("COLUMN_NAME", columns.SafeGetString("COLUMN_NAME"))
                                                                        .Replace("COLUMN_DEFAULT", columns.SafeGetString("COLUMN_DEFAULT"));
                                                                }
                                                            }

                                                            log += "- [" + columns.SafeGetString("COLUMN_NAME") + "]" + dataType + colSize + Environment.NewLine;

                                                            #endregion
                                                        }

                                                        if (tables.SafeGetBoolean("TABLE_IS_MEMORY_OPTIMIZED"))
                                                        {
                                                            generated = generated.Replace(") ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] -- SQRIBE/END", 
                                                                ") WITH ( MEMORY_OPTIMIZED = ON, DURABILITY = " + tables.SafeGetString("TABLE_DURABILITY_DESC") + " )");
                                                        }

                                                        else
                                                        {
                                                            generated = generated.Replace(" TEXTIMAGE_ON [PRIMARY] -- SQRIBE/END", string.Empty);
                                                        }

                                                        if (needsAlter)
                                                        {
                                                            generatedCC = generated.Replace(columnTemplate, generatedComputedColumns);

                                                            generatedCC = Constants.LineFeed + "DROP TABLE [" + tables.SafeGetString("SCHEMA_NAME") + "].[" + tables.SafeGetString("TABLE_NAME") + "];" + Constants.LineFeed
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

                                if (scriptCC != string.Empty)
                                {
                                    File.AppendAllText(settings.OutputPath + settings.TablesComputedColumnsFilename, scriptCC, Encoding.UTF8);
                                }

                                if (scriptDV != string.Empty)
                                {
                                    File.AppendAllText(settings.OutputPath + settings.TableDefaultValuesFilename, scriptDV, Encoding.UTF8);
                                }
                            }

                            else
                            {
                                script = string.Empty;
                            }
                    
                            output.Write("idle", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);
                        }                        
                    }
                }

                if (settings.Abort)
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

        Thread.Sleep(Constants.SleepNumber);
    }

    public void DropAll(long token)
    {
        helpers.DropObject(
            token, 
            ",table,", 
            settings.ScriptPath + settings.TablesFilename, 
            "table definition", 
            "drops" + Path.DirectorySeparatorChar + "drop-tables.sql"
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