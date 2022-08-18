// Copyright (c) Fynydd LLC.
// Licensed under the GNU GPLv3 License.

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Fynydd.Halide;

namespace SQribe
{
    public static class Constants
	{
        #region Website

        public static string WebsiteUrlBase = "https://sqribe.app";

        #endregion

        #region SQL Server Support

        public static Dictionary<string, int> SqlServerVersions = new () {

            { "2012", 11 },
            { "2014", 12 },
            { "2016", 13 },
            { "2017", 14 },
            { "2019", 15 },
            { "2022", 16 }
        };

        #endregion

        #region Colors

        public static int[] TextColor = {
            -1, -1
        };

        public static int[] TextColorSuccess = {
            (int)ConsoleColor.Green,
            (int)ConsoleColor.DarkGreen
        };

        public static int[] TextColorPrompt = {
            (int)ConsoleColor.Cyan,
            (int)ConsoleColor.DarkMagenta
        };

        public static int[] TextColorWarning = {
            (int)ConsoleColor.Yellow,
            (int)ConsoleColor.DarkYellow
        };

        public static int[] TextColorError = {
            (int)ConsoleColor.Red,
            (int)ConsoleColor.Red
        };

        public static int[] TextColorBusy = {
            (int)ConsoleColor.Magenta,
            (int)ConsoleColor.DarkMagenta
        };

        #endregion

        #region Globals

		/// <summary>
		/// Column width of the console output for items that require cropping.
		/// </summary>
        public static int ColumnWidth
        {
            get
            {
                var minWidth = 76;
                var maxWidth = 110;
                var currentWidth = Console.WindowWidth - (Padding.Length * 2);

                if (currentWidth < minWidth)
                {
                    return minWidth;
                }

                else
                {
                    if (currentWidth > maxWidth)
                    {
                        return maxWidth;
                    }

                    else
                    {
                        return currentWidth;
                    }
                }
            }
        }

		/// <summary>
		/// Global sleep amount for idle thread loops.
		/// </summary>
        public static int SleepNumber = 50;

		/// <summary>
		/// Bullet and space.
		/// </summary>
        public static string Bullet = "• ";

        public static string HeaderBar = "■";

        public static string HeaderBarMac = "▀";

		/// <summary>
		/// Ellipsis character.
		/// </summary>
        public static string Ellipsis = "…  ";

		/// <summary>
		/// Overall app indentation.
		/// </summary>
        public static string Padding = "  ";

		/// <summary>
		/// Line feed to use in dynamic SQL script generation
		/// </summary>
        public static string LineFeed = "\r\n";

		/// <summary>
		/// Vertical bar character for console output (Windows)
		/// </summary>
		public static string Bar = "|";

		/// <summary>
		/// Vertical bar character for console output (Mac/Linux)
		/// </summary>
		public static string BarMac = "|";

		/// <summary>
		/// Arrow for console output (Windows)
		/// </summary>
		public static string Arrow = " → ";

		/// <summary>
		/// Arrow for console output (Linux)
		/// </summary>
		public static string ArrowLinux = " ➜  ";

		/// <summary>
		/// Arrow for console output (Mac)
		/// </summary>
		public static string ArrowMac = " → ";

		/// <summary>
		/// Indentation for console output (Windows)
		/// </summary>
        public static string IndentationArrow = "  −→ ";

		/// <summary>
		/// Indentation for console output (Linux)
		/// </summary>
        public static string IndentationArrowLinux = "  ➜  ";

		/// <summary>
		/// Indentation for console output (Mac)
		/// </summary>
        public static string IndentationArrowMac = "  ⮑  ";

        public static string[] spinnerSequence = { "•∙∙", "●∙∙", "⃝∙∙", "∙•∙", "∙●∙", "∙⃝∙", "∙∙•", "∙∙●", "∙∙⃝", "∙∙∙" };

        public static string[] spinnerSequenceMac = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏"};

        #endregion

        #region File paths

		public static string PropsFilename = "Props.json";

		public static string LogFilename = "sqribe.log";

		public static string FulltextCatalogsFilename = "FulltextCatalogs.sql";

		public static string DefaultTypesFilename = "DefaultTypes.sql";

		public static string SchemasFilename = "Schemas.sql";

		public static string TablesFilename = "Tables.sql";

		public static string TablePrimaryKeysFilename = "TablePrimaryKeys.sql";

		public static string TableDefaultValuesFilename = "TableDefaultValues.sql";

		public static string TableComputedColumnsFilename = "TableComputedColumns.sql";

		public static string TableIndexesFilename = "TableIndexes.sql";

		public static string TableForeignKeysFilename = "TableForeignKeys.sql";

		public static string TableCheckConstraintsFilename = "TableCheckConstraints.sql";

		public static string UserDefinedDataTypesFilename = "UserDefinedDataTypes.sql";

		public static string UserDefinedTableTypesFilename = "UserDefinedTableTypes.sql";

