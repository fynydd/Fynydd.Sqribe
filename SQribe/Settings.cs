// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using Newtonsoft.Json.Linq;
using Fynydd.Halide;
using Fynydd.Halide.Constants;

namespace SQribe
{
    /// <summary>
    /// Global Settings Singleton
    /// </summary>
    public interface ISettings
    {
        #region Dynamic properties

        int PortNumber { get; }

        StopWatch Timer { get; set; }

        string AppMajorVersion { get; }
        string AppMinorVersion { get; }
        string AppBuildVersion { get; }
        string AppRevisionVersion { get; }
        string DatabaseName { get; }
        string Platform { get; }
        string PlatformMajorVersion { get; }
        string PlatformMinorVersion { get; }
        string PlatformBuildVersion { get; }
        string ServerName { get; }
		string Version { get; }

		#endregion

		#region Core properties

		bool Abort { get; set; }
		bool BeepOnCompletion { get; set; }
		bool ChunkData { get; set; }
		bool CompressData { get; set; }
		bool ConfirmStart { get; set; }
		bool ConnectionGood { get; set; }
		bool ConsoleDarkMode { get; set; }
		bool DoNotLog { get; set; }
		bool EraseDatabase { get; set; }
		bool Logging { get; set; }
		bool SuppressStartWarnings { get; set; }
		bool TurboMode { get; set; }
		bool Warnings { get; set; }

		ConsoleColor DefaultColor { get; set; }

		int ChunkSizeMb { get; set; }
		int CurrentSqlMajorVersion { get; set; }
        int BackupSqlMajorVersion { get; set; }
        int BackupSqlMinorVersion { get; set; }
        int BackupSqlBuildVersion { get; set; }
		int MaxThreadCount { get; set; }

		Constants.OperationModes Mode { get; set; }

		string BackupSqlEdition { get; set; }
        string BackupTimestamp { get; set; }
		string DataBlacklist { get; set; }
		string DataSource { get; set; }
		string Hash { get; set; }
		string OutputPath { get; set; }
		string ScriptPath { get; set; }
		string SettingsFilePath { get; set; }
		string SettingsList { get; }
		string SqlObjects { get; set; }
		string WarningMessage { get; set; }

        #endregion
        
        #region File paths

		string DataFilePrefix { get; }
		string DefaultTypesFilename { get; }
		string ExtendedPropertiesFilename { get; }
		string FulltextCatalogsFilename { get; }
        string PropsFilename { get; }
    	string SchemasFilename { get; }
		string StoredProceduresFilename { get; }
		string TableCheckConstraintsFilename { get; }
		string TableDefaultValuesFilename { get; }
		string TableForeignKeysFilename { get; }
		string TableIndexesFilename { get; }
		string TablePrimaryKeysFilename { get; }
		string TablesComputedColumnsFilename { get; }
		string TablesFilename { get; }
		string UserDefinedDataTypesFilename { get; }
		string UserDefinedFunctionsFilename { get; }
		string UserDefinedTableTypesFilename { get; }
		string ViewsFilename { get; }
    	string XmlSchemaCollectionsFilename { get; }
		string TriggersFilename { get; }

        string GetAppDataPath();
        string GetAppPath();
        string ProcessFolderPath(string folderPath);

        #endregion

        bool IsBlacklistedForData(string tableName);
        bool IsProtectedTable(string tableNameWithSchema);

        string OutputObjects(string indentation = "");

        void ClearLog();
        void Log(string message, bool addNewline = true);
        void ProcessCliArguments(string[] args);
        void ReadPropsFile();
        void WriteLog();
        void WritePropsFile();

        Tuple<string, string, int> GetServerAndDatabase();
    }

    class Settings : ISettings
    {
        #region Dynamic properties

