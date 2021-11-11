
-- Select table CHECK contraints

SELECT
	[name] AS [CONSTRAINT_NAME],
	[definition] AS [CONSTRAINT]
FROM
	sys.check_constraints
WHERE 
	[type] = 'C'
	AND object_name([parent_object_id]) = '{TABLE_NAME}'
    AND schema_name([schema_id]) = '{SCHEMA_NAME}'
