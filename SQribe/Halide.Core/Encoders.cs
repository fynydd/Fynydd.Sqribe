// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Security.Cryptography;
using System.Text;

namespace SQribe.Halide.Core;

/// <summary>
/// The Encoders class contains methods and properties for
/// encoding and decoding data.
/// </summary>
public static class Encoders
{
	#region Base64 (bytes) 
	
	/// <summary>
	/// Base64 encodes a byte array.
	/// </summary>
	/// <example>
	/// <code>
	/// string encodedString = bytes.ToBase64String();
	/// </code>
	/// </example>
	/// <param name="inputBytes">A byte array to encode</param>
	/// <returns>A Base64-encoded string.</returns>
	public static string ToBase64String(this byte[]? inputBytes)
	{
		if (inputBytes == null) return string.Empty;
	
		return Convert.ToBase64String(inputBytes);
	}
	
	/// <summary>
	/// Base64 decodes a string to a byte array.
	/// </summary>
	/// <example>
	/// <code>
	/// byte[] decodedBytes = value.FromBase64String();
	/// </code>
	/// </example>
	/// <param name="encodedString">A Base64-encoded string</param>
	/// <returns>A decoded byte array.</returns>
	public static byte[]? FromBase64String(this string? encodedString)
	{
		if (encodedString == null || encodedString.IsEmpty()) return default;

		return Convert.FromBase64String(encodedString);
	}

	#endregion
	
	#region Url Base64
	
	/// <summary>
	/// Base64Url-encodes a string. Safe for use in URL parameters.
	/// Removes padding and replaces + with - and / with _.
	/// </summary>
	/// <example>
	/// <code>
	/// string encodedString = bytes.ToUrlBase64String();
	/// </code>
	/// </example>
	/// <param name="inputBytes">A byte array to encode</param>
	/// <returns>A Base64Url-encoded string.</returns>
	public static string ToUrlBase64String(this byte[]? inputBytes)
	{
		if (inputBytes is not {Length: > 0}) return string.Empty;

		var result = Convert.ToBase64String(inputBytes)
			.Split(new[] { '=' })[0] // Remove padding
			.Replace('+', '-') // 62nd char of encoding
			.Replace('/', '_'); // 63rd char of encoding

		return result;
	}

	/// <summary>
	/// Base64Url-encodes a string. Safe for use in URL parameters.
	/// Removes padding and replaces + with - and / with _.
	/// </summary>
	/// <example>
	/// <code>
	/// string encodedString = value.ToUrlBase64String();
	/// </code>
	/// </example>
	/// <param name="inputString">A string to encode</param>
	/// <returns>A Base64Url-encoded string.</returns>
	public static string ToUrlBase64String(this string inputString)
	{
		if (inputString.IsEmpty()) return string.Empty;
		
		return Encoding.UTF8.GetBytes(inputString).ToUrlBase64String();
	}

	/// <summary>
	/// Decodes a Url Base64 string created with ToUrlBase64String().
	/// Works with strings and byte arrays.
	/// Handles missing padding characters.
	/// </summary>
	/// <example>
	/// <code>
	/// <![CDATA[
	/// byte[] decodedBytes = value.FromUrlBase64String<byte[]>();
	/// string decodedString = value.FromUrlBase64String<string>();
	/// ]]>
	/// </code>
	/// </example>
	/// <param name="encodedString">A Url Base64-encoded string</param>
	/// <returns>A decoded byte array or string.</returns>
	private static T? FromUrlBase64String<T>(this string? encodedString)
	{
		if (encodedString == null || encodedString.IsEmpty()) return default;

		var base64String = encodedString
			.Replace('-', '+') // 62nd char of encoding
			.Replace('_', '/'); // 63rd char of encoding

		switch (base64String.Length % 4) // Pad with trailing '='s
		{
			case 0:
				break; // No padding needed
			case 2:
				base64String += "==";
				break;
			case 3:
				base64String += "=";
				break;
			default:
				throw new ArgumentOutOfRangeException(nameof(encodedString),
					"Encoders.FromUrlBase64String(): Invalid encoding");
		}

		var bytes = Convert.FromBase64String(base64String);
		
		if (typeof(T) == typeof(string))
			return (T)(object)Encoding.UTF8.GetString(bytes);

		if (typeof(T) == typeof(byte[]))
			return (T)(object)bytes;

		return default;
	}

	/// <summary>
	/// Decodes a Url Base64 string created with ToUrlBase64String().
	/// Handles missing padding characters.
	/// </summary>
	/// <example>
	/// <code>
	/// <![CDATA[
	/// byte[] decodedBytes = value.ToBytesFromUrlBase64String();
	/// ]]>
	/// </code>
	/// </example>
	/// <param name="encodedString">A Url Base64-encoded string</param>
	/// <returns>A decoded byte array or string.</returns>
	public static byte[]? ToBytesFromUrlBase64String(this string? encodedString)
	{
		return encodedString.FromUrlBase64String<byte[]>();
	}
	
	/// <summary>
	/// Decodes a Url Base64 string created with ToUrlBase64String().
	/// Handles missing padding characters.
	/// </summary>
	/// <example>
	/// <code>
	/// <![CDATA[
	/// string decodedString = value.ToStringFromUrlBase64String();
	/// ]]>
	/// </code>
	/// </example>
	/// <param name="encodedString">A Url Base64-encoded string</param>
	/// <returns>A decoded byte array or string.</returns>
	public static string? ToStringFromUrlBase64String(this string? encodedString)
	{
		return encodedString.FromUrlBase64String<string>();
	}
	
	#endregion
	
	#region GUIDs
	
	/// <summary>
	/// Shrink a GUID to a 22 character string value
	/// </summary>
	/// <param name="guid"></param>
	/// <returns></returns>
	public static string ShrinkGuid(this Guid guid)
	{
		return guid.ToByteArray().ToUrlBase64String();
	}

	/// <summary>
	/// Convert a 22-character shrunken GUID back into a proper GUID.
	/// </summary>
	/// <param name="tinyGuid"></param>
	/// <returns></returns>
	public static Guid? ExpandGuid(this string? tinyGuid)
	{
		if (tinyGuid == null || tinyGuid.IsEmpty()) return null;

		try
		{
			var decoded = tinyGuid.ToBytesFromUrlBase64String();

			if (decoded is {Length: 16})
				return new Guid(decoded);
		}

		catch
		{
			// ignored
		}

		return null;
	}
	
	#endregion
	
	#region MD5
	
	/// <summary>
	/// MD5 encodes the passed string.
	/// </summary>
	/// <example>
	/// <code>
	/// string encodedVar = Security.MD5String(stringVar);
	/// </code>
	/// </example>
	/// <param name="input">The string to encode.</param>
	/// <returns>An MD5 encoded string.</returns>
	public static string MD5String(this string input)
	{
		var result = string.Empty;

		if (string.IsNullOrWhiteSpace(input) == false)
        {
            // Create a new instance of the MD5CryptoServiceProvider object.

            // Convert the input string to a byte array and compute the hash.
            var data = MD5.HashData(Encoding.Default.GetBytes(input));

            if (data.Length > 0)
            {
                // Create a new Stringbuilder to collect the bytes
                // and create a string.
                var sBuilder = new StringBuilder();

                // Loop through each byte of the hashed data 
                // and format each one as a hexadecimal string.
                foreach (var t in data)
                {
                    sBuilder.Append(t.ToString("x2"));
                }

                result = sBuilder.ToString();
            }
        }

        // Return the hexadecimal string.
        return result;
	}
	
	#endregion
}
