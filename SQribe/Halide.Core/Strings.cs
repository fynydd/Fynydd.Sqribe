// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;

namespace SQribe.Halide.Core;

/// <summary>
/// Characters for use in string functions.
/// </summary>
public static class Characters
{
	public const string CrLf = "\r\n";

	/// <summary>
	/// Characters considered to be whitespace
	/// </summary>
	public static readonly char[] Whitespace = {
		'\u0009',  // CHARACTER TABULATION
	    '\u000A',  // LINE FEED
	    '\u000B',  // LINE TABULATION
	    '\u000C',  // FORM FEED
	    '\u000D',  // CARRIAGE RETURN
	    '\u0020',  // SPACE
	    '\u00A0',  // NO-BREAK SPACE
	    '\u2000',  // EN QUAD
	    '\u2001',  // EM QUAD
	    '\u2002',  // EN SPACE
	    '\u2003',  // EM SPACE
	    '\u2004',  // THREE-PER-EM SPACE
	    '\u2005',  // FOUR-PER-EM SPACE
	    '\u2006',  // SIX-PER-EM SPACE
	    '\u2007',  // FIGURE SPACE
	    '\u2008',  // PUNCTUATION SPACE
	    '\u2009',  // THIN SPACE
	    '\u200A',  // HAIR SPACE
	    '\u200B',  // ZERO WIDTH SPACE
	    '\u3000',  // IDEOGRAPHIC SPACE
	    '\uFEFF'  // ZERO WIDTH NO-BREAK SPACE
    };

	/// <summary>
	/// Characters considered to be delimiters for whole-word text searches
	/// </summary>
	public static readonly char[] WordDelimiters = {
		'\u0009',  // CHARACTER TABULATION
	    '\u000A',  // LINE FEED
	    '\u000B',  // LINE TABULATION
	    '\u000C',  // FORM FEED
	    '\u000D',  // CARRIAGE RETURN
	    '\u0020',  // SPACE
	    '\u00A0',  // NO-BREAK SPACE
	    '\u2000',  // EN QUAD
	    '\u2001',  // EM QUAD
	    '\u2002',  // EN SPACE
	    '\u2003',  // EM SPACE
	    '\u2004',  // THREE-PER-EM SPACE
	    '\u2005',  // FOUR-PER-EM SPACE
	    '\u2006',  // SIX-PER-EM SPACE
	    '\u2007',  // FIGURE SPACE
	    '\u2008',  // PUNCTUATION SPACE
	    '\u2009',  // THIN SPACE
	    '\u200A',  // HAIR SPACE
	    '\u200B',  // ZERO WIDTH SPACE
	    '\u3000',  // IDEOGRAPHIC SPACE
	    '\uFEFF',  // ZERO WIDTH NO-BREAK SPACE
		'!',
		'@',
		'#',
		'$',
		'%',
		'^',
		'&',
		'*',
		'(',
		')',
		'-',
		'=',
		',',
		'.',
		'/',
		'[',
		']',
		'\\',
		'`',
		'<',
		'>',
		'?',
		'{',
		'}',
		'|',
		'~'
	};
}

/// <summary>
/// Various tools for working with strings. 
/// </summary>
public static class Strings
{
	#region Trimming
	
	/// <summary>
	/// Converts two or more consecutive spaces into a single space.
	/// </summary>
	/// <param name="value">String to process</param>
	/// <returns>String with only single spaces</returns>
	public static string ConsolidateSpaces(this string value)
	{
		var regEx = new Regex(@"[\s]+");
		
		return regEx.Replace(value, " ");
	}
	
	/// <summary>
	/// Trim leading and trailing whitespace, which includes space, non-breaking space, carriage returns, line feeds, 
	/// tabs, en space, em space, and other ASCII and Unicode whitespace characters.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>String with leading and trailing whitespace removed.</returns>
	public static string TrimWhitespace(this string? value)
	{
		return value?.Trim(Characters.Whitespace) ?? string.Empty;
	}

	/// <summary>
    /// Remove a specified number of characters from the beginning of a string
    /// </summary>
    /// <param name="value">String to trim</param>
    /// <param name="count">Number of characters to remove</param>
    /// <returns>Trimmed string</returns>
	public static string? TrimStart(this string? value, int count)
	{
		if (value is not null && value.Length >= count)
			return value.Right(value.Length - count);

		return value;
	}

