-- Creating CONTACTS table with initial and additional columns
CREATE TABLE CONTACTS (
    ID INT NOT NULL,
    FIRST_NAME NVARCHAR(128),
    LAST_NAME NVARCHAR(128),
    GENDER NVARCHAR(128),
    ADDRESS_LINE_1 NVARCHAR(128),
    ADDRESS_LINE_2 NVARCHAR(128),
    CITY NVARCHAR(128),
    POSTCODE NVARCHAR(128),
    PHONE INT,
    EMAIL NVARCHAR(128)
);

-- Creating PRODUCTS table with initial and additional columns
CREATE TABLE PRODUCTS (
    ID INT NOT NULL,
    PRODUCTNAME NVARCHAR(128),
    PRODUCTCODE INT,
    CATEGORY NVARCHAR(128),
    CURRENTLINE NVARCHAR(128),
    REORDERQUANTITY INT
);

-- Creating LOCATIONS table
CREATE TABLE LOCATIONS (
    ID INT NOT NULL
);

-- Creating SALESTEAM table
CREATE TABLE SALESTEAM (
    ID INT NOT NULL
);

-- Creating or replacing the GetContacts procedure
CREATE OR REPLACE PROCEDURE GetContacts()
RETURNS STRING NOT NULL
LANGUAGE JAVASCRIPT
AS $$
    var cmd = `SELECT * FROM CONTACTS`;
    var sql = snowflake.createStatement({sqlText: cmd});
    var result = sql.execute();
    return '💰';  // Assuming you want to return a simple string for now
$$;

-- Creating or replacing the GetName procedure
CREATE OR REPLACE PROCEDURE GetName()
RETURNS STRING NOT NULL
LANGUAGE JAVASCRIPT
AS $$
    var cmd = `SELECT FIRST_NAME FROM CONTACTS`;
    var sql = snowflake.createStatement({sqlText: cmd});
    var result = sql.execute();
    return '💰';  // Assuming you want to return a simple string for now
$$;
