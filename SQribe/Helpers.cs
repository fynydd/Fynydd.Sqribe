// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Fynydd.Halide;

namespace SQribe
{
    /// <summary>
    /// Global helpers singleton
    /// </summary>
	public interface IHelpers
	{
        #region Public properties

        ISettings settings { get; }
        IOutput output { get; }

        #endregion

        #region File system helpers

        bool VerifyBackupFileExists(string filePath, string errorText, long token);

		string LoadScript(string filename);

		string LoadTemplate(string filename);

		bool PurgeSchemaFile(string filename);

		bool PurgeSchemaFiles();

		bool PurgeDataFiles();

        #endregion

        #region Output formatting

        void ShowPercentageComplete(long token, decimal totalCount, decimal currentCount, DateTime startDate, ref string lastTime, string prefix = "");

        void ShowElapsedTime(long token, DateTime startDate, ref string lastValue, string prefix = "", string suffix = "");

        string GetElapsedTime(DateTime startDate);

        #endregion

        #region SQL and script helpers

        bool OpenExec(SqlConnection connection, string statement, long token, bool showProgress = false, string prefix = "", string objectFragment = "");

		bool Exec(string statement, long token, bool showProgress = false, string prefix = "", bool ignoreErrors = false);

		void RunDropScript(string script, string activityText, bool showSuccess = true, string objectFragment = "");

		void RunRestoreScriptFile(string scriptPath, string singularName, long token, string objectFragment = "");

        void DropObject(long token, string objectFragment, string schemaScriptPath, string objectName, string dropScriptPath);

        void RestoreObject(long token, string objectFragment, string objectName, string schemaScriptPath);

        void GenerateCreateScript(string objectName, string schemaScriptPath, Func<string, long, Tuple<string, int>> block, ref int counter, ref int total, long groupToken);

        #endregion
    }

	public class Helpers : IHelpers
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

        #endregion

        #region Private properties

        private readonly ISettings _settings;
        private readonly IOutput _output;

        #endregion

        public Helpers(ISettings singletonSettings, IOutput singletonOutput)
        {
            _settings = singletonSettings;
            _output = singletonOutput;
        }

        #region File system helpers

