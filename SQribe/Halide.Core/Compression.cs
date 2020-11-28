// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System.IO;
using System.IO.Compression;
using System.Text;

namespace Fynydd.Halide
{
	/// <summary>
	/// The Compression class contains methods for compressing and decompressing data.
	/// </summary>
	public static class Compression
	{
		/// <summary>
		/// GZip compress a string. Only useful for strings over 300 characters in length.
		/// </summary>
		/// <example>
		/// <code>
		/// var compressedBytes = Compression.CompressString(stringVar);
		/// </code>
		/// </example>
		/// <param name="text">UTF8 string to compress.</param>
		/// <returns>A byte array with the compressed UTF8 string data.</returns>
		public static byte[] CompressString(this string text)
		{
			return Compress(Encoding.UTF8.GetBytes(text));
		}

		/// <summary>
		/// GZip decompress a string compressed with CompressString().
		/// </summary>
		/// <example>
		/// <code>
		/// var decompressedVar = Compression.DecompressString(compressedBytes);
		/// </code>
		/// </example>
		/// <param name="gzipBytes">Byte array to decompress.</param>
		/// <returns>A decompressed UTF8 string.</returns>
		public static string DecompressString(this byte[] gzipBytes)
		{
			return Encoding.UTF8.GetString(Decompress(gzipBytes));
		}

		/// <summary>
		/// GZip compress a byte array.
		/// </summary>
		/// <example>
		/// <code>
		/// byte[] compressedVar = Compression.Compress(byteBuff);
		/// </code>
		/// </example>
		/// <param name="bytes">Byte array to compress.</param>
		/// <returns>A compressed byte array.</returns>
		public static byte[] Compress(this byte[] bytes)
		{
			byte[] result;

			using (MemoryStream source = new MemoryStream(bytes))
			{
				using (MemoryStream compressedBytes = new MemoryStream())
				{
					using (GZipStream gzip = new GZipStream(compressedBytes, CompressionLevel.Optimal))
					{
						source.CopyTo(gzip);
					}

					result = compressedBytes.ToArray();
				}
			}

			return result;
		}

		/// <summary>
		/// GZip decompress a byte array.
		/// </summary>
		/// <example>
		/// <code>
		/// byte[] decompressedVar = Compression.Decompress(byteBuff);
		/// </code>
		/// </example>
		/// <param name="gzipBytes">Byte array to decompress.</param>
		/// <returns>A decompressed byte array.</returns>
		public static byte[] Decompress(this byte[] gzipBytes)
		{
			byte[] result;

			using (GZipStream stream = new GZipStream(new MemoryStream(gzipBytes), CompressionMode.Decompress))
			{
				const int size = 4096;
				byte[] buffer = new byte[size];

				using (MemoryStream memory = new MemoryStream())
				{
					int count = 0;

					do
					{
						count = stream.Read(buffer, 0, size);

						if (count > 0)
						{
							memory.Write(buffer, 0, count);
						}

					} while (count > 0);

					result = memory.ToArray();
				}
			}

			return result;
		}
	}
}
