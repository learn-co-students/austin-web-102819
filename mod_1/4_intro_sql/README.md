 # Intro SQL

 ## CRUD
 CREATE - Create tables and rows/instances of data
 READ - Get information from a table.(SELECT)
 UPDATE - Change tables and rows/instances
 DELETE - Remove tables and rows/instances


 ### SELECT (READ) Queries:
  SELECT (what I want to select, * for all columns, name the columns) FROM (name of the table)
  
  - SELECT * FROM world;
  - SELECT name, population FROM world;

  SElECT (columns) FROM (table)
  WHERE (condition)
  - SELECT * FROM world
    WHERE name = 'Germany';

### UPDATE
Update (table name)
SET (column) = (new value)
WHERE (condition); *If no where it changes everything


UPDATE Customers
SET CustomerName = 'Vanessa'
WHERE CustomerID = 5;

