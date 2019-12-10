# SQL Relationships
- Foreign Keys



## One to Many
[One to Many Example](https://d186loudes4jlv.cloudfront.net/sql_first_edition/images/multi_tables/one-to-many.png)

- A User has many Reviews
- A User's primary key / id stored in the Reviews table as a foreign key

## Many to Many
[Many to Many Example](https://d186loudes4jlv.cloudfront.net/sql_first_edition/images/multi_tables/many-to-many.png)

- A User has many Books they checkout
- A Book has many Users that read it
- Need a JOIN table
- A Book has many Users through UsersBooks
- Many side always has a Foreign Key


* Images from [here](https://launchschool.com/books/sql_first_edition/read/multi_tables)

## JOINS
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

SELECT (TableName.ColumnName)
FROM (FIrst Table)
JOIN (Other Table)
ON (Primary Key = Foreign Key)

---

# Active Record
  - ORM

## Why?
  - Makes SQL and DB management easier/sometimes more difficult

## Migrations
  - Keep track of all changes to the DB
  - Numbered files that detail each change
   EX: 1 - Created Users table
       2 - Created a Reviiews table
       3 - Deleted Reviiews table
       4 - Added Reviews table

  - Don't delete migration files!!!!!

