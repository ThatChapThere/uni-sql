/*
 * Data definition lanuage (DDL)
 */

-- To create a database
CREATE TABLE database_name;

-- To delete a table
DROP TABLE database_name;

-- To alter a table
ALTER TABLE database_name [ADD/DROP/MODIFY];

/* Data manipulation language (DML)
 * This is when the data in the database is being edited
 */

-- Select queries
SELECT [DISTINCT|ALL] [*|expression[AS some_name]]
FROM table_name [alias] [, more_tables]
[WHERE condition]
[GROUP BY column_list] [HAVING condition]
[ORDER BY column_list [ASC|DESC];

-- This goes select-from-conditions-filters
-- DISTINCT is used to remove duplicates which are not by default removed

-- SELECT can actually be used to perform some computations as well
-- as queries
SELECT price * 2 AS newPrice
FROM table_name;

-- for example. The AS keyword is used for these sorts of computations

-- The WHERE clause
-- there a 5 basic predicates (search condidions)
-- * comparison
SELECT * FROM Customers WHERE Age > 19;
-- * range
SELECT job FROM mytable WHERE id [NOT] BETWEEN 10 AND 15;
-- the fact that and is used like this is frankly offensive but okay
-- * set membership
SELECT * FROM members WHERE memberid IN (1, 2, 3);
-- * pattern matching (kinda of like a very limited version of regex)
-- maybe do some notes on the different types involved here.
-- there aren't too many
SELECT * FROM customers WHERE customerName [NOT] LIKE '%a';
-- * checking for NULL values
SELECT * FROM customers WHERE customerName IS NOT NULL;

-- note about comparison: strings that aren't the BINARY type
-- are case insensitive!
