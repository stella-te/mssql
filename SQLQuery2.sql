/*CREATE DATABASE testdb;
*/

USE testdb;

CREATE TABLE test (
	commodity varchar(255),
	name varchar(255),
	price decimal(18, 2)
);


Declare @JSON varchar(max);

IF (ISJSON(@JSON)=1)
Print 'It is a valid JSON'
ELSE
Print 'Error in Json format'


INSERT into test
	SELECT commodity, symbol, price
	FROM OPENROWSET (BULK 'C:\test.json.txt', SINGLE_CLOB) as j
	CROSS APPLY OPENJSON(BulkColumn)
	WITH(commodity varchar(255), symbol varchar(255), price decimal(18,2))



/*
ALTER TABLE test
RENAME COLUMN name TO commodity decimal;
*/

SELECT * FROM test;

GO