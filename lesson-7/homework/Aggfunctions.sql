1. SELECT  MIN(PRICE) AS MIN_PRICE
   FROM Products;

2. SELECT MAX(SALARY) AS MAX_SALARY
   FROM EMPLOYEES;

3. SELECT COUNT(*) AS NUMBER_OF_ROWS
   FROM CUSTOMERS 

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

14. 












