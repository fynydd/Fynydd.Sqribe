// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Runtime.Versioning;
using System.Text.RegularExpressions;

namespace SQribe.Halide.Core;

public static class Identify
{
	/// <summary>
	/// Get OS platform.
	/// </summary> 
	/// <returns>OSPlatform object</returns> 
	public static OSPlatform GetOSPlatform()
	{
		OSPlatform osPlatform = OSPlatform.Create("Other platform");

		// Check if it's windows 
		bool isWindows = RuntimeInformation.IsOSPlatform(OSPlatform.Windows);
		osPlatform = isWindows ? OSPlatform.Windows : osPlatform;

		// Check if it's osx 
		bool isOSX = RuntimeInformation.IsOSPlatform(OSPlatform.OSX);
		osPlatform = isOSX ? OSPlatform.OSX : osPlatform;

		// Check if it's Linux 
		bool isLinux = RuntimeInformation.IsOSPlatform(OSPlatform.Linux);
		osPlatform = isLinux ? OSPlatform.Linux : osPlatform;

		return osPlatform;
	}

	/// <summary>
	/// Get OS platform name for output to users.
	/// </summary> 
	/// <returns>OSPlatform name (friendly for output)</returns> 
	public static string GetOSPlatformName()
	{
		var result = "Windows";

		if (GetOSPlatform() == OSPlatform.OSX)
		{
			result = "macOS";
		}

		else if (GetOSPlatform() == OSPlatform.Linux)
		{
			result = "Linux";
		}

		return result;
	}

	/// <summary>
	/// Get platform architecture (e.g. x64).
	/// </summary> 
	/// <returns>OSPlatform object</returns> 
	public static string GetPlatformArchitecture()
	{
		return RuntimeInformation.ProcessArchitecture.ToString();
	}

	/// <summary>
	/// Get the .NET Core runtime version (e.g. "2.2").
	/// </summary> 
	/// <returns>String with the .NET Core version number</returns> 
	public static string GetFrameworkVersion()
	{
		var result = Assembly
			.GetEntryAssembly()?
			.GetCustomAttribute<TargetFrameworkAttribute>()?
			.FrameworkName;

		if (string.IsNullOrEmpty(result) == false)
		{
			if (result.Contains("Version="))
			{
				result = result.Right("Version=")
					.TrimStart(new [] {'v'});
			}
		}

		return result ?? string.Empty;
	}

	/// <summary>
	/// Get the .NET CLR runtime version (e.g. "4.6.27110.04").
	/// Only works in 2.2 or later.
	/// </summary> 
	/// <returns>String with the .NET CLR runtime version number</returns> 
	public static string GetRuntimeVersion()
	{
		return RuntimeInformation.FrameworkDescription.Right(" ");
	}

	/// <summary>
	/// Determine if a given string matches a 2-letter state abbreviation.
	/// </summary>
	/// <param name="value">2-letter state abbreviation to check.</param>
	/// <returns>true or false.</returns>
	public static bool IsState(this string value)
	{
		return Geography.StatesAbbreviations.Contains(value.ToUpper());
	}

	/// <summary>
	/// Determines if a string value is numeric, but not currency.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false.</returns>
	public static bool IsNumeric(this string value)
	{
		return double.TryParse(value,
			(NumberStyles.AllowExponent | NumberStyles.AllowThousands | NumberStyles.AllowDecimalPoint |
			 NumberStyles.AllowLeadingSign), null, out _);
	}

	/// <summary>
	/// Determines if a string value is a bool value or not.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false.</returns>
	public static bool IsBool(this string value)
	{
		return bool.TryParse(value, out _);
	}

	/// <summary>
	/// Determines if a string value can be used as currency.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false.</returns>
	public static bool IsCurrency(this string value)
	{
		return double.TryParse(value,
			(NumberStyles.AllowCurrencySymbol | NumberStyles.AllowThousands | NumberStyles.AllowDecimalPoint |
			 NumberStyles.AllowLeadingSign), CultureInfo.CreateSpecificCulture("en-US"), out _);
	}

