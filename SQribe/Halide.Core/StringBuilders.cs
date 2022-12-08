// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Text;

namespace SQribe.Halide.Core;

/// <summary>
/// Various tools to make using StringBuilders more like using strings. 
/// </summary>
public static class StringBuilders
{
    /// <summary>
    /// Determines if a StringBuilder object has a value (is not null or empty).
    /// </summary>
    /// <param name="sb">String to evaluate</param>
    public static bool HasValue(this StringBuilder? sb)
    {
		return sb is {Length: > 0};
    }

    /// <summary>
    /// Determines if a StringBuilder is empty or null.
    /// </summary>
    /// <param name="sb"></param>
    public static bool IsEmpty(this StringBuilder sb)
	{
		return sb.HasValue() == false;
	}

	/// <summary>
	/// Get the index of the last occurrence of a substring, or -1 if not found
	/// </summary>
	/// <param name="source"></param>
	/// <param name="substring"></param>
	/// <param name="stringComparison"></param>
	/// <returns></returns>
    public static int LastIndexOf(this StringBuilder? source, string? substring, StringComparison stringComparison = StringComparison.Ordinal)
    {
	    var result = -1;

	    if (source is null || source.IsEmpty() || string.IsNullOrEmpty(substring) || source.Length <= substring.Length)
		    return result;
	    
	    for (var x = source.Length - substring.Length - 1; x > -1; x--)
	    {
		    if (source.Substring(x, substring.Length).NotEquals(substring, stringComparison))
			    continue;
		    
		    result = x;
		    x = -1;
	    }

		return result;
    }

	/// <summary>
	/// Remove a string from the beginning of a StringBuilder
	/// </summary>
	/// <param name="source">The StringBuilder to search</param>
	/// <param name="substring">The substring to remove</param>
	public static void TrimStart(this StringBuilder source, string substring = " ", StringComparison stringComparison = StringComparison.Ordinal)
	{
		while (source.Length >= substring.Length && source.Substring(0, substring.Length).Equals(substring, stringComparison))
			source.Remove(0, substring.Length);
	}
	
    /// <summary>
    /// Remove a string from the end of a StringBuilder
    /// </summary>
    /// <param name="source">The StringBuilder to search</param>
    /// <param name="substring">The substring to remove</param>
    public static void TrimEnd(this StringBuilder source, string substring = " ", StringComparison stringComparison = StringComparison.Ordinal)
    {
	    while (source.Length >= substring.Length && source.Substring(source.Length - substring.Length, substring.Length).Equals(substring, stringComparison))
		    source.Remove(source.Length - substring.Length, substring.Length);
    }
    
	/// <summary>
	/// Count substring occurrences in a StringBuilder object.
	/// </summary>
	/// <param name="source">The StringBuilder to search</param>
	/// <param name="substring">The substring to count</param>
	/// <returns>Number of times the substring is within the source.</returns>
	public static int SubstringCount(this StringBuilder source, string substring)
	{
		return source.ToString().Split(new [] { substring }, StringSplitOptions.None).Length - 1;
	}

	/// <summary>
	/// Get a substring in a StringBuilder object.
	/// Exponentially faster than .ToString().Substring().
	/// </summary>
	/// <param name="source">The source StringBuilder object</param>
	/// <param name="startIndex">A zero-based start index</param>
	/// <param name="length">String length to retrieve</param>
	/// <returns>Substring or empty string if not found</returns>
	public static string Substring(this StringBuilder source, int startIndex, int length)
	{
		var result = string.Empty;

		if (source.Length <= 0) return result;
		if (startIndex < 0 || length <= 0) return result;
		if (startIndex + length > source.Length) return result;
		
		for (var x = startIndex; x < startIndex + length; x++)
			result += source[x];

		return result;
	}

	/// <summary>
	/// Alter StringBuilder object to become a substring.
	/// Exponentially faster than .ToString().Substring().
	/// </summary>
	/// <param name="source">The source StringBuilder object</param>
	/// <param name="startIndex">A zero-based start index</param>
	/// <param name="length">String length to retrieve</param>
	/// <returns>Substring or empty string if not found</returns>
	public static void MakeSubstring(this StringBuilder source, int startIndex, int length)
	{
		if (source.Length <= 0) return;
		if (startIndex < 0 || length <= 0) return;
		if (startIndex + length > source.Length) return;

		var newLength = startIndex + length;
		
		source.Remove(newLength, source.Length - newLength);
		
		if (startIndex > 0)
			source.Remove(0, startIndex);
	}

	/// <summary>
	/// Get the index of the first occurrence of a specific character in the StringBuilder.
	/// </summary>
	/// <param name="source">The source StringBuilder object</param>
	/// <param name="character">character to find</param>
	/// <returns>Index or -1 if not found</returns>
	public static int IndexOf(this StringBuilder source, char character)
	{
		var result = -1;

		if (source.Length < 1)
			return result;

		for (var x = 0; x < source.Length; x++)
		{
			if (source[x] != character)
				continue;
			
			result = x;
			x = source.Length;
		}

		return result;
	}
	
	/// <summary>
	/// Determine if a StringBuilder object starts with a string.
	/// </summary>
	/// <param name="source">The StringBuilder object to evaluate</param>
	/// <param name="substring">Substring to find</param>
	/// <param name="caseInsensitive">Ignore case if true</param>
	/// <returns>True is the StringBuilder object starts with the substring</returns>
	public static bool StartsWith(this StringBuilder source, string substring, bool caseInsensitive = false)
	{
		return (caseInsensitive ? Substring(source, 0, substring.Length).ToUpper() : Substring(source, 0, substring.Length)) == (caseInsensitive ? substring.ToUpper() : substring);
	}

	/// <summary>
	/// Determine if a StringBuilder object ends with a string.
	/// </summary>
	/// <param name="source">The StringBuilder object to evaluate</param>
	/// <param name="substring">Substring to find</param>
	/// <param name="caseInsensitive">Ignore case if true</param>
	/// <returns>True is the StringBuilder object ends with the substring</returns>
	public static bool EndsWith(this StringBuilder source, string substring, bool caseInsensitive = false)
	{
		return (caseInsensitive ? Substring(source, source.Length - substring.Length, substring.Length).ToUpper() : Substring(source, source.Length - substring.Length, substring.Length)) == (caseInsensitive ? substring.ToUpper() : substring);
	}
	
	/// <summary>
	/// Clone a StringBuilder instance
	/// </summary>
	/// <param name="source"></param>
	/// <returns></returns>
	public static StringBuilder Clone(this StringBuilder source)
	{
		var maxCapacity = source.MaxCapacity;
		var capacity = source.Capacity;
		var newSb = new StringBuilder(capacity, maxCapacity);

		newSb.Append(source);

		return newSb;
	}
}