		/// <summary>
		/// Verify that a backup script file exists. Output failure message.
		/// </summary>
		/// <param name="filePath">Relative file path to verify</param>
		/// <param name="errorText">Text to appear before ", file not found." in warning messages</param>
		/// <param name="token">Token for the existing output context</param>
		/// <returns>True and no output if file exists, false and output (plus abort) if not</returns>
        public bool VerifyBackupFileExists(string filePath, string errorText, long token)
        {
            bool result = false;

            try
            {
                if (File.Exists(filePath) == true || File.Exists(filePath + ".zip") == true)
                {
                    result = true;
                }

                else
                {
                    var msg = errorText + ", script file not found.";

                    output.Write(Constants.GetIndentationArrow(), token);
                    output.WriteLine(msg, token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                    settings.Warnings = true;
                    settings.WarningMessage += "• " + msg + Constants.LineFeed;
                }
            }

            catch (Exception e)
            {
                output.Write(Constants.GetIndentationArrow(), token);
                output.WriteLine("ERROR.", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                output.WriteLine(e.Message, token);

                settings.Abort = true;

                settings.Log("Helpers.VerifyBackupFileExists() Exception: " + e.Message);
            }

            return result;
        }

		/// <summary>
		/// Read a SQL script file template from the scripts folder.
		/// </summary>
		/// <param name="filename">File name to load (e.g. job-init.sql)</param>
		/// <returns>Script file contents processed to use Constants.LineFeed line endings</returns>
		public string LoadScript(string filename)
		{
            var script = LoadFile("scripts" + Path.DirectorySeparatorChar.ToString() + filename.GetFilename());

            if (script.Contains("-- SQRIBE/GO;") == false)
            {
                script = script.Replace("-- SQRIBE/GO", "-- SQRIBE/GO;" + settings.Hash);
            }

            if (script.Contains("-- SQRIBE/OBJ;") == false)
            {
                script = script.Replace("-- SQRIBE/OBJ", "-- SQRIBE/OBJ;" + settings.Hash);
            }

            return script;
		}

		/// <summary>
		/// Read a SQL template file from the templates folder.
		/// </summary>
		/// <param name="filename">File name to load (e.g. insert.sql)</param>
		/// <returns>Template file contents processed to use Constants.LineFeed line endings</returns>
		public string LoadTemplate(string filename)
		{
            var script = LoadFile("templates" + Path.DirectorySeparatorChar.ToString() + filename.GetFilename());

            if (script.Contains("-- SQRIBE/GO;") == false)
            {
                script = script.Replace("-- SQRIBE/GO", "-- SQRIBE/GO;" + settings.Hash);
            }

            if (script.Contains("-- SQRIBE/OBJ;") == false)
            {
                script = script.Replace("-- SQRIBE/OBJ", "-- SQRIBE/OBJ;" + settings.Hash);
            }

            return script;
		}

		/// <summary>
		/// Read a text file from the scripts folder and standardize line endings.
		/// </summary>
		/// <param name="filename">File name to load (e.g. insert.sql)</param>
		/// <returns>Template file contents processed to use Constants.LineFeed line endings</returns>
		private string LoadFile(string filename)
		{
            var result = "";

            try
            {
                if (File.Exists(settings.GetAppPath() + filename) == false)
                {
                    if (File.Exists(settings.GetAppPath() + filename.ToLower().Replace(".sql", "-" + settings.CurrentSqlMajorVersion + ".sql")))
                    {
                        filename = filename.ToLower().Replace(".sql", "-" + settings.CurrentSqlMajorVersion + ".sql");
                    }
                }

                result = File.ReadAllText(settings.GetAppPath() + filename);

                if (result.Length > 0)
                {
                    result = result.StandardizeLineEndings(Constants.LineFeed);
                }
            }

            catch (Exception e)
            {
                var _token = output.GetNewToken();
                output.WriteLine("LoadFile Error [1]: " + e.Message, _token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                settings.Abort = true;

                settings.Log("Helpers.LoadFile() Exception: " + e.Message);
            }

			return result;
		}

		public bool PurgeSchemaFile(string filename)
		{
            var result = true;
            var elapsed = 0;

            try
            {
                while (File.Exists(settings.OutputPath + filename) && elapsed < 6)
                {
                    File.Delete(settings.OutputPath + filename);

                    if (File.Exists(settings.OutputPath + filename))
                    {
                        System.Threading.Thread.Sleep(new TimeSpan(0, 0, 1));
                    }

                    elapsed++;
                }

                if (File.Exists(settings.OutputPath + filename))
                {
                    result = false;
                }
            }

            catch (Exception e)
            {
                settings.Log("Helpers.PurgeSchemaFile() Exception: " + e.Message);
            }

            return result;
        }

		public bool PurgeSchemaFiles()
		{
            var result = true;

            try
            {
                if (PurgeSchemaFile(settings.PropsFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.FulltextCatalogsFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.DefaultTypesFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.SchemasFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TablesFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TablePrimaryKeysFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TableDefaultValuesFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TablesComputedColumnsFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TableIndexesFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TableForeignKeysFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TableCheckConstraintsFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.UserDefinedDataTypesFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.UserDefinedTableTypesFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.UserDefinedFunctionsFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.XmlSchemaCollectionsFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.ViewsFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.StoredProceduresFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.TriggersFilename) == false)
                {
                    result = false;
                }

                if (PurgeSchemaFile(settings.ExtendedPropertiesFilename) == false)
                {
                    result = false;
                }
            }

            catch (Exception e)
            {
                settings.Log("Helpers.PurgeSchemaFiles() Exception: " + e.Message);
            }

            return result;
		}

		public bool PurgeDataFiles()
		{
            var result = true;
            var suffix = ".sql.zip";

            try
            {
                var files = Directory.EnumerateFiles(settings.OutputPath, settings.DataFilePrefix + "*" + suffix);

                if (files == null || (files != null && files.Count() < 1))
                {
                    suffix = ".sql";

                    files = Directory.EnumerateFiles(settings.OutputPath, settings.DataFilePrefix + "*" + suffix);
                }

                if (files != null && files.Count() > 0)
                {
                    foreach (string file in files)
                    {
                        var elapsed = 0;

                        if (result)
                        {
                            while (File.Exists(file) && elapsed < 6)
                            {
                                File.Delete(file);

                                if (File.Exists(file))
                                {
                                    System.Threading.Thread.Sleep(new TimeSpan(0, 0, 1));
                                }

                                elapsed++;
                            }

                            if (File.Exists(file))
                            {
                                var token = output.ClaimThreadToken();

                                result = false;
                                settings.Log("Helpers.PurgeDataFiles() Exception: Could not delete " + file);
                                output.Write("Could not delete " + file, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                                settings.Abort = true;
                            }
                        }
                    }
                }
            }

            catch (Exception e)
            {
                settings.Log("Helpers.PurgeDataFiles() Exception: " + e.Message);
            }

            return result;
		}

        #endregion

        #region Output formatting

        /// <summary> 
        /// Show a percentage completion as "0%" + Constants.Ellipsis in buffered output, based on passed data.
        /// </summary> 
		/// <param name="token">Token for the existing output context</param>
		/// <param name="totalCount">Total progress number for the task (e.g. number of items to create)</param>
		/// <param name="currentCount">Current progress number for the task (e.g. number of items created so far)</param>
		/// <param name="startDate">DateTime when activity began</param>
		/// <param name="lastTime">Last time value generated (prevents rapid succession of output)</param>
		/// <param name="prefix">Text to display before the progress</param>
        public void ShowPercentageComplete(long token, decimal totalCount, decimal currentCount, DateTime startDate, ref string lastTime, string prefix = "")
        {
            if (settings.Abort == false)
            {
                try
                {
                    var time = GetElapsedTime(startDate);

                    if (string.IsNullOrWhiteSpace(lastTime))
                    {
                        lastTime = "0s";
                    }

                    if (time != lastTime)
                    {
                        lastTime = time;

                        int progress = (int)((currentCount/totalCount) * 100);

                        if (progress > 100)
                        {
                            progress = 100;
                        }

                        output.Write(prefix + String.Format("{0:##0}", progress) + "% (" + time + ")", token, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);
                    }
                }

                catch (Exception e)
                {
                    settings.Log("Helpers.ShowPercetnageComplete() Exception: " + e.Message);
                }
            }
        }

        /// <summary> 
        /// Show the elapsed time for a task.
        /// </summary> 
		/// <param name="token">Token for the existing output context</param>
		/// <param name="startDate">DateTime when activity began</param>
		/// <param name="lastValue">Last time value generated (prevents rapid succession of output)</param>
		/// <param name="prefix">Text to display before the timer</param>
		/// <param name="suffix">Text to display after the timer</param>
        public void ShowElapsedTime(long token, DateTime startDate, ref string lastValue, string prefix = "", string suffix = "")
        {
            if (settings.Abort == false)
            {
                try
                {
                    var elapsed = GetElapsedTime(startDate);

                    if (elapsed != lastValue)
                    {
                        lastValue = elapsed;
                        output.Write(prefix + elapsed + suffix, token, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);
                    }
                }

                catch (Exception e)
                {
                    settings.Log("Helpers.ShowElapsedTime() Exception: " + e.Message);
                }
            }
        }

        /// <summary> 
        /// Get the elapsed time for a task.
        /// </summary> 
		/// <param name="startDate">DateTime when activity began</param>
        public string GetElapsedTime(DateTime startDate)
        {
            var result = "";
            
            try
            {
                var stopWatch = new StopWatch(startDate);

                stopWatch.Stop();
                result = stopWatch.FormatTimer();
            }

            catch (Exception e)
            {
                settings.Log("Helpers.GetElapsedTime() Exception: " + e.Message);
            }

            return result;
        }

        #endregion

        #region SQL and script helpers

		/// <summary>
		/// Shared code for creating individual database objects.
		/// </summary>
        /// <param name="objectName">Singular name for the objects being dropped (e.g. "schema")</param>
        /// <param name="schemaScriptPath">Path and filename for the final output schema script (e.g. settings.ScriptPath + settings.SchemasFilename)</param>
        /// <param name="block">Function block to execute, which returns a tuple with processedCount and the modified script (e.g. "() => { return Tuple.Create(script, counter, token); }")</param>
        /// <param name="counter">Integer for remaining item count in overall batch</param>
        /// <param name="total">Integer for total item count in overall batch</param>
        /// <param name="groupztoken">Output token for the grouup header, so remaining and total can be updated on-screen</param>
        public void GenerateCreateScript(string objectName, string schemaScriptPath, Func<string, long, Tuple<string, int>> block, ref int counter, ref int total, long groupToken)
        {
            var script = "";
            int processedCount = 0;
            var schemaInitScript = LoadTemplate("init-schemas.sql");
            long token = -1;

            var log = "### Started schema script creation for " + objectName.PluralizeNoun(2).ToUpperFirstCharacter() + Environment.NewLine;

            while (token == -1)
            {
                token = output.ClaimThreadToken();
            }

            try
            {
                output.Write(objectName.PluralizeNoun(2).ToUpperFirstCharacter(), token, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

                File.AppendAllText(schemaScriptPath, schemaInitScript, Encoding.UTF8);

                script += LoadTemplate("print-message.sql").Replace("{MESSAGE}", "CREATE " + objectName.PluralizeNoun(2));

                var results = block(script, token);

                script = results.Item1;
                processedCount = results.Item2;

                if (processedCount == 0)
                {
                    // No objects were found; script nothing
                    script = "";
                }

                if (settings.Abort == false)
                {
                    if (processedCount > 0)
                    {
                        File.AppendAllText(schemaScriptPath, script, Encoding.UTF8);
                    }

                    else
                    {
                        script = "";
                    }
                }
            }

            catch (Exception e)
            {
                output.Write(e.Message, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                settings.Abort = true;

                log += "- Helpers.GenerateCreateScript() Exception (" + objectName.PluralizeNoun(2).ToUpperFirstCharacter() + "): " + e.Message + Environment.NewLine;
            }

            Interlocked.Decrement(ref counter);
            Interlocked.Increment(ref total);

            output.Write(counter + " left", groupToken, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

            if (settings.Abort == false)
            {
                output.Write("idle", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);

                log += "- " + objectName.PluralizeNoun(2).ToUpperFirstCharacter() + " result: DONE" + Environment.NewLine;
            }

            else
            {
                output.Write("ABORTED", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                log += "- " + objectName.PluralizeNoun(2).ToUpperFirstCharacter() + " result: ABORTED" + Environment.NewLine;
            }

            settings.Log(log, false);

            output.UnclaimThreadToken(token);

            System.Threading.Thread.Sleep(Constants.SleepNumber);
        }

		/// <summary>
		/// Shared code for dropping individual database objects.
		/// </summary>
		/// <param name="token">Token for the existing output context</param>
        /// <param name="objectFragment">What comma-wrapped database object fragment to enforce (e.g. ",sc,")</param>
        /// <param name="schemaScriptPath">Path and filename for the final output schema script (e.g. settings.ScriptPath + settings.SchemasFilename)</param>
        /// <param name="objectName">Singular name for the objects being dropped (e.g. "schema")</param>
        /// <param name="dropScriptPath">Path to the SQL drop script (e.g. "drops/drop-schemas.sql")</param>
        public void DropObject(long token, string objectFragment, string schemaScriptPath, string objectName, string dropScriptPath)
        {
            if (settings.SqlObjects.Contains(objectFragment) && settings.Abort == false)
            {
                if (VerifyBackupFileExists(schemaScriptPath, "Will not drop " + objectName.PluralizeNoun(2), token))
                {
                    RunDropScript(LoadScript(dropScriptPath), objectName.PluralizeNoun(2).ToUpperFirstCharacter() + " dropped", showSuccess: false, objectFragment: objectFragment);
                }
            }
        }

		/// <summary>
		/// Shared code for restoring individual database objects.
		/// </summary>
		/// <param name="token">Token for the existing output context</param>
        /// <param name="objectFragment">What comma-wrapped database object fragment to enforce (e.g. ",sc,")</param>
        /// <param name="objectName">Singular name for the objects being dropped (e.g. "schema")</param>
        /// <param name="schemaScriptPath">Path and filename for the final output schema script (e.g. settings.ScriptPath + settings.SchemasFilename)</param>
        public void RestoreObject(long token, string objectFragment, string objectName, string schemaScriptPath)
        {
            if (settings.Abort == false && settings.SqlObjects.Contains(objectFragment))
            {
                if (VerifyBackupFileExists(schemaScriptPath, "Cannot create " + objectName.PluralizeNoun(2), token))
                {
                    RunRestoreScriptFile(schemaScriptPath, objectName, token, objectFragment);
                }
            }
        }

		/// <summary>
		/// Execute a SQL statement on a supplied open SqlConnection.
		/// </summary>
		/// <param name="connection">Open SqlConnection to use</param>
		/// <param name="statement">SQL statement to execute</param>
		/// <param name="token">Token for the existing output context</param>
		/// <param name="showProgress">True shows periodic progress output, false does not</param>
		/// <param name="prefix">Text to show before the progress</param>
		/// <param name="objectFragment">Optional object fragment being scripted (e.g. ",table,") in case further processing has to happen.</param>
		/// <returns>true if successful, false if failure</returns>
		public bool OpenExec(SqlConnection connection, string statement, long token, bool showProgress = false, string prefix = "", string objectFragment = "")
		{
			bool result = false;

			if (string.IsNullOrEmpty(statement) == false)
			{
                int counter = 0;
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";

				try
				{
                    string[] commands = statement.Split(new string[] { "GO -- SQRIBE/GO;" + settings.Hash }, StringSplitOptions.RemoveEmptyEntries);

                    foreach (string command in commands)
                    {
                        if (string.IsNullOrWhiteSpace(command) == false)
                        {
                            var skip = false;

                            if (settings.Abort == false)
                            {
                                if (objectFragment.ToLower() == ",table," && string.IsNullOrWhiteSpace(settings.DataBlacklist) == false)
                                {
                                    foreach (var table in ProtectedTables())
                                    {
                                        if (command.Contains("CREATE TABLE " + table))
                                        {
                                            skip = true;
                                        }
                                    }
                                }

                                using (SqlCommand oc = new SqlCommand(command, connection))
                                {
                                    if (settings.Abort == false)
                                    {
                                        try
                                        {
                                            Task task = null;

                                            if (skip == false)
                                            {
                                                oc.CommandTimeout = 0;
                                                oc.CommandType = CommandType.Text;
                                                task = oc.ExecuteNonQueryAsync();
                                            }
                                        
                                            counter++;

                                            while (task != null && settings.Abort == false && task.IsCompleted == false)
                                            {
                                                if (showProgress == true)
                                                {
                                                    ShowPercentageComplete(token, commands.Length, counter, startDate, ref lastTimeUpdate, prefix);
                                                }
                                            }

                                            if (task.IsFaulted)
                                            {
                                                output.Write("SQL Exception: " + task.Exception.Message + "; ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                                                settings.Abort = true;

                                                settings.Log("- EXCEPTION: Helpers.OpenExec(); " + task.Exception.Message);
                                            }
                                        }

                                        catch (Exception err)
                                        {
                                            output.Write(err.Message.StandardizeLineEndings().Replace(Constants.LineFeed, Constants.LineFeed + Constants.Padding) + command, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                                            settings.Abort = true;

                                            settings.Log("- EXCEPTION: Helpers.OpenExec(); " + err.Message);
                                        }
                                    }
                                }
                            }
                        }

                        else
                        {
                            counter++;
                            ShowPercentageComplete(token, commands.Length, counter, startDate, ref lastTimeUpdate, prefix);
                        }
                    }

                    if (settings.Abort == false)
                    {
    					result = true;

                        if (showProgress == true)
                        {
                            lastTimeUpdate = "";
                            ShowPercentageComplete(token, 100, 100, startDate, ref lastTimeUpdate, prefix);
                        }
                    }
				}

				catch (Exception err)
				{
                    output.Write(err.Message.StandardizeLineEndings().Replace(Constants.LineFeed, Constants.LineFeed + Constants.Padding), token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                    settings.Abort = true;

                    settings.Log("Helpers.OpenExec() Exception (2): " + err.Message);
				}
			}

			return result;
		}

		/// <summary>
		/// Execute a SQL statement.
		/// </summary>
		/// <param name="statement">SQL statement to execute</param>
		/// <param name="token">Token for the existing output context</param>
		/// <param name="showProgress">True shows periodic progress output, false does not</param>
		/// <param name="prefix">Text to show before the progress</param>
		/// <returns>true if successful, false if failure</returns>
		public bool Exec(string statement, long token, bool showProgress = false, string prefix = "", bool ignoreErrors = false)
		{
			bool result = false;

			if (!string.IsNullOrEmpty(statement))
			{
                int counter = 0;
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";

				try
				{
					using (SqlConnection cn = new SqlConnection(settings.DataSource))
					{
						cn.Open();

                        string[] commands = statement.Split(new string [] { "GO -- SQRIBE/GO;" + settings.Hash }, StringSplitOptions.RemoveEmptyEntries);

                        foreach (string command in commands)
                        {
                            if (string.IsNullOrWhiteSpace(command) == false)
                            {
                                if (settings.Abort == false)
                                {
                                    using (SqlCommand oc = new SqlCommand(command, cn))
                                    {
                                        if (settings.Abort == false)
                                        {
                                            try
                                            {
                                                oc.CommandTimeout = 0;
                                                oc.CommandType = CommandType.Text;
                                                var task = oc.ExecuteNonQueryAsync();
                                            
                                                counter++;

                                                while (settings.Abort == false && task.IsCompleted == false)
                                                {
                                                    if (showProgress == true)
                                                    {
                                                        ShowPercentageComplete(token, commands.Length, counter, startDate, ref lastTimeUpdate, prefix);
                                                    }
                                                }

                                                if (task.IsFaulted)
                                                {
                                                    if (ignoreErrors == false)
                                                    {
                                                        output.Write(" - SQL Exception: " + task.Exception.Message + "; ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                                                        settings.Abort = true;
                                                    }

                                                    settings.Log("- EXCEPTION: Helpers.Exec(); " + task.Exception.Message);
                                                }
                                            }

                                            catch (Exception err)
                                            {
                                                if (ignoreErrors == false)
                                                {
                                                    output.Write(err.Message.StandardizeLineEndings().Replace(Constants.LineFeed, Constants.LineFeed + Constants.Padding) + command, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                                                    settings.Abort = true;
                                                }

                                                settings.Log("- EXCEPTION: Helpers.Exec(); " + err.Message);
                                            }
                                        }
                                    }
                                }
                            }

                            else
                            {
                                counter++;
                                ShowPercentageComplete(token, commands.Length, counter, startDate, ref lastTimeUpdate, prefix);
                            }
                        }

                        cn.Close();                    
					}

                    if (settings.Abort == false)
                    {
    					result = true;

                        if (showProgress == true)
                        {
                            lastTimeUpdate = "";
                            ShowPercentageComplete(token, 100, 100, startDate, ref lastTimeUpdate, prefix);
                        }
                    }
				}

				catch (Exception err)
				{
                    if (ignoreErrors == false)
                    {
                        output.Write(err.Message.StandardizeLineEndings().Replace(Constants.LineFeed, Constants.LineFeed + Constants.Padding), token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                        settings.Abort = true;
                    }
    
                    settings.Log("Helpers.Exec() Exception (2): " + err.Message);
				}
			}

			return result;
		}

		/// <summary>
		/// Read the list of tables from the database and identify the ones to be protected.
		/// </summary>
        /// <returns>List of quoted schema and tables names (e.g. [dbo].[ErrorLog])</returns>
        public List<string> ProtectedTables()
        {
            List<string> result = new List<string>();

            if (string.IsNullOrWhiteSpace(settings.DataBlacklist) == false)
            {
                using (var reader = new DataReader(LoadScript("select-table-names.sql"), settings.DataSource))
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
                        }

                        if (reader.IsReady)
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read() && settings.Abort == false)
                                {
                                    if (settings.IsProtectedTable(reader["SCHEMA_NAME"] + "." + reader["TABLE_NAME"]) == true)
                                    {
                                        result.Add("[" + reader["SCHEMA_NAME"] + "].[" + reader["TABLE_NAME"] + "]");
                                    }
                                }
                            }
                        }
                    }
                }
            }

            return result;
        }

		/// <summary>
		/// Run a drop script using Exec().
		/// </summary>
		/// <param name="script">SQL script source to execute</param>
		/// <param name="activityText">Text describing the activity</param>
		/// <param name="showSuccess">Show result of script execution if successful (e.g. "DONE")</param>
		/// <param name="objectFragment">Optional object fragment being dropped (e.g. ",table,") in case further processing has to happen.</param>
		public void RunDropScript(string script, string activityText, bool showSuccess = true, string objectFragment = "")
		{
            var token = output.GetNewToken();
            var log = "### Drop object: " + objectFragment + Environment.NewLine;

            try
            {
                if (settings.Abort == false)
                {
                    output.WriteIndentationArrow(token);
                    output.Write(activityText, token, -1);

                    if (objectFragment.ToLower() == ",table,")
                    {
                        // Handle table protection setting

                        var safeList = "";
                        var protectedTables = ProtectedTables();

                        if (protectedTables.Count() > 0)
                        {
                            foreach (var table in protectedTables)
                            {
                                if (string.IsNullOrWhiteSpace(safeList) == false)
                                {
                                    safeList += ",";
                                }

                                safeList += "'" + table + "'";
                            }

                            if (string.IsNullOrWhiteSpace(safeList) == false)
                            {
                                safeList = "AND CAST(QUOTENAME(s.NAME) + '.' + QUOTENAME(t.NAME) AS varchar(max)) NOT IN (" + safeList + ")";

                                script = script.Replace("AND 1=1", safeList);
                            }
                        }

                        else
                        {
                            script = script.Replace("AND 1=1", "");
                        }
                    }

                    if (script.Length > 0)
                    {
                        var result = Exec(script, token);

                        if (result == true)
                        {
                            if (showSuccess)
                            {
                                output.WriteLine("DONE", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                            }

                            else
                            {
                                output.WriteLine("", token);
                            }

                            log += "- Result: DONE" + Environment.NewLine;
                        }

                        else
                        {
                            var msg = "FAILED: embedded script could not run.";

                            output.WriteLine(msg, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                            settings.Abort = true;

                            log += "- Result: " + msg + Environment.NewLine;
                        }
                    }

                    else
                    {
                        var msg = "FAILED: embedded script had no content.";

                        output.WriteLine(msg, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                        settings.Abort = true;

                        log += "- Result: " + msg + Environment.NewLine;
                    }
                }
            }

            catch (Exception e)
            {
                output.Write("ERROR: ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                output.WriteLine(e.Message, token);
                output.WriteLine(e.InnerException.ToString(), token);

                settings.Abort = true;

                log += "- Helpers.RunDropScript() Exception (" + objectFragment + "): " + e.Message + Environment.NewLine;
            }

            settings.Log(log, false);
		}

		/// <summary>
		/// Run a restore script file using Exec().
		/// </summary>
		/// <param name="scriptPath">File path to a SQL script file to execute</param>
		/// <param name="singularName">Name of the object being scripted (singular form)</param>
		/// <param name="token">Output token to use</param>
		/// <param name="objectFragment">Optional object fragment being scripted (e.g. ",table,") in case further processing has to happen.</param>
		public void RunRestoreScriptFile(string scriptPath, string singularName, long token, string objectFragment = "")
		{
            var log = "### Restore object: " + objectFragment + Environment.NewLine;

            try
            {
                if (settings.Abort == false)
                {
                    if (File.Exists(scriptPath))
                    {
                        var script = File.ReadAllText(scriptPath, Encoding.UTF8);
                        var count = script.SubstringCount("-- SQRIBE/OBJ;" + settings.Hash);

                        if (count > 0)
                        {
                            if (objectFragment.ToLower() == ",table," && string.IsNullOrWhiteSpace(settings.DataBlacklist) == false)
                            {
                                foreach (var item in ProtectedTables())
                                {
                                    count -= (script.SubstringCount(Constants.LineFeed + "CREATE TABLE " + item));
                                }
                            }

                            output.WriteIndentationArrow(token);
                            output.Write(singularName.PluralizeNoun(count).ToUpperFirstCharacter() + Constants.Ellipsis, token);

                            if (script.Length > 0)
                            {
                                var result = false;

                                script = script.Replace("-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed + Constants.LineFeed, "");
                                script = script.Replace("-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed, "");

                                using (SqlConnection cn = new SqlConnection(settings.DataSource))
                                {
                                    cn.Open();

                                    result = OpenExec(cn, script, token, true, "", objectFragment);
                                }

                                if (settings.Abort == false)
                                {
                                    if (result == true)
                                    {
                                        var msg = count.ToString("#,##0") + " created";

                                        output.WriteLine(msg, token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));

                                        log += "- Result: " + msg + Environment.NewLine;
                                    }

                                    else
                                    {
                                        var msg = "FAILED: script file could not run.";

                                        output.WriteLine(msg, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                                        settings.Abort = true;

                                        log += "- Result: " + msg + Environment.NewLine;
                                    }
                                }

                                else
                                {
                                    var msg = "ABORTED";

                                    output.WriteLine(msg, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                                    log += "- Result: " + msg + Environment.NewLine;
                                }
                            }

                            else
                            {
                                var msg = "FAILED: script file had no content.";

                                output.WriteLine(msg, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                                settings.Abort = true;

                                log += "- Result: " + msg + Environment.NewLine;
                            }
                        }

                        else
                        {
                            output.WriteIndentationArrow(token);
                            output.Write(singularName.PluralizeNoun(count).ToUpperFirstCharacter() + Constants.Ellipsis, token);
                            output.WriteLine("0 created", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));

                            log += "- Result: 0 created" + Environment.NewLine;
                        }
                    }

                    else
                    {
                        var msg = "File " + scriptPath + " not found.";

                        output.WriteLine(msg, token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                        settings.Warnings = true;
                        settings.WarningMessage += "• " + msg + Constants.LineFeed;

                        log += "- Result: " + msg + Environment.NewLine;
                    }
                }
            }

            catch (Exception e)
            {
                output.Write("ERROR: ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                output.WriteLine(e.Message, token);
                output.WriteLine(e.InnerException.ToString(), token);

                settings.Abort = true;

                log += "- Helpers.RunRestoreScriptFile() Exception (" + singularName.PluralizeNoun(2).ToUpperFirstCharacter() + "): " + e.Message + Environment.NewLine;
            }

            settings.Log(log, false);
		}

        #endregion
    }
}