	/// <summary>
	/// Determines if a string value is numeric, with no symbols, commas, or decimal points.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false.</returns>
	public static bool IsPureNumeric(this string value)
	{
		return double.TryParse(value, 0, null, out _);
	}

	/// <summary>
	/// Checks to see if the passed input has the passed pattern
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <param name="pattern">Regex pattern to use</param>
	/// <returns>True if the value has the pattern, false otherwise.</returns>
	public static bool MatchesPattern(this string value, string pattern)
	{
		var regEx = new Regex(pattern);
		return regEx.IsMatch(value);
	}

	/// <summary>
	/// Checks the passed input to make sure it validates against all the patterns.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <param name="patterns">String array of Regex patterns to use</param>
	/// <returns>True if the input has all of the patterns, false otherwise.</returns>
	public static bool MatchesPatterns(this string value, string[] patterns)
	{
		var result = true;

		foreach (var t in patterns)
		{
			if (value.MatchesPattern(t) == false)
			{
				result = false;
			}
		}

		return result;
	}

	/// <summary>
	/// Determines if a string value is a valid date.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false</returns>
	public static bool IsDate(this string value)
	{
		var result = false;

		if (!string.IsNullOrEmpty(value))
		{
			try
			{
				// ReSharper disable once UnusedVariable
				var dt = Convert.ToDateTime(value);
				result = true;
			}

			catch
			{
				result = false;
			}
		}

		return result;
	}

	/// <summary>
	/// Uses RegEx to check for password formatting. Alpha-numeric
	/// characters and basic typewriter symbols are allowed.
	/// </summary>
	/// <param name="value">password string to validate.</param>
	/// <param name="minLen">Minimum length of valid password; at least 4.</param>
	/// <param name="maxLen">Maximum length for valid password</param>
	/// <returns>true if a valid password, false if not.</returns>
	public static bool IsValidPasswordFormat(this string value, int minLength, int maxLength)
	{
		var result = false;

		if (string.IsNullOrEmpty(value) == false && minLength > 3 && minLength <= maxLength)
		{
			if (value.Length >= minLength && value.Length <= maxLength)
			{
				if (value.MatchesPattern(RegularExpressions.Password))
				{
					result = true;
				}
			}
		}

		return result;
	}

	/// <summary>
	/// Uses RegEx to check for password formatting. Alpha-numeric
	/// characters and basic typewriter symbols are allowed.
	/// Password must be between 8 and 64 characters in length.
	/// </summary>
	/// <param name="value">password string to validate.</param>
	/// <returns>true if a valid password, false if not.</returns>
	public static bool IsValidPasswordFormat(this string value)
	{
		return value.MatchesPattern(RegularExpressions.PasswordAndLength);
	}

	/// <summary>
	/// Validate the format of an email address
	/// </summary>
	/// <param name="value">email address to evaluate</param>
	/// <returns>true if formatted as a valid email address, false if not</returns>
	public static bool IsEmail(this string value)
	{
		var result = false;

		if (string.IsNullOrEmpty(value) == false)
		{
			result = value.MatchesPattern(RegularExpressions.Email);
		}

		return result;
	}

	private class StringComparer : IEqualityComparer<string>
	{
		private bool _caseSensitive { get; }

		public StringComparer(bool caseSensitive)
		{
			_caseSensitive = caseSensitive;
		}

		public bool Equals(string? x, string? y)
		{
			return _caseSensitive ? x == y : x?.ToLower() == y?.ToLower();
		}

		public int GetHashCode(string obj)
		{
			return int.Parse(obj).ToString().GetHashCode();
		}
	}

