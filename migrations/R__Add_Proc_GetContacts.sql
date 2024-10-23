CREATE OR REPLACE PROCEDURE GetContacts()
returns string not null
language javascript
as
$$
var cmd = `
SELECT * FROM contacts
`
var sql = snowflake.createStatement({sqlText: cmd});
var result = sql.execute();
return '💰';
$$;