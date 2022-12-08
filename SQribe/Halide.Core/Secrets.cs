// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Text.Json;

namespace SQribe.Halide.Core;

/// <summary>
/// The Secrets class contains helpers for working with secrets.
/// </summary>
public static class Secrets
{
	#region Hashing

    /// <summary>
    /// Generate a Url Base64-encoded HMAC hash of a string.
    /// Supports HMAC SHA256, HMAC SHA384, and HMAC SHA512 hashing algorithms.
    /// </summary>
    /// <param name="payload">String data to hash</param>
    /// <param name="base64Secret">A secret which you have already Base64-encoded. HS256 uses 64-byte secrets. HS384 and HS512 use 128-byte secrets</param>
    /// <param name="hashingAlgorithm">HMACSHA256, HMACSHA384, or HMACSHA512</param>
    /// <returns>A Base64-encoded hash</returns>
    public static string GenerateHmacHash(this string payload, string base64Secret, string hashingAlgorithm = "HMACSHA512")
    {
	    var hash = string.Empty;

	    try
	    {
		    if (base64Secret.IsEmpty())
			    throw new Exception("Base64-encoded secret is empty");
            
		    var secretBytes = base64Secret.ToBytesFromUrlBase64String();

		    if (secretBytes is null or {Length: < 64})
			    throw new Exception("Secret length less than 64 bytes");
                
		    byte[]? hashValue = null;

		    switch (hashingAlgorithm.Replace(" " , string.Empty).ToUpper())
		    {
			    case "HMACSHA256":
			    {
				    using var hmac = new HMACSHA256(secretBytes);
				    hashValue = hmac.ComputeHash(payload.ToByteArray());

				    break;
			    }

			    case "HMACSHA384" when secretBytes.Length >= 128:
			    {
				    using var hmac = new HMACSHA384(secretBytes);
				    hashValue = hmac.ComputeHash(payload.ToByteArray());

				    break;
			    }

			    case "HMACSHA384":
				    throw new Exception("Secret less than 128 bytes");

			    case "HMACSHA512" when secretBytes.Length >= 128:
			    {
				    using var hmac = new HMACSHA512(secretBytes);
				    hashValue = hmac.ComputeHash(payload.ToByteArray());

				    break;
			    }

			    case "HMACSHA512":
				    throw new Exception("Secret less than 128 bytes");
		    }

		    if (hashValue is null)
			    throw new Exception("Hash value not generated, likely incorrect algorithm specified");
            
		    hash = hashValue.ToUrlBase64String();
	    }

	    catch (Exception err)
	    {
		    Debug.WriteLine("Secrets.GenerateHmacHash(): " + err.Message);
	    }

	    return hash;
    }

    #endregion

	#region Javascript Web Tokens

	/// <summary>
	/// JWT status result.
	/// </summary>
	public enum JwtStatus
	{
		/// <summary>
		/// Not a valid JWT
		/// </summary>
		Invalid,

		/// <summary>
		/// Invalid, missing expiration
		/// </summary>
		InvalidOrMissingExpiration,

		/// <summary>
		/// Invalid, missing payload
		/// </summary>
		InvalidOrMissingPayload,

		/// <summary>
		/// JWT is not yet valid
		/// </summary>
		NotYetValid,

		/// <summary>
		/// JWT has expired
		/// </summary>
		Expired,

		/// <summary>
		/// JWT is valid
		/// </summary>
		Valid,
		
		/// <summary>
		/// JWT is missing or empty 
		/// </summary>
		MissingOrEmpty,
		
		/// <summary>
		/// Encryption key not provided to verification method 
		/// </summary>
		InvalidDecryptionKey
	}
	