        public string AppMajorVersion
        {
            get
            {
                string result = "";

                try
                {
                    System.Reflection.Assembly assembly = System.Reflection.Assembly.GetExecutingAssembly();
                    result = assembly.GetName().Version.Major.ToString();
                }

                catch (Exception e)
                {
                    Log("Settings.AppMajorVersion Exception: " + e.Message);
                }

                return result;
            }
        }
        public string AppMinorVersion
        {
            get
            {
                string result = "";

                try
                {
                    System.Reflection.Assembly assembly = System.Reflection.Assembly.GetExecutingAssembly();
                    result = assembly.GetName().Version.Minor.ToString();
                }

                catch (Exception e)
                {
                    Log("Settings.AppMinorVersion Exception: " + e.Message);
                }

                return result;
            }
        }
        public string AppBuildVersion
        {
            get
            {
                string result = "";

                try
                {
                    System.Reflection.Assembly assembly = System.Reflection.Assembly.GetExecutingAssembly();
                    result = assembly.GetName().Version.Build.ToString();
                }

                catch (Exception e)
                {
                    Log("Settings.AppBuildVersion Exception: " + e.Message);
                }

                return result;
            }
        }
        public string AppRevisionVersion
        {
            get
            {
                string result = "";

                try
                {
                    System.Reflection.Assembly assembly = System.Reflection.Assembly.GetExecutingAssembly();
                    result = assembly.GetName().Version.Revision.ToString();
                }

                catch (Exception e)
                {
                    Log("Settings.AppRevisionVersion Exception: " + e.Message);
                }

                return result;
            }
        }
        public ConsoleColor DefaultColor
        {
            get; set;
        }
        public StopWatch Timer { get; set; }
        public string DatabaseName {
            
            get {
                
                return GetServerAndDatabase().Item2;
            }
        }
        public string Platform
        {
            get
            {
                return Identify.GetOSPlatform().ToString();
            }
        }
        public string PlatformMajorVersion
        {
            get
            {
                string result = "";

                try
                {
                    if (Environment.OSVersion.Version.Major < 1)
                    {
                        var _items = Environment.OSVersion.VersionString.Split(new[] { ' ' });
                        var _values = _items[_items.Length - 1].Split(new[] { '.' });

                        if (_values.Length > 0)
                        {
                            result = _values[0];
                        }
                    }

                    else
                    {
                        result = Environment.OSVersion.Version.Major.ToString();
                    }
                }

                catch (Exception e)
                {
                    Log("Settings.PlatformMajorVersion Exception: " + e.Message);
                }

                return result;
            }
        }
        public string PlatformMinorVersion
        {
            get
            {
                string result = "";

                try
                {
                    if (Environment.OSVersion.Version.Minor < 1)
                    {
                        var _items = Environment.OSVersion.VersionString.Split(new[] { ' ' });
                        var _values = _items[_items.Length - 1].Split(new[] { '.' });

                        if (_values.Length > 1)
                        {
                            result = _values[1];
                        }
                    }

                    else
                    {
                        result = Environment.OSVersion.Version.Minor.ToString();
                    }
                }

                catch (Exception e)
                {
                    Log("Settings.PlatformMinorVersion Exception: " + e.Message);
                }

                return result;
            }
        }
        public string PlatformBuildVersion
        {
            get
            {
                string result = "";

                try
                {
                    if (Environment.OSVersion.Version.Build < 1)
                    {
                        var _items = Environment.OSVersion.VersionString.Split(new[] { ' ' });
                        var _values = _items[_items.Length - 1].Split(new[] { '.' });

                        if (_values.Length > 2)
                        {
                            result = _values[2];
                        }
                    }

                    else
                    {
                        result = Environment.OSVersion.Version.Build.ToString();
                    }
                }

                catch (Exception e)
                {
                    Log("Settings.PlatformBuildVersion Exception: " + e.Message);
                }

                return result;
            }
        }
        public int PortNumber {

            get {
                
                return GetServerAndDatabase().Item3;
            }
        }
        public string ServerName {
            
            get {
                
                return GetServerAndDatabase().Item1;
            }
        }
		public string Version
		{
			get
			{
                var result = "";

                try
                {
                    result = AppMajorVersion + "." + AppMinorVersion + "." + AppBuildVersion + "." + AppRevisionVersion;
                }

                catch (Exception e)
                {
                    Log("Settings.Version Exception: " + e.Message);
                }

                return result;
			}
		}

        #endregion

        #region Core properties

		public bool Abort { get; set; }
		public bool BeepOnCompletion { get; set; }
		public bool ChunkData { get; set; }
		public bool CompressData { get; set; }
		public bool ConfirmStart { get; set; }
        public bool ConnectionGood { get; set; }
        public bool ConsoleDarkMode { get; set; }
        public bool DoNotLog
        {
            get
            {
                return _doNotLog;
            }
            
            set
            {
                _doNotLog = value;
            }
        }
		public bool EraseDatabase { get; set; }
		public bool Logging { get; set; }
		public bool SuppressStartWarnings { get; set; }
		public bool TurboMode { get; set; }
		public bool Warnings { get; set; }

        public char PathSeparator { get; }  = Path.DirectorySeparatorChar;

        public Constants.OperationModes Mode { get; set; }

        public int BackupSqlMajorVersion { get; set; }
        public int BackupSqlMinorVersion { get; set; }
        public int BackupSqlBuildVersion { get; set; }
		public int ChunkSizeMb { get; set; }
  		public int CurrentSqlMajorVersion { get; set; }
		public int MaxThreadCount { get; set; }

        public string BackupSqlEdition { get; set; }
        public string BackupTimestamp { get; set; }
		public string DataBlacklist { get; set; }
		public string DataSource { get; set; }
        public string Hash { get; set; }
		public string OutputPath { get; set; }
		public string ScriptPath { get; set; }
        public string SettingsFilePath { get; set; }
		public string SettingsList
        {
            get
            {
                var result = "";

                foreach (var item in _settingsJson)
                {
                    if (result != "")
                    {
                        result += ",";
                    }

                    result += "\"" + item.Key + "\":\"" + item.Value + "\"";
                }

                return result;
            }
        }
		public string SqlObjects
        {
            get
            {
                return _SqlObjects;
            }
            
            set
            {
                if (value.ToLower().Contains("all"))
                {
                    _SqlObjects = FormatObjects(Everything());
                }

                else if (value.ToLower().Contains("schema"))
                {
                    _SqlObjects = FormatObjects(Everything()).Replace(",data,", ",");
                }

                else
                {
                    _SqlObjects = FormatObjects(value);
                }
            }
        }
		public string WarningMessage { get; set; }

        #endregion
        
        #region File paths

		public string PropsFilename
        {
            get
            {
                return Constants.PropsFilename;
            }
        }

		public string FulltextCatalogsFilename
        {
            get
            {
                return Constants.FulltextCatalogsFilename;
            }
        }

		public string DefaultTypesFilename
        {
            get
            {
                return Constants.DefaultTypesFilename;
            }
        }
	
    	public string SchemasFilename
        {
            get
            {
                return Constants.SchemasFilename;
            }
        }

		public string TablesFilename
        {
            get
            {
                return Constants.TablesFilename;
            }
        }

		public string TablePrimaryKeysFilename
        {
            get
            {
                return Constants.TablePrimaryKeysFilename;
            }
        }

		public string TableDefaultValuesFilename
        {
            get
            {
                return Constants.TableDefaultValuesFilename;
            }
        }

		public string TablesComputedColumnsFilename
        {
            get
            {
                return Constants.TableComputedColumnsFilename;
            }
        }

