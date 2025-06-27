1. What is BULK INSERT in SQL Server?
   BULK INSERT is a command used to import large volumes of data from a file (e.g., .csv, .txt) directly into a SQL Server table.
   Purpose of BULK INSERT:
   Fast data loading:	Much faster than inserting rows one-by-one (INSERT INTO)
   Import external data:	Load data from flat files like .csv, .txt, or .dat
   Used in data migration:	Common in ETL processes, staging environments, or initial database population
   Simplifies repetitive tasks:	Easily loads large datasets with minimal code
  
2. CSV (Comma-Separated Values)
   Widely used for data exchange.
   Each field is separated by a comma (,).
   Easily imported using BULK INSERT, bcp, or SQL Server Import Wizard.
   Example: Products.csv

   TXT (Plain Text Files)
   Can use custom delimiters (e.g., tab \t, pipe |).
   Often structured like CSV but more flexible in formatting.
   Example: Employees.txt

   XLS / XLSX (Excel Files)
   Used for importing structured spreadsheet data.
   Requires the use of OPENROWSET, SQL Server Import Wizard, or SSIS.
   Example: SalesData.xlsx

   XML (Extensible Markup Language)
   Useful for hierarchical or semi-structured data.
   Can be imported using OPENXML, XML data type, or BULK INSERT ... FROM OPENROWSET.
   Example: Products.xml

3. CREATE TABLE Products (
   ProductID INT PRIMARY KEY,
   ProductName VARCHAR(50),
   Price DECIMAL(10,2)
   );

4. INSERT INTO Products (ProductID, ProductName, Price)
   VALUES 
    (1, 'Notebook', 3.99),
    (2, 'Pen', 1.49),
    (3, 'Pencil Case', 5.25);

5.  NULL vs NOT NULL in SQL
    Use NULL	When a value may be missing or optional
    Use NOT NULL	When a value is required and cannot be empty

6. ALTER TABLE Products
   ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

7. -- This query selects all employees in the 'HR' department
   SELECT *
   FROM Employees
   WHERE Department = 'HR';

   /* 
   This query retrieves all employees 
   with a salary greater than 5000 
   from the Employees table 
   */
   SELECT Name, Salary
   FROM Employees
   WHERE Salary > 5000;

8. ALTER TABLE PRODUCTS
   ADD COLUMN CATEGORY_ID INT;

9. CREATE TABLE CATEGORIES (CATEGORY_ID INT PRIMARY KEY, CATEGORY_NAME VARCHAR(50) UNIQUE)

10. Purpose of the IDENTITY column in SQL Server:
   The IDENTITY column in SQL Server is used to automatically generate unique, sequential numbers — usually for primary keys.
   Why it's useful:
   You don’t need to manually enter values for this column.
   It guarantees that each row has a unique identifier.
   Commonly used for ID, OrderNumber, ProductCode, etc.

11. BULK INSERT Products
    FROM 'C:\Users\oybek.akhmedov\OneDrive - global-textile.com\Desktop\PRODUCTS.txt'
    WITH (
      FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      ROWTERMINATOR = '\n'
         );

12. ALTER TABLE PRODUCTS
     ADD CONSTRAINT FK_CAT_ID
     FOREIGN KEY (CATEGORY_ID) 
     REFERENCES CATEGORIES (CATEGORY_ID); 

13. PRIMARY KEY
    Definition:
    A PRIMARY KEY uniquely identifies each row in a table.
    Characteristics:
    Property	             Behavior
    Uniqueness	           Enforces unique values (no duplicates)
    Nulls allowed?	       No (it automatically adds NOT NULL)
    How many per table?	   Only one PRIMARY KEY allowed per table
    Often used for	       Row identifiers like ID, EmployeeID, etc.
    
    Example:
    CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100)
    );

    UNIQUE KEY (UNIQUE constraint)
    Definition:
    A UNIQUE KEY also enforces uniqueness but allows more flexibility.

    Characteristics:
    Property	             Behavior
    Uniqueness	           Ensures values are unique (no duplicates)
    Nulls allowed?	       Yes — allows one NULL value (in SQL Server)
    How many per table?	   You can have multiple UNIQUE constraints per table
    Often used for	       Alternate keys like Email, PhoneNumber, Username, etc.

    Example:
    CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
    );

14. ALTER TABLE PRODUCTS
    ADD CONSTRAINT CHK_PRICE CHECK (PRICE > 0);

15. ALTER TABLE PRODUCTS
    ADD Stock INT NOT NULL DEFAULT 0;    

16. SELECT ProductID, ProductName, 
    ISNULL(Price, 0) AS Price
    FROM Products;

17.  What is a FOREIGN KEY?  
     A FOREIGN KEY is a constraint used to create a relationship between two tables. 
     It ensures that the value in one table must match a value in another table, enforcing referential integrity.

     Purpose of FOREIGN KEY:
     Link related tables - 	Connects rows between parent and child tables.
     Enforce valid data	- Prevents inserting values in the child table that don't exist in the parent.
     Control delete/update actions	- Helps manage how changes in one table affect related data in another.

18.  CREATE TABLE CUSTOMERS (CUSTOMER_ID INT PRIMARY KEY, NAME VARCHAR(50), AGE INT CHECK(AGE >= 18));

19. CREATE TABLE BOOKS 
    (
    ID INT IDENTITY(100,10) PRIMARY KEY,
    NAME VARCHAR(50),
    CATEGORY VARCHAR(30),
    CAT_CODE INT
    );

20. CREATE TABLE ORDERDETAILS (ID INT, ORDERDATE DATE, orderplace varchar(20), primary key(id, orderdate));

21. ISNULL() — SQL Server-specific
    Purpose:
    Replaces a NULL value with a single default value.
    If Price is NULL, it returns 0.
    If Price is not NULL, it returns the actual value.

    COALESCE() — ANSI SQL standard
    Purpose:
    Returns the first non-NULL value in a list of expressions. It’s more flexible than ISNULL.
    It checks each column from left to right.
    Returns the first non-NULL value.
    If all are NULL, it returns 0.

22. create table employees (empid int primary key, name varchar(30), email varchar(50) unique);

23. CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
    );

    CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
    );