	/// <summary>
    /// Remove a specified number of characters from the end of a string
    /// </summary>
    /// <param name="value">String to trim</param>
    /// <param name="count">Number of characters to remove</param>
    /// <returns>Trimmed string</returns>
	public static string? TrimEnd(this string? value, int count)
	{
		if (value is not null && value.Length >= count)
			return value.Left(value.Length - count);

		return value;
	}

	/// <summary>
	/// Remove a string from the beginning of a string
	/// </summary>
	/// <param name="source">The string to search</param>
	/// <param name="substring">The substring to remove</param>
	/// <returns>Trimmed source</returns>
	public static string? TrimStart(this string? source, string? substring = " ", StringComparison stringComparison = StringComparison.Ordinal)
	{
		if (source == null || source.IsEmpty() || substring is null or "")
			return null;

		var result = new StringBuilder(source);
		
		result.TrimStart(substring, stringComparison);

		return result.ToString();
	}
	
	/// <summary>
	/// Remove a string from the end of a string
	/// </summary>
	/// <param name="source">The string to search</param>
	/// <param name="substring">The substring to remove</param>
	/// <returns>Trimmed source</returns>
	public static string? TrimEnd(this string? source, string? substring = " ", StringComparison stringComparison = StringComparison.Ordinal)
	{
		if (source == null || source.IsEmpty() || substring is null or "")
			return null;

		var result = new StringBuilder(source);
		
		result.TrimEnd(substring, stringComparison);

		return result.ToString();
	}
	
	#endregion
	
	#region Case
	