	/// <summary>
	/// Generate a javascript web token (JWT) using hash-based message authentication code (HMAC).
	/// Supports HS256, HS384, and HS512 hashing algorithms.
    /// When using the payload exp property for expiration, always use UTC. 
	/// 
	/// Use cases:
	/// 1. Stateless sessions stored in browser cookies
	/// 2. Email verification codes
	/// 3. Session IDs with the ability to differentiate between expired and invalid IDs
	/// 
	/// Notes:
	/// 1. The HMAC is not a digital signature!
	/// 2. Use longer keys / hashes(e.g.HS512) for increased security
	/// 3. Keys longer than the hash size don’t provide additional security
	/// 4. Tokens where issuer and ultimate consumer is the same party
	/// 5. Expirations are based on claim "exp" being a long int time (in seconds) from epoch (using EpochTime.GetInt()); claim "iat" is also numeric
	/// 6. Payload claims can be found at https://www.iana.org/assignments/jwt/jwt.xhtml
	/// </summary>
	/// <example>
	/// <![CDATA[
	/// In the example, the value for jwt (the token) is:
	/// eyAiYWxnIjogIkhTMjU2IiwgInR5cCI6ICJKV1QiIH0.eyAic3ViIjogInRlc3QiLCAibmFtZSI6ICJNaWNoYWVsIEFyZ2VudGluaSIgfQ.Gb7z2CJSrWdBhZ7lGZK9qdcac_ktuOuqiCBJo3sG_lA
	/// ]]>
	/// <code>
	/// <![CDATA[
	/// var base64Secret = Secrets.Base64UrlEncode("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@");
	/// var payload = "{ \"sub\": \"test\", \"name\": \"Michael Argentini\" }";
	/// var jwt = Secrets.GenerateJwt(payload, base64Secret);
	/// ]]>
	/// </code>
	/// </example>
	/// <param name="payload">Primary data block to pack into the token, using JSON syntax</param>
	/// <param name="base64Secret">A secret which you have already Base64-encoded. HS256 uses 64-byte secrets. HS384 and HS512 use 128-byte secrets</param>
	/// <param name="hashingAlgorithm">HS256, HS384, or HS512</param>
	/// <returns>A Base64Url-encoded JWT token</returns>
	public static string GenerateJwt(this string payload, string base64Secret, string hashingAlgorithm = "HS512")
	{
		if (base64Secret.IsEmpty())
			throw new Exception("Base64-encoded secret is empty");
			
		var header = "{ \"alg\": \"" + hashingAlgorithm.ToUpper() + "\", \"typ\": \"JWT\" }";
		var secretBytes = base64Secret.ToBytesFromUrlBase64String();

		if (secretBytes is null or {Length: < 64})
			throw new Exception("Secret length less than 64 bytes");
		
		var headerAndPayload = header.ToUrlBase64String() + "." + payload.ToUrlBase64String();
		byte[]? hashValue = null;

		switch (hashingAlgorithm.ToUpper())
		{
			case "HS256":
			{
				using var hmac = new HMACSHA256(secretBytes);
				hashValue = hmac.ComputeHash(headerAndPayload.ToByteArray());

				break;
			}

			case "HS384" when secretBytes.Length >= 128:
			{
				using var hmac = new HMACSHA384(secretBytes);
				hashValue = hmac.ComputeHash(headerAndPayload.ToByteArray());

				break;
			}

			case "HS384":
				throw new Exception("Secret less than 128 bytes");

			case "HS512" when secretBytes.Length >= 128:
			{
				using var hmac = new HMACSHA512(secretBytes);
				hashValue = hmac.ComputeHash(headerAndPayload.ToByteArray());

				break;
			}

			case "HS512":
				throw new Exception("Secret less than 128 bytes");
		}

		if (hashValue is {Length: > 0})
		{
			return headerAndPayload + "." + hashValue.ToUrlBase64String();
		}

		throw new Exception("Hash value not generated, likely incorrect algorithm specified");
	}

	/// <summary>
	/// Extract and decode the payload from a JWT.
    /// Does not validate the JWT.
	/// </summary>
	/// <example>
	/// <code>
	/// <![CDATA[
	/// string jsonPayload = Secrets.ExtractJWTPayload(jwt, base64Secret);
	/// ]]>
	/// </code>
	/// </example>
	/// <param name="jwt">Javascript Web Token</param>
	/// <returns>String with JSON data ready to be deserialized</returns>
	public static string ExtractJwtPayload(this string jwt)
	{
		if (jwt.IsEmpty())
			throw new Exception("Javascript Web Token (JWT) is empty");
		
		var portions = jwt.Split(new[] { '.' });

		if (portions.Length > 2)
			return portions[1].ToStringFromUrlBase64String() ?? string.Empty;

		throw new Exception("Javascript Web Token (JWT) not properly period-delimited");
	}

