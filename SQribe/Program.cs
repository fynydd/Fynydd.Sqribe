// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;
using Microsoft.Extensions.DependencyInjection;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Threading;
using Humanizer;
using Microsoft.Data.SqlClient;
using SQribe.Halide.Core;

namespace SQribe;

public class Program
{
    /// <summary>
    /// Main console application entry point.
    /// </summary>
    /// <param name="args">Command line arguments</param>
    public static void Main(string[] args)
    {
        // Create service collection
        var serviceCollection = new ServiceCollection();

        // State, output, and helpers
        serviceCollection.AddSingleton<ISettings, Settings>();
        serviceCollection.AddSingleton<IOutput, Output>();
        serviceCollection.AddSingleton<IHelpers, Helpers>();

        // Database objects
        serviceCollection.AddSingleton<IDefaultTypes, DefaultTypes>();
        serviceCollection.AddSingleton<IFullTextCatalogs, FullTextCatalogs>();
        serviceCollection.AddSingleton<ISchemas, Schemas>();
        serviceCollection.AddSingleton<IStoredProcedures, StoredProcedures>();
        serviceCollection.AddSingleton<ITableCheckConstraints, TableCheckConstraints>();
        serviceCollection.AddSingleton<ITableData, TableData>();
        serviceCollection.AddSingleton<ITableForeignKeys, TableForeignKeys>();
        serviceCollection.AddSingleton<ITableIndexes, TableIndexes>();
        serviceCollection.AddSingleton<ITablePrimaryKeys, TablePrimaryKeys>();
        serviceCollection.AddSingleton<ITables, Tables>();
        serviceCollection.AddSingleton<ITriggers, Triggers>();
        serviceCollection.AddSingleton<IUserDefinedDataTypes, UserDefinedDataTypes>();
        serviceCollection.AddSingleton<IUserDefinedFunctions, UserDefinedFunctions>();
        serviceCollection.AddSingleton<IUserDefinedTableTypes, UserDefinedTableTypes>();
        serviceCollection.AddSingleton<IViews, Views>();
        serviceCollection.AddSingleton<IXmlSchemaCollections, XmlSchemaCollections>();
        serviceCollection.AddSingleton<IExtendedProperties, ExtendedProperties>();

        // Application
        serviceCollection.AddSingleton<App>();

        // Create service provider
        var serviceProvider = serviceCollection.BuildServiceProvider();

        #region Debugging Code
        
        // args = new[]
        // {
        //     "test-backup"
        // };
        
        #endregion
        
        // Run the application
        serviceProvider.GetService<App>()?.Run(args);
    }
}

/// <summary>
/// Main calls this, which is the actual program.
/// App.Run() begins application execution.
/// </summary>
public class App
{
    #region Public properties

    public ISettings settings => _settings;

    public IOutput output => _output;

    public IHelpers helpers => _helpers;

    public IDefaultTypes DefaultTypes => _defaultTypes;
    public IFullTextCatalogs FullTextCatalogs => _fullTextCatalogs;
    public ISchemas Schemas => _schemas;
    public IStoredProcedures StoredProcedures => _storedProcedures;
    public ITableCheckConstraints TableCheckConstraints => _tableCheckConstraints;
    public ITableData TableData => _tableData;
    public ITableForeignKeys TableForeignKeys => _tableForeignKeys;
    public ITableIndexes TableIndexes => _tableIndexes;
    public ITablePrimaryKeys TablePrimaryKeys => _tablePrimaryKeys;
    public ITables Tables => _tables;
    public ITriggers Triggers => _triggers;
    public IUserDefinedDataTypes UserDefinedDataTypes => _userDefinedDataTypes;
    public IUserDefinedFunctions UserDefinedFunctions => _userDefinedFunctions;
    public IUserDefinedTableTypes UserDefinedTableTypes => _userDefinedTableTypes;
    public IViews Views => _views;
    public IXmlSchemaCollections XmlSchemaCollections => _xmlSchemaCollections;
    public IExtendedProperties ExtendedProperties => _extendedProperties;

    #endregion

    #region Private properties

    private readonly ISettings _settings;
    private readonly IOutput _output;
    private readonly IHelpers _helpers;

    private readonly IDefaultTypes _defaultTypes;
    private readonly IFullTextCatalogs _fullTextCatalogs;
    private readonly ISchemas _schemas;
    private readonly IStoredProcedures _storedProcedures;
    private readonly ITableCheckConstraints _tableCheckConstraints;
    private readonly ITableData _tableData;
    private readonly ITableForeignKeys _tableForeignKeys;
    private readonly ITableIndexes _tableIndexes;
    private readonly ITablePrimaryKeys _tablePrimaryKeys;
    private readonly ITables _tables;
    private readonly ITriggers _triggers;
    private readonly IUserDefinedDataTypes _userDefinedDataTypes;
    private readonly IUserDefinedFunctions _userDefinedFunctions;
    private readonly IUserDefinedTableTypes _userDefinedTableTypes;
    private readonly IViews _views;
    private readonly IXmlSchemaCollections _xmlSchemaCollections;
    private readonly IExtendedProperties _extendedProperties;

    #endregion

    /// <summary>
    /// Constructor for the application; establishes services for DI.
    /// </summary>
    public App(
            
        ISettings singletonSettings, 
        IOutput singletonOutput, 
        IHelpers singletonHelpers, 

        IDefaultTypes singletonDefaultTypes,
        IFullTextCatalogs singletonFullTextCatalogs,
        ISchemas singletonSchemas,
        IStoredProcedures singletonStoredProcedures,
        ITableCheckConstraints singletonTableCheckConstraints,
        ITableData singletonTableData,
        ITableForeignKeys singletonTableForeignKeys,
        ITableIndexes singletonTableIndexes,
        ITablePrimaryKeys singletonTablePrimaryKeys,
        ITables singletonTables,
        ITriggers singletonTriggers,
        IUserDefinedDataTypes singletonUserDefinedDataTypes,
        IUserDefinedFunctions singletonUserDefinedFunctions,
        IUserDefinedTableTypes singletonUserDefinedTableTypes,
        IViews singletonViews,
        IXmlSchemaCollections singletonXmlSchemaCollections,
        IExtendedProperties extendedProperties
    )
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;