		public string TableIndexesFilename
        {
            get
            {
                return Constants.TableIndexesFilename;
            }
        }

		public string TableForeignKeysFilename
        {
            get
            {
                return Constants.TableForeignKeysFilename;
            }
        }

		public string TableCheckConstraintsFilename
        {
            get
            {
                return Constants.TableCheckConstraintsFilename;
            }
        }

		public string UserDefinedDataTypesFilename
        {
            get
            {
                return Constants.UserDefinedDataTypesFilename;
            }
        }

		public string UserDefinedTableTypesFilename
        {
            get
            {
                return Constants.UserDefinedTableTypesFilename;
            }
        }

		public string UserDefinedFunctionsFilename
        {
            get
            {
                return Constants.UserDefinedFunctionsFilename;
            }
        }

    	public string XmlSchemaCollectionsFilename
        {
            get
            {
                return Constants.XmlSchemaCollectionsFilename;
            }
        }

		public string ViewsFilename
        {
            get
            {
                return Constants.ViewsFilename;
            }
        }

		public string StoredProceduresFilename
        {
            get
            {
                return Constants.StoredProceduresFilename;
            }
        }

		public string TriggersFilename
        {
            get
            {
                return Constants.TriggersFilename;
            }
        }

		public string ExtendedPropertiesFilename
        {
            get
            {
                return Constants.ExtendedPropertiesFilename;
            }
        }

		public string DataFilePrefix
        {
            get
            {
                return Constants.DataFilePrefix;
            }
        }

        #endregion
   
        #region Private properties

        private bool _doNotLog;

        private Dictionary<string, string> _settingsJson;
        private Dictionary<string, string> SqlObjectMappings = new Dictionary<string, string>();

        private readonly JObject BackupDefaults;
        private readonly JObject RestoreDefaults;

        private string _log = "";
        private string _SqlObjects = "";

        #endregion

        #region Constructors

        /// <summary>
        /// Constructor with default values for all settings.
        /// </summary>
        public Settings()
        {
            #region Settings defaults

            this.Mode = Constants.OperationModes.Version;
            this.ConnectionGood = false;
			this.SqlObjects = "all";
            this.ChunkData = false;
			this.ChunkSizeMb = 10;
			this.MaxThreadCount = Environment.ProcessorCount;
            this.EraseDatabase = false;
			this.DataSource = "";
			//this.OutputPath = ProcessFolderPath(Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory));
			this.OutputPath = "";
            this.CompressData = false;
            this.ConfirmStart = true;
            this.ConsoleDarkMode = true;
            this.SuppressStartWarnings = false;
            this.BeepOnCompletion = true;
            this.Logging = true;
			this.TurboMode = false;

            _settingsJson = new Dictionary<string, string>();

            // Load system defaults
            var filePath = GetAppPath() + "backup-defaults.json";

            if (File.Exists(filePath))
            {
                var json = File.ReadAllText(filePath);
                BackupDefaults = JObject.Parse(json);
            }

            // Load user defaults
            filePath = GetAppDataPath() + "backup-defaults.json";

            if (File.Exists(filePath))
            {
                var json = File.ReadAllText(filePath);
                BackupDefaults = JObject.Parse(json);
            }

            // Load system defaults
            filePath = GetAppPath() + "restore-defaults.json";

            if (File.Exists(filePath))
            {
                var json = File.ReadAllText(filePath);
                RestoreDefaults = JObject.Parse(json);
            }

            // Load user defaults
            filePath = GetAppDataPath() + "restore-defaults.json";

            if (File.Exists(filePath))
            {
                var json = File.ReadAllText(filePath);
                RestoreDefaults = JObject.Parse(json);
            }

            this.DoNotLog = false;

            this.Timer = new StopWatch();

            SqlObjectMappings.Add("table", "definitions");
            SqlObjectMappings.Add("pkc", "primary keys");
            SqlObjectMappings.Add("index", "indexes");
            SqlObjectMappings.Add("fkc", "foreign keys");
            SqlObjectMappings.Add("cc", "checks");
            SqlObjectMappings.Add("ftc", "fulltext catalogs");
            SqlObjectMappings.Add("view", "views");
            SqlObjectMappings.Add("usp", "stored procedures");
            SqlObjectMappings.Add("udf", "functions");
            SqlObjectMappings.Add("tr", "triggers");
            SqlObjectMappings.Add("uddt", "data types");
            SqlObjectMappings.Add("udtt", "table types");
            SqlObjectMappings.Add("xsc", "XML schema collections");
            SqlObjectMappings.Add("dt", "defaults");
            SqlObjectMappings.Add("sc", "schemas");
            SqlObjectMappings.Add("xp", "extended properties");
            SqlObjectMappings.Add("data", "data");

            #endregion
        }

        #endregion

        #region Private Methods

        /// <summary>
        /// Create config string for including all SQL object types.
        /// </summary>
        /// <returns>SQL object string</returns>
        private string Everything()
        {
            var result = "";

            foreach (var obj in SqlObjectMappings)
            {
                if (result != "")
                {
                    result += ",";
                }

                result += obj.Key;
            }

            return result;
        }

        /// <summary>
        /// Ensure objects list is wrapped in commas.
        /// </summary>
        /// <param name="objects">Comma-separated list of SQL object codes</param>
        /// <returns>Objects string wrapped in commas</returns>
        private string FormatObjects(string objects)
        {
            return "," + objects.ToLower().Replace(" ", "").Trim(new[] { ',' }) + ",";

        }

