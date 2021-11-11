// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using Newtonsoft.Json.Linq;

namespace Fynydd.Halide
{
	/// <summary>
	/// The Encryption class contains methods and properties for
	/// working with encrypted data.
	/// </summary>
	public static class Encryption
	{
		#region Properties

		#endregion

		#region Hashing and encoding

		/// <summary> 
		/// Return a string with a specified number of random hexadecimal characters.
		/// </summary> 
		/// <param name="hexCharacters">Number of characters to return</param>
		/// <returns>Random hexadecimal string.</returns> 
		public static string BuildSecureHexString(int hexCharacters)
        {
            var byteArray = new byte[(int)Math.Ceiling(hexCharacters / 2.0)];

            RandomNumberGenerator.Fill(byteArray);

            return String.Concat(Array.ConvertAll(byteArray, x => x.ToString("X2")));
        }

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
			string result = "";

			if (string.IsNullOrWhiteSpace(input) == false)
			{
				// Create a new instance of the MD5CryptoServiceProvider object.
				MD5 md5Hasher = MD5.Create();

				// Convert the input string to a byte array and compute the hash.
				byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));

				if (data.Length > 0)
				{
					// Create a new Stringbuilder to collect the bytes
					// and create a string.
					StringBuilder sBuilder = new StringBuilder();

					// Loop through each byte of the hashed data 
					// and format each one as a hexadecimal string.
					for (int i = 0; i < data.Length; i++)
					{
						sBuilder.Append(data[i].ToString("x2"));
					}

					result = sBuilder.ToString();
				}
			}

			// Return the hexadecimal string.
			return result;
		}

		/// <summary>
		/// Verified a string against the passed MD5 hash.
		/// </summary>
		/// <example>
		/// <code>
		/// if (Security.MD5VerifyString(stringVar, hash))...
		/// </code>
		/// </example>
		/// <param name="input">The string to compare.</param>
		/// <param name="hash">The hash to compare against.</param>
		/// <returns>true if the input and the hash are the same, false otherwise.</returns>
		public static bool MD5VerifyString(this string input, string hash)
		{
			bool result = false;

			if (string.IsNullOrWhiteSpace(input) == false && string.IsNullOrWhiteSpace(hash) == false)
			{
				// Hash the input.
				string hashOfInput = MD5String(input);

				// Create a StringComparer and compare the hashes.
				StringComparer comparer = StringComparer.OrdinalIgnoreCase;

				if (0 == comparer.Compare(hashOfInput, hash))
				{
					result = true;
				}
			}

			return result;
		}

		/// <summary>
		/// Base64 encodes a string.
		/// </summary>
		/// <example>
		/// <code>
		/// string encodedVar = Security.Base64StringEncode(stringVar);
		/// </code>
		/// </example>
		/// <param name="input">A string to encode.</param>
		/// <returns>A Base64-encoded string.</returns>
		public static string Base64Encode(this string input)
		{
			return Base64Encode(System.Text.Encoding.UTF8.GetBytes(input));
		}

		/// <summary>
		/// Base64 encodes a byte array.
		/// </summary>
		/// <example>
		/// <code>
		/// string encodedVar = Security.Base64Encode(bytes);
		/// </code>
		/// </example>
		/// <param name="input">A byte array to encode.</param>
		/// <returns>A Base64-encoded string.</returns>
		public static string Base64Encode(this byte[] input)
		{
			string result = "";

			if (input != null)
			{
				if (input.Length > 0)
				{
					result = Convert.ToBase64String(input);
				}
			}

			return result;
		}

		/// <summary>
		/// Base64 decodes a string.
		/// </summary>
		/// <example>
		/// <code>
		/// string decodedVar = Security.Base64DecodeToString(stringVar);
		/// </code>
		/// </example>
		/// <param name="input">A Base64-encoded string.</param>
		/// <returns>A decoded string.</returns>
		public static string Base64DecodeToString(this string input)
		{
			string result = "";

			if (string.IsNullOrWhiteSpace(input) == false)
			{
				byte[] decbuff = Convert.FromBase64String(input);
				result = System.Text.Encoding.UTF8.GetString(decbuff);
			}

			return result;
		}

		/// <summary>
		/// Base64 decodes a string to a byte array.
		/// </summary>
		/// <example>
		/// <code>
		/// byte[] decodedVar = Security.Base64DecodeToBytes(stringVar);
		/// </code>
		/// </example>
		/// <param name="input">A Base64-encoded string.</param>
		/// <returns>A decoded byte array.</returns>
		public static byte[] Base64DecodeToBytes(this string input)
		{
			byte[] result = null;

			if (string.IsNullOrWhiteSpace(input) == false)
			{
				result = Convert.FromBase64String(input);
			}

			return result;
		}

		/// <summary>
		/// Base64Url-encodes a string.
		/// </summary>
		/// <example>
		/// <code>
		/// string encodedVar = Security.Base64UrlEncode(bytes);
		/// </code>
		/// </example>
		/// <param name="input">A byte array to encode.</param>
		/// <returns>A Base64Url-encoded string.</returns>
		public static string Base64UrlEncode(this byte[] input)
		{
			string result = "";

			if (input != null)
			{
				if (input.Length > 0)
				{
					result = Convert.ToBase64String(input);

					if (string.IsNullOrWhiteSpace(result) == false)
					{
						result = result.Split(new[] { '=' })[0]; // Remove padding
						result = result.Replace('+', '-'); // 62nd char of encoding
						result = result.Replace('/', '_'); // 63rd char of encoding
					}
				}
			}

			return result;
		}

		/// <summary>
		/// Base64Url-encodes a string.
		/// </summary>
		/// <example>
		/// <code>
		/// string encodedVar = Security.Base64UrlEncode(stringVar);
		/// </code>
		/// </example>
		/// <param name="input">A string to encode.</param>
		/// <returns>A Base64Url-encoded string.</returns>
		public static string Base64UrlEncode(this string input)
		{
			string result = "";

			if (string.IsNullOrWhiteSpace(input) == false)
			{
				byte[] encbuff = System.Text.Encoding.UTF8.GetBytes(input);
				result = Base64UrlEncode(encbuff);
			}

			return result;
		}

		/// <summary>
		/// Base64Url-decode a string. Handles missing padding characters.
		/// </summary>
		/// <example>
		/// <code>
		/// byte[] decodedVar = Security.Base64UrlDecodeToBytes(stringVar);
		/// </code>
		/// </example>
		/// <param name="input">A Base64Url-encoded string.</param>
		/// <returns>A decoded byte array.</returns>
		public static byte[] Base64UrlDecodeToBytes(this string input)
		{
			byte[] result = null;

			if (string.IsNullOrWhiteSpace(input) == false)
			{
				var output = input;

				output = output.Replace('-', '+'); // 62nd char of encoding
				output = output.Replace('_', '/'); // 63rd char of encoding

				switch (output.Length % 4) // Pad with trailing '='s
				{
					case 0:
						break; // No padding needed
					case 2:
						output += "==";
						break;
					case 3:
						output += "=";
						break;
					default:
						throw new ArgumentOutOfRangeException(nameof(input), "Halide.Encryption Error: Invalid Base64Url encoding");
				}

				result = Convert.FromBase64String(output);
			}

			return result;
		}

		/// <summary>
		/// Base64Url-decode a string. Handles missing padding characters.
		/// </summary>
		/// <example>
		/// <code>
		/// string decodedVar = Security.Base64UrlDecodeToString(stringVar);
		/// </code>
		/// </example>
		/// <param name="input">A Base64Url-encoded string.</param>
		/// <returns>A decoded string.</returns>
		public static string Base64UrlDecodeToString(this string input)
		{
			string result = "";

			if (string.IsNullOrWhiteSpace(input) == false)
			{
				byte[] decbuff = Base64UrlDecodeToBytes(input);
				result = System.Text.Encoding.UTF8.GetString(decbuff);
			}

			return result;
		}

		#endregion

		#region Javascript Web Tokens

		/// <summary>
		/// Generate a javascript web token (JWT) using hash-based message authentication code (HMAC).
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
		/// </summary>
		/// <example>
		/// In the example, the value for jwt (the token) is:
		/// eyAiYWxnIjogIkhTMjU2IiwgInR5cCI6ICJKV1QiIH0.eyAic3ViIjogInRlc3QiLCAibmFtZSI6ICJNaWNoYWVsIEFyZ2VudGluaSIgfQ.Gb7z2CJSrWdBhZ7lGZK9qdcac_ktuOuqiCBJo3sG_lA
		/// <code>
		/// string base64Secret = Encryption.Base64StringEncode("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@");
		/// string payload = "{ \"sub\": \"test\", \"name\": \"Michael Argentini\" }";
		/// string jwt = Encryption.GenerateJWT(payload, base64Secret, "HS256");
		/// </code>
		/// </example>
		/// <param name="payload">Primary data block to pack into the token, using JSON syntax.</param>
		/// <param name="base64Secret">A secret which you have already Base64-encoded. HS256 uses 64-byte secrets. HS384 and HS512 use 128-byte secrets.</param>
		/// <param name="hashingAlgorithm">HS256, HS384, or HS512.</param>
		/// <returns>A Base64Url-encoded JWT token</returns>
		public static string GenerateJWT(string payload, string base64Secret, string hashingAlgorithm = "HS256")
		{
			string jwt = "";

			try
			{
				if (string.IsNullOrWhiteSpace(base64Secret) == false)
				{
					string header = "{ \"alg\": \"" + hashingAlgorithm.ToUpper() + "\", \"typ\": \"JWT\" }";
					byte[] secretBytes = Base64DecodeToBytes(base64Secret);

					if (secretBytes.Length >= 64)
					{
						string headerAndPayload = Base64UrlEncode(header) + "." + Base64UrlEncode(payload);
						byte[] hashValue = null;

						if (hashingAlgorithm.ToUpper() == "HS256")
						{
							using (HMACSHA256 hmac = new HMACSHA256(secretBytes))
							{
								hashValue = hmac.ComputeHash(headerAndPayload.ToByteArray());
							}
						}

						else if (hashingAlgorithm.ToUpper() == "HS384")
						{
							if (secretBytes.Length >= 128)
							{
								using (HMACSHA384 hmac = new HMACSHA384(secretBytes))
								{
									hashValue = hmac.ComputeHash(headerAndPayload.ToByteArray());
								}
							}

							else
							{
								throw new Exception("Secret less than 128 bytes");
							}
						}

						else if (hashingAlgorithm.ToUpper() == "HS512")
						{
							if (secretBytes.Length >= 128)
							{
								using (HMACSHA512 hmac = new HMACSHA512(secretBytes))
								{
									hashValue = hmac.ComputeHash(headerAndPayload.ToByteArray());
								}
							}

							else
							{
								throw new Exception("Secret less than 128 bytes");
							}
						}

						if (hashValue != null)
						{
							jwt = headerAndPayload + "." + Base64UrlEncode(hashValue);
						}

						else
						{
							throw new Exception("Hash value not generated, likely incorrect algorithm specified");
						}
					}

					else
					{
						throw new Exception("Secret length less than 64 bytes");
					}
				}

				else
				{
					throw new Exception("Base64-encoded secret is empty");
				}
			}

			catch (Exception err)
			{
				Debug.WriteLine("Halide.Encryption Error (Generate JWT): " + err.Message);
			}

			return jwt;
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
		/// </summary>
		/// <example>
		/// <code>
		/// string base64Secret = Encryption.Base64StringEncode("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@");
		/// string payload = "{ \"sub\": \"test\", \"name\": \"Michael Argentini\" }";
		/// string jwt = Encryption.GenerateJWT(payload, base64Secret, "HS256");
		/// if (Encryption.VerifyJWT(jwt, base64Secret))
		/// {
		///     // token has a valid signature...
		/// }
		/// </code>
		/// </example>
		/// <param name="jwt">Javascript Web Token</param>
		/// <param name="base64Secret">A secret which you have already Base64-encoded. HS256 uses 64-byte secrets. HS384 and HS512 use 128-byte secrets.</param>
		/// <returns>true if the signature is valid, false if not</returns>
		public static bool VerifyJWT(string jwt, string base64Secret)
		{
			bool result = false;

			try
			{
				if (string.IsNullOrWhiteSpace(base64Secret) == false)
				{
					if (string.IsNullOrWhiteSpace(jwt) == false)
					{
						string[] portions = jwt.Split(new[] { '.' });

						if (portions.Length > 2)
						{
							string header = portions[0];
							string headerDecoded = Base64UrlDecodeToString(header).ToUpper().Replace(" ", "");
							string payload = portions[1];
							string signature = portions[2];
							string hashAlgorithm = "";

							hashAlgorithm = JObject.Parse(headerDecoded)["ALG"].ToString();

							if (string.IsNullOrWhiteSpace(hashAlgorithm))
							{
								hashAlgorithm = "HS256";
							}

							if (GenerateJWT(Base64UrlDecodeToString(payload), base64Secret, hashAlgorithm) == jwt)
							{
								result = true;
							}
						}

						else
						{
							throw new Exception("Javascript Web Token (JWT) not properly period-delimitted");
						}
					}

					else
					{
						throw new Exception("Javascript Web Token (JWT) is empty");
					}
				}

				else
				{
					throw new Exception("Base64-encoded secret is empty");
				}
			}

			catch (Exception err)
			{
				Debug.WriteLine("Halide.Encryption Error (Verify JWT): " + err.Message);
			}

			return result;
		}

		#endregion
	}
}
