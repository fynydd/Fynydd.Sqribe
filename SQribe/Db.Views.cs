// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.IO;
using System.Text.RegularExpressions;
using System.Threading;
using SQribe.Halide.Core;

namespace SQribe;

public interface IViews
{
    ISettings settings { get; }

    IOutput output { get; }

    IHelpers helpers { get; }

    void GenerateCreateScript(ref int counter, ref int total, long groupToken);

    void DropAll(long token);

    void Restore(long token);
}

public class Views : IViews
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

    public Views(ISettings singletonSettings, IOutput singletonOutput, IHelpers singletonHelpers)
    {
        _settings = singletonSettings;
        _output = singletonOutput;
        _helpers = singletonHelpers;
    }

    /// <summary>
    /// Generate script to create views.
    /// </summary>
    public void GenerateCreateScript(ref int counter, ref int total, long groupToken)
    {
        if (settings.SqlObjects.Contains(",view,") && settings.Abort == false)
        {
            const string objectName = "view";
            var prefix = objectName.PluralizeNoun(2).ToUpperFirstCharacter();
            var startDate = DateTime.Now;
            var lastTimeUpdate = string.Empty;
            var currentCount = 0;
            var totalCount = 0;

            helpers.GenerateCreateScript (
                objectName, 
                settings.OutputPath + settings.ViewsFilename, 
                (script, token) => {

                    using (var reader = new DataReader(helpers.LoadScript("generate-views.sql"), settings.DataSource, useRewind: true))
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
                                        var val = reader[0];

                                        #region Look for errant XML schema paths and fix

                                        // Prevents XML singleton errors
                                        if (val.Contains("].ref.value(N'"))
                                        {
                                            var pattern = @"\]\.ref\.value\(N'.*?(?<!\])',";
                                            var regEx = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Singleline | RegexOptions.IgnorePatternWhitespace);
                                            var matches = regEx.Matches(val);

                                            foreach (var match in matches)
                                            {
                                                var matchStr = match.ToString();
                                                
                                                if (matchStr != null)
                                                    val = val.Replace(matchStr, matchStr.Left(matchStr.Length - 2) + "[1]',");
                                            }
                                        }

                                        #endregion

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
            ",view,", 
            settings.ScriptPath + settings.ViewsFilename, 
            "view", 
            "drops" + Path.DirectorySeparatorChar + "drop-views.sql"
        );
    }

    public void Restore(long token)
    {
        helpers.RestoreObject(
            token, 
            ",view,", 
            "view", 
            settings.ScriptPath + settings.ViewsFilename
        );
    }
}