		/// <summary>
		/// Process a JObject file settings object.
		/// </summary>
		/// <param name="jo">Settings JObject</param>
        private void ProcessFileSettings(JObject jo)
        {
            foreach (var item in jo)
            {
                JToken jt = item.Value;
                var privateData = false;

                if (item.Key.ToLower() == "mode")
                {
                    switch (jt.Value<string>().ToLower())
                    {
                        case "backup": this.Mode = Constants.OperationModes.Backup; break;
                        case "restore": this.Mode = Constants.OperationModes.Restore; break;
                        case "version": this.Mode = Constants.OperationModes.Version; break;
                        case "help": this.Mode = Constants.OperationModes.Help; break;
                        default: this.Mode = Constants.OperationModes.Version; break;
                    }
                }

                if (item.Key.ToLower() == "beep_on_completion")
                {
                    this.BeepOnCompletion = jt.Value<bool>();
                }

                if (item.Key.ToLower() == "console_dark_mode")
                {
                    this.ConsoleDarkMode = jt.Value<bool>();
                }

                if (item.Key.ToLower() == "data_source")
                {
                    this.DataSource = jt.Value<string>();
                    privateData = true;
                }

                if (item.Key.ToLower() == "do_not_log")
                {
                    this.DoNotLog = jt.Value<bool>();
                }

                if (item.Key.ToLower() == "chunk_data")
                {
                    this.ChunkData = jt.Value<bool>();
                }

                if (item.Key.ToLower() == "chunk_size_mb")
                {
                    this.ChunkSizeMb = jt.Value<int>();

                    if (this.ChunkSizeMb < 5)
                    {
                        this.ChunkSizeMb = 5;
                    }

                    if (this.ChunkSizeMb > 1000)
                    {
                        this.ChunkSizeMb = 1000;
                    }
                }

                if (item.Key.ToLower() == "compress_data")
                {
                    this.CompressData = jt.Value<bool>();
                }

                if (item.Key.ToLower() == "confirm_start")
                {
                    this.ConfirmStart = jt.Value<bool>();
                }

                if (item.Key.ToLower() == "data_blacklist")
                {
                    this.DataBlacklist = jt.Value<string>().Replace("[", "").Replace("]", "");
                }

                if (item.Key.ToLower() == "erase_database")
                {
                    this.EraseDatabase = jt.Value<bool>();
                }

                if (item.Key.ToLower() == "max_thread_count")
                {
                    this.MaxThreadCount = jt.Value<int>();

                    if (this.MaxThreadCount < 1)
                    {
                        this.MaxThreadCount = 1;
                    }

                    if (this.MaxThreadCount > 50)
                    {
                        this.MaxThreadCount = 50;
                    }
                }

                if (item.Key.ToLower() == "objects")
                {
                    this.SqlObjects = FormatObjects(jt.Value<string>());
                }

                if (item.Key.ToLower() == "output_path")
                {
                    this.OutputPath = ProcessFolderPath(jt.Value<string>());
                    privateData = true;
                }

                if (item.Key.ToLower() == "script_path")
                {
                    this.ScriptPath = ProcessFolderPath(jt.Value<string>());
                    privateData = true;
                }

                if (item.Key.ToLower() == "table_protection")
                {
                    this.DataBlacklist = jt.Value<string>().Replace("[", "").Replace("]", "");
                }

                if (item.Key.ToLower() == "suppress_start_warnings")
                {
                    this.SuppressStartWarnings = jt.Value<bool>();
                }

				if (item.Key.ToLower() == "turbo_mode")
				{
					this.TurboMode = jt.Value<bool>();
				}

				if (item.Key.ToLower() == "hash")
				{
					this.Hash = jt.Value<string>();
				}

				if (item.Key.ToLower() == "logging")
                {
                    this.Logging = jt.Value<bool>();
                }

                if (Identify.GetOSPlatform() == OSPlatform.Windows)
                {
                    if (item.Key.ToLower() == "win_output_path")
                    {
                        this.OutputPath = ProcessFolderPath(jt.Value<string>());
                        privateData = true;
                    }

                    if (item.Key.ToLower() == "win_script_path")
                    {
                        this.ScriptPath = ProcessFolderPath(jt.Value<string>());
                        privateData = true;
                    }
                }

                Log("- " + item.Key + ": " + item.Value);

                if (privateData == false)
                {
                    if (_settingsJson.ContainsKey(item.Key.ToLower()))
                    {
                        _settingsJson.Remove(item.Key.ToLower());
                    }

                    _settingsJson.Add(item.Key.ToLower(), jt.Value<string>());
                }
            }
        }

		/// <summary>
		/// Validate critical settings after they have been loaded.
		/// </summary>
        private void ValidateSettings()
        {
            if (this.Mode == Constants.OperationModes.Backup)
            {
                if (this.DataSource == "")
                {
                    Console.WriteLine("");
                    Console.ForegroundColor = Constants.GetColor("error", this.ConsoleDarkMode);
                    Console.WriteLine("ERROR: You must specify a data source");
                    Console.ForegroundColor = DefaultColor;
                    this.Abort = true;
                }

                if (this.OutputPath == "")
                {
                    Console.WriteLine("");
                    Console.ForegroundColor = Constants.GetColor("error", this.ConsoleDarkMode);
                    Console.WriteLine("ERROR: You must specify an output path");
                    Console.ForegroundColor = DefaultColor;
                    this.Abort = true;
                }
            }

            if (this.Mode == Constants.OperationModes.Restore)
            {
                if (this.DataSource == "")
                {
                    Console.WriteLine("");
                    Console.ForegroundColor = Constants.GetColor("error", this.ConsoleDarkMode);
                    Console.WriteLine("ERROR: You must specify a restore destination");
                    Console.ForegroundColor = DefaultColor;
                    this.Abort = true;
                }

                if (this.ScriptPath == "")
                {
                    Console.WriteLine("");
                    Console.ForegroundColor = Constants.GetColor("error", this.ConsoleDarkMode);
                    Console.WriteLine("ERROR: You must specify a script path");
                    Console.ForegroundColor = DefaultColor;
                    this.Abort = true;
                }
            }
        }

