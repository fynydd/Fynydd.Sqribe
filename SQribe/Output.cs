// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading;
using SQribe.Halide.Core;

namespace SQribe;

/// <summary>
/// Handles all threaded console output
/// </summary>
public class OutputRequest
{
    public string Text
    {
        get; set;
    }

    public bool AppendLineBreak
    {
        get; set;
    }

    public long Token
    {
        get; set;            
    }

    public int Color
    {
        get;
        set;
    }

    public bool Ephemeral
    {
        get;
        set;
    }

    public OutputRequest(string text = "", bool appendLineBreak = true, long token = 0)
    {
        Text = text;
        AppendLineBreak = appendLineBreak;
        Token = token;
        Ephemeral = false;
    }
}

public class OutputLocation
{
    public int WindowHeight
    {
        get; set;
    }

    public int Width
    {
        get; set;
    }

    public int Top
    {
        get; set; 
    }

    public int Left
    {
        get; set; 
    }

    public OutputLocation(int top = 0, int left = 0, int width = 0)
    {
        Top = top;
        Left = left;
        Width = width;
        WindowHeight = Console.WindowHeight;
    }
}

public interface IOutput
{
    bool Busy { get; }

    ConcurrentDictionary<long, bool> ThreadTokens { get; }

    void ReseedThreadTokens();

    long ClaimThreadToken();

    void UnclaimThreadToken(long key);

    void UnclaimAllThreadTokens();

    long GetNewToken();

    void ResetCounter();

    void Write(string text, long token, int color = -1, bool ephemeral = false);

    void WriteLine(string text, long token, int color = -1);

    void WriteIndentationArrow(long token);

    void WriteArrow(long token);

    void WriteBullet(long token);

    void WriteBar(long token);

    void Terminate();

    void WaitForOutput();
}

public class Output : IOutput
{
    #region General properties

    public bool _useAbsoluteLinePos;
    private long _tokenSeed;
    private long _idSeed;
    private int _newTopWindowHeight;
    private int _newTop;
    private int _counter;
    public ConcurrentDictionary<long, OutputRequest>? _outputRequests;
    public ConcurrentDictionary<long, OutputLocation>? _outputLocations;
    public Thread? t;
    public bool TerminateFlag { get; set; }
    public bool ThreadRunning { get; set; }

    private readonly ISettings? _settings;
    public bool Busy => _outputRequests?.Any() ?? false;

    #endregion

    private Thread? _t;

    public ConcurrentDictionary<long, bool>? _threadTokens;
    public ConcurrentDictionary<long, bool> ThreadTokens => _threadTokens ?? new ConcurrentDictionary<long, bool>();

    public Output(ISettings singletonSettings)
    {
        try
        {
            _newTop = Console.CursorTop;
            _newTopWindowHeight = Console.WindowHeight;
            _outputRequests = new ConcurrentDictionary<long, OutputRequest>();
            _outputLocations = new ConcurrentDictionary<long, OutputLocation>();
            _threadTokens = new ConcurrentDictionary<long, bool>();
            TerminateFlag = false;
            ThreadRunning = false;
            _settings = singletonSettings;

            // WINDOWS
            if (Identify.GetOSPlatform() == OSPlatform.Windows)
            {
                _useAbsoluteLinePos = true;
            }

            StartProcessingThread();
        }

        catch (Exception e)
        {
            _settings?.Log("Output.Output() Exception: " + e.Message);
        }
    }

    #region Public methods

    /// <summary>
    /// Generate tokens for all available threads.
    /// </summary>
    public void ReseedThreadTokens()
    {
        _threadTokens?.Clear();

        for (var x = 1; x <= _settings?.MaxThreadCount; x++)
        {
            var _token = GetNewToken();

            while (_threadTokens?.TryAdd(_token, false) ?? false) { }
        }
    }

    /// <summary>
    /// Get the next available thread token, or -1 if all are busy.
    /// Token is marked as in-use.
    /// </summary>
    public long ClaimThreadToken()
    {
        long result = -1;

        foreach (var threadToken in ThreadTokens)
        {
            if (threadToken.Value == false)
            {
                result = threadToken.Key;
                    
                _threadTokens?.TryUpdate(threadToken.Key, true, false);

                break;
            }
        }

        return result;
    }

