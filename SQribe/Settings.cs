// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using Microsoft.Data.SqlClient;
using Newtonsoft.Json.Linq;
using SQribe.Halide.Core;

namespace SQribe;

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
    string DataExclusionlist { get; set; }
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

    bool IsExcludedForData(string tableName);
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

internal class Settings : ISettings
{
    #region Dynamic properties

    public string AppMajorVersion
    {
        get
        {
            var result = string.Empty;

            try
            {
                var assembly = System.Reflection.Assembly.GetExecutingAssembly();
                result = assembly.GetName().Version?.Major.ToString();
            }

            catch (Exception e)
            {
                Log("Settings.AppMajorVersion Exception: " + e.Message);
            }

            return result ?? string.Empty;
        }
    }
    public string AppMinorVersion
    {
        get
        {
            var result = string.Empty;

            try
            {
                var assembly = System.Reflection.Assembly.GetExecutingAssembly();
                result = assembly.GetName().Version?.Minor.ToString();
            }

            catch (Exception e)
            {
                Log("Settings.AppMinorVersion Exception: " + e.Message);
            }

            return result ?? string.Empty;
        }
    }
    public string AppBuildVersion
    {
        get
        {
            var result = string.Empty;

            try
            {
                var assembly = System.Reflection.Assembly.GetExecutingAssembly();
                result = assembly.GetName().Version?.Build.ToString();
            }

            catch (Exception e)
            {
                Log("Settings.AppBuildVersion Exception: " + e.Message);
            }

            return result ?? string.Empty;
        }
    }
    public string AppRevisionVersion
    {
        get
        {
            var result = string.Empty;

            try
            {
                var assembly = System.Reflection.Assembly.GetExecutingAssembly();
                result = assembly.GetName().Version?.Revision.ToString();
            }

            catch (Exception e)
            {
                Log("Settings.AppRevisionVersion Exception: " + e.Message);
            }

            return result ?? string.Empty;
        }
    }
    public ConsoleColor DefaultColor
    {
        get; set;
    }
    public StopWatch Timer { get; set; }
    public string DatabaseName => GetServerAndDatabase().Item2;

    public string Platform => Identify.GetOsPlatform().ToString();

