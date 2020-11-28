// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using Fynydd.Halide;

namespace SQribe
{
    public interface ITableCheckConstraints
	{
        ISettings settings { get; }

        IOutput output { get; }

        IHelpers helpers { get; }

        void GenerateCreateScript(ref int counter, ref int total, long groupToken);

        void DropAll(long token);

        void Restore(long token);
    }


	public class TableCheckConstraints : ITableCheckConstraints
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

        public TableCheckConstraints(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
        {
            _settings = singletonSettings;
            _output = singletonOutput;
            _helpers = singletonHelpers;
        }

		/// <summary>
		/// Generate script to create table check constraints.
		/// </summary>
        public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
        {
            if (settings.SqlObjects.Contains(",cc,") && settings.Abort == false)
            {
                var objectName = "table check constraint";
                var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
                var startDate = DateTime.Now;
                var lastTimeUpdate = "";
                int currentCount = 0;

                helpers.GenerateCreateScript (
                    objectName, 
                    settings.OutputPath + settings.TableCheckConstraintsFilename, 
                    (script, token) => {
                        
                            int processedCount = 0;
                            int tableCount = 0;
                            var constraintTemplate = helpers.LoadTemplate("table-check-constraint.sql");

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
                                                using (var checks = new DataReader(helpers.LoadScript("select-table-check-constraints.sql").Replace("{SCHEMA_NAME}", tables["SCHEMA_NAME"]).Replace("{TABLE_NAME}", tables["TABLE_NAME"]), settings.DataSource))
                                                {
                                                    if (settings.Abort == false)
                                                    {
                                                        var cts2 = new CancellationTokenSource();
                                                        var task2 = checks.ExecuteAsync(cts2.Token);

                                                        while (task2.IsCompleted == false)
                                                        {
                                                            if (settings.Abort)
                                                            {
                                                                cts2.Cancel();
                                                            }

                                                            System.Threading.Thread.Sleep(Constants.SleepNumber);
                                                        }

                                                        if (settings.Abort == false)
                                                        {
                                                            if (checks.IsReady)
                                                            {
                                                                if (checks.HasRows)
                                                                {
                                                                    while (checks.Read() && settings.Abort == false)
                                                                    {
                                                                        var generatedConstraint = constraintTemplate;

                                                                        generatedConstraint = generatedConstraint.Replace("SCHEMA_NAME", tables["SCHEMA_NAME"]);
                                                                        generatedConstraint = generatedConstraint.Replace("TABLE_NAME", tables["TABLE_NAME"]);
                                                                        generatedConstraint = generatedConstraint.Replace("CONSTRAINT_NAME", checks["CONSTRAINT_NAME"]);
                                                                        generatedConstraint = generatedConstraint.Replace("[COLUMN] IS NOT NULL", checks["CONSTRAINT"]);

                                                                        script += generatedConstraint;

                                                                        processedCount++;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }

                                                if (settings.Abort == false)
                                                {
                                                    currentCount++;
                                                    helpers.ShowPercentageComplete(token, tableCount, currentCount, startDate, ref lastTimeUpdate, prefix + " ");
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        
                            return Tuple.Create(script, processedCount);
                        },
                        ref counter, ref total, groupToken
                    );
            }
        }

        public void DropAll(long token)
        {
            helpers.DropObject(
                token, 
                ",cc,", 
                settings.ScriptPath + settings.TableCheckConstraintsFilename, 
                "check constraint", 
                "drops" + Path.DirectorySeparatorChar.ToString() + "drop-check-constraints.sql"
                );
        }

        public void Restore(long token)
        {
            helpers.RestoreObject(
                token, 
                ",cc,", 
                "table check constraint", 
                settings.ScriptPath + settings.TableCheckConstraintsFilename
                );
        }
    }
}

