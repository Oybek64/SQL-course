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

14.

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

20. 





















