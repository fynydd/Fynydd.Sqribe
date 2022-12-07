// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using SQribe.Halide.Core;

namespace SQribe;

public interface IExtendedProperties
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}

public class ExtendedProperties : IExtendedProperties
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

    public ExtendedProperties(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create default types.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",xp,") && settings.Abort == false)
        {
            const string objectName = "extended property";
            var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.ExtendedPropertiesFilename, 
                (script, token) => {

                    using (var reader = new DataReader(helpers.LoadScript("select-extended-properties.sql"), settings.DataSource, useRewind: true))
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

                                Thread.Sleep(Constants.SleepNumber);
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
                                        var skip = true;
                                        var prop = string.Empty;

                                        currentCount++;
                                        prop += Constants.LineFeed;
                                        prop += "-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed;
                                        prop += "EXEC sp_addextendedproperty @name = N'" + reader["PROPERTY_NAME"] + "'";
                                        prop += ", @value = N'" + reader["PROPERTY_VALUE"].Replace("'", "''") + "'";

                                        switch (reader.GetValue<int>("CLASS"))
                                        {
                                            case 0:
                                                // Database-level property
                                                skip = false;
                                                break;
                                            case 1:

                                                if (reader["OBJECT_NAME"] != string.Empty)
                                                {
                                                    prop += ", @level0type = N'Schema'";
                                                    prop += ", @level0name = N'" + reader["SCHEMA_NAME"] + "'";

                                                    switch (reader["OBJECT_TYPE_DESC"])
                                                    {
                                                        case "CHECK_CONSTRAINT":
                                                        case "DEFAULT_CONSTRAINT":
                                                        case "FOREIGN_KEY_CONSTRAINT":
                                                        case "PRIMARY_KEY_CONSTRAINT":
                                                            prop += ", @level1type = N'TABLE'";
                                                            prop += ", @level1name = N'" + reader["TABLE_NAME"] + "'";
                                                            prop += ", @level2type = N'CONSTRAINT'";
                                                            prop += ", @level2name = N'" + reader["OBJECT_NAME"] + "'";
                                                            skip = false;
                                                            break;
                                                        case "SQL_SCALAR_FUNCTION":
                                                        case "SQL_TABLE_VALUED_FUNCTION":
                                                            prop += ", @level1type = N'FUNCTION'";
                                                            prop += ", @level1name = N'" + reader["OBJECT_NAME"] + "'";
                                                            skip = false;
                                                            break;
                                                        case "SQL_STORED_PROCEDURE":
                                                            prop += ", @level1type = N'PROCEDURE'";
                                                            prop += ", @level1name = N'" + reader["OBJECT_NAME"] + "'";
                                                            skip = false;
                                                            break;
                                                        case "SQL_TRIGGER":
                                                            prop += ", @level1type = N'TABLE'";
                                                            prop += ", @level1name = N'" + reader["TABLE_NAME"] + "'";
                                                            prop += ", @level2type = N'TRIGGER'";
                                                            prop += ", @level2name = N'" + reader["OBJECT_NAME"] + "'";
                                                            skip = false;
                                                            break;
                                                        case "USER_TABLE":
                                                            prop += ", @level1type = N'TABLE'";
                                                            prop += ", @level1name = N'" + reader["OBJECT_NAME"] + "'";

                                                            if (reader["COLUMN_NAME"] != string.Empty)
                                                            {
                                                                prop += ", @level2type = N'COLUMN'";
                                                                prop += ", @level2name = N'" + reader["COLUMN_NAME"] + "'";
                                                            }

                                                            skip = false;
                                                            break;
                                                        case "VIEW":
                                                            prop += ", @level1type = N'VIEW'";
                                                            prop += ", @level1name = N'" + reader["OBJECT_NAME"] + "'";
                                                            skip = false;
                                                            break;
                                                    }
                                                }

                                                else
                                                {
                                                    if (reader["OBJECT_NAME"] == string.Empty && reader["TRIGGER_NAME"] != string.Empty)
                                                    {
                                                        // Database-level trigger
                                                        prop += ", @level0type = N'TRIGGER'";
                                                        prop += ", @level0name = N'" + reader["TRIGGER_NAME"] + "'";
                                                        skip = false;
                                                    }
                                                }
                                                break;
                                            case 2:
                                                // Parameter
                                                prop += ", @level0type = N'Schema'";
                                                prop += ", @level0name = N'" + reader["SCHEMA_NAME"] + "'";

                                                switch (reader["OBJECT_TYPE_DESC"])
                                                {
                                                    case "SQL_SCALAR_FUNCTION":
                                                    case "SQL_TABLE_VALUED_FUNCTION":
                                                        prop += ", @level1type = N'FUNCTION'";
                                                        prop += ", @level1name = N'" + reader["OBJECT_NAME"] + "'";
                                                        skip = false;
                                                        break;
                                                    case "SQL_STORED_PROCEDURE":
                                                        prop += ", @level1type = N'PROCEDURE'";
                                                        prop += ", @level1name = N'" + reader["OBJECT_NAME"] + "'";
                                                        skip = false;
                                                        break;
                                                }

                                                prop += ", @level2type = N'PARAMETER'";
                                                prop += ", @level2name = N'" + reader["PARAMETER_NAME"] + "'";
                                                break;
                                            case 3:
                                                // Schema
                                                prop += ", @level0type = N'Schema'";
                                                prop += ", @level0name = N'" + reader["SCHEMA_OBJECT_NAME"] + "'";
                                                skip = false;
                                                break;
                                            case 6:
                                                // Type
                                                prop += ", @level0type = N'Type'";
                                                prop += ", @level0name = N'" + reader["OBJECT_NAME"] + "'";
                                                skip = false;
                                                break;
                                            case 7:
                                                // Index
                                                prop += ", @level0type = N'Schema'";
                                                prop += ", @level0name = N'" + reader["SCHEMA_NAME"] + "'";

                                                switch (reader["OBJECT_TYPE_DESC"])
                                                {
                                                    case "USER_TABLE":
                                                        prop += ", @level1type = N'TABLE'";
                                                        skip = false;
                                                        break;
                                                    case "VIEW":
                                                        prop += ", @level1type = N'VIEW'";
                                                        skip = false;
                                                        break;
                                                }

                                                prop += ", @level1name = N'" + reader["OBJECT_NAME"] + "'";
                                                prop += ", @level2type = N'INDEX'";
                                                prop += ", @level2name = N'" + reader["INDEX_NAME"] + "'";

                                                break;
                                            case 10:
                                                // XML schema collection
                                                prop += ", @level0type = N'Schema'";
                                                prop += ", @level0name = N'" + reader["XML_SCHEMA_COLLECTION_SCHEMA_NAME"] + "'";
                                                prop += ", @level1type = N'XML SCHEMA COLLECTION'";
                                                prop += ", @level1name = N'" + reader["XML_SCHEMA_COLLECTION_NAME"] + "'";
                                                skip = false;
                                                break;
                                        }
                                            
                                        prop += ";" + Constants.LineFeed;
                                        prop += "GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed;

                                        if (skip == false)
                                        {
                                            script += prop;
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
            ",xp,", 
            settings.ScriptPath + settings.ExtendedPropertiesFilename, 
            "extended property", 
            "drops" + Path.DirectorySeparatorChar + "drop-extended-properties.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",xp,", 
            "extended property", 
            settings.ScriptPath + settings.ExtendedPropertiesFilename
        );
    }
}