		public static string UserDefinedFunctionsFilename = "UserDefinedFunctions.sql";

		public static string XmlSchemaCollectionsFilename = "XmlSchemaCollections.sql";

		public static string ViewsFilename = "Views.sql";

		public static string StoredProceduresFilename = "StoredProcedures.sql";

		public static string TriggersFilename = "Triggers.sql";

		public static string ExtendedPropertiesFilename = "ExtendedProperties.sql";

		public static string DataFilePrefix = "Data";

        #endregion

        #region Collections

        public enum OperationModes
        {
            Backup,
            Restore,
            Help,
            Version
        }

        public static string[] SqlBaseTypes = {
            "bigint",
            "bit",
            "date",
            "datetime",
            "float",
            "geography",
            "geometry",
            "hierarchyid",
            "image",
            "int",
            "money",
            "ntext",
            "real",
            "smalldatetime",
            "smallint",
            "smallmoney",
            "sql_variant",
            "text",
            "timestamp",
            "tinyint",
            "uniqueidentifier",
            "xml",
            "identity_key",
            "alt_key",
            "foreign_key_id"
        };

        public static string[] SqlSizedTypes = {
            "binary",
            "char",
            "datetime2",
            "datetimeoffset",
            "decimal",
            "nchar",
            "numeric",
            "nvarchar",
            "time",
            "varbinary",
            "varchar"
        };

        #endregion

        #region Methods

		/// <summary>
		/// Output the current date and time as Fri-10-Aug-2018.
		/// </summary>
		public static string GetDateTime()
		{
			// Thu-2018-May-10 @ 12:30 PM
			return DateTime.Now.ToString("ddd-dd-MMM-yyyy @ ") + DateTime.Now.ToString("h:mm tt");
		}

		/// <summary>
		/// Get the best indentation arrow for console output on the current platform.
		/// </summary>
		/// <returns>String with the indented arrow</returns>
        public static string GetIndentationArrow()
        {
            var result = Constants.IndentationArrowMac;

            if (Identify.GetOSPlatform() == OSPlatform.Windows)
            {
                result = Constants.IndentationArrow;
            }

            if (Identify.GetOSPlatform() == OSPlatform.Linux)
            {
                result = Constants.IndentationArrowLinux;
            }

            return result;
        }

		/// <summary>
		/// Get the best arrow for console output on the current platform.
		/// </summary>
		/// <returns>String with the arrow</returns>
        public static string GetArrow()
        {
            var result = Constants.ArrowMac;

            if (Identify.GetOSPlatform() == OSPlatform.Windows)
            {
                result = Constants.Arrow;
            }

            if (Identify.GetOSPlatform() == OSPlatform.Linux)
            {
                result = Constants.ArrowLinux;
            }

            return result;
        }

		/// <summary>
		/// Get the thick title bar character for underliniing the app title on the current platform.
		/// </summary>
		/// <returns>String with the title bar character</returns>
        public static string GetHeaderBar()
        {
            var result = Constants.HeaderBarMac;

            if (Identify.GetOSPlatform() == OSPlatform.Windows)
            {
                result = Constants.HeaderBar;
            }

            return result;
        }

		/// <summary>
		/// Get the vertical bar for console output on the current platform.
		/// </summary>
		/// <returns>String with the vertical bar</returns>
        public static string GetBar()
        {
            var result = Constants.BarMac;

            if (Identify.GetOSPlatform() == OSPlatform.Windows)
            {
                result = Constants.Bar;
            }

            return result;
        }

		/// <summary>
		/// Get the bullet for console output on the current platform.
		/// </summary>
		/// <returns>String with the bullet</returns>
        public static string GetBullet()
        {
            var result = Constants.Bullet;

            return result;
        }

		/// <summary>
		/// Get the dark mode or light mode color.
		/// </summary>
		/// <param name="colorName">Name of the color retrieve, or blank for the default color.</param>
		/// <param name="darkMode">If true, retrieve dark mode version of the color.</param>
		/// <returns>ConsoleColor value</returns>
        public static ConsoleColor GetColor(string colorName, bool darkMode = true)
        {
            ConsoleColor result = ConsoleColor.Gray;

            switch (colorName)
            {
                case "success":
                    result = (ConsoleColor)Constants.TextColorSuccess[(darkMode ? 0 : 1)]; break;
                case "prompt":
                    result = (ConsoleColor)Constants.TextColorPrompt[(darkMode ? 0 : 1)]; break;
                case "warning":
                    result = (ConsoleColor)Constants.TextColorWarning[(darkMode ? 0 : 1)]; break;
                case "busy":
                    result = (ConsoleColor)Constants.TextColorBusy[(darkMode ? 0 : 1)]; break;
                case "error":
                    result = (ConsoleColor)Constants.TextColorError[(darkMode ? 0 : 1)]; break;
                default:
                    result = (ConsoleColor)Constants.TextColor[(darkMode ? 0 : 1)]; break;
            }

            return result;
        }

        #endregion
    }
}
