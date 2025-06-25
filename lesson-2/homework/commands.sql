1. CREATE TABLE EMPLOYEES (EMPID INT, NAME VARCHAR(50), SALARY DECIMAL(10,2));
2. insert into EMPLOYEES VALUES (1, 'BOB', '1200'),
                             (2, 'SARAH', '1300'),
                             (3, 'JOHN', '1400');
3. UPDATE EMPLOYEES
   SET SALARY = 7000
   WHERE EMPID = 1;
4. DELETE FROM EMPLOYEES
   WHERE EMPID = 2;

5.DELETE
  What it does: Removes specific rows from a table.
  WHERE clause: Yes, you can filter which rows to delete.
  Rollback: Yes, it's transactional (can undo with ROLLBACK).
  Structure remains: Table and structure stay.

  TRUNCATE
  What it does: Removes all rows from a table very quickly.
  WHERE clause: No — deletes everything.
  Rollback: Partially — depends on DBMS (usually not transactional).
  Structure remains: Table structure stays.

  DROP
  What it does: Deletes the entire table (structure + data).
  WHERE clause: Not applicable.
  Rollback: Cannot be undone (in most systems).
  Structure remains: Table is gone.

6. ALTER TABLE EMPLOYEES
   ALTER COLUMN NAME VARCHAR(100);

7. ALTER TABLE EMPLOYEES
   ADD COLUMN DEPARTMENT VARCHAR(100);

8. ALTER TABLE EMPLOYEES
   ALTER COLUMN SALARY FLOAT;

9. CREATE TABLE DEPARTMENTS (DEPARTMENTID INT PRIMARY KEY, DEPARTMENT_NAME VARCHAR(50));
   SELECT * FROM DEPARTMENTS;

10. TRUNCATE TABLE EMPLOYEES;

11. INSERT INTO DEPARTMENTS VALUES (1, 'HR'),
                                   (2, 'IT'),
                                   (3, 'FINANCE'),
                                   (4, 'ACCOUNTING'),
                                   (5, 'ENGINEERING');
                               
  
    INSERT INTO DEPARTMENTS (DEPARTMENTID, DEPARTMENT_NAME)
    SELECT 6, 'LOGISTICS'
    UNION ALL
    SELECT 7, 'INTENSIVE CARE'
    UNION ALL 
    SELECT 8, 'KNITTING'

12. UPDATE EMPLOYEES
    SET DEPARTMENT = 'MANAGEMENT'
    WHERE SALARY > 5000;

13. DELETE FROM EMPLOYEES

14. ALTER TABLE EMPLOYEES
    DROP COLUMN DEPARTMENT;

15. EXEC SP_RENAME 'EMPLOYEES', 'STAFFMEMBERS';

16. DROP TABLE DEPARTMENTS;

17. CREATE TABLE PRODUCTS (PRODUCTID INT PRIMARY KEY, PRODUCTNAME VARCHAR(50), CATEGORY VARCHAR(50), PRICE DECIMAL);

18. ALTER TABLE PRODUCTS
    ADD CONSTRAINT CHK_PRICE CHECK (PRICE > 0);

19. ALTER TABLE PRODUCTS 
    ADD COLUMN STOCK_QUANTITY INT DEFAULT 50; 
  
20. EXEC SP_RENAME 'PRODUCTS.CATEGORY', 'PRODUCTCATEGORY', 'COLUMN';
  
21. INSERT INTO PRODUCTS (PRODUCTID, PRODUCTNAME, PRODUCTCATEGORY, PRICE) 
    VALUES (1, 'PEN', 'STATIONERY', '10'),
           (2, 'PENCIL', 'STATIONERY', '15'),
           (3, 'LAPTOP', 'ELECTRONICS', '500'),
           (4, 'CELLPHONE', 'ELECTRONICS', '300'),
           (5, 'SCREWDRIVER', 'TOOL', '12');

 22 SELECT * INTO Products_Backup
    FROM Products;.  

 23. EXEC SP_RENAME 'PRODUCTS', 'INVENTORY';

 24. ALTER TABLE INVENTORY
     ALTER COLUMN PRICE FLOAT; 

25. CREATE TABLE Inventory_New (
    ProductCode INT IDENTITY(1000,5) PRIMARY KEY,
    PRODUCTName VARCHAR(100),
    PRODUCTCategory VARCHAR(50),
    Price FLOAT,
    StockQuantity INT DEFAULT 50
);

INSERT INTO Inventory_New (PRODUCTName, PRODUCTCategory, Price, StockQuantity)
SELECT ProductName, ProductCategory, Price, Stock_Quantity
FROM Inventory;
insert into Inventory_New (productname, PRODUCTCATEGORY, PRICE) VALUES ('GLASS', 'KITCHENWARE', '10');  