        _defaultTypes = singletonDefaultTypes;
        _fullTextCatalogs = singletonFullTextCatalogs;
        _schemas = singletonSchemas;
        _storedProcedures = singletonStoredProcedures;
        _tableCheckConstraints = singletonTableCheckConstraints;
        _tableData = singletonTableData;
        _tableForeignKeys = singletonTableForeignKeys;
        _tableIndexes = singletonTableIndexes;
        _tablePrimaryKeys = singletonTablePrimaryKeys;
        _tables = singletonTables;
        _triggers = singletonTriggers;
        _userDefinedDataTypes = singletonUserDefinedDataTypes;
        _userDefinedFunctions = singletonUserDefinedFunctions;
        _userDefinedTableTypes = singletonUserDefinedTableTypes;
        _views = singletonViews;
        _xmlSchemaCollections = singletonXmlSchemaCollections;
        _extendedProperties = extendedProperties;
    }

    public void Run(string[] args)
    {
        long token = 0;
        bool terminateKeyThread = false;
        var originalOutputEncoding = Console.OutputEncoding;

        if (Identify.GetOsPlatform() == OSPlatform.Windows)
        {
#pragma warning disable CA1416 // Validate platform compatibility
            Console.SetBufferSize(Console.BufferWidth, short.MaxValue - 1);
#pragma warning restore CA1416 // Validate platform compatibility
        }

        Console.OutputEncoding = System.Text.Encoding.UTF8;
        Console.TreatControlCAsInput = true;
        Console.CursorVisible = true;

        settings.DefaultColor = Console.ForegroundColor;

        settings.ClearLog();
        settings.Log("# LOG STARTED ON " + DateTime.UtcNow + " UTC");

        if (args.Length > 0)
        {
            settings.ProcessCliArguments(args);
        }

        token = output.GetNewToken();

        if (settings.Abort == false)
        {
            if (settings.Mode == Constants.OperationModes.Version)
            {
                settings.Log("# VERSION MODE");

                RunVersion();
            }

            else if (settings.Mode == Constants.OperationModes.Help)
            {
                settings.Log("# HELP MODE");

                RunHelp();
            }

            else
            {
                if (settings.Abort == false)
                {
                    var workerThread = new Thread(() =>
                    {
                        // ReSharper disable once AccessToModifiedClosure
                        // ReSharper disable once LoopVariableIsNeverChangedInsideLoop
                        while (terminateKeyThread == false)
                        {
                            if (Console.IsInputRedirected == false)
                            { 
                                if (Console.KeyAvailable)
                                {
                                    Console.Out.Flush();

                                    var cki = Console.ReadKey(true);

                                    if (cki.Key == ConsoleKey.Escape || cki.Key == ConsoleKey.C && (cki.Modifiers & ConsoleModifiers.Control) != 0)
                                    {
                                        settings.Abort = true;
                                    }

                                    Console.Out.Flush();
                                }

                                if (settings.Abort)
                                {
                                    Console.Out.Flush();
                                }
                            }

                            Thread.Sleep(Constants.SleepNumber);
                        }
                    })
                    {
                        IsBackground = true
                    };
                    workerThread.Start();

                    if (settings.ConfirmStart == false)
                    {
                        settings.Timer.Start();
                    }

                    if (settings.Mode == Constants.OperationModes.Restore)
                    {
                        settings.Log("# RESTORE MODE");

                        RunRestore();
                    }

                    else
                    {
                        settings.Log("# BACKUP MODE");

                        RunBackup();
                    }
                }
            }
        }

        token = output.GetNewToken();

        settings.Log("# JOB SUMMARY");

        // ReSharper disable once ConvertIfStatementToSwitchStatement
        if (settings is {Abort: false, Warnings: false})
        {
            if (settings.Mode != Constants.OperationModes.Help && settings.Mode != Constants.OperationModes.Version)
            {
                output.WriteLine (string.Empty, token);
                output.WriteLine(Enum.GetName(typeof(Constants.OperationModes), settings.Mode)?.ToUpper() + " JOB COMPLETE!", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                settings.Log("- JOB COMPLETED");
            }
        }

        else if (settings is {Abort: false, Warnings: true})
        {
            if (settings.Mode != Constants.OperationModes.Help && settings.Mode != Constants.OperationModes.Version)
            {
                output.WriteLine (string.Empty, token);
                output.WriteLine(Enum.GetName(typeof(Constants.OperationModes), settings.Mode)?.ToUpper() + " JOB COMPLETED WITH WARNINGS!", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));
                settings.Log("- JOB COMPLETED WITH WARNINGS");
            }
        }

        else
        {
            output.WriteLine (string.Empty, token);
            output.WriteLine(Enum.GetName(typeof(Constants.OperationModes), settings.Mode)?.ToUpper() + " PROCESS ABORTED!", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
            settings.Log("- PROCESS ABORTED");

            if (settings.ConnectionGood)
            {
                helpers.Exec(helpers.LoadScript("set-multi-user-mode.sql"), token);
            }
        }

        settings.Timer.Stop();

        if (settings.Mode != Constants.OperationModes.Help && settings.Mode != Constants.OperationModes.Version)
        {
            var msg1 = Enum.GetName(typeof(Constants.OperationModes), settings.Mode) + " " + (settings.Abort ? "aborted" : "completed") + " on " + Constants.GetDateTime();
            var msg2 = "Total time: " + settings.Timer.FormatTimer();

            output.WriteLine (string.Empty, token);
            output.WriteLine(msg1, token);
            output.WriteLine(msg2, token);
            output.WriteLine (string.Empty, token);

            settings.Log("- " + msg1);
            settings.Log("- " + msg2);

            if (settings.Warnings)
            {
                if (settings.Mode != Constants.OperationModes.Help)
                {
                    output.WriteLine(settings.WarningMessage.Replace(Constants.LineFeed, Constants.LineFeed + Constants.Padding), token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                    settings.Log("- WARNING: " + settings.WarningMessage);
                }
            }
        }

        var stopWatch = new StopWatch();
        stopWatch.Start();

        if (settings.BeepOnCompletion && settings.Mode != Constants.OperationModes.Help && settings.Mode != Constants.OperationModes.Version)
        {
            Console.Beep();
        }

        terminateKeyThread = true;

        output.WaitForOutput();
        Thread.Sleep(500);

        output.WriteLine (string.Empty, output.GetNewToken());

        settings.Log("- Waiting for threads");

        output.WaitForOutput();
        Thread.Sleep(500);

        Console.OutputEncoding = originalOutputEncoding;
        Console.TreatControlCAsInput = false;
        Console.CursorVisible = true;

        Console.Out.Flush();

        settings.Log("# APP TERMINATED");

        settings.WriteLog();

        if (Debugger.IsAttached)
        {
            Console.Write("[press any key to quit] ");
            Console.ReadLine();
        }
    }

    /// <summary>
    /// Render a confirmation to continue
    /// </summary>
    /// <returns>True if the calling task should continue</returns>
    private bool AskForConfirmation()
    {
        var result = false;
        var token = output.GetNewToken();

        settings.Log("## ASK FOR CONFIRMATION");

        try
        {
            output.WriteLine (string.Empty, token);
            output.WriteLine("Press [Y] or [ENTER] to " + Enum.GetName(typeof(Constants.OperationModes), settings.Mode)?.ToLower() + ", any other key to cancel" + Constants.Ellipsis, token, (int)Constants.GetColor("prompt", settings.ConsoleDarkMode));
            output.WriteLine("(press [Control]+[C] or [Esc] to abort the " + Enum.GetName(typeof(Constants.OperationModes), settings.Mode)?.ToLower() + " at any time)", token);

            output.Write (string.Empty, token);

            output.WaitForOutput();

            var key = Console.ReadKey(true);

            if (key.Key is ConsoleKey.Enter or ConsoleKey.Y)
            {
                result = true;
            }

            output.WriteLine (string.Empty, token);
        }

        catch (Exception e)
        {
            settings.Abort = true;
            settings.Log("- App.AskForConfirmation() Exception: " + e.Message);
        }

        settings.Log("- Result: " + (result ? "true" : "false"));

        return result;
    }

    /// <summary>
    /// Check the network connection and then the SQL Server database connection string.
    /// Sets settings.Abort = true if either connection fails.
    /// </summary>
    private void CheckConnection()
    {
        var token = output.GetNewToken();

        settings.Log("## CHECK CONNECTION");

        try
        {
            using (var cn = new SqlConnection())
            {
                var builder = new SqlConnectionStringBuilder(settings.DataSource)
                {
                    TrustServerCertificate = true
                };

                cn.ConnectionString = builder.ToString();

                output.WriteBullet(token);
                output.Write("Checking network", token);
                output.WriteArrow(token);

                using (var client = new TcpClient())
                {
                    var task = client.ConnectAsync(settings.ServerName.Left(@"\"), settings.PortNumber);
                    var timer = new StopWatch();
                    var timeout = 15;

                    if (cn.ConnectionTimeout > 0)
                    {
                        timeout = cn.ConnectionTimeout;
                    }

                    timer.Start();

                    while (task.IsCompleted == false && settings.Abort == false && timer.GetSeconds<int>() <= timeout)
                    {
                        Thread.Sleep(Constants.SleepNumber);
                    }

                    // ReSharper disable once ConvertIfStatementToSwitchStatement
                    if (settings.Abort == false && task.IsFaulted == false && timer.GetSeconds<int>() <= timeout)
                    {
                        output.WriteLine("OK", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                        output.WriteBullet(token);
                        output.Write("Checking connection to database server", token);
                        output.WriteArrow(token);

                        settings.Log("- Result: network connection good");

                        timer.Reset();
                        var task2 = cn.OpenAsync();

                        while (task2.IsCompleted == false && settings.Abort == false && timer.GetSeconds<int>() <= timeout)
                        {
                            Thread.Sleep(Constants.SleepNumber);
                        }

                        // ReSharper disable once ConvertIfStatementToSwitchStatement
                        if (settings.Abort == false && task2.IsFaulted == false && timer.GetSeconds<int>() <= timeout)
                        {
                            output.WriteLine("OK", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                            output.WriteBullet(token);
                            output.Write("Server edition", token);
                            output.WriteArrow(token);

                            settings.ConnectionGood = true;
                            
                            settings.Log("- Result: database connection good");

                            #region SQL Server Version detection

                            var sqlServerVersion = string.Empty;
                            var supported = false;

                            settings.CurrentSqlMajorVersion = 0;
                                
                            var sqlReader = new SqlReader(new SqlReaderConfiguration
                            {
                                ConnectionString = settings.DataSource,
                                CommandText = @"select serverproperty('ResourceVersion');"
                            });

                            using (sqlReader.ExecuteReader())
                            {
                                if (sqlReader.HasRows)
                                {
                                    sqlReader.Read();

                                    var serverVersion = sqlReader.SafeGetString(0);

                                    if (int.TryParse(serverVersion.Split('.')[0], out var majorVersion))
                                    {
                                        _ = int.TryParse((cn.ServerVersion ?? string.Empty).Split('.')[1], out var minorVersion);
                                        _ = int.TryParse((cn.ServerVersion ?? string.Empty).Split('.')[2], out var buildVersion);

                                        if (Constants.SqlServerVersions.ContainsValue(majorVersion))
                                        {
                                            sqlServerVersion = $"SQL Server {Constants.SqlServerVersions.FirstOrDefault(x => x.Value == majorVersion).Key} ({majorVersion}.{minorVersion}.{buildVersion})";
                                            supported = true;

                                            output.WriteLine(sqlServerVersion, token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));

                                            settings.CurrentSqlMajorVersion = majorVersion;
                                            settings.Log($"- Result: {sqlServerVersion}");
                                        }

                                        else
                                        {
                                            output.WriteLine("Unsupported SQL Server edition", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                                            settings.Log($"- Result: Unsupported SQL Server edition ({majorVersion})");
                                        }
                                    }

                                    else
                                    {
                                        output.WriteLine("Could not detect SQL Server edition", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                                        settings.Log($"- Result: Could not detect SQL Server edition ({serverVersion})");
                                    }
                                }

                                else
                                {
                                    output.WriteLine("Could not detect SQL Server edition", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                                    settings.Log("- Result: Could not detect SQL Server edition");
                                }
                                
                                if (supported == false)
                                {
                                    output.WriteLine (string.Empty, token);
                                    output.WriteLine("Press [Y] or [ENTER] to continue anyway, or any other key to cancel" + Constants.Ellipsis, token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                                    output.Write (string.Empty, token);

                                    output.WaitForOutput();

                                    var key = Console.ReadKey(true);

                                    if (key.Key != ConsoleKey.Enter && key.Key != ConsoleKey.Y)
                                    {
                                        settings.Abort = true;
                                    }

                                    output.WriteLine (string.Empty, token);
                                }
                            }
                            
                            #endregion

                            #region Check Database Permissions

                            if (settings.Abort == false)
                            {
                                var backupPermissions = new [] { 
                                    "CONNECT",
                                    "SELECT",
                                    "INSERT",
                                    "UPDATE",
                                    "DELETE",
                                    "VIEW DATABASE STATE"
                                };

                                var restorePermissions = new [] {
                                    "CONNECT",
                                    "SELECT",
                                    "INSERT",
                                    "UPDATE",
                                    "DELETE",
                                    "CREATE TABLE",
                                    "CREATE VIEW",
                                    "CREATE PROCEDURE",
                                    "CREATE FUNCTION",
                                    "CREATE RULE",
                                    "CREATE DEFAULT",
                                    "CREATE TYPE",
                                    "CREATE XML SCHEMA COLLECTION",
                                    "CREATE SCHEMA",
                                    "CREATE FULLTEXT CATALOG",
                                    "ALTER",
                                    "ALTER ANY SCHEMA",
                                    "ALTER ANY FULLTEXT CATALOG",
                                    "EXECUTE",
                                    "VIEW DATABASE STATE",
                                    "VIEW DEFINITION"
                                };
 
                                var foundPermissions = new List<string>();
                                var permissionsToCheck = backupPermissions;

                                if (settings.Mode == Constants.OperationModes.Restore)
                                {
                                    permissionsToCheck = restorePermissions;
                                }

                                output.WriteBullet(token);
                                output.Write("Permissions", token);
                                output.WriteArrow(token);

                                using (var reader = new SqlReader(new SqlReaderConfiguration
                                       {
                                           ConnectionString = settings.DataSource,
                                           CommandText = helpers.LoadScript("select-permissions.sql")
                                       }))
                                {
                                    if (settings.Abort == false)
                                    {
                                        var ctsP = new CancellationTokenSource();
                                        var taskP = reader.ExecuteReaderAsync(ctsP.Token);
        
                                        while (taskP.IsCompleted == false)
                                        {
                                            if (settings.Abort)
                                            {
                                                ctsP.Cancel();
                                            }

                                            Thread.Sleep(Constants.SleepNumber);
                                        }

                                        if (settings.Abort == false)
                                        {
                                            if (reader.HasRows)
                                            {
                                                while (reader.ReadAsync(ctsP.Token).GetAwaiter().GetResult())
                                                {
                                                    if (settings.Abort)
                                                    {
                                                        ctsP.Cancel();
                                                        break;
                                                    }

                                                    foreach (var permission in permissionsToCheck)
                                                    {
                                                        if (reader.SafeGetString("permission_name").ToUpper() == permission)
                                                        {
                                                            foundPermissions.Add(permission);

                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                

                                if (foundPermissions.Count < permissionsToCheck.Length)
                                {
                                    var missingPermissions = string.Empty;

                                    foreach (var permission in permissionsToCheck)
                                    {
                                        if (foundPermissions.Contains(permission) == false)
                                        {
                                            if (missingPermissions.Length > 0)
                                            {
                                                missingPermissions += ", ";
                                            }

                                            missingPermissions += permission;
                                        }
                                    }

                                    output.WriteLine("Missing permissions (" + missingPermissions + ")", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));
                                    settings.Log("- Result: Missing permissions (" + missingPermissions + ")");

                                    output.WriteLine (string.Empty, token);
                                    output.WriteLine("Press [Y] or [ENTER] to continue anyway, or any other key to cancel" + Constants.Ellipsis, token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                                    output.Write (string.Empty, token);

                                    output.WaitForOutput();

                                    var key = Console.ReadKey(true);

                                    if (key.Key != ConsoleKey.Enter && key.Key != ConsoleKey.Y)
                                    {
                                        settings.Abort = true;
                                    }

                                    output.WriteLine (string.Empty, token);
                                }

                                else
                                {
                                    output.WriteLine("OK", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                                    settings.Log("- Result: Permissions OK");
                                }
                            }

                            #endregion
                        }

                        else
                        {
                            if (settings.Abort == false)
                            {
                                output.WriteLine("DATABASE IS UNAVAILABLE!", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                                output.WriteLine (string.Empty, token);

                                settings.Abort = true;

                                settings.Log("- Result: database unavailable");
                            }

                            else
                            {
                                output.WriteLine("ABORTED!", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                                output.WriteLine (string.Empty, token);

                                settings.Log("- Result: ABORTED");
                            }
                        }
                    }

                    else
                    {
                        if (settings.Abort == false)
                        {
                            var msg = settings.ServerName.ToUpper() + "," + settings.PortNumber + " IS UNREACHABLE!";

                            output.WriteLine(msg, token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                            output.WriteLine (string.Empty, token);

                            settings.Abort = true;

                            settings.Log("- Result: " + msg);
                        }

                        else
                        {
                            output.WriteLine("ABORTED!", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                            output.WriteLine (string.Empty, token);

                            settings.Log("- Result: ABORTED");
                        }
                    }
                }
            }
        }

        catch (Exception e)
        {
            output.WriteLine (string.Empty, token);
            output.WriteLine (string.Empty, token);
            output.WriteLine("ERROR CONNECTING TO SERVER: ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
            output.WriteLine(e.Message.StandardizeLineEndings(Constants.LineFeed).Replace(Constants.LineFeed, Constants.LineFeed + Constants.Padding), token);

            settings.Abort = true;

            settings.Log("- App.CheckConnection() Exception: " + e.Message);
        }
    }

    /// <summary>
    /// Output a standard SQribe branding and version header.
    /// </summary>
    private void OutputHeader()
    {
        try
        {
            var token = output.GetNewToken();

            output.WriteLine (string.Empty, token);
            output.WriteLine(("SQRIBE for SQL Server " + settings.Version + "{{gap}}— " + Enum.GetName(typeof(Constants.OperationModes), settings.Mode)?.ToUpper() + " MODE —{{gap}}(C) 2018, Fynydd LLC").FillWidth(Constants.ColumnWidth), token);
            output.WriteLine(Constants.GetHeaderBar().Repeat(Constants.ColumnWidth), token);
            output.WriteLine (string.Empty, token);
        }

        catch (Exception e)
        {
            settings.Log("- App.OutputHeader() Exception: " + e.Message);
        }
    }

    /// <summary>
    /// Output the SQribe help text (help mode).
    /// </summary>
    private void RunHelp()
    {
        try
        {
            var h = Console.WindowHeight;
            var filePath = settings.GetAppPath() + "HELP.txt";
            var content = File.ReadAllText(filePath).StandardizeLineEndings(Environment.NewLine);

            content = content.HardWrap(Console.WindowWidth - 1 - (Constants.Padding.Length * 2), Environment.NewLine, Constants.Padding);

            var lines = content.Split(new [] { Environment.NewLine }, StringSplitOptions.None);
            var pages = new List<List<string>>();
            var pageLines = new List<string>();
            int x = 0;
            var page = 0;

            for (x = 0; x < lines.Length; x++)
            {
                if (pageLines.Any() || (pageLines.Any() == false && string.IsNullOrWhiteSpace(lines[x]) == false))
                {
                    pageLines.Add(lines[x]);
                }

                if (pageLines.Count() == h - 5)
                {
                    pages.Add(pageLines.ToList());
                    pageLines.Clear();
                }
            }

            if (pageLines.Any())
            {
                for (var y = pageLines.Count(); y < h - 5 - pageLines.Count; y++)
                {
                    pageLines.Add(" ");
                }

                pages.Add(pageLines.ToList());
                pageLines.Clear();
            }

            Console.CursorVisible = false;

            var watch = true;
            var render = true;
            var cki = new ConsoleKeyInfo();

            while (watch)
            {
                Thread.Sleep(Constants.SleepNumber);

                if (Console.IsInputRedirected == false && (Console.KeyAvailable || render))
                {
                    if (render == false)
                    {
                        cki = Console.ReadKey(true);
                        Console.Out.Flush();

                        // ReSharper disable once ConvertIfStatementToSwitchStatement
                        if (cki.Key is ConsoleKey.DownArrow or ConsoleKey.RightArrow or ConsoleKey.PageDown or ConsoleKey.Spacebar)
                        {
                            if (page < pages.Count - 1)
                            {
                                page++;

                                if (page > pages.Count - 1)
                                {
                                    page = pages.Count - 1;
                                }

                                render = true;
                            }
                        }

                        else if (cki.Key is ConsoleKey.UpArrow or ConsoleKey.LeftArrow or ConsoleKey.PageUp)
                        {
                            if (page > 0)
                            {
                                page--;

                                if (page < 0)
                                {
                                    page = 0;
                                }

                                render = true;
                            }
                        }

                        else if (cki.Key == ConsoleKey.W)
                        {
                            var process = new Process();
                            process.StartInfo.UseShellExecute = true;
                            process.StartInfo.FileName = Constants.WebsiteUrlBase;
                            process.Start();
                        }

                        else
                        {
                            watch = false;
                            Console.Out.Flush();
                        }

                        Console.SetCursorPosition(0, Console.CursorTop);
                        Console.Write(" ".Repeat(Console.WindowWidth - 1));
                        Console.SetCursorPosition(0, Console.CursorTop);
                    }

                    else
                    {
                        render = false;

                        Console.Out.Flush();
                        Console.Clear();
                        Console.SetCursorPosition(0, 0);

                        var divider = "☰";

                        if (Identify.GetOsPlatform() == OSPlatform.Windows)
                        {
                            divider = "■";
                        }

                        Console.WriteLine(divider.Repeat(Console.WindowWidth - 1));
                        Console.WriteLine((Constants.Padding + "SQribe " + settings.Version + " Help " + (page + 1) + " of " + pages.Count() + "{{gap}}[w] website • [arrows] next/prev page • [esc] quit" + Constants.Padding).FillWidth(Console.WindowWidth - 1));
                        Console.WriteLine(divider.Repeat(Console.WindowWidth - 1));

                        Console.WriteLine(" ".Repeat(Console.WindowWidth - 1));

                        foreach (var line in pages[page])
                        {
                            Console.WriteLine(line);
                        }

                        while (Console.KeyAvailable)
                        {
                            cki = Console.ReadKey(true);
                            Console.Out.Flush();
                        }
                    }
                }
            }
        }

        catch (Exception e)
        {
            settings.Log("- App.RunHelp() Exception: " + e.Message);
        }

        Console.Out.Flush();
        Console.Clear();
        Console.SetCursorPosition(0, 0);
    }

    /// <summary>
    /// Output SQribe app information.
    /// </summary>
    private void RunVersion()
    {
        try
        {
            var token = output.GetNewToken();

            output.WriteLine (string.Empty, token);
            output.WriteLine("SQRIBE for SQL Server " + settings.Version + " for " + Identify.GetOsPlatformName() + " " + Identify.GetPlatformArchitecture() + " (CLR " + Identify.GetRuntimeVersion() + ")", token);
            output.WriteLine (string.Empty, token);
            output.WriteLine("For more info, run: sqribe help", token);
            output.WriteLine (string.Empty, token);
        }

        catch (Exception e)
        {
            settings.Log("- App.RunVersion() Exception: " + e.Message);
        }
    }

    /// <summary>
    /// Run a backup operation.
    /// </summary>
    [SuppressMessage("ReSharper", "AccessToModifiedClosure")]
    private void RunBackup()
    {
        var token = output.GetNewToken();

        OutputHeader();

        if (settings.Abort == false)
        {
            if (string.IsNullOrWhiteSpace(settings.SettingsFilePath) == false)
            {
                output.Write("Settings  ", token);
                output.WriteBar(token);
                output.Write("  ", token);
                output.WriteLine((settings.SettingsFilePath.StartsWith(settings.GetAppDataPath()) ? "~/sqribe/" : string.Empty) + settings.SettingsFilePath.GetFilename(), token);
                output.WriteLine (string.Empty, token);
            }

            output.Write("  Source  ", token);
            output.WriteBar(token);
            output.Write("  " + settings.ServerName.ToUpper() + "," + settings.PortNumber, token);
            output.WriteArrow(token);
            output.WriteLine(settings.DatabaseName + " (" + settings.MaxThreadCount + " " + (settings.MaxThreadCount == 1 ? "thread" : "thread".Pluralize()) + ")", token);

            output.WriteLine (string.Empty, token);
            output.Write("  Output  ", token);
            output.WriteBar(token);
            output.WriteLine("  " + Path.GetFullPath(settings.OutputPath), token);

            if (settings.ChunkData)
            {
                output.WriteLine("           " + Constants.GetIndentationArrow() + settings.ChunkSizeMb + "mb chunks", token);
            }

            if (settings.CompressData)
            {
                output.WriteLine("           " + Constants.GetIndentationArrow() + "Compress data files", token);
            }

            if (settings.SuppressStartWarnings == false)
            {
                output.WriteLine("           " + Constants.GetIndentationArrow() + "WARNING: will delete existing scripts", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));
            }

            if (settings.TurboMode)
            {
                output.WriteLine("           " + Constants.GetIndentationArrow() + "Using Turbo Mode", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));
            }

            output.WriteLine (string.Empty, token);
            output.Write(" Objects  ", token);
            output.WriteBar(token);
            output.WriteLine("  " + settings.OutputObjects("             "), token);

            output.WriteLine("▬▬▬▬▬▬▬▬▬▬▬▬".Repeat(Constants.ColumnWidth), token);

            if (settings.ConfirmStart)
            {
                settings.Timer.Stop();

                if (AskForConfirmation() == false)
                {
                    settings.Abort = true;
                }

                settings.Timer.Start();
            }

            else
            {
                output.WriteLine (string.Empty, token);
            }
        }

        #region Check network and file cleanup

        if (settings.Abort == false)
        {
            try
            {
                Console.CursorVisible = false;

                CheckConnection();

                if (settings.Abort == false)
                {
                    token = output.GetNewToken();

                    output.WriteBullet(token);
                    output.Write("Performing file cleanup", token);
                    output.WriteArrow(token);

                    settings.Log("## FILE CLEANUP");

                    var msg = string.Empty;

                    if (!Directory.Exists(settings.OutputPath))
                    {
                        Directory.CreateDirectory(settings.OutputPath);
                    }

                    if (helpers.PurgeSchemaFiles() == false)
                    {
                        msg = "schema";
                    }

                    if (helpers.PurgeDataFiles() == false)
                    {
                        if (msg != string.Empty)
                        {
                            msg += " & ";
                        }

                        msg += "data";
                    }

                    if (msg != string.Empty)
                    {
                        output.WriteLine("Error deleting " + msg + " files.", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                        settings.Log("- Result: Error deleting " + msg + " files.");
                    }

                    else
                    {
                        output.WriteLine("DONE", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));

                        settings.Log("- Result: DONE");
                    }

                    output.WriteLine (string.Empty, token);
                }
            }

            catch (Exception e)
            {
                settings.Log("- App.RunBackup() Exception: " + e.Message);
            }
        }

        #endregion

        if (settings.Abort == false)
        {
            try
            {
                settings.WritePropsFile();

                //var schemaInitScript = helpers.LoadTemplate("init-schemas.sql");

                if (settings.SqlObjects != (",data,") && settings.Abort == false)
                {
                    var groupToken = output.GetNewToken();
                    output.WriteBullet(groupToken);
                    output.Write("Scripting schema object types", groupToken);
                    output.WriteArrow(groupToken);

                    settings.Log("## BACKUP SCHEMA OBJECTS");

                    var threads = new ConcurrentQueue<Thread>();
                    var threadsRunning = 0;
                    var counter = 0;
                    var total = 0;

                    var calls = new [] {
                        ()=> Schemas.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> DefaultTypes.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> XmlSchemaCollections.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> TablePrimaryKeys.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> TableForeignKeys.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> TableCheckConstraints.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> TableIndexes.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> UserDefinedDataTypes.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> UserDefinedTableTypes.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> UserDefinedFunctions.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> Views.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> FullTextCatalogs.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> StoredProcedures.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> Triggers.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> ExtendedProperties.GenerateCreateScript(ref counter, ref total, groupToken)
                        ,()=> Tables.GenerateCreateScript(ref counter, ref total, groupToken)
                    };

                    output.ReseedThreadTokens();

                    for (var x = 0; x < settings.MaxThreadCount; x++)
                    {
                        var _token = output.ClaimThreadToken();
                        output.WriteIndentationArrow(_token);
                        output.Write("Task #" + (x + 1) + ": ", _token);
                        output.Write("idle", _token, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);
                    }

                    output.UnclaimAllThreadTokens();

                    counter = calls.Length;
                    output.Write(counter.ToString("#,##0") + " left", groupToken, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

                    foreach (var a in calls) {

                        var t = new Thread ( () => {

                            a();
                        })
                        {
                            IsBackground = true
                        };
                        t.Start();

                        threads.Enqueue(t);

                        do
                        {
                            threadsRunning = 0;

                            foreach (var thread in threads)
                            {
                                if (thread.IsAlive)
                                {
                                    threadsRunning++;
                                }
                            }

                            Thread.Sleep(Constants.SleepNumber);

                        } while (threadsRunning >= settings.MaxThreadCount);
                    }

                    do
                    {
                        threadsRunning = 0;

                        foreach (var thread in threads)
                        {
                            if (thread.IsAlive)
                            {
                                threadsRunning++;
                            }
                        }

                        Thread.Sleep(Constants.SleepNumber);

                    } while (threadsRunning > 0);

                    if (settings.Abort == false)
                    {
                        var msg = total.ToString("#,##0") + " object types; DONE";

                        output.Write(msg, groupToken, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);

                        settings.Log("### Result: " + msg);
                    }

                    else
                    {
                        output.Write("ABORTED", groupToken, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                        settings.Log("### Result: ABORTED");
                    }

                    output.WriteLine (string.Empty, token);
                }

                if (settings.SqlObjects.Contains(",data,") && settings.Abort == false)
                {
                    var groupToken = output.GetNewToken();
                    output.WriteBullet(groupToken);
                    output.Write("Scripting data for ", groupToken);

                    settings.Log("## BACKUP DATA");

                    output.ReseedThreadTokens();

                    for (var x = 0; x < settings.MaxThreadCount; x++)
                    {
                        var _token = output.ClaimThreadToken();
                        output.WriteIndentationArrow(_token);
                        output.Write("Task #" + (x + 1) + ": ", _token);
                        output.Write("idle", _token, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);
                    }

                    output.UnclaimAllThreadTokens();

                    TableData.GenerateInsertScripts(groupToken);

                    if (settings is {ChunkData: true, Abort: false})
                    {
                        TableData.ChunkFiles();
                    }
                }
            }

            catch (Exception e)
            {
                output.WriteLine (string.Empty, token);
                output.WriteLine("ERROR DURING BACKUP: ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                output.WriteLine(e.Message, token);
                output.WriteLine (string.Empty, token);

                settings.Abort = true;

                settings.Log("### App.RunBackup() Exception (2): " + e.Message);
            }
        }
    }

    /// <summary>
    /// Run a restore operation.
    /// </summary>
    private void RunRestore()
    {
        var token = output.GetNewToken();

        OutputHeader();

        settings.ReadPropsFile();

        if (settings.Abort == false)
        {
            if (string.IsNullOrWhiteSpace(settings.SettingsFilePath) == false)
            {
                output.Write("   Settings  ", token);
                output.WriteBar(token);
                output.Write("  ", token);
                output.WriteLine((settings.SettingsFilePath.StartsWith(settings.GetAppDataPath()) ? "~/sqribe/" : string.Empty) + settings.SettingsFilePath.GetFilename(), token);
                output.WriteLine (string.Empty, token);
            }

            output.Write("     Source  ", token);
            output.WriteBar(token);
            output.WriteLine("  " + Path.GetFullPath(settings.ScriptPath), token);

            if (settings.BackupTimestamp.IsDate())
            {
                // Wed-Dec-07-2022 @ 5:28PM
                var timestamp = DateTime.Parse(settings.BackupTimestamp);
                output.Write("             ", token);
                output.WriteLine(" " + Constants.GetIndentationArrow() + "Backup on " + $"{timestamp.ToLocalTime():ddd-MMM-dd-yyyy} @ {timestamp.ToLocalTime():h:mmtt}", token);
            }

            if (settings.BackupSqlMajorVersion > 0)
            {
                output.Write("             ", token);
                    
                if (settings.BackupSqlMinorVersion > -1)
                {
                    output.WriteLine($" {Constants.GetIndentationArrow()}{settings.BackupSqlEdition} ({settings.BackupSqlMajorVersion}.{settings.BackupSqlMinorVersion}.{settings.BackupSqlBuildVersion})", token);
                }

                else
                {
                    output.WriteLine($" {Constants.GetIndentationArrow()}{settings.BackupSqlEdition} ({settings.BackupSqlMajorVersion})", token);
                }
            }

            output.WriteLine (string.Empty, token);
            output.Write("Destination  ", token);
            output.WriteBar(token);
            output.Write("  " + settings.ServerName.ToUpper() + "," + settings.PortNumber, token);
            output.WriteArrow(token);
            output.WriteLine(settings.DatabaseName + " (" + settings.MaxThreadCount + " " + (settings.MaxThreadCount == 1 ? "thread" : "thread".Pluralize()) + ")", token);

            if (settings.EraseDatabase)
            {
                if (settings.SuppressStartWarnings == false)
                {
                    output.WriteLine("              " + Constants.GetIndentationArrow() + "WARNING: will drop all objects before restoration", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));
                }

                else
                {
                    output.WriteLine("              " + Constants.GetIndentationArrow() + "Drop objects prior to restoration", token);
                }
            }

            else
            {
                output.WriteLine("              " + Constants.GetIndentationArrow() + "Will not drop objects prior to restoration", token);
            }

            output.WriteLine (string.Empty, token);
            output.Write("    Objects  ", token);
            output.WriteBar(token);
            output.WriteLine("  " + settings.OutputObjects("                "), token);

            output.WriteLine("▬▬▬▬▬▬▬▬▬▬▬▬".Repeat(Constants.ColumnWidth), token);

            if (settings.ConfirmStart)
            {
                settings.Timer.Stop();

                if (AskForConfirmation() == false)
                {
                    settings.Abort = true;
                }

                settings.Timer.Start();
            }

            Console.CursorVisible = false;

            output.WriteLine (string.Empty, token);

            CheckConnection();

            output.WriteLine (string.Empty, token);
        }

        if (settings.Abort == false)
        {
            try
            {
                Console.CursorVisible = false;

                #region Erase database

                if (settings is {Abort: false, EraseDatabase: true})
                {
                    settings.Log("## ERASE DATABASE");

                    // - Set single user mode
                    // - Drop extended properties
                    // - Drop triggers
                    // - Drop table foreign keys
                    // - Drop full text catalogs
                    // - Drop indexes
                    // - Drop triggers
                    // - Drop views
                    // - Drop stored procedures
                    // - Drop table primary keys
                    // - Drop tables
                    // - Drop user-defined table types
                    // - Drop user-defined data types
                    // - Drop user-defined functions
                    // - Drop XML schema collections
                    // - Drop default types
                    // - Drop schemas
                    // - Set multi-user mode

                    settings.Log("- Set single user mode...");
                    helpers.Exec(helpers.LoadScript("set-single-user-mode.sql"), token, showProgress: false, prefix: string.Empty, ignoreErrors: true);

                    output.WriteBullet(token);
                    output.WriteLine("Dropping selected database objects" + Constants.Ellipsis, token);

                    settings.Log("- Dropping extended properties...");
                    ExtendedProperties.DropAll(token);

                    settings.Log("- Dropping triggers...");
                    Triggers.DropAll(token);
							
                    settings.Log("- Dropping table foreign keys...");
                    TableForeignKeys.DropAll(token);

                    settings.Log("- Dropping full text catalogs...");
                    FullTextCatalogs.DropAll(token);

                    settings.Log("- Dropping indexes...");
                    TableIndexes.DropAll(token);

                    settings.Log("- Dropping table check constraints...");
                    TableCheckConstraints.DropAll(token);

                    settings.Log("- Dropping views...");
                    Views.DropAll(token);

                    settings.Log("- Dropping stored procedures...");
                    StoredProcedures.DropAll(token);

                    settings.Log("- Dropping table primary keys...");
                    TablePrimaryKeys.DropAll(token);

                    settings.Log("- Dropping tables...");
                    Tables.DropAll(token);

                    settings.Log("- Dropping user-defined table types...");
                    UserDefinedTableTypes.DropAll(token);

                    settings.Log("- Dropping user-defined data types...");
                    UserDefinedDataTypes.DropAll(token);

                    settings.Log("- Dropping user-defined functions...");
                    UserDefinedFunctions.DropAll(token);

                    settings.Log("- Dropping XML schema collections...");
                    XmlSchemaCollections.DropAll(token);

                    settings.Log("- Dropping default types...");
                    DefaultTypes.DropAll(token);

                    settings.Log("- Dropping schemas...");
                    Schemas.DropAll(token);

                    settings.Log("- Setting multi-user mode...");
                    helpers.Exec(helpers.LoadScript("set-multi-user-mode.sql"), token, showProgress: false, prefix: string.Empty, ignoreErrors: true);

                    if (settings.Abort == false)
                    {
                        output.WriteIndentationArrow(token);
                        output.WriteLine("DONE", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                        output.WriteLine (string.Empty, token);

                        settings.Log("### Result: DONE");
                    }

                    else
                    {
                        output.WriteIndentationArrow(token);
                        output.WriteLine("ABORTED", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                        output.WriteLine (string.Empty, token);

                        settings.Log("### Result: ABORTED");
                    }
                }

                #endregion

                #region Restore schema objects

                // ORDER FOR RESTORE
                // ------------------------
                // schema collections
                // xml schema collections
                // default types
                // uddt
                // tables (no computed columns, no default values, no foreign keys, no check constraints)
                // udf
                // udtt
                // views
                // table - recreated with computed column values and default values
                // table - primary keys
                // table - indexes
                // fulltext
                // usp
                // data restore (optional)
                // foreign keys
                // check constraints

                if (settings.Abort == false)
                {
                    if (settings.SqlObjects.Replace(",data,", ",").Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries).Length > 0)
                    {
                        output.WriteBullet(token);
                        output.WriteLine("Restoring schema objects" + Constants.Ellipsis, token);

                        settings.Log("## RESTORING SCHEMA OBJECTS");

                        Schemas.Restore(token);

                        XmlSchemaCollections.Restore(token);

                        DefaultTypes.Restore(token);

                        UserDefinedDataTypes.Restore(token);

                        Tables.Restore(token);

                        UserDefinedFunctions.Restore(token);

                        UserDefinedTableTypes.Restore(token);

                        Views.Restore(token);

                        Tables.RestoreComputedColumns(token);

                        Tables.RestoreDefaultValues(token);

                        TablePrimaryKeys.Restore(token);

                        FullTextCatalogs.Restore(token);

                        StoredProcedures.Restore(token);

                        if (settings.Abort == false)
                        {
                            output.WriteIndentationArrow(token);
                            output.WriteLine("DONE", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                            output.WriteLine (string.Empty, token);

                            settings.Log("### Result: DONE");
                        }

                        else
                        {
                            output.WriteIndentationArrow(token);
                            output.WriteLine("ABORTED", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                            output.WriteLine (string.Empty, token);

                            settings.Log("### Result: ABORTED");
                        }
                    }
                }

                #endregion

                #region Restore data

                if (settings.Abort == false)
                {
                    if (settings.SqlObjects.Contains(",data,"))
                    {
                        var groupToken = output.GetNewToken();
                        output.WriteBullet(groupToken);
                        output.Write("Restoring data for ", groupToken);

                        settings.Log("## RESTORING DATA");

                        output.ReseedThreadTokens();

                        for (var x = 0; x < settings.MaxThreadCount; x++)
                        {
                            var _token = output.ClaimThreadToken();
                            output.WriteIndentationArrow(_token);
                            output.Write("Task #" + (x + 1) + ": ", _token);
                            output.Write("idle", _token, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);
                        }

                        output.UnclaimAllThreadTokens();

                        TableData.Restore(groupToken);
                    }
                }

                #endregion

                #region Restore remaining schema objects

                if (settings.Abort == false)
                {
                    if (settings.SqlObjects.Replace(",data,", ",").Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries).Length > 0)
                    {
                        token = output.GetNewToken();

                        output.WriteBullet(token);
                        output.WriteLine("Finishing up" + Constants.Ellipsis, token);

                        settings.Log("## FINISHING SCHEMA");

                        TableIndexes.Restore(token);

                        TableForeignKeys.Restore(token);

                        TableCheckConstraints.Restore(token);

                        Triggers.Restore(token);

                        ExtendedProperties.Restore(token);

                        if (settings.Abort == false)
                        {
                            output.WriteIndentationArrow(token);
                            output.WriteLine("DONE", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));
                            output.WriteLine (string.Empty, token);

                            settings.Log("### Result: DONE");
                        }

                        else
                        {
                            output.WriteIndentationArrow(token);
                            output.WriteLine("ABORTED", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                            output.WriteLine (string.Empty, token);

                            settings.Log("### Result: ABORTED");
                        }
                    }
                }

                #endregion
            }

            catch (Exception e)
            {
                output.Write("ERROR DURING RESTORE: ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                output.WriteLine(e.Message, token);
                output.WriteLine (string.Empty, token);

                settings.Abort = true;

                settings.Log("### App.RunRestore() Exception: " + e.Message);
            }
        }
    }
}