	/// <summary>
	/// Verify a javascript web token (JWT) which uses hash-based message authentication code (HMAC).
	/// Hashing algorithm is determined automatically from the header of the token.
	/// Supports HS256, HS384, and HS512 hashing algorithms.
	/// 
	/// Use cases:
	/// 1. Stateless sessions stored in browser cookies
	/// 2. Email verification codes
	/// 3. Session IDs with the ability to differentiate between expired and invalid IDs
	/// 
	/// Notes:
	/// 1. The HMAC is not a digital signature!
	/// 2. Use longer keys / hashes(e.g.HS512) for increased security
	/// 3. Keys longer than the hash size don’t provide additional security
	/// 4. Tokens where issuer and ultimate consumer is the same party
	/// 5. Expirations are based on claim "exp" being a long int time (in seconds) from epoch (using EpochTime.GetInt(), DateTimeOffset.ToUnixTimeSeconds(), etc.); claim "iat" is also numeric
	/// 6. Payload claims can be found at https://www.iana.org/assignments/jwt/jwt.xhtml
	/// </summary>
	/// <example>
	/// <code>
	/// <![CDATA[
	/// string base64Secret = Secrets.Base64UrlEncode("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@");
	/// string payload = "{ \"sub\": \"test\", \"name\": \"Michael Argentini\" }";
	/// string jwt = Secrets.GenerateJwt(payload, base64Secret);
	/// if (Secrets.VerifyJwt(jwt, base64Secret) == JwtStatus.Valid)
	/// {
	///     // token has a valid signature...
	/// }
	/// ]]>
	/// </code>
	/// </example>
	/// <param name="jwt">Javascript Web Token</param>
	/// <param name="base64Secret">A secret which you have already Base64-encoded. HS256 uses 64-byte secrets. HS384 and HS512 use 128-byte secrets</param>
	/// <returns>JWTStatus enumeration value</returns>
	public static JwtStatus VerifyJwt(this string jwt, string base64Secret)
	{
		if (base64Secret.IsEmpty())
			return JwtStatus.InvalidDecryptionKey;
		
		if (jwt.IsEmpty())
			return JwtStatus.MissingOrEmpty;
		
		var portions = jwt.Split(new[] { '.' });

		if (portions.Length < 3)
			return JwtStatus.Invalid;
		
		var header = portions[0];
		var headerDecoded = header.ToStringFromUrlBase64String()?.ToUpper().Replace(" " , string.Empty) ?? string.Empty;
		var payload = portions[1].ToStringFromUrlBase64String() ?? string.Empty;
		using var headerJsonDocument = JsonDocument.Parse(headerDecoded);
		using var payloadJsonDocument = JsonDocument.Parse(payload);
		var hashAlgorithm = headerJsonDocument.RootElement.GetProperty("ALG").GetString() ?? string.Empty;

		if (string.IsNullOrEmpty(hashAlgorithm))
			hashAlgorithm = "HS512";

		try
		{
			if (payloadJsonDocument.RootElement.TryGetProperty("exp", out var exp) == false)
				return JwtStatus.InvalidOrMissingExpiration;
			
			var expl = exp.GetInt64();

			if (expl < DateTimeOffset.UtcNow.ToUnixTimeSeconds())
				return JwtStatus.Expired;
			
			if (GenerateJwt(payload, base64Secret, hashAlgorithm) == jwt)
				return JwtStatus.Valid;
		}

		catch
		{
			return JwtStatus.InvalidOrMissingPayload;
		}

		return JwtStatus.Invalid;
	}

	#endregion

	#region Secret Generation