		/// <summary>
		/// Once SettingsFilePath is set, this method will read and process its contents. If it doesn't exist explicitly,
        /// it will look for the file in the sqribe data folder.
		/// </summary>
        private void ProcessSettingsFile()
        {
            try
            {
                if (File.Exists(this.SettingsFilePath))
                {
                    var json = File.ReadAllText(this.SettingsFilePath).Replace("\\", "\\\\").Replace("\\\\\\\\", "\\\\");
                    JObject jo = JObject.Parse(json);
                    JToken jt;

                    if (jo.TryGetValue("mode", out jt) == true)
                    {
                        switch (jt.Value<string>().ToLower())
                        {
                            case "backup":
                                this.Mode = Constants.OperationModes.Backup;
                                if (BackupDefaults != null)
                                {
                                    Log("## SETTINGS: BACKUP DEFAULTS");
                                    ProcessFileSettings(BackupDefaults);
                                }
                                break;

                            case "restore":
                                this.Mode = Constants.OperationModes.Restore;
                                if (RestoreDefaults != null)
                                {
                                    Log("## SETTINGS: RESTORE DEFAULTS");
                                    ProcessFileSettings(RestoreDefaults);
                                }
                                break;

                            case "version":
                                this.Mode = Constants.OperationModes.Version;
                                break;

                            case "help":
                                this.Mode = Constants.OperationModes.Help;
                                break;

                            default:
                                this.Mode = Constants.OperationModes.Version;
                                break;
                        }
                    }

                    Log("## SETTINGS FILE: " + this.SettingsFilePath);

                    ProcessFileSettings(jo);
                }
            }

            catch (Exception e)
            {
                Log("Settings.ProcessSettingsFile() Exception: " + e.Message);
            }
        }

        #endregion

        #region Public Methods

		/// <summary>
		/// Read a SQL backup Props.json file at ScriptPath.
		/// </summary>
        public void ReadPropsFile()
        {
            if (this.Mode == Constants.OperationModes.Restore)
            {
                var filePath = this.ScriptPath + Constants.PropsFilename;

                this.Hash = "";
                this.BackupTimestamp = "unknown date";
                this.BackupSqlMajorVersion = -1;
                this.BackupSqlMinorVersion = -1;
                this.BackupSqlBuildVersion = -1;
                this.BackupSqlEdition = "SQL Server";

                if (File.Exists(filePath))
                {
                    var json = File.ReadAllText(filePath);

                    JObject jo = JObject.Parse(json);
                    JToken jt;

                    if (jo.TryGetValue("Hash", out jt) == true)
                    {
                        this.Hash = jt.Value<string>();
                    }

                    if (jo.TryGetValue("Timestamp", out jt) == true)
                    {
                        this.BackupTimestamp = jt.Value<string>();
                    }

                    if (jo.TryGetValue("SqlVersion", out jt) == true)
                    {
                        var sqlVersion = jt.Value<string>();

                        if (int.TryParse((sqlVersion ?? string.Empty).Split('.')[0], out var majorVersion))
                        {
                            _ = int.TryParse((sqlVersion ?? string.Empty).Split('.')[1], out var minorVersion);
                            _ = int.TryParse((sqlVersion ?? string.Empty).Split('.')[2], out var buildVersion);

                            BackupSqlMajorVersion = majorVersion;
                            BackupSqlMinorVersion = minorVersion;
                            BackupSqlBuildVersion = buildVersion;
                        }

                        if (Constants.SqlServerVersions.ContainsValue(this.BackupSqlMajorVersion))
                        {
                            this.BackupSqlEdition = $"SQL Server {Constants.SqlServerVersions.FirstOrDefault(x => x.Value == this.BackupSqlMajorVersion).Key}";
                        }
                    }
                    
                    else if (jo.TryGetValue("SqlMajorVersion", out jt) == true)
                    {
                        this.BackupSqlMajorVersion = jt.Value<int>();

                        if (Constants.SqlServerVersions.ContainsValue(this.BackupSqlMajorVersion))
                        {
                            this.BackupSqlEdition = $"SQL Server {Constants.SqlServerVersions.FirstOrDefault(x => x.Value == this.BackupSqlMajorVersion).Key}";
                        }
                    }

                    if (Constants.SqlServerVersions.ContainsValue(this.BackupSqlMajorVersion) && jo.TryGetValue("SqlEdition", out jt) == true)
                    {
                        var sqlEdition = jt.Value<string>();

                        if (string.IsNullOrEmpty(sqlEdition) == false)
                        {
                            BackupSqlEdition = sqlEdition;
                        }
                    }
                }

                else
                {
                    // LEGACY SUPPORT

                    filePath = this.ScriptPath + "Hash.txt";

                    if (File.Exists(filePath))
                    {
                        this.Hash = File.ReadAllText(filePath);
                    }
                }
            }
        }

