CREATE OR REPLACE PROCEDURE GetName()
returns string not null
language javascript
as
$$
var cmd = `
SELECT FIRST_NAME FROM CONTACTS
`
var sql = snowflake.createStatement({sqlText: cmd});
var result = sql.execute();
return '💰';
$$;