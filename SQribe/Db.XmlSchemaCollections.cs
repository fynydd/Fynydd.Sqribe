// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Threading;
using Humanizer;
using SQribe.Halide.Core;

namespace SQribe;

public interface IXmlSchemaCollections
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}

public class XmlSchemaCollections : IXmlSchemaCollections
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

    public XmlSchemaCollections(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create XML schema collections.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",xsc,") && settings.Abort == false)
        {
            const string objectName = "XML schema collection";
            var prefix = objectName.Pluralize().Humanize(LetterCasing.Sentence);
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.XmlSchemaCollectionsFilename, 
                (script, token) => {
                        
                    var template = helpers.LoadTemplate("create-xml-schema-collection.sql");

                    using (var reader = new SqlReader(new SqlReaderConfiguration
                           {
                               ConnectionString = settings.DataSource,
                               CommandText = helpers.LoadScript("select-xml-schema-collections.sql")
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

                                using (reader.ExecuteReader())
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

                                            script += template
                                                .Replace("SCHEMA_NAME", reader.SafeGetString("SCHEMA_NAME"))
                                                .Replace("COLLECTION_NAME", reader.SafeGetString("COLLECTION_NAME"))
                                                .Replace("''", "'" + reader.SafeGetString("SCRIPT") + "'");

                                            currentCount++;

                                            helpers.ShowPercentageComplete(token, currentCount, totalCount, startDate, ref lastTimeUpdate, prefix + " ");
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
            ",xsc,", 
            settings.ScriptPath + settings.XmlSchemaCollectionsFilename, 
            "XML schema collection", 
            "drops" + Path.DirectorySeparatorChar + "drop-xml-schema-collections.sql"
        );
    }
    
    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",xsc,", 
            "xml schema collection", 
            settings.ScriptPath + settings.XmlSchemaCollectionsFilename
        );
    }
}