    /// <summary>
    /// Relinquish control of an in-use thread token.
    /// </summary>
    public void UnclaimThreadToken(long key)
    {
        _threadTokens?.TryUpdate(key, false, true);
    }

    /// <summary>
    /// Relinquish control of all thread tokens.
    /// </summary>
    public void UnclaimAllThreadTokens()
    {
        foreach (var threadToken in ThreadTokens)
        {
            _threadTokens?.TryUpdate(threadToken.Key, false, true);
        }
    }

    /// <summary>
    /// Output an indentation arrow.
    /// </summary>
    public void WriteIndentationArrow(long token)
    {
        Write(Constants.GetIndentationArrow(), token);
    }

    /// <summary>
    /// Output a separator arrow.
    /// </summary>
    public void WriteArrow(long token)
    {
        Write(Constants.GetArrow(), token);
    }

    /// <summary>
    /// Output a bullet.
    /// </summary>
    public void WriteBullet(long token)
    {
        Write(Constants.GetBullet(), token);
    }

    /// <summary>
    /// Output a separator bar.
    /// </summary>
    public void WriteBar(long token)
    {
        Write(Constants.GetBar(), token);
    }

    public long GetNewToken()
    {
        if (_tokenSeed == long.MaxValue)
        {
            _tokenSeed = 0;
        }
            
        return ++_tokenSeed;
    }

    public void ResetCounter()
    {
        try
        {
            _counter = 0;
        }

        catch (Exception e)
        {
            _settings?.Log("Output.ResetCounter() Exception: " + e.Message);
        }
    }

    public void Write(string text, long token, int color = -1, bool ephemeral = false)
    {
        try
        {
            if (token > _tokenSeed)
            {
                _tokenSeed = ++token;
            }

            var request = new OutputRequest(text, false, token)
            {
                Color = color,
                Ephemeral = ephemeral
            };

            while (_outputRequests?.TryAdd(GetUniqueId(), request) == false)
            {
                Thread.Sleep(Constants.SleepNumber); // Can be commented out
            }
        }

        catch (Exception e)
        {
            _settings?.Log("Output.Write() Exception: " + e.Message);
        }
    }

    public void WriteLine(string text, long token, int color = -1)
    {
        try
        {
            if (token > _tokenSeed)
            {
                _tokenSeed = ++token;
            }

            var request = new OutputRequest(text, true, token)
            {
                Color = color
            };

            while (_outputRequests?.TryAdd(GetUniqueId(), request) == false)
            {
                Thread.Sleep(Constants.SleepNumber); // Can be commented out
            }
        }

        catch (Exception e)
        {
            _settings?.Log("Output.WriteLine() Exception: " + e.Message);
        }
    }

    public void WaitForOutput()
    {
        try
        {
            while (Busy)
            {
                Thread.Sleep(Constants.SleepNumber);
            }
        }

        catch (Exception e)
        {
            _settings?.Log("Output.WaitForOutput() Exception: " + e.Message);
        }
    }

    public void Terminate()
    {
        TerminateFlag = true;

        if (_t != null)
        {
            while (_t.IsAlive)
            {
                Thread.Sleep(Constants.SleepNumber); // Can be commented out
            }
        }
    }

    #endregion

    #region Private methods

    private long GetUniqueId()
    {
        if (_idSeed == long.MaxValue)
        {
            _idSeed = 0;
        }
            
        return ++_idSeed;
    }

    private void DecrementLocations(int amount)
    {
        foreach (var location in _outputLocations ?? new ConcurrentDictionary<long, OutputLocation>())
        {
            location.Value.Top -= amount;
        }
    }

