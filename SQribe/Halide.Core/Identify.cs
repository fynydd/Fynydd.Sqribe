// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Runtime.Versioning;
using System.Text.RegularExpressions;

namespace SQribe.Halide.Core;

#region Constants

public static class Geography
{
	public static readonly string[] StateAbbreviations =
	{
		"AL",
		"AK",
		"AZ",
		"AR",
		"CA",
		"CO",
		"CT",
		"DE",
		"DC",
		"FL",
		"GA",
		"HI",
		"ID",
		"IL",
		"IN",
		"IA",
		"KS",
		"KY",
		"LA",
		"ME",
		"MD",
		"MA",
		"MI",
		"MN",
		"MS",
		"MO",
		"MT",
		"NE",
		"NV",
		"NH",
		"NJ",
		"NM",
		"NY",
		"NC",
		"ND",
		"OH",
		"OK",
		"OR",
		"PA",
		"RI",
		"SC",
		"SD",
		"TN",
		"TX",
		"UT",
		"VT",
		"VA",
		"WA",
		"WV",
		"WI",
		"WY"
	};
}

public static class RegularExpressions
{
    /// <summary>
    /// HTML hex color with optional leading #.
    /// </summary>
    /// <example>
    /// Allows: 000, #fff, 000000, #ffffff
    /// </example>
    public const string HexColor = @"^[#]{0,1}([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$";

	/// <summary>
	/// HTML hex color without leading #.
	/// </summary>
	/// <example>
	/// Allows: 000, 000000
	/// </example>
	public const string HexColorNoPound = @"^([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$";

	/// <summary>
	/// HTML hex color with leading #.
	/// </summary>
	/// <example>
	/// Allows: #fff, #ffffff
	/// </example>
	public const string HexColorWithPound = @"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$";

	/// <summary>
	/// Standard RFC3986 approved email addresses.
	/// </summary>
	/// <example>
	/// Allows: joe@domain.com, joe.smith@domain.com, joe.o'donnel@domain.com
	/// </example>
	public const string Email = @"^(?!^.{254})([a-zA-Z0-9_'+*$%\^&!\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9:]{2,4})+$";

	/// <summary>
	/// File size in KB, MB, GB, TB or PB.
	/// </summary>
	/// <example>
	/// Allows: 1kb, 1 KB, 15.7mb, et al.
	/// </example>
	public const string FileSize = @"^\d{1}[0-9\.]*\s?(kb|Kb|KB|mb|Mb|MB|gb|Gb|GB|tb|Tb|TB|pb|Pb|PB){1}$";

	/// <summary>
	/// Standard 5 digit U.S. zip code.
	/// </summary>
	/// <example>
	/// Allows: 12345
	/// </example>
	public const string ZipCode = @"^\d{5}$";

	/// <summary>
	/// Standard 5 digit U.S. zip code with four extra digits.
	/// </summary>
	/// <example>
	/// Allows: 12345-1234
	/// </example>
	public const string ZipCodePlusFour = @"^\d{5}((-|\s)?\d{4})$";

	/// <summary>
	/// Standard 5 digit U.S. zip code with optional four extra digits.
	/// </summary>
	/// <example>
	/// Allows: 12345-1234, 12345
	/// </example>
	public const string ZipCodePlusFourOptional = @"^\d{5}((-|\s)?\d{4})?$";

	/// <summary>
	/// Standard 2-letter state abbreviation, case insensitive.
	/// </summary>
	// ReSharper disable once InconsistentNaming
	public const string USStateAbbreviation = @"^([Aa][LlKkSsZzRrAaEePp]|[Cc][AaOoTt]|[Dd][EeCc]|[Ff][LlMm]|[Gg][AaUu]|[Hh][Ii]|[Ii][AaDdLlNn]|[Kk][SsYy]|[Ll][Aa]|[Mm][AaDdEeHhIiNnOoPpSsTt]|[Nn][CcDdEeHhJjMmVvYy]|[Oo][HhKkRr]|[Pp][AaRrWw]|[Rr][Ii]|[Ss][CcDd]|[Tt][NnXx]|[Uu][Tt]|[Vv][AaIiTt]|[Ww][AaIiVvYy])$";

	/// <summary>
	/// Permissive US Telephone Regex. Does not allow extensions. Area code is not required.
	/// </summary>
	/// <example>
	/// Allows: 234-3433, 324-234-3433, 3242343434, (234)234-234, (234) 234-2343
	/// </example>
	// ReSharper disable once InconsistentNaming
	public const string TelephoneUS = @"^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$";

