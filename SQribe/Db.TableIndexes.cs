// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using Fynydd.Halide;

namespace SQribe
{
    public interface ITableIndexes
	{
        ISettings settings { get; }

        IOutput output { get; }

        IHelpers helpers { get; }

        void GenerateCreateScript(ref int counter, ref int total, long groupToken);

        void DropAll(long token);

        void Restore(long token);
    }


	public class TableIndexes : ITableIndexes
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

        public TableIndexes(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
        {
            _settings = singletonSettings;
            _output = singletonOutput;
            _helpers = singletonHelpers;
        }

		/// <summary>
		/// Generate script to create indexes.
		/// </summary>
        public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
        {
            if (settings.SqlObjects.Contains(",index,") && settings.Abort == false)
            {
                var objectName = "table index";
                var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";
                int currentCount = 0;
                int totalCount = 0;

                helpers.GenerateCreateScript (
                    objectName, 
                    settings.OutputPath + settings.TableIndexesFilename, 
                    (script, token) => {

                        using (var reader = new DataReader(helpers.LoadScript("generate-create-table-indexes.sql"), settings.DataSource, useRewind: true))
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
                                        while(reader.Read() && settings.Abort == false)
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
                                        while(reader.Read() && settings.Abort == false)
                                        {
                                            var val = reader["CreateIndex"].ToString()
                                                        .Replace(Constants.LineFeed + "CREATE ", "CREATE ")
                                                            + Constants.LineFeed;

                                            script += "-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed;

                                            script += val;

                                            currentCount++;

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
                ",index,", 
                settings.ScriptPath + settings.TableIndexesFilename, 
                "table index", 
                "drops" + Path.DirectorySeparatorChar.ToString() + "drop-indexes.sql"
                );
        }

        public void Restore(long token)
        {
            helpers.RestoreObject(
                token, 
                ",index,", 
                "table index", 
                settings.ScriptPath + settings.TableIndexesFilename
                );
        }
    }
}

