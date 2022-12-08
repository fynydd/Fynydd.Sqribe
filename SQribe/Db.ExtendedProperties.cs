// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using Humanizer;
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
            var prefix = objectName.Pluralize().Humanize(LetterCasing.Sentence);
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.ExtendedPropertiesFilename, 
                (script, token) => {

                    using (var reader = new SqlReader(new SqlReaderConfiguration
                           {
                               ConnectionString = settings.DataSource,
                               CommandText = helpers.LoadScript("select-extended-properties.sql")
                           }))
                    {
                        if (settings.Abort == false)
                        {
                            var cts = new CancellationTokenSource();
                            var task = reader.ExecuteReaderAsync(cts.Token);
        
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
                                if (reader.HasRows)
                                {
                                    while (reader.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                    {
                                        totalCount++;

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
                                reader.Close();

                                using (reader.ExecuteReader(cts.Token))
                                {
                                    if (reader.HasRows)
                                    {
                                        while (reader.ReadAsync(cts.Token).GetAwaiter().GetResult())
                                        {
                                            if (settings.Abort)
                                            {
                                                cts.Cancel();
                                                break;
                                            }

                                            var skip = true;
                                            var prop = string.Empty;

                                            currentCount++;
                                            prop += Constants.LineFeed;
                                            prop += "-- SQRIBE/OBJ;" + settings.Hash + Constants.LineFeed;
                                            prop += "EXEC sp_addextendedproperty @name = N'" +
                                                    reader.SafeGetString("PROPERTY_NAME") + "'";
                                            prop += ", @value = N'" +
                                                    reader.SafeGetString("PROPERTY_VALUE").Replace("'", "''") + "'";

                                            switch (reader.SafeGetInt("CLASS"))
                                            {
                                                case 0:
                                                    // Database-level property
                                                    skip = false;
                                                    break;
                                                case 1:

                                                    if (reader.SafeGetString("OBJECT_NAME") != string.Empty)
                                                    {
                                                        prop += ", @level0type = N'Schema'";
                                                        prop += ", @level0name = N'" +
                                                                reader.SafeGetString("SCHEMA_NAME") + "'";

                                                        switch (reader.SafeGetString("OBJECT_TYPE_DESC"))
                                                        {
                                                            case "CHECK_CONSTRAINT":
                                                            case "DEFAULT_CONSTRAINT":
                                                            case "FOREIGN_KEY_CONSTRAINT":
                                                            case "PRIMARY_KEY_CONSTRAINT":
                                                                prop += ", @level1type = N'TABLE'";
                                                                prop += ", @level1name = N'" +
                                                                        reader.SafeGetString("TABLE_NAME") + "'";
                                                                prop += ", @level2type = N'CONSTRAINT'";
                                                                prop += ", @level2name = N'" +
                                                                        reader.SafeGetString("OBJECT_NAME") + "'";
                                                                skip = false;
                                                                break;
                                                            case "SQL_SCALAR_FUNCTION":
                                                            case "SQL_TABLE_VALUED_FUNCTION":
                                                                prop += ", @level1type = N'FUNCTION'";
                                                                prop += ", @level1name = N'" +
                                                                        reader.SafeGetString("OBJECT_NAME") + "'";
                                                                skip = false;
                                                                break;
                                                            case "SQL_STORED_PROCEDURE":
                                                                prop += ", @level1type = N'PROCEDURE'";
                                                                prop += ", @level1name = N'" +
                                                                        reader.SafeGetString("OBJECT_NAME") + "'";
                                                                skip = false;
                                                                break;
                                                            case "SQL_TRIGGER":
                                                                prop += ", @level1type = N'TABLE'";
                                                                prop += ", @level1name = N'" +
                                                                        reader.SafeGetString("TABLE_NAME") + "'";
                                                                prop += ", @level2type = N'TRIGGER'";
                                                                prop += ", @level2name = N'" +
                                                                        reader.SafeGetString("OBJECT_NAME") + "'";
                                                                skip = false;
                                                                break;
                                                            case "USER_TABLE":
                                                                prop += ", @level1type = N'TABLE'";
                                                                prop += ", @level1name = N'" +
                                                                        reader.SafeGetString("OBJECT_NAME") + "'";

                                                                if (reader.SafeGetString("COLUMN_NAME") != string.Empty)
                                                                {
                                                                    prop += ", @level2type = N'COLUMN'";
                                                                    prop += ", @level2name = N'" +
                                                                            reader.SafeGetString("COLUMN_NAME") + "'";
                                                                }

                                                                skip = false;
                                                                break;
                                                            case "VIEW":
                                                                prop += ", @level1type = N'VIEW'";
                                                                prop += ", @level1name = N'" +
                                                                        reader.SafeGetString("OBJECT_NAME") + "'";
                                                                skip = false;
                                                                break;
                                                        }
                                                    }

                                                    else
                                                    {
                                                        if (reader.SafeGetString("OBJECT_NAME") == string.Empty &&
                                                            reader.SafeGetString("TRIGGER_NAME") != string.Empty)
                                                        {
                                                            // Database-level trigger
                                                            prop += ", @level0type = N'TRIGGER'";
                                                            prop += ", @level0name = N'" +
                                                                    reader.SafeGetString("TRIGGER_NAME") + "'";
                                                            skip = false;
                                                        }
                                                    }

                                                    break;
                                                case 2:
                                                    // Parameter
                                                    prop += ", @level0type = N'Schema'";
                                                    prop += ", @level0name = N'" + reader.SafeGetString("SCHEMA_NAME") +
                                                            "'";

                                                    switch (reader.SafeGetString("OBJECT_TYPE_DESC"))
                                                    {
                                                        case "SQL_SCALAR_FUNCTION":
                                                        case "SQL_TABLE_VALUED_FUNCTION":
                                                            prop += ", @level1type = N'FUNCTION'";
                                                            prop += ", @level1name = N'" +
                                                                    reader.SafeGetString("OBJECT_NAME") + "'";
                                                            skip = false;
                                                            break;
                                                        case "SQL_STORED_PROCEDURE":
                                                            prop += ", @level1type = N'PROCEDURE'";
                                                            prop += ", @level1name = N'" +
                                                                    reader.SafeGetString("OBJECT_NAME") + "'";
                                                            skip = false;
                                                            break;
                                                    }

                                                    prop += ", @level2type = N'PARAMETER'";
                                                    prop += ", @level2name = N'" +
                                                            reader.SafeGetString("PARAMETER_NAME") + "'";
                                                    break;
                                                case 3:
                                                    // Schema
                                                    prop += ", @level0type = N'Schema'";
                                                    prop += ", @level0name = N'" +
                                                            reader.SafeGetString("SCHEMA_OBJECT_NAME") + "'";
                                                    skip = false;
                                                    break;
                                                case 6:
                                                    // Type
                                                    prop += ", @level0type = N'Type'";
                                                    prop += ", @level0name = N'" + reader.SafeGetString("OBJECT_NAME") +
                                                            "'";
                                                    skip = false;
                                                    break;
                                                case 7:
                                                    // Index
                                                    prop += ", @level0type = N'Schema'";
                                                    prop += ", @level0name = N'" + reader.SafeGetString("SCHEMA_NAME") +
                                                            "'";

                                                    switch (reader.SafeGetString("OBJECT_TYPE_DESC"))
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

                                                    prop += ", @level1name = N'" + reader.SafeGetString("OBJECT_NAME") +
                                                            "'";
                                                    prop += ", @level2type = N'INDEX'";
                                                    prop += ", @level2name = N'" + reader.SafeGetString("INDEX_NAME") +
                                                            "'";

                                                    break;
                                                case 10:
                                                    // XML schema collection
                                                    prop += ", @level0type = N'Schema'";
                                                    prop += ", @level0name = N'" +
                                                            reader.SafeGetString("XML_SCHEMA_COLLECTION_SCHEMA_NAME") +
                                                            "'";
                                                    prop += ", @level1type = N'XML SCHEMA COLLECTION'";
                                                    prop += ", @level1name = N'" +
                                                            reader.SafeGetString("XML_SCHEMA_COLLECTION_NAME") + "'";
                                                    skip = false;
                                                    break;
                                            }

                                            prop += ";" + Constants.LineFeed;
                                            prop += "GO -- SQRIBE/GO;" + settings.Hash + Constants.LineFeed;

                                            if (skip == false)
                                            {
                                                script += prop;
                                            }

                                            helpers.ShowPercentageComplete(token, currentCount, totalCount, startDate,
                                                ref lastTimeUpdate, prefix + " ");
                                        }
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