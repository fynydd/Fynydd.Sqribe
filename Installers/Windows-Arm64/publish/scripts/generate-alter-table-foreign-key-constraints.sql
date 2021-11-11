DECLARE @ForeignKeyID int
DECLARE @ForeignKeyName varchar(4000)
DECLARE @ParentTableName varchar(4000)
DECLARE @ParentColumn varchar(4000)
DECLARE @ReferencedTable varchar(4000)
DECLARE @ReferencedColumn varchar(4000)
DECLARE @StrParentColumn varchar(max)
DECLARE @StrReferencedColumn varchar(max)
DECLARE @ParentTableSchema varchar(4000)
DECLARE @ReferencedTableSchema varchar(4000)
DECLARE @TSQLCreationFK varchar(max)

DECLARE CursorFK CURSOR FOR SELECT object_id
FROM sys.foreign_keys
OPEN CursorFK
FETCH NEXT FROM CursorFK INTO @ForeignKeyID
WHILE (@@FETCH_STATUS=0)
BEGIN
    SET @StrParentColumn=''
    SET @StrReferencedColumn=''
    DECLARE CursorFKDetails cursor for
  SELECT fk.name ForeignKeyName, schema_name(t1.schema_id) ParentTableSchema,
        object_name(fkc.parent_object_id) ParentTable, c1.name ParentColumn, schema_name(t2.schema_id) ReferencedTableSchema,
        object_name(fkc.referenced_object_id) ReferencedTable, c2.name ReferencedColumn
    FROM
        sys.foreign_keys fk
        INNER JOIN sys.foreign_key_columns fkc ON fk.object_id=fkc.constraint_object_id
        INNER JOIN sys.columns c1 ON c1.object_id=fkc.parent_object_id AND c1.column_id=fkc.parent_column_id
        INNER JOIN sys.columns c2 ON c2.object_id=fkc.referenced_object_id AND c2.column_id=fkc.referenced_column_id
        INNER JOIN sys.tables t1 ON t1.object_id=fkc.parent_object_id
        INNER JOIN sys.tables t2 ON t2.object_id=fkc.referenced_object_id
    WHERE fk.object_id=@ForeignKeyID AND schema_name(t1.schema_id) <> 'sys'
    OPEN CursorFKDetails
    FETCH NEXT FROM CursorFKDetails INTO  @ForeignKeyName, @ParentTableSchema, @ParentTableName, @ParentColumn, @ReferencedTableSchema, @ReferencedTable, @ReferencedColumn
    WHILE (@@FETCH_STATUS=0)
 BEGIN
        SET @StrParentColumn=@StrParentColumn + ', ' + quotename(@ParentColumn)
        SET @StrReferencedColumn=@StrReferencedColumn + ', ' + quotename(@ReferencedColumn)

        FETCH NEXT FROM CursorFKDetails INTO  @ForeignKeyName, @ParentTableSchema, @ParentTableName, @ParentColumn, @ReferencedTableSchema, @ReferencedTable, @ReferencedColumn
    END
    CLOSE CursorFKDetails
    DEALLOCATE CursorFKDetails

    SET @StrParentColumn=substring(@StrParentColumn,2,len(@StrParentColumn)-1)
    SET @StrReferencedColumn=substring(@StrReferencedColumn,2,len(@StrReferencedColumn)-1)
    SET @TSQLCreationFK = CHAR(13) + CHAR(10) + '-- SQRIBE/OBJ' + CHAR(13) + CHAR(10) + 'ALTER TABLE '+quotename(@ParentTableSchema)+'.'+quotename(@ParentTableName)+' WITH NOCHECK ADD CONSTRAINT '+quotename(@ForeignKeyName)
 + ' FOREIGN KEY('+ltrim(@StrParentColumn)+') '+ CHAR(13) + CHAR(10) +'REFERENCES '+quotename(@ReferencedTableSchema)+'.'+quotename(@ReferencedTable)+' ('+ltrim(@StrReferencedColumn)+') ' + CHAR(13) + CHAR(10) + 'GO -- SQRIBE/GO' + CHAR(13) + CHAR(10)

    SELECT @TSQLCreationFK

    FETCH NEXT FROM CursorFK INTO @ForeignKeyID
END
CLOSE CursorFK
DEALLOCATE CursorFK