    private void SendWrite(OutputRequest? request)
    {
        try
        {
            var _lastWidth = 0;
            var _skip = false;

            if (request != null)
            {
                if (_outputLocations?.ContainsKey(request.Token) ?? false)
                {
                    OutputLocation? loc;
                        
                    while (_outputLocations.TryGetValue(request.Token, out loc) == false)
                    { }

                    if (Console.IsInputRedirected == false)
                    {
                        // MACOS, LINUX
                        if (_useAbsoluteLinePos == false)
                        {
                            if (loc.Top > -1)
                            {
                                Console.SetCursorPosition(loc.Left, loc.Top - (loc.WindowHeight - Console.WindowHeight));
                            }

                            else
                            {
                                _skip = true;
                            }
                        }

                        // WINDOWS
                        else
                        {
                            Console.SetCursorPosition(loc.Left, loc.Top);
                        }

                        _lastWidth = loc.Width;
                    }

                    else
                    {
                        _skip = true;
                    }

                    while (_outputLocations.TryRemove(request.Token, out loc) == false)
                    { }
                }

                else
                {
                    if (Console.IsInputRedirected == false)
                    {
                        // MACOS, LINUX
                        if (_useAbsoluteLinePos == false)
                        {
                            Console.SetCursorPosition(0, _newTop - (_newTopWindowHeight - Console.WindowHeight));
                        }

                        // WINDOWS
                        else
                        {
                            Console.SetCursorPosition(0, _newTop);
                        }
                    }
                }

                if (_skip == false)
                {
                    var consoleText = request.Text;

                    if (consoleText.Contains("{counter}"))
                    {
                        consoleText = consoleText.Replace("{counter}", (++_counter).ToString("#,##0"));
                    }

                    if (Console.CursorLeft == 0)
                    {
                        Console.Out.WriteAsync(Constants.Padding);
                    }

                    if (request.Color != -1)
                    {
                        Console.ForegroundColor = (ConsoleColor)request.Color;
                    }

                    else
                    {
                        Console.ForegroundColor = _settings?.DefaultColor ?? ConsoleColor.White;
                    }

                    if (_lastWidth > 0)
                    {
                        if (Console.IsInputRedirected == false)
                        {
                            var left = Console.CursorLeft - _lastWidth;

                            Console.SetCursorPosition(left, Console.CursorTop);
                            _lastWidth = 0;
                        }
                    }

                    if (request.AppendLineBreak)
                    {
                        var lines = consoleText.Split(Environment.NewLine);

                        foreach (var line in lines)
                        {
                            var _consoleText = line;

                            if (_consoleText.Length > 0)
                            {
                                if ((_consoleText.Length + Console.CursorLeft) > (Console.WindowWidth - Constants.Padding.Length))
                                {
                                    var trimCount = _consoleText.Length - (Console.WindowWidth - Console.CursorLeft - (Constants.Padding.Length * 2)) - 1;

                                    if (trimCount < _consoleText.Length)
                                    {
                                        _consoleText = _consoleText.Substring(0, _consoleText.Length - trimCount) + "…";
                                    }

                                    else
                                    {
                                        _consoleText = string.Empty;
                                    }
                                }

                                else
                                {
                                    _consoleText = _consoleText + " ".Repeat(Console.WindowWidth - (Console.CursorLeft + _consoleText.Length) - 1);
                                }
                            }

                            if (Console.CursorTop >= Console.WindowHeight - 1)
                            {
                                // MACOS, LINUX
                                if (_useAbsoluteLinePos == false)
                                {
                                    DecrementLocations(1);
                                }
                            }

                            Console.Out.WriteLineAsync(_consoleText);

                            if (_newTop < Console.CursorTop)
                            {
                                _newTop = Console.CursorTop;

                                // MACOS, LINUX
                                if (_useAbsoluteLinePos == false)
                                {
                                    _newTopWindowHeight = Console.WindowHeight;
                                }
                            }
                        }
                    }

                    else
                    {
                        var left = Console.CursorLeft + consoleText.Length;
                        var top = Console.CursorTop;

                        if ((consoleText.Length + Console.CursorLeft) > (Console.WindowWidth - (Constants.Padding.Length * 2)))
                        {
                            var trimCount = consoleText.Length - (Console.WindowWidth - Console.CursorLeft - (Constants.Padding.Length * 2)) - 1;

                            if (trimCount < consoleText.Length)
                            {
                                consoleText = consoleText.Substring(0, consoleText.Length - trimCount) + "…";
                            }

                            else
                            {
                                consoleText = string.Empty;
                            }

                            left = Console.CursorLeft + consoleText.Length;
                        }

                        if (request.Ephemeral)
                        {
                            _lastWidth = consoleText.Length;
                        }

                        Console.Out.WriteLineAsync(consoleText + " ".Repeat(Console.WindowWidth - left - 1));

                        if (Console.IsInputRedirected == false)
                        {
                            Console.SetCursorPosition(left, top);
                        }

                        OutputLocation location = new OutputLocation(Console.CursorTop, Console.CursorLeft, _lastWidth);

                        while (_outputLocations?.TryAdd(request.Token, location) == false)
                        { }

                        // MACOS, LINUX
                        if (_useAbsoluteLinePos == false)
                        {
                            if (Console.CursorTop >= Console.WindowHeight - 1)
                            {
                                DecrementLocations(1);

                                _newTop = Console.CursorTop;
                                _newTopWindowHeight = Console.WindowHeight;
                            }

                            else if (_newTop < Console.CursorTop + 1)
                            {
                                if (Console.CursorTop >= Console.WindowHeight - 1)
                                {
                                    DecrementLocations(1);
                                }
                                    
                                _newTop = Console.CursorTop + 1;
                                _newTopWindowHeight = Console.WindowHeight;
                            }
                        }

                        // WINDOWS
                        else
                        {
                            if (_newTop < Console.CursorTop + 1)
                            {
                                _newTop = Console.CursorTop + 1;
                            }
                        }
                    }

                    if (request.Color != -1)
                    {
                        Console.ForegroundColor = _settings?.DefaultColor ?? ConsoleColor.White;
                    }
                }
            }
        }

        catch (Exception e)
        {
            Console.WriteLine(string.Empty);
            Console.WriteLine("SENDWRITE EXCEPTION: " + e.Message);

            _settings?.Log("Output.SendWrite() Exception: " + e.Message);
        }
    }

