// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Fynydd.Halide;

namespace SQribe
{
    public interface ITableData
	{
        ISettings settings { get; }
        IOutput output { get; }
        IHelpers helpers { get; }
        void GenerateInsertScripts(long groupToken);
        void ChunkFiles();
        void Restore(long groupToken);
    }

    #region Thread parameter classes

    public class DataThreadParams
    {
        public string schemaName { get; set; }
        public string tableName { get; set; }
        public int rowCount { get; set; }
        public int level { get; set; }
        public int tableCount { get; set; }
        public long token { get; set; }
        public long groupToken { get; set; }
    
        public DataThreadParams()
        {
            schemaName = "";
            tableName = "";
            rowCount = 0;
            level = 0;
            tableCount = 0;
            token = -1;
            groupToken = -1;
        }
    }

    public class ChunkingThreadParams
    {
        public string filePath { get; set; }
        public int totalChunks { get; set; }
        public long sizeToChunk { get; set; }
        public int tableCount { get; set; }
        public long token { get; set; }
        public long groupToken { get; set; }

        public ChunkingThreadParams()
        {
            filePath = "";
            totalChunks = 0;
            sizeToChunk = 0;
            tableCount = 0;
            token = -1;
            groupToken = -1;
        }
    }

    #endregion
    
	public class TableData : ITableData
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
        private int counter;
        private long totalRowCount;
        private long totalByteCount;

        #endregion