		/// <summary>
		/// Write a SQL backup Props.json file at OutputPath.
		/// </summary>
        public void WritePropsFile()
        {
            if (this.Mode == Constants.OperationModes.Backup)
            {
                var filePath = this.OutputPath + Constants.PropsFilename;

                if (string.IsNullOrEmpty(this.Hash))
                {
                    this.Hash = this.DataSource.MD5String().Substring(0, 6);
                }

                this.BackupTimestamp = DateTime.UtcNow.DateFormat(DateFormats.Utc);
                this.BackupSqlEdition = "";
                this.BackupSqlMajorVersion = 0;
                this.BackupSqlMinorVersion = 0;
                this.BackupSqlBuildVersion = 0;

                using (var cn = new SqlConnection())
                {
                    var timer = new StopWatch();
                    var timeout = 15;

                    if (cn.ConnectionTimeout > 0)
                    {
                        timeout = cn.ConnectionTimeout;
                    }

                    timer.Start();

                    cn.ConnectionString = this.DataSource;

                    var task2 = cn.OpenAsync();

                    while (task2.IsCompleted == false && this.Abort == false && timer.GetSeconds<int>() <= timeout)
                    {
                        System.Threading.Thread.Sleep(Constants.SleepNumber);
                    }

                    if (this.Abort == false && task2.IsFaulted == false && timer.GetSeconds<int>() <= timeout)
                    {
                        if (int.TryParse((cn.ServerVersion ?? string.Empty).Split('.')[0], out var majorVersion))
                        {
                            _ = int.TryParse((cn.ServerVersion ?? string.Empty).Split('.')[1], out var minorVersion);
                            _ = int.TryParse((cn.ServerVersion ?? string.Empty).Split('.')[2], out var buildVersion);

                            BackupSqlMajorVersion = majorVersion;
                            BackupSqlMinorVersion = minorVersion;
                            BackupSqlBuildVersion = buildVersion;
                            
                            if (Constants.SqlServerVersions.ContainsValue(BackupSqlMajorVersion))
                            {
                                BackupSqlEdition = "SQL Server " + Constants.SqlServerVersions.FirstOrDefault(x => x.Value == BackupSqlMajorVersion).Key;
                            }

                            var json = 
$@"{{
    ""Hash"": ""{Hash}"",
    ""Timestamp"": ""{BackupTimestamp}"",
    ""SqlEdition"": ""{BackupSqlEdition}"",
    ""SqlMajorVersion"": {BackupSqlMajorVersion},
    ""SqlVersion"": ""{BackupSqlMajorVersion}.{BackupSqlMinorVersion}.{BackupSqlBuildVersion}""
}}
";
                            File.AppendAllText(filePath, json, Encoding.UTF8);
                        }

                        else
                        {
                            this.Abort = true;
                            this.Log("- Result: ABORTED; Could not parse SQL Server version (" + cn.ServerVersion + ")");
                        }
                    }

                    else
                    {
                        this.Abort = true;
                        this.Log("- Result: ABORTED; Could not connect to SQL Server to obtain version information.");
                    }
                }
            }
        }

		/// <summary>
		/// Returns true if a table should be ignored for data backups and restores.
		/// </summary>
		/// <param name="tableNameWithSchema">Table name with schema</param>
		/// <returns>True if table is to be excluded from data backup or restore</returns>
        public bool IsBlacklistedForData(string tableNameWithSchema)
        {
            var result = false;
            var _tableName = tableNameWithSchema.ToLower().Replace("[", "").Replace("]", "");
         
            if (string.IsNullOrWhiteSpace(DataBlacklist) == false)
            {
                var items = DataBlacklist.Split(new [] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                foreach (var item in items)
                {
                    var blItem = item.Trim().Trim(new[] { '*' }).ToLower().Replace("[", "").Replace("]", "");

                    if (item.EndsWith("*"))
                    {
                        if (_tableName.StartsWith(blItem))
                        {
                            result = true;
                            break;
                        }
                    }

                    else
                    {
                        if (_tableName == blItem)
                        {
                            result = true;
                            break;
                        }
                    }
                }
            }

            return result;
        }

		/// <summary>
		/// Returns true if a table should be ignored for data backups and restores.
		/// </summary>
		/// <param name="tableNameWithSchema">Table name with schema</param>
		/// <returns>True if table is to be excluded from data backup or restore</returns>
        public bool IsProtectedTable(string tableNameWithSchema)
        {
            return IsBlacklistedForData(tableNameWithSchema);
        }

		/// <summary>
		/// Find the server name and database name within a connection string.
		/// </summary>
		/// <returns>A tuple with server name and database name</returns>
        public Tuple<string, string, int> GetServerAndDatabase()
        {
            var databaseName = "unknown";
            var serverName = "unknown";
            var port = 1433;

            try
            {
                if (string.IsNullOrWhiteSpace(DataSource) == false)
                {
                    var chunks = DataSource.Trim()
                        .Replace("; ", ";")
                        .Replace(" ;", ";")
                        .Replace("= ", "=")
                        .Replace(" =", "=")
                        .Replace("\r", "")
                        .Replace("\n", "")
                        .Split(new[] { ';' });

                    // Look for server name...

                    var serverPrefixes = new string[] { "server", "data source" };

                    foreach (var prefix in serverPrefixes)
                    {
                        foreach (var chunk in chunks)
                        {
                            if (chunk.StartsWith(prefix + "=", StringComparison.OrdinalIgnoreCase))
                            {
                                serverName = chunk.Split(new[] { '=' })[1];

                                if (serverName.Contains(","))
                                {
                                    port = Convert.ToInt32(serverName.Split(new[] { ',' })[1]);
                                    serverName = serverName.Split(new[] { ',' })[0];
                                }

                                break;
                            }
                        }
                    }

                    // Look for database name...

                    var databasePrefixes = new string[] { "database", "initial catalog" };

                    foreach (var prefix in databasePrefixes)
                    {
                        foreach (var chunk in chunks)
                        {
                            if (chunk.StartsWith(prefix + "=", StringComparison.OrdinalIgnoreCase))
                            {
                                databaseName = chunk.Split(new[] { '=' })[1];
                                break;
                            }
                        }
                    }
                }
            }

            catch (Exception e)
            {
                Log("Settings.GetServerAndDatabase() Exception: " + e.Message);
            }

            return Tuple.Create(serverName, databaseName, port);
        }

		/// <summary>
		/// Returns an output-friendly list of SQL objects to be scripted or restored.
		/// </summary>
		/// <param name="indentation">Text to insert before each line</param>
		/// <returns>Output-friendly list of SQL objects</returns>
        public string OutputObjects(string indentation = "")
        {
            var result = "Nothing" + Environment.NewLine;

            if (SqlObjects.Length > 0)
            {
                result = "";
                var first = true;
                var comma = false;

                if (SqlObjects.Contains(",table,") || SqlObjects.Contains(",pkc,") || SqlObjects.Contains(",index,") || SqlObjects.Contains(",fkc,") || SqlObjects.Contains(",cc,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation) + "Table ";
                    comma = false;
                    first = false;

                    foreach (var obj in SqlObjectMappings)
                    {
                        if (obj.Key == "table" || obj.Key == "pkc" || obj.Key == "index" || obj.Key == "fkc" || obj.Key == "cc")
                        {
                            if (SqlObjects.Contains("," + obj.Key + ","))
                            {
                                if (comma == true)
                                {
                                    result += ", ";
                                }

                                result += obj.Value.ApTitleCase();

                                comma = true;
                            }
                        }
                    }

                    if (this.Mode == Constants.OperationModes.Restore && string.IsNullOrWhiteSpace(this.DataBlacklist) == false)
                    {
                        result += Environment.NewLine + indentation + Constants.Padding + Constants.GetArrow() + "Protecting: " + this.DataBlacklist;
                    }

                    result += Environment.NewLine;
                }

                if (SqlObjects.Contains(",ftc,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation) + SqlObjectMappings["ftc"].ApTitleCase() + Environment.NewLine;
                    first = false;
                }

                if (SqlObjects.Contains(",view,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation) + SqlObjectMappings["view"].ApTitleCase() + Environment.NewLine;
                    first = false;
                }

                if (SqlObjects.Contains(",usp,") || SqlObjects.Contains(",udf,") || SqlObjects.Contains(",tr,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation);
                    comma = false;
                    first = false;

                    foreach (var obj in SqlObjectMappings)
                    {
                        if (obj.Key == "usp" || obj.Key == "udf" || obj.Key == "tr")
                        {
                            if (SqlObjects.Contains("," + obj.Key + ","))
                            {
                                if (comma == true)
                                {
                                    result += ", ";
                                }

                                result += obj.Value.ApTitleCase();

                                comma = true;
                            }
                        }
                    }

                    result += Environment.NewLine;
                }

                if (SqlObjects.Contains(",xsc,") || SqlObjects.Contains(",uddt,") || SqlObjects.Contains(",udtt,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation);
                    comma = false;
                    first = false;

                    foreach (var obj in SqlObjectMappings)
                    {
                        if (obj.Key == "xsc" || obj.Key == "uddt" || obj.Key == "udtt")
                        {
                            if (SqlObjects.Contains("," + obj.Key + ","))
                            {
                                if (comma == true)
                                {
                                    result += ", ";
                                }

                                result += obj.Value.ApTitleCase();

                                comma = true;
                            }
                        }
                    }

                    result += Environment.NewLine;
                }

                if (SqlObjects.Contains(",dt,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation) + SqlObjectMappings["dt"].ApTitleCase() + Environment.NewLine;
                    first = false;
                }

                if (SqlObjects.Contains(",sc,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation) + SqlObjectMappings["sc"].ApTitleCase() + Environment.NewLine;
                    first = false;
                }

                if (SqlObjects.Contains(",xp,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation) + SqlObjectMappings["xp"].ApTitleCase() + Environment.NewLine;
                    first = false;
                }

                if (SqlObjects.Contains(",data,"))
                {
                    result += (result == "" ? "" : Constants.Padding);
                    result += (first ? "" : indentation) + SqlObjectMappings["data"].ApTitleCase();
                    result = result.ApTitleCase();

                    if (this.Mode == Constants.OperationModes.Backup && string.IsNullOrWhiteSpace(this.DataBlacklist) == false)
                    {
                        result += "; except " + this.DataBlacklist;

                    }

                    result += Environment.NewLine;
                    //first = false;
                }
            }

            return result;
        }

		/// <summary>
		/// Process command line interface arguments into settings properties.
		/// </summary>
		/// <param name="path">CLI arguments</param>
        public void ProcessCliArguments(string[] args)
        {
            try
            {
                if (args.Length > 0)
                {
                    var json = "{";
                    var arguments = new List<string>(args);
                    var arg1 = ProcessFilePath(args[0]) + (args[0].Trim(new[] { '\"' }).EndsWith(".json") ? "" : ".json");

                    if (File.Exists(arg1) == false)
                    {
                        arg1 = GetAppDataPath() + arg1;
                    }

                    if (File.Exists(arg1))
                    {
                        this.SettingsFilePath = arg1;

                        ProcessSettingsFile();

                        ValidateSettings();
                    }

                    else
                    {
                        Log("## SETTINGS CLI ARGUMENTS:");

                        foreach (var arg in arguments)
                        {
                            var argItem = arg.ToString().Trim(new[] { '/' }).Replace("\\", "\\\\").Replace("\\\\\\\\", "\\\\");
                            var pair = argItem.Split(new [] { ':' }, StringSplitOptions.RemoveEmptyEntries);

                            if (pair.Length == 1)
                            {
                                var value = pair[0].Trim().ToLower();

                                json += "\"mode\": \"" + value + "\"";

                                if (value == "backup")
                                {
                                    this.Mode = Constants.OperationModes.Backup;
                                    Log("## SETTINGS: BACKUP DEFAULTS");
                                    ProcessFileSettings(BackupDefaults);
                                }

                                else if (value == "restore")
                                {
                                    this.Mode = Constants.OperationModes.Restore;
                                    Log("## SETTINGS: RESTORE DEFAULTS");
                                    ProcessFileSettings(RestoreDefaults);
                                }

                                else if (value == "version")
                                {
                                    this.Mode = Constants.OperationModes.Version;
                                }

                                else if (value == "help")
                                {
                                    this.Mode = Constants.OperationModes.Help;
                                }

                                else
                                {
                                    this.Mode = Constants.OperationModes.Version;
                                }
                            }

                            else
                            {
                                var value = "";

                                for (int x = 1; x < pair.Length; x++)
                                {
                                    if (x > 1)
                                    {
                                        value += ":";
                                    }

                                    value += pair[x].Trim();
                                }

                                if (value != "true" && value != "false" && value.IsPureNumeric() == false)
                                {
                                    value = "\"" + value + "\"";
                                }

                                json += "\"" + pair[0].Trim().ToLower() + "\": " + value;
                            }

                            if (arguments.IndexOf(arg) < arguments.Count - 1)
                            {
                                json += "," + Environment.NewLine;
                            }

                            else
                            {
                                json += Environment.NewLine;
                            }
                        }

                        json += "}";

                        JObject jo = JObject.Parse(json);

                        Log("## SETTINGS: CLI ARGUMENTS");

                        ProcessFileSettings(jo);

                        ValidateSettings();
                    }
                }
            }

            catch (Exception e)
            {
                Console.WriteLine("");
                Console.ForegroundColor = Constants.GetColor("error", this.ConsoleDarkMode);
                Console.Write("ERROR PROCESSING ARGUMENTS: ");
                Console.WriteLine(e.Message);
                Console.ForegroundColor = DefaultColor;

                this.Abort = true;

                Log("Settings.ProcessCliArguments() Exception: " + e.Message);
            }
        }

		/// <summary>
		/// Fixes folder paths that have duplicate separator characters, replaces "~" with the
        /// user's home path, and ensures a trailing path separator.
		/// </summary>
		/// <param name="folderPath">Folder path to process</param>
		/// <returns>A processed folder path</returns>
        public string ProcessFolderPath(string folderPath)
        {
            var result = folderPath.Trim(new[] { '\"' });

            result = result.Replace("~", Environment.GetFolderPath(Environment.SpecialFolder.UserProfile));
            result = result.Replace(PathSeparator.ToString() + PathSeparator.ToString(), PathSeparator.ToString());
            result = Path.GetFullPath(result).TrimEnd(new [] { PathSeparator }) + PathSeparator.ToString();

            return result;
        }

		/// <summary>
		/// Get the path to the currently executing application. Identifies local project source
        /// path as well as an executing assembly based on the existence of the HELP.txt file.
		/// </summary>
		/// <returns>Application folder path</returns>
        public string GetAppPath()
        {
            var path = AppContext.BaseDirectory;
            var result = ProcessFolderPath(path);
            var filePath = result + "HELP.txt";

            if (File.Exists(filePath) == false)
            {
                result = ProcessFolderPath(Directory.GetCurrentDirectory());
                filePath = result + "HELP.txt";

                if (File.Exists(filePath) == false)
                {
                    result = "";
                }
            }

            return result;
        }

		/// <summary>
		/// Get the path to the data path for logs, etc.
		/// </summary>
		/// <returns>Folder path to the SQribe data folder</returns>
        public string GetAppDataPath()
        {
            var result = ProcessFolderPath("~/sqribe/");

            if (Directory.Exists(result) == false)
            {
                Directory.CreateDirectory(result);
            }

            return result;
        }

		/// <summary>
		/// Splits a path into segments, reassembles using current system separators,
        /// and processes the output for special folders, etc.
		/// </summary>
		/// <param name="filePath">File path to process</param>
		/// <returns>A processed file path</returns>
        public string ProcessFilePath(string filePath)
        {
            string originalPath = filePath.Trim(new[] { '\"' });
            var segments = filePath.Split(new [] { PathSeparator }, StringSplitOptions.RemoveEmptyEntries);
            var result = filePath;

            if (segments.Length > 1)
            {
                var file = segments[segments.Length - 1];
                var path = (originalPath.StartsWith(PathSeparator.ToString()) ? PathSeparator.ToString() : "");

                for (int x = 0; x < segments.Length - 1; x++)
                {
                    path = Path.Combine(path, segments[x]);
                }

                result = ProcessFolderPath(path) + file;
            }

            return result;
        }

		/// <summary>
		/// Clears the SQribe log file
		/// </summary>
        public void ClearLog()
        {
            if (File.Exists(GetAppDataPath() + Constants.LogFilename))
            {
                File.Delete(GetAppDataPath() + Constants.LogFilename);
            }
        }

		/// <summary>
		/// Add an entry to the SQribe log file
		/// </summary>
		/// <param name="message">Message to add</param>
		/// <param name="addNewLine">Add a newline</param>
        public void Log(string message, bool addNewline = true)
        {
            if (Logging)
            {
                if (string.IsNullOrWhiteSpace(_log) == false)
                {
                    if (message.StartsWith("#"))
                    {
                        _log += Environment.NewLine;
                    }
                }

                _log += message + (addNewline ? Environment.NewLine : "");
            }
        }

		/// <summary>
		/// Writes the log to the SQribe log file
		/// </summary>
        public void WriteLog()
        {
            if (Logging)
            {
                File.AppendAllText(GetAppDataPath() + Constants.LogFilename, _log);

                _log = "";
            }
        }

        #endregion
    }
}
