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
using Fynydd.Halide.Constants;

namespace Fynydd.Halide
{
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
                        .TrimStart(new char[] { 'v' });
                }
            }

            return result;
        }

        /// <summary>
        /// Get the .NET CLR runtime version (e.g. "4.6.27110.04").
        /// Only works in 2.2 or later.
        /// </summary> 
        /// <returns>String with the .NET CLR runtime version number</returns> 
        public static string GetRuntimeVersion()
        {
            return System.Runtime.InteropServices.RuntimeInformation.FrameworkDescription.Right(" ");
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
			Double doubleVal;
			return Double.TryParse(value, (NumberStyles.AllowExponent | NumberStyles.AllowThousands | NumberStyles.AllowDecimalPoint | NumberStyles.AllowLeadingSign), null, out doubleVal);
		}

		/// <summary>
		/// Determines if a string value is a bool value or not.
		/// </summary>
		/// <param name="value">String to evaluate</param>
		/// <returns>true or false.</returns>
		public static bool IsBool(this string value)
		{
			bool boolVal;
			return bool.TryParse(value, out boolVal);
		}

		/// <summary>
		/// Determines if a string value can be used as currency.
		/// </summary>
		/// <param name="value">String to evaluate</param>
		/// <returns>true or false.</returns>
		public static bool IsCurrency(this string value)
		{
			double doubleVal;
			return double.TryParse(value, (NumberStyles.AllowCurrencySymbol | NumberStyles.AllowThousands | NumberStyles.AllowDecimalPoint | NumberStyles.AllowLeadingSign), CultureInfo.CreateSpecificCulture("en-US"), out doubleVal);
		}

		/// <summary>
		/// Determines if a string value is numeric, with no symbols, commas, or decimal points.
		/// </summary>
		/// <param name="value">String to evaluate</param>
		/// <returns>true or false.</returns>
		public static bool IsPureNumeric(this string value)
		{
			Double doubleVal;
			return Double.TryParse(value, 0, null, out doubleVal);
		}

		/// <summary>
		/// Checks to see if the passed input has the passed pattern
		/// </summary>
		/// <param name="value">String to evaluate</param>
		/// <param name="pattern">Regex pattern to use</param>
		/// <returns>True if the value has the pattern, false otherwise.</returns>
		public static bool MatchesPattern(this string value, string pattern)
		{
			Regex regEx = new Regex(pattern);
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
			bool result = true;

			for (int i = 0; i < patterns.Length; i++)
			{
				if (value.MatchesPattern(patterns[i]) == false)
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
			bool result = false;

			if (!String.IsNullOrEmpty(value))
			{
				try
				{
					DateTime dt = Convert.ToDateTime(value);
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
			bool result = false;

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
			bool result = false;

			if (string.IsNullOrEmpty(value) == false)
			{
				result = value.MatchesPattern(RegularExpressions.Email);
			}

			return result;
		}

		private class StringComparer : IEqualityComparer<string>
		{
			private bool _caseSensitive { get; set; }

			public StringComparer(bool caseSensitive)
			{
				_caseSensitive = caseSensitive;
			}

			public StringComparer()
			{
				_caseSensitive = false;
			}

			public bool Equals(string x, string y)
			{
				return ((_caseSensitive ? x == y : x.ToLower() == y.ToLower()));
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
		public static bool ContainsPrevalue(this string value, string prevalueList, string delimitter, bool caseSensitive = false)
		{
			bool result = false;

			if (string.IsNullOrEmpty(prevalueList) == false && string.IsNullOrEmpty(value) == false)
			{
				string[] values = prevalueList.Split(new string[] { delimitter }, StringSplitOptions.RemoveEmptyEntries);

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
		public static string ValidateText(this string value, ValidationOptions valType, int minLength, int maxLength, bool optional)
		{
			string result = "";

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
			if (result == "")
			{
				if (valType == ValidationOptions.USStateAbbreviation)
				{
					bool flag = Geography.StatesAbbreviations.Contains(value, new StringComparer(false));

					if (!flag)
					{
						result += "Not a state";
					}
				}

				if (valType == ValidationOptions.Email)
				{
					if (!IsEmail(value))
					{
						result += "Invalid email address format";
					}
				}

				if (valType == ValidationOptions.EmailList)
				{
					// Invalid string
					if (value.Length < 6)
					{
						result += "Invalid email address format";
					}
					else
					{
						// Only one email address? If not, check for multiple.
						if (!IsEmail(value))
						{
							string delim = "";

							if (delim == "" && value.IndexOf(",") > 0) delim = ",";
							if (delim == "" && value.IndexOf("|") > 0) delim = "|";
							if (delim == "" && value.IndexOf(";") > 0) delim = ";";
							if (delim == "" && value.IndexOf("/") > 0) delim = "/";
							if (delim == "" && value.IndexOf(" ") > 0) delim = " ";

							if (delim != "")
							{
								value = value.Replace(delim, ",");
								value = value.Replace(" ", "");

								while (value.IndexOf(",,") > 0) value = value.Replace(",,", ",");

								string[] addresses = value.Split(new[] { ',' });

								for (int x = 0; x < addresses.Length; x++)
								{
									if (!IsEmail(addresses[x]))
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
					}
				}

				if (valType == ValidationOptions.Number)
				{
					if (!IsNumeric(value))
					{
						result += "Not a numeric value";
					}
				}

				if (valType == ValidationOptions.PureNumber)
				{
					if (!IsPureNumeric(value))
					{
						result += "Must only contain numbers";
					}
				}

				if (valType == ValidationOptions.NonZero)
				{
					if (!IsPureNumeric(value))
					{
						result += "Must only contain numbers";
					}
					else
					{
						if (Convert.ToInt32(value) <= 0)
						{
							result += "Must be greater than zero";
						}
					}
				}

				if (valType == ValidationOptions.Currency)
				{
					if (!IsCurrency(value))
					{
						result += "Not a currency value";
					}
				}

				if (valType == ValidationOptions.Date)
				{
					if (!IsDate(value))
					{
						result += "Not a date";
					}
				}

				if (valType == ValidationOptions.Telephone)
				{
					if (!MatchesPattern(value, RegularExpressions.TelephoneUS))
					{
						result += "Not a telephone number";
					}
				}

				if (valType == ValidationOptions.Telephone10)
				{
					if (!MatchesPattern(value, RegularExpressions.Telephone10))
					{
						result += "Not a telephone number with area code";
					}
				}

				if (valType == ValidationOptions.CreditCard)
				{
					if (!MatchesPattern(value, RegularExpressions.ValidCreditCardNumber))
					{
						result += "Not a credit card number";
					}
				}

				if (valType == ValidationOptions.ZipCode)
				{
					if (!MatchesPattern(value, RegularExpressions.ZipCode))
					{
						result += "Not a 5-digit zip code";
					}
				}

				if (valType == ValidationOptions.Url)
				{
					if (!MatchesPattern(value, RegularExpressions.Url))
					{
						result += "Not a URL";
					}
				}

				if (valType == ValidationOptions.IPv4Address)
				{
					if (!MatchesPattern(value, RegularExpressions.IPv4Address))
					{
						result += "Not an IP address";
					}
				}

				if (valType == ValidationOptions.Ssn)
				{
					if (!MatchesPattern(value, RegularExpressions.SocialSecurityNumber))
					{
						result += "Not a social security number";
					}
				}

				if (valType == ValidationOptions.Time)
				{
					if (!MatchesPattern(value, RegularExpressions.Time) && !MatchesPattern(value, RegularExpressions.TimeMilitary))
					{
						result += "Not a time of day";
					}
				}

				if (valType == ValidationOptions.Domain)
				{
					if (!MatchesPattern(value, RegularExpressions.DomainName))
					{
						result += "Not a domain name";
					}
				}

				if (valType == ValidationOptions.FullNameWithComma)
				{
					if (!MatchesPattern(value, RegularExpressions.FullNameWithComma))
					{
						result += "Not last name, first name";
					}
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
		/// <returns>Empty string if validation succeeds, error message on failure.</returns>
		public static string ValidateText(this string value, ValidationOptions valType, int minLength, int maxLength)
		{
			return ValidateText(value, valType, minLength, maxLength, false);
		}

		/// <summary>
		/// Run data type and field length validation on a specific value.
		/// Certain types of validators obviate the need to specify a minimum or maximum length,
		/// like ValidationOptions.Email.
		/// </summary>
		/// <param name="value">Value to validate.</param>
		/// <param name="valType">Constant determining what type of validation.</param>
		/// <returns>Empty string if validation succeeds, error message on failure.</returns>
		public static string ValidateText(this string value, ValidationOptions valType)
		{
			return ValidateText(value, valType, 0, 0, false);
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
			return ValidateText(value, ValidationOptions.Length, minLength, maxLength, false);
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
}
