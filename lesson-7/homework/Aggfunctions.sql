1. SELECT  MIN(PRICE) AS MIN_PRICE
   FROM Products;

2. SELECT MAX(SALARY) AS MAX_SALARY
   FROM EMPLOYEES;

3. SELECT COUNT(*) AS NUMBER_OF_ROWS
   FROM CUSTOMERS; 

4. SELECT DISTINCT Category 
   FROM Products;

5. SELECT 
       SUM(SaleAmount) AS TOTAL_AMOUNT
	   FROM Sales
	   WHERE ProductID = 7;

6. SELECT AVG(AGE) AS AVG_AGE
   FROM Employees;

7. SELECT DepartmentName, COUNT(EmployeeID) AS EMPS_BY_DEPT
   FROM Employees
   GROUP BY DepartmentName;

8. SELECT Category,
	   MAX(PRICE) AS MAX_PRICE,
     MIN(PRICE) AS MIN_PRICE
   FROM Products
   GROUP BY Category;

9. SELECT CustomerID,  
          SUM(SaleAmount) Total_Amount_Per_Customer
   FROM Sales
   GROUP BY CustomerID;

10. SELECT DepartmentName, COUNT(*) AS total_employees
       FROM Employees
	   GROUP BY DepartmentName
	   HAVING COUNT(*) > 5;

11.



12. SELECT DepartmentName,  COUNT(*) AS Total_Emp
    FROM Employees
    WHERE DepartmentName = 'HR'
    GROUP BY DepartmentName;

13. SELECT DepartmentName, 
		MAX(Salary) AS THE_HIGHEST_SALARY,
	        MIN(Salary) AS THE_LOWEST_SALARY
    FROM EMPLOYEES
    GROUP BY DepartmentName;

14. SELECT DepartmentName, AVG(Salary) AS AVG_SALARY
    FROM Employees
    GROUP BY DepartmentName;

15. SELECT DepartmentName, 
           AVG(Salary) AS AVG_SALARY,
	   COUNT(*) AS EMP_COUNT
    FROM Employees
    GROUP BY DepartmentName;

16. SELECT * FROM Products
    SELECT Category, 
       AVG(Price) AS AVG_PRICE
    FROM Products
    GROUP BY Category
    HAVING AVG(Price) > 400;

17. SELECT YEAR(SaleDate) AS SaleYear, 
            SUM(SaleAmount) AS TotalAmount
    FROM Sales	
    GROUP BY YEAR(SaleDATE)
    ORDER BY SaleYear;

18. SELECT CustomerID, 
       COUNT(OrderID) AS ORDER_COUNT
    FROM Orders
    GROUP BY CustomerID
    HAVING COUNT(OrderID) >= 3;

19. SELECT DepartmentName, AVG(Salary) AS AVG_SALARY
    FROM Employees
    GROUP BY DepartmentName 
    HAVING AVG(Salary) > 60000;

20. SELECT Category, AVG(Price) AS AVG_PRICE
    FROM Products
    GROUP BY Category
    HAVING AVG(Price) > 150;

21. SELECT CustomerID, SUM(SaleAmount)
    FROM Sales
    GROUP BY CustomerID
    HAVING SUM(SaleAmount) > 1500;

22. SELECT DepartmentName, SUM(SALARY) AS Total, 
	                   AVG(Salary) AS Avrg
    FROM Employees
    GROUP BY DepartmentName
    HAVING AVG(Salary) > 65000;

23.







24. SELECT 
     YEAR(OrderDate) AS Order_Year,
	 MONTH(OrderDate) AS Order_Month,
	 SUM(TotalAmount) AS Total_Sales,
	 COUNT(DISTINCT ProductID) AS Unique_Products
    FROM Orders
    GROUP BY YEAR(OrderDate),
	     MONTH(OrderDate)
    HAVING  COUNT(DISTINCT ProductID) >= 2
    ORDER BY Order_Year;

25. SELECT YEAR(OrderDate) AS Order_Year,
       MIN(Quantity) AS Min_Quantity,  
	   MAX(Quantity) AS Max_Quantity
    FROM Orders
    GROUP BY YEAR(OrderDate)