        public TableData(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
        {
            _settings = singletonSettings;
            _output = singletonOutput;
            _helpers = singletonHelpers;

            counter = 0;
        }

        #region Backup methods

		/// <summary>
		/// Generate scripts to insert data.
		/// </summary>
		public void GenerateInsertScripts(long groupToken)
		{
            var token = output.GetNewToken();
            var log = "### Started table data script creation" + Environment.NewLine;

            try
            {
                StringBuilder strSql = new StringBuilder();
                var tableCount = 0;

                totalByteCount = 0;
                totalRowCount = 0;

                using (var reader = new DataReader(helpers.LoadScript("select-table-dependencies.sql"), settings.DataSource))
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
                                    if (settings.IsBlacklistedForData(reader["SCHEMA_NAME"] + "." + reader["TABLE_NAME"]) == false)
                                    {
                                        tableCount++;
                                    }

                                    else
                                    {
                                        log += "- BLACKLISTED: [" + reader["SCHEMA_NAME"] + "].[" + reader["TABLE_NAME"] + "]" + Environment.NewLine;
                                    }
                                }
                            }
                        }
                    }
                }

                output.Write(tableCount.ToString("#,##0") + " " + "table".PluralizeNoun(tableCount), groupToken);
                output.WriteArrow(groupToken);

                settings.Log(log, false);

                log = "";

                #region Script INSERT statements

                ConcurrentQueue<Thread> threads = new ConcurrentQueue<Thread>();
                var threadsRunning = 0;

                using (var tables = new DataReader(helpers.LoadScript("select-table-dependencies.sql"), settings.DataSource))
                {
                    int level = -1;

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
                                counter = tableCount;

                                while (tables.Read() && settings.Abort == false)
                                {
                                    if (settings.IsBlacklistedForData(tables["SCHEMA_NAME"] + "." + tables["TABLE_NAME"]) == false)
                                    {
                                        long _token = -1;
                                        var p = new DataThreadParams();

										if (settings.TurboMode == false)
										{
											do
											{
												threadsRunning = 0;

												if (level > 0 && tables.GetValue<int>("LEVEL") != level)
												{
													foreach (var thread in threads)
													{
														if (thread.IsAlive)
														{
															threadsRunning++;
														}
													}
												}

												System.Threading.Thread.Sleep(Constants.SleepNumber);

											} while (threadsRunning > 0 && settings.Abort == false);
										}

                                        while (_token == -1 && settings.Abort == false)
                                        {
                                            _token = output.ClaimThreadToken();

                                            System.Threading.Thread.Sleep(Constants.SleepNumber);
                                        }

                                        if (settings.Abort == false)
                                        {
                                            p.tableCount = tableCount;
                                            p.schemaName = tables["SCHEMA_NAME"];
                                            p.tableName = tables["TABLE_NAME"];
                                            level = p.level = tables.GetValue<int>("LEVEL");
                                            p.rowCount = tables.GetValue<int>("ROW_COUNT");
                                            p.token = _token;
                                            p.groupToken = groupToken;

                                            output.Write(counter.ToString("#,##0") + " left", p.groupToken, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

                                            Thread t = new Thread ( () => DataThread(p) )
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

                                                System.Threading.Thread.Sleep(Constants.SleepNumber);

                                            } while (threadsRunning >= settings.MaxThreadCount && settings.Abort == false);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                if (settings.Abort == false)
                {
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

                        System.Threading.Thread.Sleep(Constants.SleepNumber);

                    } while (threadsRunning > 0 && settings.Abort == false);
                }

                if (settings.Abort == false)
                {
                    var msg = totalByteCount.FormatBytes() + " (" + totalRowCount.ToString("#,##0") + " rows); DONE";

                    output.Write(msg, groupToken, (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);

                    log += Environment.NewLine + "#### Result: " + msg + Environment.NewLine;
                }

                else
                {
                    output.Write("ABORTED", groupToken, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                    log += "#### Result: ABORTED" + Environment.NewLine;
                }
            }

            catch (Exception e)
            {
                output.WriteLine("", token);
                output.WriteLine("ERROR.", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                output.WriteLine(e.Message, token);
                output.WriteLine("", token);

                settings.Abort = true;

                log += "#### Table Data Backup Exception: " + e.Message + Environment.NewLine;
            }

            output.WriteLine("", token);
            output.WriteLine("Finished in " + settings.Timer.FormatTimer(), token);

            long bytes = 0;

            foreach (string file in Directory.EnumerateFiles(settings.OutputPath, settings.DataFilePrefix + "-*.sql"))
            {
                FileInfo fo = new FileInfo(file);
                bytes += fo.Length;
            }

            output.WriteLine("Total: ~" + bytes.FormatBytes(), token);
            output.WriteLine("", token);

            settings.Log(log, false);

			#endregion
		}

        private void DataThread(DataThreadParams p)
        {
            var _token = p.token;
            var log = "";
            var orderBy = "";

            try
            {
                if (settings.Abort == false)
                {
                    if (p.rowCount > 0)
                    {
                        StringBuilder scrSql = new StringBuilder();
                        var prefix = p.schemaName + "." + p.tableName + (settings.TurboMode == false ? " [L" + p.level + "]" : "") + Constants.GetArrow() + "Scripting " + p.rowCount.ToString("#,##0") + " " + "row".PluralizeNoun(p.rowCount);
                        var currentFile = settings.OutputPath + settings.DataFilePrefix + "-" + p.schemaName + "." + p.tableName + ".sql";
                        var hasIdentity = false;

                        log += Environment.NewLine + "#### [" + p.schemaName + "].[" + p.tableName + "] (" + p.rowCount.ToString("#,##0") + " " + "row".PluralizeNoun(p.rowCount) + ")" + Environment.NewLine;

                        using (var reader = new DataReader(helpers.LoadScript("select-table-has-identity.sql").Replace("{TABLE_NAME}", p.tableName).Replace("{SCHEMA_NAME}", p.schemaName), settings.DataSource))
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
                                        hasIdentity = true;
                                    }
                                }
                            }
                        }

                        using (var reader = new DataReader(helpers.LoadScript("select-table-primary-keys.sql").Replace("{TABLE_NAME}", p.tableName).Replace("{SCHEMA_NAME}", p.schemaName), settings.DataSource))
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
                                        while (reader.Read())
                                        {
                                            if (string.IsNullOrEmpty(orderBy) == false)
                                            {
                                                orderBy += ", ";
                                            }

                                            orderBy += "[" + reader["COLUMN_NAME"] + "]";
                                        }
                                    }
                                }
                            }
                        }

                        var procedureScript = helpers.LoadScript("generate-data-inserts.sql").Replace("{SCHEMA_NAME}", p.schemaName).Replace("{TABLE_NAME}", p.tableName).Replace("'{ORDER_BY}'", (string.IsNullOrEmpty(orderBy) ? "NULL" : "'" + orderBy + "'")).Replace("\n", Constants.LineFeed);

                        procedureScript = procedureScript.Replace("-- SQRIBE/INSERT", "-- SQRIBE/INSERT;" + settings.Hash);
                        procedureScript = procedureScript.Replace("-- SQRIBE/GO", "-- SQRIBE/GO;" + settings.Hash);

                        var totalProcessed = 0;

                        if (settings.Abort == false)
                        {
                            using (var reader = new DataReader(procedureScript, settings.DataSource))
                            {
                                if (settings.Abort == false)
                                {
                                    var cts = new CancellationTokenSource();
                                    var task = reader.ExecuteAsync(cts.Token);
                                    var startDate = DateTime.Now;
                                    var lastTimeUpdate = "";

                                    while (task.IsCompleted == false)
                                    {
                                        if (settings.Abort)
                                        {
                                            cts.Cancel();
                                        }

                                        helpers.ShowElapsedTime(_token, startDate, ref lastTimeUpdate, p.schemaName + "." + p.tableName + (settings.TurboMode == false ? " [L" + p.level + "]" : "") + Constants.GetArrow() + "Querying (", ")");

                                        System.Threading.Thread.Sleep(Constants.SleepNumber);
                                    }

                                    if (settings.Abort == false)
                                    {
                                        if (reader.IsReady)
                                        {
                                            if (reader.HasRows)
                                            {
                                                if (settings.ChunkData == false)
                                                {
                                                    scrSql.Append(helpers.LoadTemplate("init-data-inserts.sql"));
                                                }

                                                scrSql.Append(@"-- SQRIBE/TABLE;" + settings.Hash + Constants.LineFeed);
                                                scrSql.Append(@"-- Adding " + p.rowCount.ToString("#,##0") + " " + "row".PluralizeNoun(p.rowCount) + " to " + p.schemaName + "." + p.tableName + Constants.LineFeed + Constants.LineFeed);

                                                if (hasIdentity == true)
                                                {
                                                    scrSql.Append(helpers.LoadTemplate("set-identity-inserts-on.sql").Replace("{SCHEMA_NAME}", p.schemaName).Replace("{TABLE_NAME}", p.tableName));
                                                }

                                                scrSql.Append(helpers.LoadTemplate("transaction-block-begin.sql"));

                                                int goRowCount = 1000; // 1,000 rows per GO (or file write max of 100mb)
                                                int goInterval = 0;

                                                while (reader.Read() && settings.Abort == false)
                                                {
                                                    var st = reader[0] + Constants.LineFeed;

                                                    scrSql.Append(st.Replace("CONVERT(varbinary(max),''", "CONVERT(varbinary(max),'0x'"));

                                                    totalProcessed++;

                                                    helpers.ShowPercentageComplete(_token, p.rowCount, totalProcessed, startDate, ref lastTimeUpdate, prefix + " ");

                                                    if (settings.ChunkData == false)
                                                    {
                                                        goInterval++;
                                                        
                                                        // 1,000 rows or file write max of 100mb per GO
                                                        if (goInterval >= goRowCount || scrSql.Length > 1000 * 1000 * 100)
                                                        {
                                                            scrSql.Append(@"GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed);
                                                            goInterval = 0;
                                                        }
                                                    }

                                                    // Write to disk at 100mb to conserve memory
                                                    if (scrSql.Length > 1000 * 1000 * 100)
                                                    {
                                                        var tsk = File.AppendAllTextAsync(currentFile, scrSql.ToString(), Encoding.UTF8);

                                                        while (tsk.IsCompleted == false && settings.Abort == false)
                                                        {
                                                            System.Threading.Thread.Sleep(Constants.SleepNumber);
                                                        }

                                                        if (settings.Abort == false)
                                                        {
                                                            Interlocked.Add(ref totalByteCount, scrSql.Length);

                                                            scrSql.Clear();
                                                        }
                                                    }
                                                }

                                                scrSql.Append(Constants.LineFeed + helpers.LoadTemplate("transaction-block-commit.sql"));

                                                if (settings.Abort == false)
                                                {
                                                    Interlocked.Add(ref totalRowCount, totalProcessed);

                                                    helpers.ShowPercentageComplete(_token, 100, 100, startDate, ref lastTimeUpdate, prefix + " ");
                                                }
                                            }
                                
                                            if (settings.Abort)
                                            {
                                                output.Write("ABORTING", _token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);
                                            }
                                        }
                                    }
                                }
                            }

                            if (settings.Abort == false)
                            {
                                if (hasIdentity == true)
                                {
                                    scrSql.Append(helpers.LoadTemplate("set-identity-inserts-off.sql").Replace("{SCHEMA_NAME}", p.schemaName).Replace("{TABLE_NAME}", p.tableName));
                                }

                                if (scrSql.Length > 0)
                                {
                                    File.AppendAllText(currentFile, scrSql.ToString(), Encoding.UTF8);

                                    Interlocked.Add(ref totalByteCount, scrSql.Length);
                                    scrSql.Clear();
                                }

                                if (settings.ChunkData == false && settings.CompressData)
                                {
                                    if (File.Exists(currentFile))
                                    {
                                        FileInfo fo = new FileInfo(currentFile);
                                        long fileSize = fo.Length;
                                        var startDate = DateTime.Now;
                                        var lastTimeUpdate = "";

                                        CompressionLevel compressionLevel = new CompressionLevel();
                                        compressionLevel = CompressionLevel.Optimal;

                                        prefix = p.schemaName + "." + p.tableName + Constants.GetArrow() + "Compressing ";

                                        helpers.ShowPercentageComplete(_token, fileSize, 0, startDate, ref lastTimeUpdate, prefix);

                                        log += "- Compressing [" + p.schemaName + "].[" + p.tableName + "]" + Environment.NewLine;

                                        if (File.Exists(currentFile + ".zip"))
                                        {
                                            File.Delete(currentFile + ".zip");
                                        }

                                        using (FileStream zipFile = new FileStream(currentFile + ".zip", FileMode.CreateNew))
                                        {
                                            using (ZipArchive archive = new ZipArchive(zipFile, ZipArchiveMode.Update))
                                            {
                                                ZipArchiveEntry fileEntry = archive.CreateEntryFromFile(currentFile, currentFile.GetFilename(), compressionLevel);

                                                using (BinaryWriter writer = new BinaryWriter(fileEntry.Open()))
                                                {
                                                    using (BinaryReader reader = new BinaryReader(File.Open(currentFile, FileMode.Open)))
                                                    {
                                                        int batchSize = 1000000; // 1mb at a time
                                                        long currentSize = 0;

                                                        while (reader.PeekChar() > -1 && settings.Abort == false)
                                                        {
                                                            var bytes = reader.ReadBytes(batchSize);

                                                            writer.Write(bytes);
                                                            currentSize += bytes.Length;

                                                            helpers.ShowPercentageComplete(_token, fileSize, currentSize, startDate, ref lastTimeUpdate, prefix);
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        if (File.Exists(currentFile))
                                        {
                                            log += "- Deleting " + currentFile + Environment.NewLine;

                                            File.Delete(currentFile);
                                        }
                                    }
                                }

                                output.Write("idle", _token, color: (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);

                                log += "- Result: DONE" + Environment.NewLine;
                            }

                            else
                            {
                                output.Write("ABORTED", _token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                                log += "- Result: ABORTED" + Environment.NewLine;
                            }
                        }

                        else
                        {
                            output.Write("ABORTED", _token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                            log += "- Result: ABORTED" + Environment.NewLine;
                        }
                    }

                    else
                    {
                        if (settings.Abort == false)
                        {
                            output.Write("idle", _token, color: (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);
                        }

                        else
                        {
                            output.Write("ABORTED", _token, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);
                        }
                    }
                }
            }

            catch (Exception e)
            {

                output.WriteLine("", _token);
                output.Write("ERROR: Thread execution exception; ", _token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                output.WriteLine(e.Message, _token);
                output.WriteLine(e.InnerException.ToString(), _token);
                output.WriteLine("", _token);

                settings.Abort = true;

                log += "#### [" + p.schemaName + "].[" + p.tableName + "] Exception: " + e.Message + Environment.NewLine;
            }

            Interlocked.Decrement(ref counter);

            if (settings.Abort == false)
            {
                output.Write(counter.ToString("#,##0") + " left", p.groupToken, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);
            }

            else
            {
                output.Write("ABORTED", p.groupToken, (int)Constants.GetColor("error", settings.ConsoleDarkMode), ephemeral: true);

                log += "#### Result: ABORTED" + Environment.NewLine;
            }

            settings.Log(log, false);

            output.UnclaimThreadToken(_token);

            System.Threading.Thread.Sleep(Constants.SleepNumber);
        }

        public void ChunkFiles()
        {
            var token = output.GetNewToken();
            var log = "### Chunking data files" + Environment.NewLine;

            if (settings.Abort == false)
            {
                output.WriteBullet(token);
                output.Write("Chunking " + (settings.CompressData ? "and compressing " : "") + "data files", token);
                output.WriteArrow(token);
                output.WriteLine((settings.ChunkSizeMb * 1000000).FormatBytes() + " chunks", token);

                var p = new ChunkingThreadParams();                            
                var filesToProcess = Directory.EnumerateFiles(settings.OutputPath, settings.DataFilePrefix + "-*.sql");

                foreach (string filePath in filesToProcess)
                {
                    FileInfo fo = new FileInfo(filePath);

                    p.sizeToChunk += fo.Length;
                }

                Thread t = new Thread ( () => ChunkBackupThread(p) )
                {
                    IsBackground = true
                };
                t.Start();

                do
                {
                    System.Threading.Thread.Sleep(Constants.SleepNumber);

                } while (t.IsAlive && settings.Abort == false);

                output.WriteLine("", token);
            }

            log += "#### Chunking complete" + Environment.NewLine;

            settings.Log(log, false);
        }

        /// <summary>
        /// Chunk file creation thread. Runs in a single thread, but still faster than main thread.
        /// </summary>
        /// <param name="p">ChunkingThread Params</param>
		private void ChunkBackupThread(ChunkingThreadParams p)
		{
            var log = "";

            try
            {
                bool dataWritten = false;
                int chunkNumber = 1;
                int chunkCounter = 0;
                int commandBreak = 0;
                long totalStorageUsed = 0;
                StringBuilder strSql = new StringBuilder();
                StringBuilder trimmedLine = new StringBuilder();
                var identityInsertOn = "";
                var currentFile = settings.OutputPath + settings.DataFilePrefix + String.Format("{0:D4}", chunkNumber) + ".sql";

                var token = output.GetNewToken();

                strSql.Append(helpers.LoadTemplate("init-data-inserts.sql"));

                output.WriteIndentationArrow(token);
                output.Write(settings.DataFilePrefix + String.Format("{0:D4}", chunkNumber) + ".sql", token);
                output.WriteArrow(token);

                var startDate = DateTime.Now;
                var lastTimeUpdate = "";
                helpers.ShowPercentageComplete(token, 100, 0, startDate, ref lastTimeUpdate);

                var filesToProcess = Directory.EnumerateFiles(settings.OutputPath, settings.DataFilePrefix + "-*.sql");
                long uncompressedBytes = 0;

                foreach (string filePath in filesToProcess)
                {
                    log += Environment.NewLine + "- Chunking file " + filePath + Environment.NewLine;

                    if (settings.Abort == false)
                    {
                        using (StreamReader sr = File.OpenText(filePath))
                        {
                            string st = string.Empty;

                            while ((st = sr.ReadLine()) != null && settings.Abort == false)
                            {
                                trimmedLine.Clear();
                                trimmedLine.Append(st.Trim());

                                strSql.Append(st + Constants.LineFeed);

                                if (trimmedLine.StartsWith("-- SQRIBE/TABLE;" + settings.Hash))
                                {
                                    identityInsertOn = "";
                                }

                                if (trimmedLine.StartsWith("SET IDENTITY_INSERT") && trimmedLine.EndsWith(" ON"))
                                {
                                    identityInsertOn = st.Trim() + Constants.LineFeed + Constants.LineFeed;
                                }

                                chunkCounter = strSql.Length;
                                commandBreak += st.Length;

                                helpers.ShowPercentageComplete(token, settings.ChunkSizeMb, (chunkCounter / 1000000), startDate, ref lastTimeUpdate, "Writing ");

                                if ((chunkCounter / 1000000) >= settings.ChunkSizeMb)
                                {
                                    bool safeBreakPoint = (trimmedLine.StartsWith("-- SQRIBE/INSERT;" + settings.Hash) || trimmedLine.StartsWith("-- SQRIBE/TABLE;" + settings.Hash));

                                    if (safeBreakPoint == true)
                                    {
                                        var bytesToWrite = chunkCounter;
                                        uncompressedBytes += strSql.Length;

                                        dataWritten = true;
                                        chunkCounter = 0;

                                        strSql.Append(Constants.LineFeed + helpers.LoadTemplate("transaction-block-commit.sql"));

                                        if (settings.CompressData == true)
                                        {
                                            output.Write("Compressing" + Constants.Ellipsis, token, (int)Constants.GetColor("busy", settings.ConfirmStart), ephemeral: true);

                                            File.Delete(currentFile + ".zip");

                                            log += "- Compressing chunk " + currentFile + Environment.NewLine;

                                            using (FileStream zipFile = new FileStream(currentFile + ".zip", FileMode.CreateNew))
                                            {
                                                using (ZipArchive archive = new ZipArchive(zipFile, ZipArchiveMode.Update))
                                                {
                                                    CompressionLevel compressionLevel = new CompressionLevel();
                                                    compressionLevel = CompressionLevel.Optimal;
                                                    ZipArchiveEntry chunkEntry = archive.CreateEntry(currentFile.GetFilename(), compressionLevel);

                                                    using (StreamWriter writer = new StreamWriter(chunkEntry.Open()))
                                                    {
                                                        var task = writer.WriteAsync(strSql.ToString());

                                                        while (task.IsCompleted == false && settings.Abort == false)
                                                        {
                                                            helpers.ShowPercentageComplete(token, 100, 100, startDate, ref lastTimeUpdate, "Finishing ");

                                                            System.Threading.Thread.Sleep(Constants.SleepNumber);
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        else
                                        {
                                            log += "- Writing chunk " + currentFile + Environment.NewLine;

                                            var task = File.AppendAllTextAsync(currentFile, strSql.ToString(), Encoding.UTF8);

                                            while (task.IsCompleted == false && settings.Abort == false)
                                            {
                                                helpers.ShowPercentageComplete(token, 100, 100, startDate, ref lastTimeUpdate, "Finishing ");

                                                System.Threading.Thread.Sleep(Constants.SleepNumber);
                                            }
                                        }

                                        strSql.Clear();

                                        var chunkFilename = settings.DataFilePrefix + String.Format("{0:D4}", chunkNumber) + ".sql" + (settings.CompressData ? ".zip" : "");
                                        FileInfo fo = new FileInfo(settings.OutputPath + chunkFilename);

                                        totalStorageUsed += fo.Length;

                                        output.Write(uncompressedBytes.FormatBytes() + " of ~" + p.sizeToChunk.FormatBytes() + "; ", token);
                                        output.WriteLine("saved " + fo.Length.FormatBytes() + " file", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));

                                        log += "- Saved  " + uncompressedBytes.FormatBytes() + " of ~" + p.sizeToChunk.FormatBytes() + "; saved " + fo.Length.FormatBytes() + " file" + Environment.NewLine;

                                        chunkNumber++;
                                        currentFile = settings.OutputPath + settings.DataFilePrefix + String.Format("{0:D4}", chunkNumber) + ".sql";

                                        strSql.Append(helpers.LoadTemplate("init-data-inserts.sql"));

                                        if (identityInsertOn != "")
                                        {
                                            strSql.Append(identityInsertOn);
                                        }

                                        strSql.Append(helpers.LoadTemplate("transaction-block-begin.sql"));

                                        output.WriteIndentationArrow(token);
                                        output.Write(settings.DataFilePrefix + String.Format("{0:D4}", chunkNumber) + ".sql", token);
                                        output.WriteArrow(token);

                                        helpers.ShowPercentageComplete(token, 100, 0, startDate, ref lastTimeUpdate, "Writing ");
                                    }
                                }

                                else
                                {
                                    // Break into 1mb command blocks
                                    if (commandBreak > 1000000)
                                    {
                                        bool safeBreakPoint = (trimmedLine.StartsWith("-- SQRIBE/INSERT;" + settings.Hash));
                                        
                                        if (safeBreakPoint == true)
                                        {
                                            commandBreak = 0;

                                            strSql.Append(Constants.LineFeed);
                                            strSql.Append("GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                if (settings.Abort == false)
                {
                    if (chunkCounter > 0)
                    {
                        if (strSql.Length > 0)
                        {
                            uncompressedBytes += strSql.Length;

                            if (settings.CompressData == true)
                            {
                                output.Write("Compressing" + Constants.Ellipsis, token, (int)Constants.GetColor("busy", settings.ConfirmStart), ephemeral: true);
                                
                                File.Delete(currentFile + ".zip");

                                log += "- Compressing chunk " + currentFile + Environment.NewLine;

                                using (FileStream zipFile = new FileStream(currentFile + ".zip", FileMode.CreateNew))
                                {
                                    using (ZipArchive archive = new ZipArchive(zipFile, ZipArchiveMode.Update))
                                    {
                                        CompressionLevel compressionLevel = new CompressionLevel();
                                        compressionLevel = CompressionLevel.Optimal;
                                        ZipArchiveEntry chunkEntry = archive.CreateEntry(currentFile.GetFilename(), compressionLevel);

                                        using (StreamWriter writer = new StreamWriter(chunkEntry.Open()))
                                        {
                                            var task = writer.WriteAsync(strSql.ToString());

                                            while (task.IsCompleted == false && settings.Abort == false)
                                            {
                                                helpers.ShowPercentageComplete(token, 100, 100, startDate, ref lastTimeUpdate, "Finishing ");

                                                System.Threading.Thread.Sleep(Constants.SleepNumber);
                                            }
                                        }
                                    }
                                }
                            }

                            else
                            {
                                var task = File.AppendAllTextAsync(currentFile, strSql.ToString(), Encoding.UTF8);

                                log += "- Writing chunk " + currentFile + Environment.NewLine;

                                while (task.IsCompleted == false && settings.Abort == false)
                                {
                                    helpers.ShowPercentageComplete(token, 100, 100, startDate, ref lastTimeUpdate, "Finishing ");

                                    System.Threading.Thread.Sleep(Constants.SleepNumber);
                                }
                            }
                        }

                        var chunkFilename = settings.DataFilePrefix + String.Format("{0:D4}", chunkNumber) + ".sql" + (settings.CompressData ? ".zip" : "");
                        FileInfo fo = new FileInfo(settings.OutputPath + chunkFilename);

                        totalStorageUsed += fo.Length;

                        output.Write(uncompressedBytes.FormatBytes() + " of ~" + p.sizeToChunk.FormatBytes() + "; ", token);
                        output.WriteLine("saved " + fo.Length.FormatBytes() + " file", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));

                        log += "- Saved  " + uncompressedBytes.FormatBytes() + " of ~" + p.sizeToChunk.FormatBytes() + "; saved " + fo.Length.FormatBytes() + " file" + Environment.NewLine;
                    }

                    if (dataWritten == false && chunkCounter == 0)
                    {
                        output.WriteIndentationArrow(token);
                        output.WriteLine("No data to write.", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));

                        log += "- No data to write" + Environment.NewLine;
                    }

                    else
                    {
                        output.WriteIndentationArrow(token);
                        output.WriteLine("Saved " + totalStorageUsed.FormatBytes() + " total", token, (int)Constants.GetColor("success", settings.ConsoleDarkMode));

                        log += "- Result: Saved " + totalStorageUsed.FormatBytes() + " total" + Environment.NewLine;
                    }
                }

                else
                {
                    output.WriteLine("ABORTED", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                    log += "- Result: ABORTED" + Environment.NewLine;
                }

                #region Purge temp files

                if (settings.Abort == false)
                {
                    log += "- Cleaning up source data files" + Environment.NewLine;

                    foreach (string file in Directory.EnumerateFiles(settings.OutputPath, settings.DataFilePrefix + "-*.sql"))
                    {
                        File.Delete(file);
                    }

                    log += "- Finished cleaning up source data files" + Environment.NewLine;
                }

                #endregion
            }

            catch (Exception e)
            {
                log += "##### Chunking Exception: " + e.Message + Environment.NewLine;
            }

            settings.Log(log, false);
		}

        #endregion

        #region Restore methods

        public void Restore(long groupToken)
        {
            var token = output.GetNewToken();
            var chunkMode = false;

            if (settings.Abort == false && settings.SqlObjects.Contains(",data,"))
            {
                IEnumerable<string> files = new List<string>();

                files = Directory.EnumerateFiles(settings.ScriptPath, settings.DataFilePrefix + "-*.sql");

                if (files.Count() < 1)
                {
                    files = Directory.EnumerateFiles(settings.ScriptPath, settings.DataFilePrefix + "-*.sql.zip");
                }

                if (files.Count() < 1)
                {
                    files = Directory.EnumerateFiles(settings.ScriptPath, settings.DataFilePrefix + "????.sql");
                    chunkMode = true;
                }

                if (files.Count() < 1)
                {
                    files = Directory.EnumerateFiles(settings.ScriptPath, settings.DataFilePrefix + "????.sql.zip");
                    chunkMode = true;
                }

                if (files.Count() > 0)
                {
                    ConcurrentQueue<Thread> threads = new ConcurrentQueue<Thread>();
                    var threadsRunning = 0;
                    var totalFiles = files.Count();

                    settings.Log("### Processing " + totalFiles.ToString("#,##0") + " files");

                    counter = totalFiles;
                    totalRowCount = 0;
                    totalByteCount = 0;

                    output.Write(counter.ToString("#,##0") + " left", groupToken, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

                    output.Write(files.Count().ToString("#,##0") + " " + (chunkMode ? "chunk" : "table").PluralizeNoun(files.Count()), groupToken);
                    output.WriteArrow(groupToken);

                    foreach (string filePath in files.OrderBy(f => new FileInfo(f).Length))
                    {
                        long _token = -1;

                        while (_token == -1 && settings.Abort == false)
                        {
                            _token = output.ClaimThreadToken();

                            System.Threading.Thread.Sleep(Constants.SleepNumber);
                        }

                        if (settings.Abort == false)
                        {
                            var p = new ChunkingThreadParams();

                            p.tableCount = totalFiles;
                            p.filePath = filePath;
                            p.totalChunks = totalFiles;
                            p.token = _token;
                            p.groupToken = groupToken;

                            Thread t = new Thread ( () => ChunkRestoreThread(p) )
                            {
                                IsBackground = true
                            };
                            t.Start();

                            System.Threading.Thread.Sleep(Constants.SleepNumber);

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

                                System.Threading.Thread.Sleep(Constants.SleepNumber);

                            } while (threadsRunning >= settings.MaxThreadCount && settings.Abort == false);
                        }
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

                        System.Threading.Thread.Sleep(Constants.SleepNumber);

                    } while (threadsRunning > 0 && settings.Abort == false);

                    if (settings.Abort == false)
                    {
                        output.Write(totalByteCount.FormatBytes() + " (" + totalRowCount.ToString("#,##0") + " rows); DONE", groupToken, color: (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);
                        output.WriteLine("", token);

                        settings.Log("### Result: " + totalByteCount.FormatBytes() + " (" + totalRowCount.ToString("#,##0") + " rows); DONE");
                    }
                }

                else
                {
                    output.Write(Constants.GetIndentationArrow(), token);
                    output.WriteLine("No data files found", token, (int)Constants.GetColor("warning", settings.ConsoleDarkMode));
                    output.WriteLine("", token);

                    settings.Log("### Result: No data files found");
                }
            }
        }

        /// <summary>
        /// Chunk file restore thread.
        /// </summary>
        /// <param name="p">ChunkingThread Params</param>
        private void ChunkRestoreThread(ChunkingThreadParams p)
        {
            var log = "";

            try
            {
                var token = p.token;
                var groupToken = p.groupToken;
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";
                string filePath = p.filePath;

                log = Environment.NewLine + "### Processing file " + filePath.GetFilename() + Environment.NewLine;

                if (settings.Abort == false)
                {
                    int lineCount = 0;
                    var tableName = filePath.GetFilename();

                    while (tableName.StartsWith("Data-"))
                    {
                        tableName = tableName.Right(tableName.Length - 5);
                    }

                    while (tableName.EndsWith(".zip") || tableName.EndsWith(".sql"))
                    {
                        tableName = tableName.Left(tableName.Length - 4);
                    }
                    
                    try
                    {
                        var zippedFile = false;
                        StringBuilder script = new StringBuilder();

                        var prefix = tableName + " (";

                        output.Write(prefix, token, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

                        if (filePath.EndsWith(".zip", StringComparison.OrdinalIgnoreCase))
                        {
                            var extractedFile = filePath.Substring(0, filePath.Length - 4);

                            log += "- Deleting file prior to unzip" + Environment.NewLine;

                            zippedFile = true;
                            File.Delete(extractedFile);

                            FileInfo fo = new FileInfo(filePath);

                            prefix += fo.Length.FormatBytes() + Constants.GetArrow();
                            output.Write(prefix, token, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

                            log += "- Unzipping file" + Environment.NewLine;

                            Thread t = new Thread ( () => {

                                using (ZipArchive archive = ZipFile.OpenRead(filePath))
                                {
                                    foreach (ZipArchiveEntry entry in archive.Entries)
                                    {
                                        if (entry.FullName.EndsWith(".sql", StringComparison.OrdinalIgnoreCase))
                                        {
                                            using (var unzippedEntryStream = entry.Open())
                                            {
                                                using (FileStream fs = File.Create(extractedFile))
                                                {
                                                    var task = unzippedEntryStream.CopyToAsync(fs);

                                                    while (task.IsCompleted == false && settings.Abort == false)
                                                    {
                                                        helpers.ShowElapsedTime(token, startDate, ref lastTimeUpdate, prefix);

                                                        System.Threading.Thread.Sleep(Constants.SleepNumber);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            })
                            {
                                IsBackground = true
                            };
                            t.Start();

                            while (t.IsAlive && settings.Abort == false)
                            {
                                // System.Threading.Thread.Sleep(Constants.SleepNumber);
                                helpers.ShowElapsedTime(token, startDate, ref lastTimeUpdate, prefix + "Decompressing ");

                                System.Threading.Thread.Sleep(Constants.SleepNumber);
                            }

                            if (settings.Abort == false)
                            {
                                filePath = extractedFile;
                            }
                        }

                        if (settings.Abort == false)
                        {
                            using (SqlConnection cn = new SqlConnection(settings.DataSource))
                            {
                                FileInfo fo = new FileInfo(filePath);
                                var totalBytes = fo.Length;
                                var currentBytes = 0;

                                prefix += fo.Length.FormatBytes() + ")" + Constants.GetArrow();
                                output.Write(prefix + "Inserting 0%", token, (int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

                                Interlocked.Add(ref totalByteCount, fo.Length);

                                cn.Open();

                                log += "- Inserting data from " + filePath.GetFilename() + " (" + fo.Length.FormatBytes() + ")" + Environment.NewLine;

                                using (StreamReader reader = new StreamReader(filePath, Encoding.UTF8))
                                {
                                    int batchSize = 1000000; // 1mb at a time if possible
                                    char[] buffer = new char[batchSize];
                                    var batch = "";

                                    while (reader.EndOfStream == false && settings.Abort == false)
                                    {
                                        do
                                        {
                                            int actualLength = 0;
                                            var bufferFragment = "";

                                            if (reader.EndOfStream == false && settings.Abort == false)
                                            {
                                                do
                                                {
                                                    Task<int> tsk = reader.ReadBlockAsync(buffer, 0, buffer.Length);

                                                    while (tsk.IsCompleted == false && settings.Abort == false)
                                                    {
                                                        System.Threading.Thread.Sleep(Constants.SleepNumber);
                                                    }

                                                    if (settings.Abort == false)
                                                    {
                                                        if (tsk.Result > 0)
                                                        {
                                                            actualLength = tsk.Result;
                                                            bufferFragment = new string(buffer.Take(actualLength).ToArray());
                                                            batch += bufferFragment;
                                                        }
                                                    }

                                                } while (reader.EndOfStream == false && bufferFragment.Contains("GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed) == false && settings.Abort == false);
                                            }

                                            if (settings.Abort == false)
                                            {
                                                var lines = batch.Split("GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed);
                                                var job = "";

                                                if (lines.Length > 1)
                                                {
                                                    for (int x = 0; x < lines.Length; x++)
                                                    {
                                                        if (settings.Abort == false)
                                                        {
                                                            if (x < lines.Length - 1)
                                                            {
                                                                job += lines[x];
                                                                job += "GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed;
                                                            }
                                                        }
                                                    }

                                                    if (settings.Abort == false)
                                                    {
                                                        batch = lines[lines.Length - 1];
                                                    }
                                                }

                                                else
                                                {
                                                    if (settings.Abort == false)
                                                    {
                                                        job = batch;
                                                        batch = "";
                                                    }
                                                }

                                                if (settings.Abort == false)
                                                {
                                                    currentBytes += job.Length;
                                                    lineCount += job.SubstringCount("-- SQRIBE/INSERT;" + settings.Hash);

                                                    helpers.ShowPercentageComplete(token, totalBytes, currentBytes, startDate, ref lastTimeUpdate, prefix + "Inserting ");

                                                    var result = helpers.OpenExec(cn, job, token);
                                                }
                                            }

                                        } while ((batch.Length > 0 || reader.EndOfStream == false) && settings.Abort == false);
                                    }

                                    if (settings.Abort == false)
                                    {
                                        helpers.ShowPercentageComplete(token, 100, 100, startDate, ref lastTimeUpdate, prefix + "Inserting ");
                                    }
                                }

                                cn.Close();
                            }
                        }

                        if (zippedFile)
                        {
                            log += "- Cleaning up unzipped file" + Environment.NewLine;

                            File.Delete(filePath);
                        }

                        Interlocked.Add(ref totalRowCount, lineCount);

                        log += "- Inserted " + lineCount.ToString("#,##0") + " " + "row".PluralizeNoun(lineCount) + Environment.NewLine;
                    }

                    catch (Exception e)
                    {
                        output.Write("ERROR: ", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));
                        output.WriteLine(e.Message, token);
                        output.WriteLine(e.InnerException.ToString(), token);
                        
                        settings.Abort = true;

                        log += "- Chunk Restore Exception (0): " + e.Message + Environment.NewLine;
                    }

                    finally
                    {
                        if (settings.Abort == false)
                        {
                            output.Write("idle", token, color: (int)Constants.GetColor("success", settings.ConsoleDarkMode), ephemeral: true);

                            log += "- Result: DONE" + Environment.NewLine;
                        }

                        else
                        {
                            output.WriteLine("ABORTED", token, (int)Constants.GetColor("error", settings.ConsoleDarkMode));

                            log += "- Result: ABORTED" + Environment.NewLine;
                        }
                    }
                }
            }

            catch (Exception e)
            {
                log += "- Chunk Restore Exception (1): " + e.Message + Environment.NewLine;
            }

            settings.Log(log, false);

            Interlocked.Decrement(ref counter);

            output.Write(counter.ToString("#,##0") + " left", p.groupToken,(int)Constants.GetColor("busy", settings.ConsoleDarkMode), ephemeral: true);

            output.UnclaimThreadToken(p.token);

            System.Threading.Thread.Sleep(Constants.SleepNumber);
        }

        #endregion
    }
}