	/// <summary>
	/// Permissive US Telephone Regex. Does not allow extensions. Area code is required.
	/// </summary>
	/// <example>
	/// Allows: 324-234-3433, 3242343434, (234)234-2343, (234) 234-2343
	/// </example>
	public const string Telephone10 = @"^\(\d{3}\) ?\d{3}( |-)?\d{4}|^\d{3}( |-)?\d{3}( |-)?\d{4}";

	/// <summary>
	/// This matches a url in the generic format 
	/// scheme://authority/path?query#fragment
	/// </summary>
	/// <example>
	/// </example>
	public const string Url =
		@"^" +
			// protocol identifier (optional)
			// short syntax // still required
			@"(?:(?:(?:https?|ftp):)?\/\/)" +
			// user:pass BasicAuth (optional)
			@"(?:\S+(?::\S*)?@)?" +
			@"(?:" +
				// IP address exclusion
				// private & local networks
				//@"(?!(?:10|127)(?:\.\d{1,3}){3})" +
				//@"(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})" +
				//@"(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})" +
				// IP address dotted notation octets
				// excludes loopback network 0.0.0.0
				// excludes reserved space >= 224.0.0.0
				// excludes network & broadcast addresses
				// (first & last IP address of each class)
				@"(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])" +
				@"(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}" +
				@"(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))" +
			@"|" +
				// host & domain names, may end with dot
				// can be replaced by a shortest alternative
				// (?![-_])(?:[-\w\u00a1-\uffff]{0,63}[^-_]\.)+
				@"(?:" +
				@"(?:" +
					@"[a-z0-9\u00a1-\uffff]" +
					@"[a-z0-9\u00a1-\uffff_-]{0,62}" +
				@")?" +
				@"[a-z0-9\u00a1-\uffff]\." +
				@")+" +
				// TLD identifier name, may end with dot
				@"(?:[a-z\u00a1-\uffff]{2,}\.?)" +
			@"|" +
				@"(localhost)" +
			@")" +
			// port number (optional)
			@"(?::\d{2,5})?" +
			// resource path (optional)
			@"(?:[/?#]\S*)?" +
		@"$";

	/// <summary>
	/// This matches a url in the generic format 
	/// scheme://authority/path?query#fragment
	/// </summary>
	/// <example>
	/// </example>
	public const string UrlExcludingInternalIpAddresses =
		@"^" +
			// protocol identifier (optional)
			// short syntax // still required
			@"(?:(?:(?:https?|ftp):)?\/\/)" +
			// user:pass BasicAuth (optional)
			@"(?:\S+(?::\S*)?@)?" +
			@"(?:" +
				// IP address exclusion
				// private & local networks
				@"(?!(?:10|127)(?:\.\d{1,3}){3})" +
				@"(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})" +
				@"(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})" +
				// IP address dotted notation octets
				// excludes loopback network 0.0.0.0
				// excludes reserved space >= 224.0.0.0
				// excludes network & broadcast addresses
				// (first & last IP address of each class)
				@"(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])" +
				@"(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}" +
				@"(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))" +
			@"|" +
				// host & domain names, may end with dot
				// can be replaced by a shortest alternative
				// (?![-_])(?:[-\w\u00a1-\uffff]{0,63}[^-_]\.)+
				@"(?:" +
				@"(?:" +
					@"[a-z0-9\u00a1-\uffff]" +
					@"[a-z0-9\u00a1-\uffff_-]{0,62}" +
				@")?" +
				@"[a-z0-9\u00a1-\uffff]\." +
				@")+" +
				// TLD identifier name, may end with dot
				@"(?:[a-z\u00a1-\uffff]{2,}\.?)" +
			@")" +
			// port number (optional)
			@"(?::\d{2,5})?" +
			// resource path (optional)
			@"(?:[/?#]\S*)?" +
		@"$";

	/// <summary>
	/// This matches an ip address in the format xxx-xxx-xxx-xxx
	/// each group of xxx must be less than or equal to 255
	/// </summary>
	/// <example>
	/// Allows: 123.123.123.123, 192.168.1.1
	/// </example>
	// ReSharper disable once InconsistentNaming
	public const string IPv4Address = @"^(?<First>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Second>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Third>2[0-4]\d|25[0-5]|[01]?\d\d?)\.(?<Fourth>2[0-4]\d|25[0-5]|[01]?\d\d?)$";

