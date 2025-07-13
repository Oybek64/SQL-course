1. SELECT Products.ProductName, Suppliers.Suppliername
   FROM Products
   CROSS JOIN Suppliers;

2. SELECT Departments.DepartmentName, Employees.Name
   FROM Departments
   CROSS JOIN Employees;

3. SELECT Suppliers.SupplierName, Products.ProductName
   From Suppliers
   INNER JOIN Products on Suppliers.SupplierID = Products.SupplierID;

4. SELECT Customers.FirstName, Orders.OrderID
   FROM Customers
   INNER JOIN
   Orders ON Customers.CustomerID = Orders.CustomerID;

5. SELECT *
   FROM Students
   CROSS JOIN Courses;

6. SELECT Products.ProductName, Orders.OrderID
   FROM Products
   INNER JOIN Orders on Products.ProductID = Orders.ProductID;

7. SELECT Employees.Name, Departments.DepartmentName
   FROM Employees
   INNER JOIN Departments
   ON Employees.DepartmentID = Departments.DepartmentID;

8. SELECT Students.StudentID, Students.Name, Enrollments.CourseID
   FROM Students
   INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID;

9. SELECT Orders.OrderID, Payments.PaymentID, Payments.PaymentDate, Paymentmethod
   FROM Orders
   INNER JOIN Payments
   ON Orders.OrderID = Payments.OrderID;

10. SELECT Orders.OrderID, Products.ProductName, Products.Price
    FROM Orders 
    INNER JOIN Products ON Orders.ProductID = Products.ProductID
    WHERE Products.Price > 100;

11. SELECT Employees.Name, Departments.DepartmentName
    FROM Employees
    CROSS JOIN Departments
    WHERE Employees.DepartmentID <> Departments.DepartmentID;


12. SELECT Orders.OrderID, Products.ProductName, Orders.Quantity AS QuantityOrdereD, Products.StockQuantity
    FROM Orders
    INNER JOIN Products
    WHERE Orders.Quantity > Products.StockQuantity;

13. SELECT Customers.FirstName, Sales.ProductID, Sales.SaleAmount
    FROM Customers
    INNER JOIN Sales
    ON Customers.CustomerID = Sales.CustomerID
    WHERE Sales.SaleAmount >= 500;

14. SELECT Students.Name, Courses.Coursename
    FROM Enrollments
    INNER JOIN Students ON Students.StudentID = Enrollments.StudentID
    INNER JOIN Courses ON Courses.CourseID = Enrollments.CourseID;

15. SELECT ProductName, SupplierName
    FROM Products
    INNER JOIN Suppliers
    ON Products.SupplierID = Suppliers.SupplierID
    WHERE Suppliers.SupplierName LIKE '%Tech%';

16. SELECT Orders.OrderID, TotalAmount, PaymentID, Amount AS PaymentAmount
    FROM Orders
    INNER JOIN Payments
    ON Orders.OrderID = Payments.OrderID
    WHERE Payments.Amount < Orders.TotalAmount;

17. SELECT Employees.EmployeeID, Employees.Name, Departments.DepartmentName
    FROM Employees
    INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

18. SELECT Products.ProductName, Categories.CategoryName
    FROM Products
    INNER JOIN Categories ON Products.Category = Categories.CategoryName
    WHERE CategoryName = 'Electronics' OR CategoryName = 'Furniture';

19. SELECT Sales.SaleID, Customers.FirstName, Customers.LastName, Customers.Country
    FROM Sales
    INNER JOIN Customers ON Sales.CustomerID = Customers.CustomerID
    WHERE Sustomers.Country = 'USA';

20.SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Orders.OrderID, Customers.Country, Orders.TotalAmount
   FROM Customers
   INNER JOIN Orders ON Orders.CustomerID = Orders.CustomerID
   WHERE Customers.Country = 'Germany' AND Orders.TotalAmount > 100;

21. SELECT 
      E1.EmployeeID AS Employee1_ID,
      E1.Name AS Employee1_Name,
      E2.EmployeeID AS Employee2_ID,
      E2.Name AS Employee2_Name
    FROM 
      Employees E1
    INNER JOIN 
      Employees E2 ON E1.EmployeeID < E2.EmployeeID
    WHERE 
      E1.DepartmentID <> E2.DepartmentID;

22.SELECT Orders.OrderID, 
          Products.ProductName, 
          Orders.Quantity, 
          Products.Price, 
          Payments.PaymentID, 
          Payments.PaymnetDate, 
          Payments.Amount, 
          Payments.PaymentMethod
  FROM Orders
  INNER JOIN Payments ON Payments.OrderID = Orders.OrderID
  INNER JOIN Products ON Products.ProductID = Orders.ProductID
  WHERE Payments.Amount <> (Orders.Quantity * Products.Price);


23. SELECT Students.StudentID, Students.Name, Enrollments.CourseID
    FROM Students
    LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID; 

24. SELECT 
     M.EmployeeID AS ManagerID,
     M.Name AS Manager_Name,
     M.Salary AS Manager_Salary,
     E.EmployeeID AS EmpID,
     E.Name AS Emp_Name,
     E.Salary AS Emp_Salary
    FROM Employees M
    JOIN Employees E ON M.EmployeeID = E.ManagerID
    WHERE M.Salary <= E.Salary;

25. 
SELECT 
    Customers.CustomerID,
    Customers.firstName,
    Orders.OrderID,
    Orders.OrderDate
FROM 
    Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
LEFT JOIN Payments ON Orders.OrderID = Payments.OrderID
WHERE 
    Payments.PaymentID IS NULL;