	/// <summary>
	/// Verify that a given value is equal to a value in a delimitted list of provided values.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <param name="prevalueList">Delimitted list of possible matches for comparison.</param>
	/// <param name="delimitter">Delimitter string which defines the boundary between items in the list (e.g. ",")</param>
	/// <param name="caseSensitive">Set to true to compare values using case sensitivity, or false to ignore case.</param>
	/// <returns>Empty string on success, or an error message.</returns>
	public static bool ContainsPrevalue(this string value, string prevalueList, string delimitter,
		bool caseSensitive = false)
	{
		var result = false;

		if (string.IsNullOrEmpty(prevalueList) == false && string.IsNullOrEmpty(value) == false)
		{
			var values = prevalueList.Split(new [] {delimitter}, StringSplitOptions.RemoveEmptyEntries);

			if (values.Length > 0)
			{
				result = values.Contains(value, new StringComparer(caseSensitive));
			}
		}

		return result;
	}

	/// <summary>
	/// Run data type and field length validation on a specific value.
	/// Certain types of validators obviate the need to specify a minimum or maximum length,
	/// like ValidationOptions.Email.
	/// </summary>
	/// <param name="value">Value to validate.</param>
	/// <param name="valType">Constant determining what type of validation.</param>
	/// <param name="minLength">Minimum length alowed.</param>
	/// <param name="maxLength">Maximum length allowed.</param>
	/// <param name="optional">Field is optional. Zero length validates, otherwise, full validation occurs.</param>
	/// <returns>Empty string if validation succeeds, error message on failure.</returns>
	public static string ValidateText(this string value, ValidationOptions valType, int minLength = 0, int maxLength = 0, bool optional = false)
	{
		var result = string.Empty;

		if (optional && value.Length < 1) return result;

		// Evaluate length of value if minLength and maxLengths are non-zero
		if (minLength > 0 && maxLength > 0)
		{
			if (value.Length > maxLength)
			{
				result += "Must be " + maxLength.ToString() + " character(s) long";
			}
			else
			{
				if (value.Length < minLength)
				{
					result += "Must be " + minLength.ToString() + " character(s) or longer";
				}
			}
		}

		// If no length errors, validate data is of a specific format
		if (result == string.Empty)
		{
			switch (valType)
			{
				case ValidationOptions.USStateAbbreviation:
				{
					var flag = Geography.StatesAbbreviations.Contains(value, new StringComparer(false));

					if (flag == false)
					{
						result += "Not a state";
					}

					break;
				}
				case ValidationOptions.Email:
				{
					if (IsEmail(value) == false)
					{
						result += "Invalid email address format";
					}

					break;
				}
				// Invalid string
				case ValidationOptions.EmailList when value.Length < 6:
					result += "Invalid email address format";
					break;
				case ValidationOptions.EmailList:
				{
					// Only one email address? If not, check for multiple.
					if (IsEmail(value) == false)
					{
						var delim = string.Empty;

						if (delim == string.Empty && value.IndexOf(",", StringComparison.Ordinal) > 0) delim = ",";
						if (delim == string.Empty && value.IndexOf("|", StringComparison.Ordinal) > 0) delim = "|";
						if (delim == string.Empty && value.IndexOf(";", StringComparison.Ordinal) > 0) delim = ";";
						if (delim == string.Empty && value.IndexOf("/", StringComparison.Ordinal) > 0) delim = "/";
						if (delim == string.Empty && value.IndexOf(" ", StringComparison.Ordinal) > 0) delim = " ";

						if (delim != string.Empty)
						{
							value = value.Replace(delim, ",");
							value = value.Replace(" ", string.Empty);

							while (value.IndexOf(",,", StringComparison.Ordinal) > 0) value = value.Replace(",,", ",");

							var addresses = value.Split(new[] {','});

							foreach (var t in addresses)
							{
								if (!IsEmail(t))
								{
									result += "One or more email addresses are invalid";
								}
							}
						}
						else
						{
							result += "Must have one or more email addresses";
						}
					}

					break;
				}
				case ValidationOptions.Number:
				{
					if (IsNumeric(value) == false)
					{
						result += "Not a numeric value";
					}

					break;
				}
				case ValidationOptions.PureNumber:
				{
					if (IsPureNumeric(value) == false)
					{
						result += "Must only contain numbers";
					}

					break;
				}
				case ValidationOptions.NonZero when IsPureNumeric(value) == false:
					result += "Must only contain numbers";
					break;
				case ValidationOptions.NonZero:
				{
					if (Convert.ToInt32(value) <= 0)
					{
						result += "Must be greater than zero";
					}

					break;
				}
				case ValidationOptions.Currency:
				{
					if (IsCurrency(value) == false)
					{
						result += "Not a currency value";
					}

					break;
				}
				case ValidationOptions.Date:
				{
					if (IsDate(value) == false)
					{
						result += "Not a date";
					}

					break;
				}
				case ValidationOptions.Telephone:
				{
					if (MatchesPattern(value, RegularExpressions.TelephoneUS) == false)
					{
						result += "Not a telephone number";
					}

					break;
				}
				case ValidationOptions.Telephone10:
				{
					if (MatchesPattern(value, RegularExpressions.Telephone10) == false)
					{
						result += "Not a telephone number with area code";
					}

					break;
				}
				case ValidationOptions.CreditCard:
				{
					if (MatchesPattern(value, RegularExpressions.ValidCreditCardNumber) == false)
					{
						result += "Not a credit card number";
					}

					break;
				}
				case ValidationOptions.ZipCode:
				{
					if (MatchesPattern(value, RegularExpressions.ZipCode) == false)
					{
						result += "Not a 5-digit zip code";
					}

					break;
				}
				case ValidationOptions.Url:
				{
					if (MatchesPattern(value, RegularExpressions.Url) == false)
					{
						result += "Not a URL";
					}

					break;
				}
				case ValidationOptions.IPv4Address:
				{
					if (MatchesPattern(value, RegularExpressions.IPv4Address) == false)
					{
						result += "Not an IP address";
					}

					break;
				}
				case ValidationOptions.Ssn:
				{
					if (MatchesPattern(value, RegularExpressions.SocialSecurityNumber) == false)
					{
						result += "Not a social security number";
					}

					break;
				}
				case ValidationOptions.Time:
				{
					if (MatchesPattern(value, RegularExpressions.Time) == false && MatchesPattern(value, RegularExpressions.TimeMilitary) == false)
					{
						result += "Not a time of day";
					}

					break;
				}
				case ValidationOptions.Domain:
				{
					if (MatchesPattern(value, RegularExpressions.DomainName) == false)
					{
						result += "Not a domain name";
					}

					break;
				}
				case ValidationOptions.FullNameWithComma:
				{
					if (MatchesPattern(value, RegularExpressions.FullNameWithComma) == false)
					{
						result += "Not last name, first name";
					}

					break;
				}
			}
		}

		return result;
	}

	/// <summary>
	/// Run field length validation on a specific value.
	/// </summary>
	/// <param name="value">Value to validate.</param>
	/// <param name="minLength">Minimum length alowed.</param>
	/// <param name="maxLength">Maximum length allowed.</param>
	/// <returns>Empty string if validation succeeds, error message on failure.</returns>
	public static string ValidateText(this string value, int minLength, int maxLength)
	{
		return ValidateText(value, ValidationOptions.Length, minLength, maxLength);
	}

	/// <summary>
	/// Run data type validation on a specific value.
	/// </summary>
	/// <param name="value">Value to validate.</param>
	/// <param name="valType">Constant determining what type of validation.</param>
	/// <param name="optional">Field is optional. Zero length validates, otherwise, full validation occurs.</param>
	/// <returns>Empty string if validation succeeds, error message on failure.</returns>
	public static string ValidateText(this string value, ValidationOptions valType, bool optional)
	{
		return ValidateText(value, valType, 0, 0, optional);
	}
}