    /// <summary>
    /// Convert a string to AP style title case, which makes all words use an upper case first character,
    /// except a core set of small words, unless one of those small words is the first or last one in the string.
    /// </summary>
    /// <param name="value">String to make AP title case</param>
    /// <param name="alwaysLowerIgnoreWords">Always use lower case for ignored words (not true AP title case)</param>
    /// <returns>String in AP title case</returns>
    public static string ApTitleCase(this string? value, bool alwaysLowerIgnoreWords = false)
    {
	    if (value == null || value.IsEmpty()) return string.Empty;
	    
	    var ignoreWords = new []
	    {
		    "a",
		    "an",
		    "and",
		    "at",
		    "but",
		    "by",
		    "for",
		    "in",
		    "nor",
		    "of",
		    "on",
		    "or",
		    "so",
		    "the",
		    "to",
		    "up",
		    "yet"
	    };
	    
        var space = new [] { ' ' };
        var cultureInfo = Thread.CurrentThread.CurrentCulture;
        var textInfo = cultureInfo.TextInfo;
        var tokens = value.Split(space, StringSplitOptions.None).ToList();

        if (tokens.Count <= 2)
	        return textInfo.ToTitleCase(value.ToLower());    
        
        var newTitle = string.Empty;

        while (tokens.Count > 2 && string.IsNullOrWhiteSpace(tokens[0]))
        {
            if (tokens[0] == " ")
            {
	            newTitle += " ";
            }

            else
            {
	            newTitle += tokens[0];
            }

            tokens.RemoveAt(0);
        }

        if (tokens.Count <= 2)
	        return textInfo.ToTitleCase(value.ToLower());
        
        var firstWord = tokens[0].ContainsCharacters(@"ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? tokens[0] : textInfo.ToTitleCase(tokens[0].ToLower());

        tokens.RemoveAt(0);

        while (tokens.Count > 2 && string.IsNullOrWhiteSpace(tokens[^1]))
            tokens.RemoveAt(tokens.Count - 1);

        if (tokens.Count <= (alwaysLowerIgnoreWords ? 1 : 2))
	        return textInfo.ToTitleCase(value.ToLower());
        
        var lastWord = tokens[^1].ContainsCharacters(@"ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? tokens[^1] : textInfo.ToTitleCase(tokens[^1].ToLower());
        
        tokens.RemoveAt(tokens.Count - 1);

        newTitle = firstWord;

        newTitle += tokens.Aggregate(string.Empty, (prev, input)
            => prev +
               (ignoreWords.Contains(input.ToLower())
	               ? " " + (input.ContainsCharacters(@"ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? input : input.ToLower())
	               : input == string.Empty ? " " : " " + (input.ContainsCharacters(@"ABCDEFGHIJKLMNOPQRSTUVWXYZ") ? input : textInfo.ToTitleCase(input.ToLower()))
               )
        );

        newTitle += " " + lastWord;

        return newTitle;
    }
	
	#endregion
	
	#region Transform

	/// <summary>
	/// Add spaces at regular intervals within a string.
	/// Useful for making a more readable code sequence, like "ABCDEFGHIJKLMNO" as "ABC DEF GHI JKL MNO")
	/// </summary>
	/// <param name="value"></param>
	/// <param name="charactersPerChunk">Defaults to 4</param>
	/// <returns></returns>
	public static string InsertSpacesInSequence(this string? value, int charactersPerChunk = 4)
	{
		if (value == null || value.IsEmpty()) return string.Empty;

		return Regex.Replace(value, $".{{{charactersPerChunk}}}", "$0 ").Trim();
	}
	
    /// <summary>
    /// Convert unicode characters with diacritic marks into English equivalents.
    /// </summary>
    /// <param name="value">String to evaluate</param>
    /// <returns></returns>
    // ReSharper disable once MemberCanBePrivate.Global
    public static string RemoveDiacritics(this string? value)
    {
        if (value == null || value.IsEmpty()) return string.Empty;

        value = value.Normalize(NormalizationForm.FormD);

        var chars = value.Where(c => CharUnicodeInfo.GetUnicodeCategory(c) != UnicodeCategory.NonSpacingMark).ToArray();

        return new string(chars).Normalize(NormalizationForm.FormC);
    }

    /// <summary>
    /// Remove punctuation from a string. Uses regex to keep whitespace and words.
    /// </summary>
    /// <param name="value">String to filter</param>
    /// <param name="except">Regex list of characters to keep (e.g. "'")</param>
    /// <returns></returns>
    public static string RemovePunctuation(this string? value, string except = "")
    {
	    if (value == null || value.IsEmpty())
		    return string.Empty;

        return Regex.Replace(value, @"[^\w\s" + except + "]" , string.Empty);
    }

	/// <summary>
	/// Convert an object to a string. If null an empty string is returned.
	/// </summary>
	/// <param name="obj">Object to convert to a string</param>
	/// <returns>String value or an empty string if null</returns>
	public static string SafeToString(this object? obj)
	{
		return obj?.ToString() ?? string.Empty;
	}

	/// <summary>
	/// <![CDATA[
	/// Sanitize a string so that it resists SQL injection attacks;
	/// replaces single apostrophes with two apostrophes.
	/// ]]>
	/// </summary>
	/// <param name="value">String to sanitize</param>
	/// <returns>A sanitized string.</returns>
	public static string SqlSanitize(this string value)
	{
		return value.Replace("'", "''");
	}

    /// <summary>
    /// Normalize line breaks.
    /// </summary>
    /// <param name="value"></param>
    /// <param name="linebreak">Line break to use (default: "\n")</param>
    public static string NormalizeLinebreaks(this string? value, string? linebreak = "\n")
    {
	    if (value == null || value.IsEmpty()) return string.Empty;

	    if (linebreak == null || linebreak.IsEmpty()) return value;
        
        if (value.Contains("\r\n") && linebreak != "\r\n")
            return value.Replace("\r\n", linebreak);

        if (value.Contains('\r') && linebreak != "\r")
            return value.Replace("\r", linebreak);

        if (value.Contains('\n') && linebreak != "\n")
            return value.Replace("\n", linebreak);

        return value;
    }
	
	/// <summary>
	/// Returns a default value is the string is null, empty, or only contains whitespace
	/// </summary>
	/// <param name="source"></param>
	/// <param name="defaultValue"></param>
	/// <returns></returns>
	public static string SafeValue(this string? source, string defaultValue = "")
	{
		if (source == null || source.IsEmpty()) return defaultValue;

		return source;
	}
	
	/// <summary>
	/// Indent text with given whitespace based on line breaks
	/// </summary>
	/// <param name="block"></param>
	/// <param name="whitespace"></param>
	/// <param name="includeLeading"></param>
	/// <returns></returns>
	public static string Indent(this string block, string whitespace, bool includeLeading = false)
	{
		var result = block.Trim().NormalizeLinebreaks("\r\n");
        
		if (result.HasValue())
			result = result.Replace("\r\n", "\r\n" + whitespace);

		return (includeLeading ? whitespace : string.Empty) + result.Trim();
	}
	
	#endregion
	
	#region Comparison	

	/// <summary>
	/// Determines if a string has a value (is not null and not empty).
	/// </summary>
	/// <param name="value">String to evaluate</param>
	public static bool HasValue(this string? value)
	{
		return string.IsNullOrEmpty(value?.Trim()) == false;
	}

	/// <summary>
	/// Determines if a string is empty or null.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	public static bool IsEmpty(this string? value)
	{
		return string.IsNullOrEmpty(value);
	}
	
	/// <summary>
	/// Determine if two strings are not equal.
	/// </summary>
	/// <param name="source"></param>
	/// <param name="value"></param>
	/// <param name="comparisonType"></param>
	/// <returns></returns>
	public static bool NotEquals(this string? source, string? value, StringComparison comparisonType = StringComparison.Ordinal)
	{
		if (source == null && value == null) return false;
		if (source is not null && value == null) return true;
		if (source == null && value is not null) return true;
		
		return source?.Equals(value, comparisonType) == false;
	}

	/// <summary>
	/// Determine if a string starts with any value from a string array.
	/// </summary>
	/// <param name="value"></param>
	/// <param name="substrings"></param>
	/// <returns></returns>
	public static bool StartsWith(this string value, string[]? substrings, StringComparison stringComparison = StringComparison.Ordinal)
	{
		if (substrings is not {Length: > 0}) return false;

		var result = false;
        
		for (var x = 0; x < substrings.Length; x++)
		{
			if (value.StartsWith(substrings[x], stringComparison) == false)
				continue;
            
			result = true;
			x = substrings.Length;
		}

		return result;
	}

	/// <summary>
	/// Number of times a substring appears in a string.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <param name="find">Substring to count</param>
	/// <returns>Number of times the substring is found</returns>
	public static int SubstringCount(this string value, string find, bool wholeWord = false)
	{
		if (wholeWord)
		{
			var words = value.Split(Characters.WordDelimiters, StringSplitOptions.None);

			return words.Count(w => w == find);
		}

		return value.Split(new [] { find }, StringSplitOptions.None).Length - 1;
	}
	
	#endregion
	
	#region Conversion

	/// <summary>
	/// Convert a string to a byte array.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>Byte array</returns>
	public static byte[] ToByteArray(this string? value)
	{
		if (value == null || value.IsEmpty()) return Array.Empty<byte>();
		
		var encoding = new UTF8Encoding();

		return encoding.GetBytes(value);
	}
	
	/// <summary>
	/// Take first, middle, and last name and makes a sortable string as Last, First Middle
	/// </summary>
	/// <param name="firstName">First name</param>
	/// <param name="middleName">Middle name</param>
	/// <param name="lastName">Last name</param>
	/// <returns>Sortable name</returns>
	public static string SortableName(string firstName, string middleName, string lastName)
	{
		var result = string.Empty;

		if (firstName.HasValue() || middleName.HasValue() || lastName.HasValue())
			result = ((lastName.HasValue() ? lastName.Trim() + "," : string.Empty) + (firstName.HasValue() ? " " + firstName.Trim() : string.Empty) + (middleName.HasValue() ? " " + middleName.Trim() : string.Empty)).Trim(new char[] { ' ', ',' });

		return result;
	}
	
	/// <summary>
	/// Creates a string from the sequence by concatenating the result
	/// of the specified string selector function for each element.
	/// Concatenates the strings with no delimiter.
	/// </summary>
	/// <param name="source">The source IEnumerable object</param>
	/// <param name="stringSelector">Abstraction for the individual string objects</param>
	public static string ToConcatenatedString<T>(this List<T> source, Func<T, string> stringSelector)
	{
		return ToConcatenatedString(source, stringSelector, string.Empty);
	}

	/// <summary>
	/// Creates a string from the sequence by concatenating the result
	/// of the specified string selector function for each element.
	/// Concatenates the string with a specified delimiter.
	/// </summary>
	/// <param name="source">The source IEnumerable object</param>
	/// <param name="stringSelector">Abstraction for the individual string objects</param>
	/// <param name="delimiter">The string which separates each concatenated item</param>
	public static string ToConcatenatedString<T>(this List<T> source, Func<T, string> stringSelector, string delimiter)
	{
		var b = new StringBuilder();
		var needsSeparator = false;

		foreach (var item in CollectionsMarshal.AsSpan(source))
		{
			if (needsSeparator)
				b.Append(delimiter);

			b.Append(stringSelector(item));
			needsSeparator = true;
		}

		return b.ToString();
	}

	/// <summary>
	/// Insert newlines to create hard line breaks without breaking words.
	/// Lines begining with "• " or "- " or numbered sequences like "1. "
	/// will indent wrapped text and keep the list margin.
	/// </summary>
	/// <param name="s">String to convert</param>
	/// <param name="width">Number of characters per line or less</param>
	/// <param name="newline">Newline ending to use</param>
	/// <param name="prefix">Text for the beginning (like indentation spaces) evaluated as part of the final length</param>
	/// <returns>String with hard breaks added.</returns>
	public static string HardWrap(this string s, int width, string newline, string prefix = "")
	{
		var result = string.Empty;
		var listIndent = string.Empty;
		var final = new List<string>();

		if (width > 0)
		{
			var lines = s.StandardizeLineEndings(newline).Split(new [] { newline }, StringSplitOptions.None).ToList();

			foreach (var line in lines)
			{
				if (line.Length > 3)
				{
					listIndent = string.Empty;

					if (line.Trim().Left(2) == "• ")
					{
						listIndent = " ".Repeat(line.IndexOf("• ", StringComparison.Ordinal) + 2);
					}

					else if (line.Trim().Left(2) == "- ")
					{
						listIndent = " ".Repeat(line.IndexOf("- ", StringComparison.Ordinal) + 2);
					}

					else if (line.Trim().Left(2) == "* ")
					{
						listIndent = " ".Repeat(line.IndexOf("* ", StringComparison.Ordinal) + 2);
					}

					else
					{
						var ordered = 0;
						var checkLine = line.ToLower();

						for (var x = 0; x < checkLine.Length; x++)
						{
							if (ordered == 0 && checkLine[x] == ' ')
							{
								// SKIP INDENTATION AT START
							}

							else
							{
								if (checkLine[x] != ' ')
								{
									if ("1234567890abcdefghijklmnopqrstuvwxyz".Contains(checkLine[x]))
									{
										ordered = x;
									}

									else
									{
										if (x < checkLine.Length - 2)
										{
											if (checkLine[x] == '.' && checkLine[x + 1] == ' ')
											{
												ordered = x + 2;

												listIndent = " ".Repeat(ordered);

												x = checkLine.Length;
											}

											else
											{
												x = checkLine.Length;
											}
										}

										else
										{
											x = checkLine.Length;
										}
									}
								}

								else
								{
									x = checkLine.Length;
								}
							}
						}
					}
				}

				if (line.Length + prefix.Length + listIndent.Length > width)
				{
					var words = line.TrimStart().Split(new [] { " " }, StringSplitOptions.None);
					var indent = (line.TrimStart().Length < line.Length ? " ".Repeat(line.Length - line.TrimStart().Length) : string.Empty);
					var tempStr = prefix;

					foreach (var word in words)
					{
						if (tempStr.Length + word.Length + 1 < width)
						{
							tempStr += (tempStr != prefix ? " " : indent + string.Empty) + (word == string.Empty ? " " : word);
						}

						else
						{
							final.Add(tempStr);

							tempStr = prefix + listIndent + word;
						}
					}

					if (tempStr != string.Empty)
					{
						final.Add(tempStr);
					}
				}

				else
				{
					final.Add(prefix + line);
				}
			}

			foreach (var line in final)
			{
				result += line + newline;
			}
		}

		return result;
	}
	
	/// <summary>
	/// Insert spaces to ensure a string is a specific width.
	/// Spaces are inserted in place of "{{gap}}". This only
	/// support one instance of the gap text.
	/// </summary>
	/// <param name="text">Text with {{gap}} in the middle for expansion</param>
	/// <param name="width">Column width</param>
	/// <returns>Text with {{gap}} expanded into spaces to make the text equal a given column width</returns>
	public static string FillWidth(this string text, int width)
	{
		var result = text.Replace("{{gap}}", " ");

		if (string.IsNullOrWhiteSpace(text) == false)
		{
			if (width > 0)
			{
				var chunks = text.Split(new [] { "{{gap}}" }, StringSplitOptions.None);
				var length = 0;

				if (chunks.Length > 1)
				{
					foreach (var chunk in chunks)
					{
						length += chunk.Length;

						result += chunk;
					}

					if (length < width)
					{
						result = string.Empty;

						int gap = (width - length) / (chunks.Count() - 1);

						foreach (var chunk in chunks)
						{
							if (chunk == chunks.Last())
							{
								if ((width - length) % (chunks.Count() - 1) > 0)
								{
									result += " ";
								}
							}

							result += chunk;

							if (chunk != chunks.Last())
							{
								result += new string(' ', gap);
							}
						}
					}
				}
			}
		}

		return result;
	}
	
	/// <summary>
	/// Repeat the first character a given string up to a specified number.
	/// </summary>
	/// <param name="text">String with first character to repeat</param>
	/// <param name="width">Width in characters of the final string</param>
	/// <returns>Text repeated up to the given width</returns>
	public static string Repeat(this string text, int width)
	{
		var result = string.Empty;

		if (width > 0)
		{
			if (string.IsNullOrEmpty(text) == false)
			{
				for (var x = 0; x < width; x++)
				{
					result += text.Substring(0, 1);
				}
			}
		}

		return result;
	}

	/// <summary>
	/// Ensure a string has consistent line endings.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <param name="lineEndings">Line endings to enforce</param>
	/// <returns>Value processed to use the provided line endings</returns>
	public static string StandardizeLineEndings(this string value, string lineEndings = "\r\n")
	{
		var result = value;

		if (string.IsNullOrWhiteSpace(value) == false)
		{
			result = result.Replace("\r", "\b");
			result = result.Replace("\b\n", "\b");
			result = result.Replace("\n", "\b");
			result = result.Replace("\b", lineEndings);
		}

		return result;
	}

	/// <summary> 
	/// Return a line from a string at a specific line number.
	/// </summary> 
	/// <param name="source">String to search</param>
	/// <param name="lineNumber">Zero-based row number to return</param>
	/// <param name="minimumWidth">Ensure whitespace up to this many characters</param>
	/// <returns>Line from the string including, not including line endings</returns> 
	public static string GetLine(this string source, int row, int minimumWidth = 0)
	{
		var rows = source.StandardizeLineEndings(Environment.NewLine).Split(new [] { Environment.NewLine }, StringSplitOptions.None);

		if (rows.Length > row && minimumWidth > 0)
		{
			if (rows[row].Length < minimumWidth)
			{
				rows[row] += " ".Repeat(minimumWidth - rows[row].Length);
			}
		}

		return (rows.Length > row ? rows[row] : string.Empty);
	}

	/// <summary> 
	/// Return a line from a string an ending substring.
	/// </summary> 
	/// <param name="source">String to search</param>
	/// <param name="endsWith">End of the line to find</param>
	/// <param name="lineFeedFormat">Line feed character(s) used in the string</param>
	/// <param name="includeLineBreaks">Return any EOL breaks with the found row</param>
	/// <returns>Line from the string including the end provided.</returns> 
	public static string GetStringRow(this string source, string endsWith, string lineFeedFormat = "\r\n", bool includeLineBreaks = true)
	{
		var result = string.Empty;

		if (string.IsNullOrWhiteSpace(source) == false && string.IsNullOrWhiteSpace(endsWith) == false)
		{
			if (includeLineBreaks)
			{
				endsWith += lineFeedFormat;
			}

			if (source.Length > endsWith.Length)
			{
				var endIndex = source.IndexOf(endsWith, 0, source.Length, StringComparison.CurrentCultureIgnoreCase);

				if (includeLineBreaks)
				{
					if (endIndex < 0)
					{
						endsWith = endsWith.Replace(lineFeedFormat, string.Empty);
						endIndex = source.IndexOf(endsWith, 0, source.Length, StringComparison.CurrentCultureIgnoreCase);
					}
				}

				if (endIndex > 0)
				{
					var startIndex = 0;

					for (var x = endIndex; x >= 0; x--)
					{
						if (source.Substring(x, 2) == lineFeedFormat)
						{
							startIndex = x + 2;
							x = -1;
						}
					}

					result = source.Substring(startIndex, (endIndex - startIndex) + endsWith.Length);
				}
			}
		}

		return result;
	}

	/// <summary> 
	/// Return a string range given a beginning and ending substring.
	/// </summary> 
	/// <param name="source">String to search</param>
	/// <param name="startsWith">Beginning of the substring to find</param>
	/// <param name="endsWith">End of the substring to find</param>
	/// <returns>Substring including the start and end provided.</returns> 
	public static string GetStringRange(this string source, string startsWith, string endsWith)
	{
		var result = string.Empty;

		if (string.IsNullOrWhiteSpace(source) == false && string.IsNullOrWhiteSpace(startsWith) == false && string.IsNullOrWhiteSpace(endsWith) == false)
		{
			if (source.Length > startsWith.Length && source.Length > endsWith.Length)
			{
				var startIndex = source.IndexOf(startsWith, 0, source.Length, StringComparison.CurrentCultureIgnoreCase);
				var endIndex = source.IndexOf(endsWith, startIndex + startsWith.Length, source.Length - (startIndex + startsWith.Length), StringComparison.CurrentCultureIgnoreCase);

				if (endIndex >= startIndex + startsWith.Length)
				{
					result = source.Substring(startIndex, (endIndex - startIndex) + endsWith.Length);
				}
			}
		}

		return result;
	}

	/// <summary>
	/// Convert bytes into a user-friendly size (e.g. 1024 becomes 1kb).
	/// </summary>
	/// <param name="val">Number of bytes</param>
	/// <param name="forStorage">When true sizes are calculated using base 10 (so 1kb = 1,000 bytes), false uses base 2 (so 1kb = 1,024 bytes).false Defaults to true.</param>
	/// <returns>User-friendly size representation</returns>
	public static string FormatBytes<T>(this T val, bool forStorage = true)
	{
		var value = Convert.ToDecimal(val);
		var result = "0 bytes";
		decimal divisor = 1000;
		var kb = divisor;
		var mb = (divisor * divisor);
		var gb = (mb * divisor);
		var tb = (gb * divisor);
		var pb = (tb * divisor);

		if (forStorage == false)
		{
			divisor = 1024;
		}

		if (value > 0)
		{
			// BYTES
			if (value < divisor && value < kb)
			{
				result = (value.ToString("#,##0")) + " bytes";
			}

			// KILOBYTE
			if (value >= divisor && value < mb)
			{
				var newVal = (value / divisor);
				result = (newVal.ToString("#,##0.#")) + "kb";
			}

			// MEGABYTES
			if (value >= mb && value < gb)
			{
				var newVal = (value / divisor) / divisor;
				result = (newVal.ToString("#,##0.#")) + "mb";
			}

			// GIGABYTES
			if (value >= gb && value < tb)
			{
				var newVal = ((value / divisor) / divisor) / divisor;
				result = (newVal.ToString("#,##0.#")) + "gb";
			}

			// TERABYTES
			if (value >= tb && value < pb)
			{
				var newVal = (((value / divisor) / divisor) / divisor) / divisor;
				result = (newVal.ToString("#,##0.#")) + "tb";
			}

			// PETABYTES
			if (value >= pb)
			{
				var newVal = ((((value / divisor) / divisor) / divisor) / divisor) / divisor;
				result = (newVal.ToString("#,##0.#")) + "pb";
			}
		}

		return result;
	}
	
	#endregion
	
	#region Parsing

	/// <summary>
	/// Determine if a string contains any one of a string of individual characters.
	/// Useful for determining if a string has any upper case characters, as one example.
	/// </summary>
	/// <param name="source">String to check</param>
	/// <param name="characters">String of characters for which to check</param>
	// ReSharper disable once MemberCanBePrivate.Global
	public static bool ContainsCharacters(this string? source, string characters)
	{
		var result = false;

		if (!source.HasValue() || !characters.HasValue()) return result;
		
		for (var x = 0; x < characters.Length; x++)
		{
			if (source is not null && source.IndexOf(characters.Substring(x, 1), StringComparison.Ordinal) < 0)
				continue;
			
			result = true;
			x = characters.Length;
		}

		return result;
	}
	
	/// <summary>
	/// Get the left "length" characters of a string.
	/// </summary>
	/// <param name="value">String value</param>
	/// <param name="length">Number of characters</param>
	/// <returns>Left portion of a string</returns>
	public static string Left(this string? value, int length)
	{
		if (value == null || value.IsEmpty() || length < 1) return string.Empty;

		if (length > value.Length) return value;
		
		return value[..length];
	}

	/// <summary>
	/// Get the left characters of a string up to but not including the first instance of "marker".
	/// If marker is not found the original value is returned.
	/// </summary>
	/// <param name="value">String value</param>
	/// <param name="marker">Delimiter to denote the cut off point</param>
	/// <returns>Left portion of a string</returns>
	public static string Left(this string? value, string? marker)
	{
		if (value == null || value.IsEmpty()) return string.Empty;

		if (marker == null || marker.IsEmpty()) return value;

		if (value.Length <= marker.Length) return string.Empty;

		if (value.Contains(marker))
			return value[..value.IndexOf(marker, StringComparison.Ordinal)];

		return value;
	}
	
	/// <summary>
	/// Get the right "length" characters of a string.
	/// </summary>
	/// <param name="value">String value</param>
	/// <param name="length">Number of characters</param>
	/// <returns>Right portion of a string</returns>
	public static string Right(this string? value, int length)
	{
		if (value == null || value.IsEmpty() || length < 1) return string.Empty;

		if (length > value.Length) return value;

		return value[^length..];
	}

	/// <summary>
	/// Get the right characters of a string up to but not including the last instance of "marker" (right to left).
	/// If marker is not found the original value is returned.
	/// </summary>
	/// <param name="value">String value</param>
	/// <param name="marker">Delimiter to denote the cut off point</param>
	/// <returns>Right portion of a string</returns>
	public static string Right(this string? value, string? marker)
	{
		if (value == null || value.IsEmpty()) return string.Empty;

		if (marker == null || marker.IsEmpty()) return value;

		if (value.Length <= marker.Length) return string.Empty;
		
		if (value.Contains(marker))
			return value[(value.LastIndexOf(marker, StringComparison.Ordinal) + marker.Length)..];

		return value;
	}
	
	/// <summary>
	/// Retrieve a filename from a path.
	/// </summary>
	/// <example>
	/// <code>
	/// string filename = GetFilename(filepath);
	/// </code>
	/// </example>
	/// <param name="filePath">File path to parse</param>
	/// <returns>Filename as a string.</returns>
	public static string GetFilename(this string? filePath)
	{
		if (filePath == null || filePath.IsEmpty()) return string.Empty;
		
		var separator = filePath.Contains(Path.DirectorySeparatorChar) ? Path.DirectorySeparatorChar.ToString() : "/";

		if (filePath.EndsWith(separator))
			return string.Empty;

		var x = filePath.LastIndexOf(separator, StringComparison.Ordinal);

		if (x < 0)
			return filePath;

		return filePath[(x + 1)..];
	}

	/// <summary>
	/// Get the last few characters after the final period in a string,
	/// typically the file extension.
	/// </summary>
	/// <param name="filename"></param>
	// ReSharper disable once MemberCanBePrivate.Global
	public static string FileExtension(this string? filename)
	{
		if (filename == null || filename.IsEmpty()) return string.Empty;

		if (filename.EndsWith('.'))
			return string.Empty;
		
		var dotLocation = filename.LastIndexOf('.');

		if (dotLocation < 0)
			return filename;
		
		return filename[(dotLocation + 1)..];
	}

	#endregion
	
	#region Timers
	
	/// <summary>
	/// Format the elapsed time as a more friendly time span string.
	/// Example: 3 days 10:37:15.123
	/// </summary>
	/// <param name="delimiter">Text to separate time elements; defaults to " : "</param>
	/// <returns>Formatted timespan</returns>
	public static string FormatTimer(double msecs)
	{
		var timespan = TimeSpan.FromMilliseconds(msecs);

		return $"{(timespan.Days > 0 ? timespan.Days.ToString("#,##0") + " days " : "")}{timespan.Hours:00}:{timespan.Minutes:00}:{timespan.Seconds:00}.{timespan.Milliseconds:#000}";
	}

	/// <summary>
	/// Returns a string with the time in seconds as well as the performance per second
	/// (e.g. "100.2 sec (10,435.1/sec)")
	/// </summary>
	/// <param name="numberProcessed">Number of items processed in the elapsed time</param>
	/// <param name="msecs">Number milliseconds to output (overrides ElapsedMs)</param>
	/// <param name="decimalPlaces">Number of decimal places to show</param>
	/// <returns></returns>
	public static string PerformanceTimeString(int numberProcessed, double msecs, int decimalPlaces = 1)
	{
		return $"{FormatTimer(msecs)} ({PerformanceString(numberProcessed, msecs, decimalPlaces)})";
	}

	/// <summary>
	/// Returns a string with the performance per second
	/// (e.g. "10,435.1/sec")
	/// </summary>
	/// <param name="numberProcessed">Number of items processed in the elapsed time</param>
	/// <param name="msecs">Number milliseconds to output (overrides ElapsedMs)</param>
	/// <param name="decimalPlaces">Number of decimal places to show</param>
	/// <returns></returns>
	public static string PerformanceString(int numberProcessed, double msecs, int decimalPlaces = 1)
	{
		var secs = msecs / 1000;

		return $"{Math.Round(numberProcessed / secs, decimalPlaces).ToString($"N{decimalPlaces}")}/sec";
	}
	
	#endregion
}
