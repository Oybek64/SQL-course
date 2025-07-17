1. SELECT Employees.Name, Employees.Salary, Departments.DepartmentName
   FROM Employees
   INNER JOIN Departments ON Employees.Departmentid = Departments.DepartmentID
   WHERE Employees.Salary > 50000;

2. SELECT Customers.FirstName, Customers.LastName, Orders.OrderDate
   FROM Customers
   INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
   WHERE YEAR(Orders.OrderDate) = 2013;

3. SELECT Employees.Name, Departments.DepartmentName
   FROM Employees
   LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

4.Select Suppliers.SupplierName, Products.ProductName
  FROM Suppliers
  LEFT JOIN Products ON Suppliers.SupplierID = Products.SupplierID;

5. SELECT Orders.OrderID, Orders.OrderDate, Payments.PaymentDate, Payments.Amount
   FROM Orders
   FULL OUTER JOIN Payments ON Orders.OrderID = Payments.OrderID;

6. SELECT e1.name AS emp_name,
          e2.name AS mmgr_name
   FROM employees e1
   JOIN employees e2 ON e1.managerid = e2.employeeid; 

7. SELECT Students.Name, Courses.CourseName
   FROM Enrollments
   INNER JOIN Students ON Enrollments.StudentID = Students.StudentID
   INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID
   WHERE CourseName = 'Math 101';

8. SELECT Customers.FirstName, Customers.Lastname, Orders.Quantity
   FROM Customers
   INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
   WHERE Quantity > 3;

9. SELECT E.Name, D.DepartmentName
   FROM Employees E 
   INNER JOIN Departments D ON D.DepartmentID = E.DepartmentID
   WHERE D.DepartmentName = 'Human Resources';

10. SELECT D.DepartmentName, COUNT(E.EmployeeID) AS EmployeeCount
    FROM Employees E
    INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID
    GROUP BY D.DepartmentName
    HAVING COUNT(E.EmployeeID) > 5;

11. SELECT 
      p.ProductID,
      p.ProductName,
	 FROM 
      Products p
    LEFT JOIN 
      Sales s ON p.ProductID = s.ProductID
    WHERE 
      s.ProductID IS NULL;

12. SELECT C.FirstName, 
           C.LastName, 
           COUNT(O.OrderID) AS TotalOrders
    FROM Customers C
    INNER JOIN Orders O ON C.CustomerId = O.CustomerID
    GROUP BY C.FirstName, 
             C.LastName
    HAVING COUNT(O.OrderID) >= 1;

13. SELECT E.Name AS EmployeeName, D.DepartmentName
    FROM Employees E
    INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID;

14. SELECT E1.NAME AS EMPLOYEE1,
       E2.NAME AS EMPLOYEE2,
	   E1.MANAGERID
	   FROM EMPLOYEES E1
	   INNER JOIN EMPLOYEES E2 ON E1.MANAGERID = E2.MANAGERID
	   WHERE E1.EMPLOYEEID < E2.EMPLOYEEID

15. SELECT Orders.OrderID, Orders.OrderDate, Customers.FirstName, Customers.LastName
    FROM Orders
    INNER JOIN Customers ON Orders.CustomerID = Orders.CustomerID
    WHERE YEAR(Orders.Orderdate) = 2022;

16. SELECT Employees.Mame, Employees.Salary, Departments.DepartmentName
    FROM Employees
    INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
    WHERE Departments.DepartmentName = 'Sales' AND Salary > 60000;

17. SELECT Orders.OrderID, Orders.OrderDate, Payments.PaymentDate, Payments.Amount
    FROM Orders
    INNER JOIN Payments ON Orders.OrderID = Payments.OrderID;

18. SELECT Products.ProductID, Products.PRODUCTNAME 
    FROM Products
    LEFT JOIN ORDERS ON ORDERS.PRODUCTID = Products.PRODUCTID
    WHERE ORDERS.orderid IS NULL

19. SELECT 
    E.Name AS EmployeeName,
    E.Salary
    FROM 
    Employees E
    WHERE 
    E.Salary > (
        SELECT AVG(Salary)
        FROM Employees
        WHERE DepartmentID = E.DepartmentID
    );

20. select Orders.OrderID, Orders.OrderDate
    from Orders
    left join Payments ON Orders.OrderID = Payments.OrderID
    where OrderDate > '2020-01-01' and Payments.PaymentID is null;

21. select ProductID, ProductName
    from Products
    left join Categories on Products.Category = Categories.CategoryName 
    where CategoryName is null


 22. SELECT E1.name as Employee1,
       E2.name as Employee2,
	   E1.Managerid as Managerid,
	   E1.Salary as Salary1,
	   E2.Salary as Salary2
	   from employees E1
	   inner join employees E2 on E1.managerid = e2.managerid
	   and e1.employeeid < e2.employeeid
	   where e1.salary > 60000 and  e2.salary > 60000

23. select E.Name as EmployeeName, D.DepartmentName
    from Employees E
    inner join Departments D on E.DepartmentID = D.DepartmentID
    where D.DepartmentName LIKE 'M%';


24. select SaleID, ProductName, SaleAmount
    from Sales
    inner join Products on Sales.ProductID = Products.ProductID
    where SaleAmount > 500;

25. SELECT S.StudentID, S.Name
    FROM Students S
    WHERE S.StudentID NOT IN (
    SELECT E.StudentID
    FROM Enrollments E
    INNER JOIN Courses C ON E.CourseID = C.CourseID
    WHERE C.CourseName = 'Math 101'
);

26. select O.OrderID, O.OrderDate, P.PaymentID
    from Orders O
    inner join Payments P on O.OrderID = P.OrderID
    where P.PaymentID is null;

27. select ProductID, ProductName, CategoryName
    from Products
    inner join Categories on Products.Category = Categories.CategoryName
    where CategoryName IN ('Electronics', 'Furniture');





















