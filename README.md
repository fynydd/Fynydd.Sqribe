<center><img src="https://sqribe.app/images/sqribe-advert.png" width="100%" /></center>

# SQribe for Microsoft SQL Server

Backup and restore Microsoft SQL Server databases on Windows, macOS, and Linux.

SQribe is a 64-bit .NET 7.0 command line (CLI) tool that allows users to connect to a Microsoft SQL Server 2012 or later instance and create backup scripts for use in cloning a database or easily versioning database changes in source control. Backup and restore operations are multi-threaded.

Visit the website at [https://sqribe.app](https://sqribe.app) for documentation, introductory videos, and more.

**Examples of how SQribe can help you:**

- Backup a local or remote SQL Server database to T-SQL script files that you can restore with SQribe or another query tool.
- Perform a fast wipe and restore to a known prior state to speed up software development.
- Version database schema and/or data in your source code repository. Create a local backup of a database on a cloud host or other server to which you have no direct access.
- Backup a database on a VPN and restore to a server on another VPN.
- Optional data compression will allow you to keep numerous backups with data at much smaller file sizes.

Database objects that can be scripted include schemas, tables (indexes, foreign keys, checks, primary keys, computed columns, defaults), views, user-defined data types, user-defined table types, user-defined functions, fulltext catalogs, XML schemas, default types, triggers, and stored procedures. Data can also be scripted as insert statements chunked into files of manageable file and transaction sizes. These files can be run without SQribe, but SQribe's restore functionality makes restoration much easier.

In addition to the command line argument method for invoking the application, default settings can be specified in simple JSON file format. Backup and restore operations can also be defined in JSON files for much simpler, repeated operations.

And best of all, SQribe can be run on Linux, macOS, and Windows.

### Overview Video

[<img src="https://sqribe.app/images/sqribe-overview.jpg" width="50%">](https://youtu.be/ZOXsMhOkyCM)  
Click to watch the video

## How It Works

Once you install the SQribe binary (see the *Releases* area of the repository or build your own), it can be run with a series of command line parameters using the *sqribe* command:

```
> sqribe backup /data_source:"server=localhost;database=AdventureWorks2017;user id=aw2017user;password='abracadabra';" /objects:"all" /output_path:"~/Desktop/sqribe-backup"
```

...or with a single parameter that points to a JSON settings file (similar to the way Microsoft robocopy works):

```
> sqribe backup-adventureworks
```

SQribe will then backup or restore a SQL database to/from T-SQL script files for schema and data items. SQribe looks in a folder named "sqribe" within your user home folder for these JSON settings files.

You can also run SQribe directly from the repository folder with the *dotnet* command:

```
> cd {SQribe Repo Root}/SQribe
> dotnet run backup-adventureworks
```

### Commands and Job Files Video

[<img src="https://sqribe.app/images/sqribe-commands.jpg" width="50%">](https://youtu.be/WnykwkalJ2M)  
Click to watch the video

### Backup Job Video

[<img src="https://sqribe.app/images/sqribe-backup.jpg" width="50%">](https://youtu.be/Zm6H1YiCHE8)  
Click to watch the video

### Restore Job Video

[<img src="https://sqribe.app/images/sqribe-restore.jpg" width="50%">](https://youtu.be/HvL9Y1hY8HM)  
Click to watch the video

## Repository Contents

The repository includes:

1. This README file
2. SQribe LICENSE
3. SQribe Visual Studio 2019 solution
4. SQribe .NET 7.0 project
5. SQribe macOS installer
6. SQribe Wix installer
7. Script files to build and publish SQribe

### Windows Installer

You should install [Wix Toolset](https://wixtoolset.org/releases/) prior to building a SQribe installer.

Once you have Wix Toolset installed, launch Visual Studio and open the SQribe solution file. When you build in *Release* mode the Wix installer will generate an unsigned installer for you in ```{SQribe Repo Root}/SQribe-Installer/Installs```.

### macOS Installer

Before building a macOS installer, first run the publish script:

```
> cd {SQribe Repo Root}
> zsh publish-macos.sh
```

Once published, open the [Packages](http://s.sudre.free.fr/Software/Packages/about.html) project to build and generate an unsigned macOS installer in the path ```{SQribe Repo Root}/SQribe-Mac-Installer/Build```.

## Database Object Support

When scripting and restoring a database, the following describes which database objects and properties are supported.

### Users and Roles

SQribe does not support users and roles. The destination database for a restore operation needs to have its security model created independently of SQribe.

### Schema Collections

Schema collections in *Security/Schemas* are supported.

### Tables

Table column types for SQL Server 2012 through 2019 are supported (including hierarchyid and geography). The following features are also supported:

- Identities
- Primary keys
- Indexes
- Foreign key constraints
- Default values (types and explicit)
- Collation
- Computed columns
- XML schema collection for xml types
- Data (UTF8-encoded)

The following are NOT supported:

- Memory optimized tables

### Fulltext catalogs and indexes

Fulltext catalogs and indexes are supported, including type columns (for image and varbinary indexing).

### Views

Views are supported, including columns with XML schema values.

### User-Defined Functions (UDF)

User-defined functions in *Programmability/Functions* are supported.

### User-Defined Data Types (UDDT)

User-defined data types in *Programmability/Types/User-Defined Data Types* are supported with the following properties:

- Default values

The following are NOT supported:

- Rules

### User-Defined Table Types (UDTT)

User-defined tables in *Programmability/Types/User-Defined Table Types* are supported with column types for SQL Server 2012 through 2019 (including hierarchyid and geography). The following additional features are supported:

- Identities
- Primary keys
- Computed columns
- XML schema collection for xml types

### Default Types

Default type objects in *Programmability/Defaults* are supported.

### XML Schema Collections

XML schema collections in *Programmability/Types/XML Schema Collections* are supported.

### Stored Procedures (USP)

Stored procedures in *Programmability/Stored Procedures* are supported.

### Extended properties

These are supported at the database level and for supported schema types (including columns and parameters).

### Triggers

Database triggers in *Programmability/Database Triggers* and *Tables* are supported, including enabled/disabled properties.