    private void StartProcessingThread()
    {
        try
        {
            if (_t is null or {IsAlive: false})
            {
                _t = new Thread ( OutputThread )
                {
                    IsBackground = true
                };
                _t.Start();
            }
        }

        catch (Exception e)
        {
            _settings?.Log("Output.StartProcessingThread() Exception: " + e.Message);
        }
    }

    private void OutputThread()
    {
        do
        {
            try
            {
                if (_outputRequests?.Any() ?? false)
                {
                    // ToArray() prevents a race condition with OrderBy() in a constructor
                    var orderedRequests = new Dictionary<long, OutputRequest>(_outputRequests.ToArray().OrderBy(o => o.Key));

                    foreach (var request in orderedRequests)
                    {
                        var _newerTokenItemExists = orderedRequests.Any(o => o.Value.Token == request.Value.Token && o.Key > request.Key);

                        if (request.Value.Ephemeral && _newerTokenItemExists)
                        {
                            while (_outputRequests.TryRemove(request.Key, out _) == false)
                            { }
                        }

                        else
                        {
                            var willWrite = false;

                            if (request.Value.AppendLineBreak)
                            {
                                willWrite = true;
                            }

                            else
                            {
                                willWrite = true;
                            }

                            if (willWrite)
                            {
                                var newRequest = new OutputRequest(text: request.Value.Text, appendLineBreak: request.Value.AppendLineBreak, token: request.Value.Token)
                                    {
                                        Color = request.Value.Color,
                                        Ephemeral = request.Value.Ephemeral
                                    };

                                SendWrite(newRequest);

                                do
                                { } while (_outputRequests.TryRemove(request.Key, out _) == false);
                            }
                        }
                    }
                }

                Thread.Sleep(Constants.SleepNumber);
            }

            catch (Exception e) {
                    
                Console.WriteLine("OUTPUT EXCEPTION: " + e.Message);

                _settings?.Log("Output.OutputThread() Exception: " + e.Message);
            }

        } while (TerminateFlag == false);

        ThreadRunning = false;
    }

    #endregion
}