	/// <summary><![CDATA[
	/// This matches an ipv6 address in 8 16-bit words.
	/// ]]></summary>
	/// <example>
	/// Allows: 1762:0:0:0:0:B03:1:AF18, etc.
	/// </example>
	// ReSharper disable once InconsistentNaming
	public const string IPv6Address = @"^(((?=.*(::))(?!.*\3.+\3))\3?|[0-9A-F]{1,4}:)([0-9A-F]{1,4}(\3|:\b)|\2){5}(([0-9A-F]{1,4}(\3|:\b|$)|\2){2}|(((2[0-4]|1[0-9]|[1-9])?[0-9]|25[0-5])\.?\b){4})\z";

	/// <summary>
	/// This matches a date in the format mm/dd/yy
	/// </summary>
	/// <example>
	/// Allows: 01/05/05, 12/30/99, 04/11/05
	/// Does not allow: 01/05/2000, 2/2/02
	/// </example> 
	// ReSharper disable once InconsistentNaming
	public const string DateMMDDYY = @"^(1[0-2]|0[1-9])/(([1-2][0-9]|3[0-1]|0[1-9])/\d\d)$";

	/// <summary>
	/// This matches a date in the format m/d/yyyy. Month and day can optionally contain leading zeroes.
	/// </summary>
	/// <example>
	/// Allows: 01/05/2005, 12/30/9999, 4/1/2005
	/// </example> 
	public const string Date = @"^((1[0-2]|[1-9]|0[1-9])/([1-2][0-9]|3[0-1]|0[1-9]|[1-9])/(\d{2}|\d{4}))$";

	/// <summary>
	/// This matches a date in the format mm/yy
	/// </summary>
	/// <example>
	/// Allows: 01/05, 11/05, 04/99
	/// Does not allow: 1/05, 13/05, 00/05
	/// </example>
	// ReSharper disable once InconsistentNaming
	public const string DateMMYY = @"^((0[1-9])|(1[0-2]))\/(\d{2})$";

	/// <summary>
	/// This matches only numbers (no decimals, commas, etc.)
	/// </summary>
	/// <example>
	/// Allows: 0, 1, 123, 4232323, 1212322
	/// </example>
	public const string Numeric = @"^([1-9]\d*)$|^0$";

	/// <summary>
	/// This matches any string with only alpha characters upper or lower case(A-Z)
	/// </summary>
	/// <example>
	/// Allows: abc, ABC, abCd, AbCd
	/// Does not allow: A C, abc!, (a,b)
	/// </example>
	public const string Alpha = @"^[a-zA-Z]+$";

	/// <summary>
	/// This matches any string with only upper case alpha character(A-Z)
	/// </summary>
	public const string UpperCase = @"^[A-Z]+$";

	/// <summary>
	/// This matches any string with only lower case alpha character(A-Z)
	/// </summary>
	public const string LowerCase = @"^[a-z]+$";

	/// <summary>
	/// Ensures the string only contains alpha-numeric characters, and
	/// not punctuation, spaces, newlines, etc.
	/// </summary>
	/// <example>
	/// Allows: ab2c, 112ABC, ab23Cd
	/// Does not allow: A C, abc!, a.a
	/// </example>
	public const string AlphaNumeric = @"^[a-zA-Z0-9]+$";

	/// <summary>
	/// Validates US Currency.  Requires $ sign.
	/// Allows for optional commas and decimal. 
	/// No leading zeros. 
	/// </summary>
	/// <example>
	/// Allows: $100,000 or $10000.00 or $10.00 or $.10 or $0 or $0.00 or $0.10 or 10,000
	/// </example>
	// ReSharper disable once InconsistentNaming
	public const string USCurrency = @"^[\$]*(([0-9]\d*|([0-9]\d{0,2}(\,\d{3})*))(\.\d{1,2})?|(\.\d{1,2}))$|^\$[0](.00)?$";

	/// <summary>
	/// Matches major credit cards including: Visa (length 16, prefix 4);
	/// <para>Mastercard (length 16, prefix 51-55);</para>
	/// <para>Diners Club/Carte Blanche (length 14, prefix 36, 38, or 300-305);</para>
	/// <para>Discover (length 16, prefix 6011);</para>
	/// <para>American Express (length 15, prefix 34 or 37).</para>
	/// <para>Saves the card type as a named group to facilitate further validation 
	/// against a "card type" checkbox in a program.</para>
	/// <para>All 16 digit formats are grouped 4-4-4-4 with an optional hyphen 
	/// or space between each group of 4 digits.</para>
	/// <para>The American Express format is grouped 4-6-5 with an optional hyphen or 
	/// space between each group of digits.</para>
	/// <para>Formatting characters must be consistent, i.e. if two groups are separated by a hyphen, 
	/// all groups must be separated by a hyphen for a match to occur.</para>
	/// </summary>
	public const string ValidCreditCardNumber = @"^(?:(?<Visa>4\d{3})|(?<Mastercard>5[1-5]\d{2})|(?<Discover>6011)|(?<DinersClub>(?:3[68]\d{2})|(?:30[0-5]\d))|(?<AmericanExpress>3[47]\d{2}))([ -]?)(?(DinersClub)(?:\d{6}\1\d{4})|(?(AmericanExpress)(?:\d{6}\1\d{5})|(?:\d{4}\1\d{4}\1\d{4})))$";