    public string PlatformMajorVersion
    {
        get
        {
            var result = string.Empty;

            try
            {
                if (Environment.OSVersion.Version.Major < 1)
                {
                    var _items = Environment.OSVersion.VersionString.Split(new[] { ' ' });
                    var _values = _items[^1].Split(new[] { '.' });

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
            var result = string.Empty;

            try
            {
                if (Environment.OSVersion.Version.Minor < 1)
                {
                    var _items = Environment.OSVersion.VersionString.Split(new[] { ' ' });
                    var _values = _items[^1].Split(new[] { '.' });

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
            var result = string.Empty;

            try
            {
                if (Environment.OSVersion.Version.Build < 1)
                {
                    var _items = Environment.OSVersion.VersionString.Split(new[] { ' ' });
                    var _values = _items[^1].Split(new[] { '.' });

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
    public int PortNumber => GetServerAndDatabase().Item3;

    public string ServerName => GetServerAndDatabase().Item1;

    public string Version
    {
        get
        {
            var result = string.Empty;

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
        get => _doNotLog;

        set => _doNotLog = value;
    }
    public bool EraseDatabase { get; set; }
    public bool Logging { get; set; }
    public bool SuppressStartWarnings { get; set; }
    public bool TurboMode { get; set; }
    public bool Warnings { get; set; }

    public char PathSeparator => Path.DirectorySeparatorChar;

    public Constants.OperationModes Mode { get; set; }

    public int BackupSqlMajorVersion { get; set; }
    public int BackupSqlMinorVersion { get; set; }
    public int BackupSqlBuildVersion { get; set; }
    public int ChunkSizeMb { get; set; }
    public int CurrentSqlMajorVersion { get; set; }
    public int MaxThreadCount { get; set; }

    public string BackupSqlEdition { get; set; } = string.Empty;
    public string BackupTimestamp { get; set; } = string.Empty;
    public string DataExclusionlist { get; set; } = string.Empty;
    public string DataSource { get; set; } = string.Empty;
    public string Hash { get; set; } = string.Empty;
    public string OutputPath { get; set; } = string.Empty;
    public string ScriptPath { get; set; } = string.Empty;
    public string SettingsFilePath { get; set; } = string.Empty;
    public string SettingsList
    {
        get
        {
            var result = string.Empty;

            foreach (var item in _settingsJson)
            {
                if (result != string.Empty)
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
        get => _SqlObjects;

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
    public string WarningMessage { get; set; } = string.Empty;

    #endregion
        
    #region File paths

    public string PropsFilename => Constants.PropsFilename;

    public string FulltextCatalogsFilename => Constants.FulltextCatalogsFilename;

    public string DefaultTypesFilename => Constants.DefaultTypesFilename;

    public string SchemasFilename => Constants.SchemasFilename;

    public string TablesFilename => Constants.TablesFilename;

    public string TablePrimaryKeysFilename => Constants.TablePrimaryKeysFilename;

    public string TableDefaultValuesFilename => Constants.TableDefaultValuesFilename;

    public string TablesComputedColumnsFilename => Constants.TableComputedColumnsFilename;

    public string TableIndexesFilename => Constants.TableIndexesFilename;

    public string TableForeignKeysFilename => Constants.TableForeignKeysFilename;

    public string TableCheckConstraintsFilename => Constants.TableCheckConstraintsFilename;

    public string UserDefinedDataTypesFilename => Constants.UserDefinedDataTypesFilename;

    public string UserDefinedTableTypesFilename => Constants.UserDefinedTableTypesFilename;

    public string UserDefinedFunctionsFilename => Constants.UserDefinedFunctionsFilename;

    public string XmlSchemaCollectionsFilename => Constants.XmlSchemaCollectionsFilename;

    public string ViewsFilename => Constants.ViewsFilename;

    public string StoredProceduresFilename => Constants.StoredProceduresFilename;

    public string TriggersFilename => Constants.TriggersFilename;

    public string ExtendedPropertiesFilename => Constants.ExtendedPropertiesFilename;

    public string DataFilePrefix => Constants.DataFilePrefix;

    #endregion
   
    #region Private properties

    private bool _doNotLog;

    public Dictionary<string, string> _settingsJson;
    public Dictionary<string, string> SqlObjectMappings = new ();

    private readonly JObject? BackupDefaults;
    private readonly JObject? RestoreDefaults;

    private string _log = string.Empty;
    private string _SqlObjects = string.Empty;

    #endregion

    #region Constructors

    /// <summary>
    /// Constructor with default values for all settings.
    /// </summary>
    public Settings()
    {
        #region Settings defaults

        Mode = Constants.OperationModes.Version;
        ConnectionGood = false;
        SqlObjects = "all";
        ChunkData = false;
        ChunkSizeMb = 10;
        MaxThreadCount = Environment.ProcessorCount;
        EraseDatabase = false;
        //OutputPath = ProcessFolderPath(Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory));
        CompressData = false;
        ConfirmStart = true;
        ConsoleDarkMode = true;
        SuppressStartWarnings = false;
        BeepOnCompletion = true;
        Logging = true;
        TurboMode = false;

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
        var result = string.Empty;

        foreach (var obj in SqlObjectMappings)
        {
            if (result != string.Empty)
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
        return "," + objects.ToLower().Replace(" ", string.Empty).Trim(new[] { ',' }) + ",";

    }

    /// <summary>
    /// Process a JObject file settings object.
    /// </summary>
    /// <param name="jo">Settings JObject</param>
    private void ProcessFileSettings(JObject jo)
    {
        foreach (var item in jo)
        {
            var jt = item.Value;
            var privateData = false;

            if (jt == null)
                continue;
            
            // ReSharper disable once ConvertIfStatementToSwitchStatement
            if (item.Key.ToLower() == "mode")
            {
                Mode = jt.Value<string>()?.ToLower() switch
                {
                    "backup" => Constants.OperationModes.Backup,
                    "restore" => Constants.OperationModes.Restore,
                    "version" => Constants.OperationModes.Version,
                    "help" => Constants.OperationModes.Help,
                    _ => Constants.OperationModes.Version
                };
            }

            if (item.Key.ToLower() == "beep_on_completion")
            {
                BeepOnCompletion = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "console_dark_mode")
            {
                ConsoleDarkMode = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "data_source")
            {
                DataSource = jt.Value<string>() ?? string.Empty;
                privateData = true;
            }

            if (item.Key.ToLower() == "do_not_log")
            {
                DoNotLog = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "chunk_data")
            {
                ChunkData = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "chunk_size_mb")
            {
                ChunkSizeMb = jt.Value<int>();

                if (ChunkSizeMb < 5)
                {
                    ChunkSizeMb = 5;
                }

                if (ChunkSizeMb > 1000)
                {
                    ChunkSizeMb = 1000;
                }
            }

            if (item.Key.ToLower() == "compress_data")
            {
                CompressData = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "confirm_start")
            {
                ConfirmStart = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "data_blacklist" || item.Key.ToLower() == "data_exclusions")
            {
                DataExclusionlist = jt.Value<string>()?.Replace("[", string.Empty).Replace("]", string.Empty) ?? string.Empty;
            }

            if (item.Key.ToLower() == "erase_database")
            {
                EraseDatabase = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "max_thread_count")
            {
                MaxThreadCount = jt.Value<int>();

                if (MaxThreadCount < 1)
                {
                    MaxThreadCount = 1;
                }

                if (MaxThreadCount > 50)
                {
                    MaxThreadCount = 50;
                }
            }

            if (item.Key.ToLower() == "objects")
            {
                SqlObjects = FormatObjects(jt.Value<string>() ?? string.Empty);
            }

            if (item.Key.ToLower() == "output_path")
            {
                OutputPath = ProcessFolderPath(jt.Value<string>() ?? string.Empty);
                privateData = true;
            }

            if (item.Key.ToLower() == "script_path")
            {
                ScriptPath = ProcessFolderPath(jt.Value<string>() ?? string.Empty);
                privateData = true;
            }

            if (item.Key.ToLower() == "table_protection")
            {
                DataExclusionlist = jt.Value<string>()?.Replace("[", string.Empty).Replace("]", string.Empty) ?? string.Empty;
            }

            if (item.Key.ToLower() == "suppress_start_warnings")
            {
                SuppressStartWarnings = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "turbo_mode")
            {
                TurboMode = jt.Value<bool>();
            }

            if (item.Key.ToLower() == "hash")
            {
                Hash = jt.Value<string>() ?? string.Empty;
            }

            if (item.Key.ToLower() == "logging")
            {
                Logging = jt.Value<bool>();
            }

            if (Identify.GetOsPlatform() == OSPlatform.Windows)
            {
                // ReSharper disable once ConvertIfStatementToSwitchStatement
                if (item.Key.ToLower() == "win_output_path")
                {
                    OutputPath = ProcessFolderPath(jt.Value<string>() ?? string.Empty);
                    privateData = true;
                }

                if (item.Key.ToLower() == "win_script_path")
                {
                    ScriptPath = ProcessFolderPath(jt.Value<string>() ?? string.Empty);
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

                _settingsJson.Add(item.Key.ToLower(), jt.Value<string>() ?? string.Empty);
            }
        }
    }

    /// <summary>
    /// Validate critical settings after they have been loaded.
    /// </summary>
    private void ValidateSettings()
    {
        if (Mode == Constants.OperationModes.Backup)
        {
            if (DataSource == string.Empty)
            {
                Console.WriteLine(string.Empty);
                Console.ForegroundColor = Constants.GetColor("error", ConsoleDarkMode);
                Console.WriteLine("ERROR: You must specify a data source");
                Console.ForegroundColor = DefaultColor;
                Abort = true;
            }

            if (OutputPath == string.Empty)
            {
                Console.WriteLine(string.Empty);
                Console.ForegroundColor = Constants.GetColor("error", ConsoleDarkMode);
                Console.WriteLine("ERROR: You must specify an output path");
                Console.ForegroundColor = DefaultColor;
                Abort = true;
            }
        }

        if (Mode == Constants.OperationModes.Restore)
        {
            if (DataSource == string.Empty)
            {
                Console.WriteLine(string.Empty);
                Console.ForegroundColor = Constants.GetColor("error", ConsoleDarkMode);
                Console.WriteLine("ERROR: You must specify a restore destination");
                Console.ForegroundColor = DefaultColor;
                Abort = true;
            }

            if (ScriptPath == string.Empty)
            {
                Console.WriteLine(string.Empty);
                Console.ForegroundColor = Constants.GetColor("error", ConsoleDarkMode);
                Console.WriteLine("ERROR: You must specify a script path");
                Console.ForegroundColor = DefaultColor;
                Abort = true;
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
                var jo = JObject.Parse(json);

                if (jo.TryGetValue("mode", out var jt))
                {
                    switch (jt.Value<string>()?.ToLower())
                    {
                        case "backup":
                            Mode = Constants.OperationModes.Backup;
                            if (BackupDefaults != null)
                            {
                                Log("## SETTINGS: BACKUP DEFAULTS");
                                ProcessFileSettings(BackupDefaults);
                            }
                            break;

                        case "restore":
                            Mode = Constants.OperationModes.Restore;
                            if (RestoreDefaults != null)
                            {
                                Log("## SETTINGS: RESTORE DEFAULTS");
                                ProcessFileSettings(RestoreDefaults);
                            }
                            break;

                        case "version":
                            Mode = Constants.OperationModes.Version;
                            break;

                        case "help":
                            Mode = Constants.OperationModes.Help;
                            break;

                        default:
                            Mode = Constants.OperationModes.Version;
                            break;
                    }
                }

                Log("## SETTINGS FILE: " + SettingsFilePath);

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
        if (Mode == Constants.OperationModes.Restore)
        {
            var filePath = ScriptPath + Constants.PropsFilename;

            Hash = string.Empty;
            BackupTimestamp = "unknown date";
            BackupSqlMajorVersion = -1;
            BackupSqlMinorVersion = -1;
            BackupSqlBuildVersion = -1;
            BackupSqlEdition = "SQL Server";

            if (File.Exists(filePath))
            {
                var json = File.ReadAllText(filePath);
                var jo = JObject.Parse(json);

                if (jo.TryGetValue(nameof(Hash), out var jt))
                {
                    Hash = jt.Value<string>() ?? string.Empty;
                }

                if (jo.TryGetValue("Timestamp", out jt))
                {
                    BackupTimestamp = jt.Value<string>() ?? string.Empty;
                }

                if (jo.TryGetValue("SqlVersion", out jt))
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

                    if (Constants.SqlServerVersions.ContainsValue(BackupSqlMajorVersion))
                    {
                        BackupSqlEdition = $"SQL Server {Constants.SqlServerVersions.FirstOrDefault(x => x.Value == BackupSqlMajorVersion).Key}";
                    }
                }
                    
                else if (jo.TryGetValue("SqlMajorVersion", out jt))
                {
                    BackupSqlMajorVersion = jt.Value<int>();

                    if (Constants.SqlServerVersions.ContainsValue(BackupSqlMajorVersion))
                    {
                        BackupSqlEdition = $"SQL Server {Constants.SqlServerVersions.FirstOrDefault(x => x.Value == BackupSqlMajorVersion).Key}";
                    }
                }

                if (Constants.SqlServerVersions.ContainsValue(BackupSqlMajorVersion) && jo.TryGetValue("SqlEdition", out jt))
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

                filePath = ScriptPath + "Hash.txt";

                if (File.Exists(filePath))
                {
                    Hash = File.ReadAllText(filePath);
                }
            }
        }
    }

    /// <summary>
    /// Write a SQL backup Props.json file at OutputPath.
    /// </summary>
    public void WritePropsFile()
    {
        if (Mode == Constants.OperationModes.Backup)
        {
            var filePath = OutputPath + Constants.PropsFilename;

            if (string.IsNullOrEmpty(Hash))
            {
                Hash = DataSource.MD5String()[..6];
            }

            BackupTimestamp = $"{DateTime.UtcNow:s}Z";
            BackupSqlEdition = string.Empty;
            BackupSqlMajorVersion = 0;
            BackupSqlMinorVersion = 0;
            BackupSqlBuildVersion = 0;

            using (var cn = new SqlConnection())
            {
                var timer = new StopWatch();
                var timeout = 15;

                if (cn.ConnectionTimeout > 0)
                {
                    timeout = cn.ConnectionTimeout;
                }

                timer.Start();

                var builder = new SqlConnectionStringBuilder(DataSource)
                {
                    TrustServerCertificate = true
                };
                
                cn.ConnectionString = builder.ToString();

                var task2 = cn.OpenAsync();

                while (task2.IsCompleted == false && Abort == false && timer.GetSeconds<int>() <= timeout)
                {
                    System.Threading.Thread.Sleep(Constants.SleepNumber);
                }

                if (Abort == false && task2.IsFaulted == false && timer.GetSeconds<int>() <= timeout)
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
                        Abort = true;
                        Log("- Result: ABORTED; Could not parse SQL Server version (" + cn.ServerVersion + ")");
                    }
                }

                else
                {
                    Abort = true;
                    Log("- Result: ABORTED; Could not connect to SQL Server to obtain version information.");
                }
            }
        }
    }

    /// <summary>
    /// Returns true if a table should be ignored for data backups and restores.
    /// </summary>
    /// <param name="tableNameWithSchema">Table name with schema</param>
    /// <returns>True if table is to be excluded from data backup or restore</returns>
    public bool IsExcludedForData(string tableNameWithSchema)
    {
        var result = false;
        var _tableName = tableNameWithSchema.ToLower().Replace("[", string.Empty).Replace("]", string.Empty);
         
        if (string.IsNullOrWhiteSpace(DataExclusionlist) == false)
        {
            var items = DataExclusionlist.Split(new [] { ',' }, StringSplitOptions.RemoveEmptyEntries);

            foreach (var item in items)
            {
                var blItem = item.Trim().Trim(new[] { '*' }).ToLower().Replace("[", string.Empty).Replace("]", string.Empty);

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
        return IsExcludedForData(tableNameWithSchema);
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
                    .Replace("\r", string.Empty)
                    .Replace("\n", string.Empty)
                    .Split(new[] { ';' });

                // Look for server name...

                var serverPrefixes = new [] { "server", "data source" };

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

                var databasePrefixes = new [] { "database", "initial catalog" };

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
            result = string.Empty;
            var first = true;
            var comma = false;

            if (SqlObjects.Contains(",table,") || SqlObjects.Contains(",pkc,") || SqlObjects.Contains(",index,") || SqlObjects.Contains(",fkc,") || SqlObjects.Contains(",cc,"))
            {
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation) + "Table ";
                comma = false;
                first = false;

                foreach (var obj in SqlObjectMappings)
                {
                    if (obj.Key is "table" or "pkc" or "index" or "fkc" or "cc")
                    {
                        if (SqlObjects.Contains("," + obj.Key + ","))
                        {
                            if (comma)
                            {
                                result += ", ";
                            }

                            result += obj.Value.ApTitleCase();

                            comma = true;
                        }
                    }
                }

                if (Mode == Constants.OperationModes.Restore && string.IsNullOrWhiteSpace(DataExclusionlist) == false)
                {
                    result += Environment.NewLine + indentation + Constants.Padding + Constants.GetArrow() + "Protecting: " + DataExclusionlist;
                }

                result += Environment.NewLine;
            }

            if (SqlObjects.Contains(",ftc,"))
            {
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation) + SqlObjectMappings["ftc"].ApTitleCase() + Environment.NewLine;
                first = false;
            }

            if (SqlObjects.Contains(",view,"))
            {
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation) + SqlObjectMappings["view"].ApTitleCase() + Environment.NewLine;
                first = false;
            }

            if (SqlObjects.Contains(",usp,") || SqlObjects.Contains(",udf,") || SqlObjects.Contains(",tr,"))
            {
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation);
                comma = false;
                first = false;

                foreach (var obj in SqlObjectMappings)
                {
                    if (obj.Key is "usp" or "udf" or "tr")
                    {
                        if (SqlObjects.Contains("," + obj.Key + ","))
                        {
                            if (comma)
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
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation);
                comma = false;
                first = false;

                foreach (var obj in SqlObjectMappings)
                {
                    if (obj.Key is "xsc" or "uddt" or "udtt")
                    {
                        if (SqlObjects.Contains("," + obj.Key + ","))
                        {
                            if (comma)
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
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation) + SqlObjectMappings["dt"].ApTitleCase() + Environment.NewLine;
                first = false;
            }

            if (SqlObjects.Contains(",sc,"))
            {
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation) + SqlObjectMappings["sc"].ApTitleCase() + Environment.NewLine;
                first = false;
            }

            if (SqlObjects.Contains(",xp,"))
            {
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation) + SqlObjectMappings["xp"].ApTitleCase() + Environment.NewLine;
                first = false;
            }

            if (SqlObjects.Contains(",data,"))
            {
                result += (result == string.Empty ? string.Empty : Constants.Padding);
                result += (first ? string.Empty : indentation) + SqlObjectMappings["data"].ApTitleCase();
                result = result.ApTitleCase();

                if (Mode == Constants.OperationModes.Backup && string.IsNullOrWhiteSpace(DataExclusionlist) == false)
                {
                    result += "; except " + DataExclusionlist;

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
                var arg1 = ProcessFilePath(args[0]) + (args[0].Trim(new[] { '\"' }).EndsWith(".json") ? string.Empty : ".json");

                if (File.Exists(arg1) == false)
                {
                    arg1 = GetAppDataPath() + arg1;
                }

                if (File.Exists(arg1))
                {
                    SettingsFilePath = arg1;

                    ProcessSettingsFile();

                    ValidateSettings();
                }

                else
                {
                    Log("## SETTINGS CLI ARGUMENTS:");

                    foreach (var arg in arguments)
                    {
                        var argItem = arg.Trim(new[] { '/' }).Replace("\\", "\\\\").Replace("\\\\\\\\", "\\\\");
                        var pair = argItem.Split(new [] { ':' }, StringSplitOptions.RemoveEmptyEntries);

                        if (pair.Length == 1)
                        {
                            var value = pair[0].Trim().ToLower();

                            json += "\"mode\": \"" + value + "\"";

                            // ReSharper disable once ConvertIfStatementToSwitchStatement
                            if (value == "backup" && BackupDefaults != null)
                            {
                                Mode = Constants.OperationModes.Backup;
                                Log("## SETTINGS: BACKUP DEFAULTS");
                                ProcessFileSettings(BackupDefaults);
                            }

                            else if (value == "restore" && RestoreDefaults != null)
                            {
                                Mode = Constants.OperationModes.Restore;
                                Log("## SETTINGS: RESTORE DEFAULTS");
                                ProcessFileSettings(RestoreDefaults);
                            }

                            else if (value == "version")
                            {
                                Mode = Constants.OperationModes.Version;
                            }

                            else if (value == "help")
                            {
                                Mode = Constants.OperationModes.Help;
                            }

                            else
                            {
                                Mode = Constants.OperationModes.Version;
                            }
                        }

                        else
                        {
                            var value = string.Empty;

                            for (var x = 1; x < pair.Length; x++)
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

                    var jo = JObject.Parse(json);

                    Log("## SETTINGS: CLI ARGUMENTS");

                    ProcessFileSettings(jo);

                    ValidateSettings();
                }
            }
        }

        catch (Exception e)
        {
            Console.WriteLine(string.Empty);
            Console.ForegroundColor = Constants.GetColor("error", ConsoleDarkMode);
            Console.Write("ERROR PROCESSING ARGUMENTS: ");
            Console.WriteLine(e.Message);
            Console.ForegroundColor = DefaultColor;

            Abort = true;

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
        result = result.Replace($"{PathSeparator}{PathSeparator}", $"{PathSeparator}");
        result = Path.GetFullPath(result).TrimEnd(new [] { PathSeparator }) + PathSeparator;

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

        if (File.Exists(filePath))
            return result;
        
        result = ProcessFolderPath(Directory.GetCurrentDirectory());
        filePath = result + "HELP.txt";

        if (File.Exists(filePath) == false)
        {
            result = string.Empty;
        }

        #region Fallback When Debugging...
        
        if (string.IsNullOrEmpty(result))
        {
            result = ProcessFolderPath(Directory.GetCurrentDirectory());

            if (result.ToLower().Contains(Path.DirectorySeparatorChar + "bin" + Path.DirectorySeparatorChar + "debug"))
            {
                result = result.Left(Path.DirectorySeparatorChar + "bin" + Path.DirectorySeparatorChar) + Path.DirectorySeparatorChar;
            
                filePath = result + "HELP.txt";

                if (File.Exists(filePath) == false)
                {
                    result = string.Empty;
                }
            }

            else
            {
                result = string.Empty;
            }
        }
        
        #endregion        
        
        return result;
    }

    /// <summary>
    /// Get the path to the data path for logs, etc.
    /// </summary>
    /// <returns>Folder path to the SQribe data folder</returns>
    public string GetAppDataPath()
    {
        var result = ProcessFolderPath("~/sqribe/");

        if (string.IsNullOrEmpty(result) == false && Directory.Exists(result) == false)
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
        var originalPath = filePath.Trim(new[] { '\"' });
        var segments = filePath.Split(new [] { PathSeparator }, StringSplitOptions.RemoveEmptyEntries);
        var result = filePath;

        if (segments.Length > 1)
        {
            var file = segments[^1];
            var path = (originalPath.StartsWith(PathSeparator.ToString()) ? PathSeparator.ToString() : string.Empty);

            for (var x = 0; x < segments.Length - 1; x++)
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

            _log += message + (addNewline ? Environment.NewLine : string.Empty);
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

            _log = string.Empty;
        }
    }

    #endregion
}