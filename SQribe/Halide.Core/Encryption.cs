// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using Newtonsoft.Json.Linq;
using NSec.Cryptography;

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

		#region Ed25519 signing

		/// <summary>
		/// Generate a Base64-encoded LibSodium Key() pair for use in Ed25519 signing.
		/// The key includes private and public key data.
		/// </summary>
		/// <example>
		/// <code>
		/// var encodedKeypair = Encryption.GenerateSigningKeypair();
		/// var key = Encryption.DecodeSigningKeypair(encodedKeypair);
		/// 
		/// var data = Encoding.UTF8.GetBytes("Use the Force, Luke!");
		/// var signature = SignatureAlgorithm.Ed25519.Sign(key, data);
		/// 
		/// var encodedPublicKey = Encryption.GetEncodedPublicKeyFromKeypair(key);
		/// var publicKey = Encryption.DecodePublicKey(encodedPublicKey);
		/// 
		/// Assert.True(SignatureAlgorithm.Ed25519.Verify(publicKey, data, signature));
		/// </code>
		/// </example>
		/// <returns>Base64Encoded string for a LibSodium Key() object.</returns>
		public static string GenerateSigningKeypair()
		{
			var keypair = "";
			var algorithm = SignatureAlgorithm.Ed25519;
			var keyCreationParameters = new KeyCreationParameters
			{
				ExportPolicy = KeyExportPolicies.AllowPlaintextExport
			};

			using (var key = Key.Create(algorithm, keyCreationParameters))
			{
				keypair = key.Export(KeyBlobFormat.NSecPrivateKey).Base64UrlEncode();
			}

			return keypair;
		}

		/// <summary>
		/// Decode a Base64-encoded LibSodium Key() pair for use in Ed25519 signing
		/// created with GenerateSigningKeypair().
		/// </summary>
		/// <example>
		/// <code>
		/// var encodedKeypair = Encryption.GenerateSigningKeypair();
		/// var key = Encryption.DecodeSigningKeypair(encodedKeypair);
		/// 
		/// var data = Encoding.UTF8.GetBytes("Use the Force, Luke!");
		/// var signature = SignatureAlgorithm.Ed25519.Sign(key, data);
		/// 
		/// var encodedPublicKey = Encryption.GetEncodedPublicKeyFromKeypair(key);
		/// var publicKey = Encryption.DecodePublicKey(encodedPublicKey);
		/// 
		/// Assert.True(SignatureAlgorithm.Ed25519.Verify(publicKey, data, signature));
		/// </code>
		/// </example>
		/// <returns>LibSodium Key() object.</returns>
		public static Key DecodeSigningKeypair(this string encodedKeypair)
		{
			return Key.Import(SignatureAlgorithm.Ed25519, encodedKeypair.Base64UrlDecodeToBytes(), KeyBlobFormat.NSecPrivateKey);
		}

		/// <summary>
		/// Create a Base64-encoded public key from a Base64-encoded LibSodium Key() pair.
		/// </summary>
		/// <example>
		/// <code>
		/// var encodedKeypair = Encryption.GenerateSigningKeypair();
		/// var key = Encryption.DecodeSigningKeypair(encodedKeypair);
		/// 
		/// var data = Encoding.UTF8.GetBytes("Use the Force, Luke!");
		/// var signature = SignatureAlgorithm.Ed25519.Sign(key, data);
		/// 
		/// var encodedPublicKey = Encryption.GetEncodedPublicKeyFromKeypair(key);
		/// var publicKey = Encryption.DecodePublicKey(encodedPublicKey);
		/// 
		/// Assert.True(SignatureAlgorithm.Ed25519.Verify(publicKey, data, signature));
		/// </code>
		/// </example>
		/// <returns>LibSodium Key() object.</returns>
		public static string GetEncodedPublicKeyFromSigningKeypair(string encodedKeypair)
		{
			var keypair = DecodeSigningKeypair(encodedKeypair);

			return GetEncodedPublicKeyFromSigningKeypair(keypair);
		}

		/// <summary>
		/// Create a Base64-encoded public key from a LibSodium Key() pair.
		/// </summary>
		/// <example>
		/// <code>
		/// var encodedKeypair = Encryption.GenerateSigningKeypair();
		/// var key = Encryption.DecodeSigningKeypair(encodedKeypair);
		/// 
		/// var data = Encoding.UTF8.GetBytes("Use the Force, Luke!");
		/// var signature = SignatureAlgorithm.Ed25519.Sign(key, data);
		/// 
		/// var encodedPublicKey = Encryption.GetEncodedPublicKeyFromKeypair(key);
		/// var publicKey = Encryption.DecodePublicKey(encodedPublicKey);
		/// 
		/// Assert.True(SignatureAlgorithm.Ed25519.Verify(publicKey, data, signature));
		/// </code>
		/// </example>
		/// <returns>LibSodium Key() object.</returns>
		public static string GetEncodedPublicKeyFromSigningKeypair(Key keypair)
		{
			return keypair.PublicKey.Export(KeyBlobFormat.NSecPublicKey).Base64UrlEncode();
		}

		/// <summary>
		/// Decode a Base64-encoded public key from a Base64-encoded LibSodium PublicKey.
		/// </summary>
		/// <example>
		/// <code>
		/// var encodedKeypair = Encryption.GenerateSigningKeypair();
		/// var key = Encryption.DecodeSigningKeypair(encodedKeypair);
		/// 
		/// var data = Encoding.UTF8.GetBytes("Use the Force, Luke!");
		/// var signature = SignatureAlgorithm.Ed25519.Sign(key, data);
		/// 
		/// var encodedPublicKey = Encryption.GetEncodedPublicKeyFromKeypair(key);
		/// var publicKey = Encryption.DecodePublicKey(encodedPublicKey);
		/// 
		/// Assert.True(SignatureAlgorithm.Ed25519.Verify(publicKey, data, signature));
		/// </code>
		/// </example>
		/// <returns>LibSodium Key() object.</returns>
		public static PublicKey DecodeSigningPublicKey(this string encodedPublicKey)
		{
			return PublicKey.Import(SignatureAlgorithm.Ed25519, encodedPublicKey.Base64UrlDecodeToBytes(), KeyBlobFormat.NSecPublicKey);
		}

		/// <summary>
		/// Create a Base64Url-encoded Ed25519 signature.
		/// </summary>
		/// <example>
		/// <code>
		/// </code>
		/// </example>
		///	var licenseSample = "John Doe,Contoso LLC,johndoe@example.com";
		/// 
		/// var key = Encryption.GenerateSigningKeyPair();
		///	var encodedPublicKey = Encryption.GetEncodedPublicKeyFromSigningKeypair(key);
		///	var licenseSignature = Encryption.Sign(key, licenseSample.ToByteArray());
		/// 
		///	bool isValid = Encryption.VerifySignature(encodedPublicKey, licenseSample.ToByteArray(), licenseSignature);
		/// <returns>LibSodium Key() object.</returns>
		public static string Sign(string encodedKeyPair, byte[] data)
		{
			return Sign(encodedKeyPair.DecodeSigningKeypair(), data);
		}

		/// <summary>
		/// Create a Base64Url-encoded Ed25519 signature.
		/// </summary>
		/// <example>
		/// <code>
		/// </code>
		/// </example>
		///	var licenseSample = "John Doe,Contoso LLC,johndoe@example.com";
		/// 
		/// var key = Encryption.GenerateSigningKeyPair();
		///	var encodedPublicKey = Encryption.GetEncodedPublicKeyFromSigningKeypair(key);
		///	var licenseSignature = Encryption.Sign(key, licenseSample.ToByteArray());
		/// 
		///	bool isValid = Encryption.VerifySignature(encodedPublicKey, licenseSample.ToByteArray(), licenseSignature);
		/// <returns>LibSodium Key() object.</returns>
		public static string Sign(Key key, byte[] data)
		{
			return SignatureAlgorithm.Ed25519.Sign(key, data).Base64UrlEncode();
		}

		/// <summary>
		/// Create a Base64Url-encoded Ed25519 signature.
		/// </summary>
		/// <example>
		/// <code>
		/// </code>
		/// </example>
		///	var licenseSample = "John Doe,Contoso LLC,johndoe@example.com";
		/// 
		/// var key = Encryption.GenerateSigningKeyPair();
		///	var encodedPublicKey = Encryption.GetEncodedPublicKeyFromSigningKeypair(key);
		///	var licenseSignature = Encryption.Sign(key, licenseSample.ToByteArray());
		/// 
		///	bool isValid = Encryption.VerifySignature(encodedPublicKey, licenseSample.ToByteArray(), licenseSignature);
		/// <returns>LibSodium Key() object.</returns>
		public static bool VerifySignature(PublicKey publicKey, byte[] data, string signature)
		{
			return VerifySignature(publicKey, data, signature.Base64UrlDecodeToBytes());
		}

		/// <summary>
		/// Create a Base64Url-encoded Ed25519 signature.
		/// </summary>
		/// <example>
		/// <code>
		/// </code>
		/// </example>
		///	var licenseSample = "John Doe,Contoso LLC,johndoe@example.com";
		/// 
		/// var key = Encryption.GenerateSigningKeyPair();
		///	var encodedPublicKey = Encryption.GetEncodedPublicKeyFromSigningKeypair(key);
		///	var licenseSignature = Encryption.Sign(key, licenseSample.ToByteArray());
		/// 
		///	bool isValid = Encryption.VerifySignature(encodedPublicKey, licenseSample.ToByteArray(), licenseSignature);
		/// <returns>LibSodium Key() object.</returns>
		public static bool VerifySignature(string encodedPublicKey, byte[] data, string signature)
		{
			return VerifySignature(encodedPublicKey.DecodeSigningPublicKey(), data, signature.Base64UrlDecodeToBytes());
		}

		/// <summary>
		/// Create a Base64Url-encoded Ed25519 signature.
		/// </summary>
		/// <example>
		/// <code>
		/// </code>
		/// </example>
		///	var licenseSample = "John Doe,Contoso LLC,johndoe@example.com";
		/// 
		/// var key = Encryption.GenerateSigningKeyPair();
		///	var encodedPublicKey = Encryption.GetEncodedPublicKeyFromSigningKeypair(key);
		///	var licenseSignature = Encryption.Sign(key, licenseSample.ToByteArray());
		/// 
		///	bool isValid = Encryption.VerifySignature(encodedPublicKey, licenseSample.ToByteArray(), licenseSignature);
		/// <returns>LibSodium Key() object.</returns>
		public static bool VerifySignature(string encodedPublicKey, byte[] data, byte[] signature)
		{
			return VerifySignature(encodedPublicKey.DecodeSigningPublicKey(), data, signature);
		}

		/// <summary>
		/// Create a Base64Url-encoded Ed25519 signature.
		/// </summary>
		/// <example>
		/// <code>
		/// </code>
		/// </example>
		///	var licenseSample = "John Doe,Contoso LLC,johndoe@example.com";
		/// 
		/// var key = Encryption.GenerateSigningKeyPair();
		///	var encodedPublicKey = Encryption.GetEncodedPublicKeyFromSigningKeypair(key);
		///	var licenseSignature = Encryption.Sign(key, licenseSample.ToByteArray());
		/// 
		///	bool isValid = Encryption.VerifySignature(encodedPublicKey, licenseSample.ToByteArray(), licenseSignature);
		/// <returns>LibSodium Key() object.</returns>
		public static bool VerifySignature(PublicKey publicKey, byte[] data, byte[] signature)
		{
			return SignatureAlgorithm.Ed25519.Verify(publicKey, data, signature);
		}

		#endregion

		#region ChaCha20Poly1305 symmetric key encryption

		/// <summary>
		/// Generate a LibSodium Key() for symmetric key encryption using ChaCha20Poly1305.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		/// var nonce = new Nonce(RandomGenerator.Default.GenerateBytes(4), RandomGenerator.Default.GenerateBytes(8));
		///
		/// var encrypted = AeadAlgorithm.ChaCha20Poly1305.Encrypt(symmetricKey, nonce, associatedData: "Password".ToByteArray(), plaintext: stringData.ToObjectByteArray());
		///
		///	byte[] decrypted;
		///	AeadAlgorithm.ChaCha20Poly1305.Decrypt(symmetricKey, nonce, associatedData: "Password".ToByteArray(), ciphertext: encrypyted, plaintext: out decrypted);
		/// </code>
		/// </example>
		/// <returns>LibSodium Key() object.</returns>
		public static Key GenerateSymmetricKey()
		{
			var keyCreationParameters = new KeyCreationParameters
			{
				ExportPolicy = KeyExportPolicies.AllowPlaintextExport
			};

			return Key.Create(AeadAlgorithm.ChaCha20Poly1305, keyCreationParameters);
		}

		/// <summary>
		/// Generate a new Base64Url-encoded LibSodium Key() for symmetric key encryption using ChaCha20Poly1305.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		///	var encodedSymmetricKey = Encryption.GenerateEncodedSymmetricKey();
		/// </code>
		/// </example>
		/// <returns>Base64Url-encoded LibSodium Key() object.</returns>
		public static string GenerateEncodedSymmetricKey()
		{
			return GenerateSymmetricKey().Export(KeyBlobFormat.NSecSymmetricKey).Base64UrlEncode();
		}

		/// <summary>
		/// Generate a Base64Url-encoded LibSodium Key() for symmetric key encryption using ChaCha20Poly1305
		/// from an existing Key object.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		///	var encodedSymmetricKey = Encryption.GenerateEncodedSymmetricKey(symmetricKey);
		/// </code>
		/// </example>
		/// <returns>Base64Url-encoded LibSodium Key() object.</returns>
		public static string GenerateEncodedSymmetricKey(Key key)
		{
			return key.Export(KeyBlobFormat.NSecSymmetricKey).Base64UrlEncode();
		}

		/// <summary>
		/// Decode a Base64Url-encoded key into a Key object.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		///	var symmetricKey = Encryption.DecodeSymmetricKey(encodedSymmetricKey);
		///	var encodedEncrypyted = stringData.Encrypt(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.Decrypt&lt;string&gt;(symmetricKey, "Password"));
		/// if (decrypted == stringData) { ... }
		/// </code>
		/// </example>
		/// <returns>LibSodium Key() object.</returns>
		public static Key DecodeSymmetricKey(string encodedSymmetricKey)
		{
			return Key.Import(AeadAlgorithm.ChaCha20Poly1305, encodedSymmetricKey.Base64UrlDecodeToBytes(), KeyBlobFormat.NSecSymmetricKey);
		}

		/// <summary>
		/// Create a 12 byte Nonce and Base64Url-encode it.
		/// </summary>
		/// <example>
		/// <code>
		/// var encodedNonce = Encryption.GenerateEncodedNonce();
		/// </code>
		/// </example>
		/// <returns>Base64Url-encoded 12 byte Nonce object.</returns>
		public static string GenerateEncodedNonce()
		{
			return RandomGenerator.Default.GenerateBytes(12).Base64UrlEncode();
		}

		/// <summary>
		/// Convert a Base64Url-encoded 12 byte nonce into a byte array.
		/// </summary>
		/// <example>
		/// <code>
		/// var bytes = encodedNonce.DecodeEncodedNonce();
		/// var nonce = new Nonce(bytes.Take(4).ToArray(), bytes.Skip(4).Take(8).ToArray());
		/// </code>
		/// </example>
		/// <returns>Base64Url-encoded 12 byte Nonce object.</returns>
		public static byte[] DecodeEncodedNonce(this string encodedBytes)
		{
			return encodedBytes.Base64UrlDecodeToBytes();
		}

		/// <summary>
		/// Encrypt data into a Base64Url-encoded string.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var encodedEncrypyted = stringData.Encrypt(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.Decrypt&lt;string&gt;(symmetricKey, "Password"));
		/// if (decrypted == stringData) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Data to encrypt</param>
		/// <param name="symmetricKey">LibSodium Key object</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Base64Url-encoded encrypted string.</returns>
		public static string Encrypt<T>(this T data, Key symmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			string result = "";
			Nonce nonce;

			try
			{
				if (encodedNonce != "")
				{
					var nonceBytes = DecodeEncodedNonce(encodedNonce);

					if (nonceBytes.Length == 12)
					{
						nonce = new Nonce(nonceBytes.Take(4).ToArray(), nonceBytes.Skip(4).Take(8).ToArray());
					}

					else
					{
						nonce = new Nonce(4, 8);
					}
				}

				else
				{
					nonce = new Nonce(4, 8);
				}

				if (increment > 0)
				{
					Nonce.TryAdd(ref nonce, increment);
				}

				result = AeadAlgorithm.ChaCha20Poly1305.Encrypt(symmetricKey, nonce, associatedData: password.ToObjectByteArray(), plaintext: data.ToObjectByteArray()).Base64UrlEncode();
			}

			catch (Exception err)
			{
				throw new Exception("Halide.Encryption Error: " + err.ToString());
			}

			return result;
		}

		/// <summary>
		/// Encrypt data into a Base64Url-encoded string.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var encodedEncrypyted = stringData.Encrypt(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.Decrypt&lt;string&gt;(symmetricKey, "Password"));
		/// if (decrypted == stringData) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Data to encrypt</param>
		/// <param name="encodedSymmetricKey">Base64Url-encoded symmetric key</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Base64Url-encoded encrypted string.</returns>
		public static string Encrypt<T>(this T data, string encodedSymmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			return Encrypt(data, DecodeSymmetricKey(encodedSymmetricKey), password);
		}

		/// <summary>
		/// Encrypt binary data to bytes.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var bytes = stringData.ToObjectByteArray().EncryptBytes(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.DecryptBytes(symmetricKey, "Password"));
		/// if (decrypted.ToString() == stringData.ToString()) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Byte data to encrypt</param>
		/// <param name="symmetricKey">LibSodium Key object</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Byte array of encrypted data.</returns>
		public static byte[] EncryptBytes(this byte[] data, Key symmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			byte[] result;
			Nonce nonce;

			try
			{
				if (encodedNonce != "")
				{
					var nonceBytes = DecodeEncodedNonce(encodedNonce);

					if (nonceBytes.Length == 12)
					{
						nonce = new Nonce(nonceBytes.Take(4).ToArray(), nonceBytes.Skip(4).Take(8).ToArray());
					}

					else
					{
						nonce = new Nonce(4, 8);
					}
				}

				else
				{
					nonce = new Nonce(4, 8);
				}

				if (increment > 0)
				{
					Nonce.TryAdd(ref nonce, increment);
				}

				result = AeadAlgorithm.ChaCha20Poly1305.Encrypt(symmetricKey, nonce, associatedData: password.ToObjectByteArray(), plaintext: data);
			}

			catch (Exception err)
			{
				throw new Exception("Halide.Encryption Error: " + err.ToString());
			}

			return result;
		}

		/// <summary>
		/// Encrypt binary data to bytes.
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var bytes = stringData.ToObjectByteArray().EncryptBytes(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.DecryptBytes(symmetricKey, "Password"));
		/// if (decrypted.ToString() == stringData.ToString()) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Data to encrypt</param>
		/// <param name="encodedSymmetricKey">Base64Url-encoded symmetric key</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Base64Url-encoded encrypted string.</returns>
		public static byte[] EncryptBytes(this byte[] data, string encodedSymmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			return EncryptBytes(data, DecodeSymmetricKey(encodedSymmetricKey), password, encodedNonce, increment);
		}

		/// <summary>
		/// Decrypt data encrypted with Encrypt().
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var encodedEncrypyted = stringData.Encrypt(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.Decrypt&lt;string&gt;(symmetricKey, "Password"));
		/// if (decrypted == stringData) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Data to decrypt</param>
		/// <param name="encodedSymmetricKey">Base64Url-encoded LibSodium Key object</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Base64Url-encoded encrypted string.</returns>
		public static T Decrypt<T>(this string data, string encodedSymmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			Key symmetricKey = DecodeSymmetricKey(encodedSymmetricKey);

			return Decrypt<T>(data, symmetricKey, password);
		}

		/// <summary>
		/// Decrypt data encrypted with Encrypt().
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var encodedEncrypyted = stringData.Encrypt(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.Decrypt&lt;string&gt;(symmetricKey, "Password"));
		/// if (decrypted == stringData) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Data to decrypt</param>
		/// <param name="symmetricKey">LibSodium Key object</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Base64Url-encoded encrypted string.</returns>
		public static T Decrypt<T>(this string data, Key symmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			T result = default(T);
			Nonce nonce;

			try
			{
				if (encodedNonce != "")
				{
					var nonceBytes = DecodeEncodedNonce(encodedNonce);

					if (nonceBytes.Length == 12)
					{
						nonce = new Nonce(nonceBytes.Take(4).ToArray(), nonceBytes.Skip(4).Take(8).ToArray());
					}

					else
					{
						nonce = new Nonce(4, 8);
					}
				}

				else
				{
					nonce = new Nonce(4, 8);
				}

				if (increment > 0)
				{
					Nonce.TryAdd(ref nonce, increment);
				}


				byte[] decryptedBytes;
				AeadAlgorithm.ChaCha20Poly1305.Decrypt(symmetricKey, nonce, associatedData: password.ToObjectByteArray(), ciphertext: data.Base64UrlDecodeToBytes(), plaintext: out decryptedBytes);

				result = decryptedBytes.FromObjectByteArray<T>();
			}

			catch
			{
				result = default(T);
			}

			return result;
		}

		/// <summary>
		/// Decrypt byte data encrypted with EncryptBytes().
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var bytes = stringData.ToObjectByteArray().EncryptBytes(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.DecryptBytes(symmetricKey, "Password"));
		/// if (decrypted.ToString() == stringData.ToString()) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Byte data to decrypt</param>
		/// <param name="symmetricKey">LibSodium Key object</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Base64Url-encoded encrypted string.</returns>
		public static byte[] DecryptBytes(this byte[] data, Key symmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			byte[] result = new byte[] {};
			Nonce nonce;

			try
			{
				if (encodedNonce != "")
				{
					var nonceBytes = DecodeEncodedNonce(encodedNonce);

					if (nonceBytes.Length == 12)
					{
						nonce = new Nonce(nonceBytes.Take(4).ToArray(), nonceBytes.Skip(4).Take(8).ToArray());
					}

					else
					{
						nonce = new Nonce(4, 8);
					}
				}

				else
				{
					nonce = new Nonce(4, 8);
				}

				if (increment > 0)
				{
					Nonce.TryAdd(ref nonce, increment);
				}


				byte[] decryptedBytes;
				AeadAlgorithm.ChaCha20Poly1305.Decrypt(symmetricKey, nonce, associatedData: password.ToObjectByteArray(), ciphertext: data, plaintext: out decryptedBytes);

				result = decryptedBytes;
			}

			catch
			{
				result = new byte[] {};
			}

			return result;
		}

		/// <summary>
		/// Decrypt byte data encrypted with EncryptBytes().
		/// Does not use a changing nonce so replay attacks are possible.
		/// </summary>
		/// <example>
		/// <code>
		/// var stringData = "Now is the time for all good men to come to the aid of their party.";
		/// var symmetricKey = Encryption.GenerateSymmetricKey();
		///	var bytes = stringData.ToObjectByteArray().EncryptBytes(symmetricKey, "Password");
		///	var decrypted = encodedEncrypyted.DecryptBytes(symmetricKey, "Password"));
		/// if (decrypted.ToString() == stringData.ToString()) { ... }
		/// </code>
		/// </example>
		/// <param name="data">Data to decrypt</param>
		/// <param name="encodedSymmetricKey">Base64Url-encoded LibSodium Key object</param>
		/// <param name="password">Optional password for additional entropy</param>
		/// <param name="encodedNonce">Optional Base64Url-encoded 12-byte nonce</param>
		/// <param name="increment">Optional increment to advance the nonce</param>
		/// <returns>Base64Url-encoded encrypted string.</returns>
		public static byte[] DecryptBytes(this byte[] data, string encodedSymmetricKey, string password = "", string encodedNonce = "", int increment = 0)
		{
			Key symmetricKey = DecodeSymmetricKey(encodedSymmetricKey);

			return DecryptBytes(data, symmetricKey, password, encodedNonce, increment);
		}

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

            using (var rng = new RNGCryptoServiceProvider())
            {
                rng.GetBytes(byteArray);
            }

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