	/// <summary>
	/// Matches social security in the following format xxx-xx-xxxx
	/// where x is a number
	/// </summary>
	/// <example>
	/// Allows: 123-45-6789, 232-432-1212
	/// </example>
	public const string SocialSecurityNumber = @"^\d{3}-\d{2}-\d{4}$";

	/// <summary>
	/// Matches x,x where x is a name, spaces are only allowed between comma and name
	/// </summary>
	/// <example>
	/// Allows: christophersen,eric; christophersen, eric
	/// Not allowed: christophersen ,eric;
	/// </example>
	public const string FullNameWithComma = @"^[a-zA-Z]+,\s?[a-zA-Z]+$";

	/// <summary>
	/// Matches time of day. Leading zeroes are ignored.
	/// </summary>
	/// <example>
	/// Allows: 01:15am, 10:15 AM, etc.
	/// </example>
	public const string Time = @"^((0?[1-9]|1[012]):[0-5]\d(\ {0,}[AaPp][Mm]))$";

	/// <summary>
	/// Matches time of day in military format.
	/// </summary>
	/// <example>
	/// Allows: 00:15, 23:45, et al.
	/// </example>
	public const string TimeMilitary = @"^((([0][0-2])|([1][0-9])|([2][0-3])):[0-5][0-9])$";

	/// <summary>
	/// Matches 3 digits for an area code
	/// </summary>
	/// <example>
	/// Allows: any 3 digits
	/// </example>
	public const string AreaCode = @"^\d\d\d$";

	/// <summary>
	/// Matches a domain name.
	/// </summary>
	/// <example>
	/// Allows: site.com, site.com:8080, http://www.site.com, et al.
	/// </example>
	public const string DomainName = @"^([a-zA-Z\:/]*[a-zA-Z0-9-_]\.[a-zA-Z][a-zA-Z][a-zA-Z0-9\?\=&#_\-/\.\:]*[^\.\s])$";

	/// <summary>
	/// <![CDATA[
	/// Matches a strong password format. Must have 8-64 characters, and at least one lower case, one upper case, one digit, and one special character.
	/// Special characters include: ~!@#$%^&amp;*()_+=[{]};:<>|./?,-
	/// ]]>
	/// </summary>
	public const string PasswordAndLength = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!@#$%^&*\(\)_+=\[{\]};:<>|./?,-])\S{8,64}$";

	/// <summary>
	/// <![CDATA[
	/// Matches a strong password format. Must have at least one lower case, one upper case, one digit, and one special character.
	/// Special characters include: ~!@#$%^&amp;*()_+=[{]};:<>|./?,-
	/// ]]>
	/// </summary>
	public const string Password = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!@#$%^&*\(\)_+=\[{\]};:<>|./?,-])\S{4,}$";
}

#endregion

public static class Identify
{
    #region OS and Runtime

    /// <summary>
    /// Get OS platform.
    /// </summary> 
    /// <returns>OSPlatform object</returns> 
    public static OSPlatform GetOsPlatform() 
    { 
        var osPlatform = OSPlatform.Create("Other platform");

        // Check if it's windows 
        var isWindows = RuntimeInformation.IsOSPlatform(OSPlatform.Windows); 
        osPlatform = isWindows ? OSPlatform.Windows : osPlatform; 

        // Check if it's osx 
        var isOsx = RuntimeInformation.IsOSPlatform(OSPlatform.OSX); 
        osPlatform = isOsx ? OSPlatform.OSX : osPlatform; 

        // Check if it's Linux 
        var isLinux = RuntimeInformation.IsOSPlatform(OSPlatform.Linux); 
        osPlatform = isLinux ? OSPlatform.Linux : osPlatform; 

        return osPlatform; 
    } 