    /// <summary>
    /// Generate a random byte array of a given length.
    /// </summary>
    /// <param name="length"></param>
    /// <returns></returns>
    /// <exception cref="Exception"></exception>
    public static byte[] GenerateRandomBytes(int length = 20)
    {
        if (length < 1) throw new Exception("Secrets.GenerateRandomBytes() => Length must be greater than zero");

        var byteArray = new byte[length];
        
		RandomNumberGenerator.Fill(byteArray);

		return byteArray;
    }
    
    #endregion
    
    #region Passwords
    
    /// <summary>
    /// Generate an 6-512 character password with letters, numbers, and/or symbols.
    /// </summary>
    /// <param name="length">Must be 6-512 characters</param>
    /// <param name="atLeastOneLowerCase"></param>
    /// <param name="atLeastOneUpperCase"></param>
    /// <param name="atLeastOneDigit"></param>
    /// <param name="atLeastOneSymbol"></param>
    /// <returns></returns>
    /// <exception cref="Exception"></exception>
    public static string GeneratePassword(int length = 12, bool atLeastOneLowerCase = true, bool atLeastOneUpperCase = true, bool atLeastOneDigit = true, bool atLeastOneSymbol = true)
    {
        var password = string.Empty;

        #region Character pool constants
        
        const string lowerCase = @"abcdefghijklmnopqrstuvwxyz";
        const string upperCase = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        const string digits = @"0123456789";
        const string symbols = @"~!@#$%^&*()-+_=[]{};',.";

        #endregion
        
        #region Parameter range checks
        
        // ReSharper disable once ConvertIfStatementToSwitchStatement
        if (length < 6)
	        throw new Exception("Halide.GeneratePassword => Length must be at least 6 characters");

        if (length > 512)
	        throw new Exception("Halide.GeneratePassword => Length must be no larger than 512 characters");

        // ReSharper disable once ConvertIfStatementToSwitchStatement
        if (atLeastOneLowerCase == false && atLeastOneUpperCase == false && atLeastOneDigit == false && atLeastOneSymbol == false)
	        throw new Exception("Halide.GeneratePassword => Must include one or more upper or lower case letters, numbers, or symbols");

        #endregion

        #region Build the character pool
        
        var poolBase = string.Empty;

        if (atLeastOneLowerCase)
	        poolBase += lowerCase;

        if (atLeastOneUpperCase)
	        poolBase += upperCase;

        if (atLeastOneDigit)
	        poolBase += digits;

        if (atLeastOneSymbol)
	        poolBase += symbols;

        var pool = string.Empty;

        // Create a randomized pool of valid characters
        while (poolBase.HasValue())
        {
	        var index = RandomNumberGenerator.GetInt32(0, poolBase.Length);

	        pool += poolBase[index];
	        poolBase = poolBase.Remove(index, 1);
        }

        #endregion

        #region Ensure "at least one" rules

        var atLeastOneBase = string.Empty;
        
        if (atLeastOneLowerCase)
	        atLeastOneBase += lowerCase[RandomNumberGenerator.GetInt32(0, lowerCase.Length)];
        
        if (atLeastOneUpperCase)
	        atLeastOneBase += upperCase[RandomNumberGenerator.GetInt32(0, upperCase.Length)];

        if (atLeastOneDigit)
	        atLeastOneBase += digits[RandomNumberGenerator.GetInt32(0, digits.Length)];

        if (atLeastOneSymbol)
	        atLeastOneBase += symbols[RandomNumberGenerator.GetInt32(0, symbols.Length)];

        if (atLeastOneBase.HasValue())
        {
	        while (atLeastOneBase.HasValue())
	        {
		        var index = RandomNumberGenerator.GetInt32(0, atLeastOneBase.Length);

		        password += atLeastOneBase[index];
		        atLeastOneBase = atLeastOneBase.Remove(index, 1);
	        }
        }

        #endregion
        
        #region Generate the password
        
        while (length > password.Length)
	        password += pool[RandomNumberGenerator.GetInt32(0, pool.Length)];

        #endregion

        if (password.IsEmpty())
	        throw new Exception("Halide.GeneratePassword => Generated password is empty");
        
        return password;
    }

    #endregion
}