    /// <summary>
    /// Get OS platform name for output to users.
    /// </summary> 
    /// <returns>OSPlatform name (friendly for output)</returns> 
    public static string GetOsPlatformName()
    {
        if (GetOsPlatform() == OSPlatform.OSX)
            return "macOS";

        if (GetOsPlatform() == OSPlatform.Linux)
            return "Linux";

        if (GetOsPlatform() == OSPlatform.Windows)
            return "Windows";

        return "Other";
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

		if (result == null || result.IsEmpty()) return string.Empty;

		if (result.Contains("Version="))
			return result.Right("Version=").TrimStart(new [] { 'v' });

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
	/// Get the .NET CLR runtime version (e.g. "4.6.27110.04").
	/// Only works in 2.2 or later.
	/// </summary> 
	/// <returns>String with the .NET CLR runtime version number</returns> 
	public static string GetRuntimeVersion()
	{
		return RuntimeInformation.FrameworkDescription.Right(" ");
	}

	/// <summary>
	/// Get the .NET CLR runtime version string.
	/// Only works in 2.2 or later.
	/// </summary> 
	/// <returns>String with the .NET CLR runtime version number</returns> 
	public static string GetRuntimeVersionFull()
	{
		return RuntimeInformation.FrameworkDescription;
	}

    #endregion

    /// <summary>
    /// Determine if a given string is in a valid GUID format.
    /// </summary>
    /// <param name="value">GUID string value</param>
    /// <returns>true or false</returns>
    public static bool IsGuid(this string? value)
    {
        return Guid.TryParse(value, out _);
    }

	/// <summary>
	/// Determine if a given string matches a 2-letter state abbreviation.
	/// </summary>
	/// <param name="value">2-letter state abbreviation to check</param>
	/// <returns>true or false.</returns>
	public static bool IsState(this string twoLetterState)
	{
		return Geography.StateAbbreviations.ToList().Contains(twoLetterState, StringComparer.InvariantCultureIgnoreCase);
	}

	/// <summary>
	/// Determines if a string value is numeric, but not currency.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false.</returns>
	public static bool IsNumeric(this string? value)
	{
		return double.TryParse(value, (NumberStyles.AllowExponent | NumberStyles.AllowThousands | NumberStyles.AllowDecimalPoint | NumberStyles.AllowLeadingSign), null, out _);
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
	public static bool IsCurrency(this string? value)
	{
		return double.TryParse(value, (NumberStyles.AllowCurrencySymbol | NumberStyles.AllowThousands | NumberStyles.AllowDecimalPoint | NumberStyles.AllowLeadingSign), CultureInfo.CreateSpecificCulture("en-US"), out _);
	}

	/// <summary>
	/// Determines if a string value is numeric, with no symbols, commas, or decimal points.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false.</returns>
	public static bool IsPureNumeric(this string? value)
	{
		return double.TryParse(value, 0, null, out _);
	}

	/// <summary>
	/// Checks to see if the passed input has the passed pattern
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <param name="pattern">Regex pattern to use</param>
	/// <returns>True if the value has the pattern, false otherwise.</returns>
	public static bool MatchesPattern(this string? value, string pattern)
	{
		var regEx = new Regex(pattern);
		return regEx.IsMatch(value ?? string.Empty);
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
				result = false;
		}

		return result;
	}

	/// <summary>
	/// Determines if a string value is a datetime.
	/// </summary>
	/// <param name="value">String to evaluate</param>
	/// <returns>true or false</returns>
	public static bool IsDate(this string? value)
	{
		var result1 = DateTime.TryParse(value, out _);		
		var result2 = DateTimeOffset.TryParse(value, out _);

		return result1 || result2;
	}

	/// <summary>
	/// Uses RegEx to check for password formatting. Alpha-numeric
	/// characters and basic typewriter symbols are allowed.
	/// </summary>
	/// <param name="value">password string to validate</param>
	/// <param name="minLength"></param>
	/// <param name="maxLength"></param>
	/// <returns>true if a valid password, false if not.</returns>
	public static bool IsValidPasswordFormat(this string? value, int minLength, int maxLength)
	{
		if (value == null || value.IsEmpty() || minLength <= 3 || minLength > maxLength) return false;

		if (value.Length < minLength || value.Length > maxLength) return false;

		if (value.MatchesPattern(RegularExpressions.Password))
			return true;

		return false;
	}

	/// <summary>
	/// Validate the format of an email address
	/// </summary>
	/// <param name="value">email address to evaluate</param>
	/// <returns>true if formatted as a valid email address, false if not</returns>
	public static bool IsEmail(this string? value)
	{
		if (value == null || value.IsEmpty()) return false;
		
		return value.MatchesPattern(RegularExpressions.Email);
	}
}
