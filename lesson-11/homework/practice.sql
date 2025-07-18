1.SELECT OrderID, FirstName, OrderDate
FROM Orders 
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE OrderDate > '2022-12-31';

2.SELECT Employee.Name AS EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID 
WHERE DepartmentName IN('Sales', 'Marketing');

3.SELECT Departments.DepartmentName, Max(Salary) AS MaxSalary
FROM Departments
INNER JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY Departments.DepartmentName;

4.SELECT FirstName + ' ' + LastName AS CustomerName, OrderID, Orderdate
  FROM Customers
  INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
  WHERE Country = 'USA' AND YEAR(Orders.OrderDate) = 2023;

5. SELECT FirstName + ' ' + LastName AS CustomerName, Count(OrderID) as TotalOrders
   FROM Customers 
   Left Join Orders On Customers.CustomerID = Orders.CustomerID
   GROUP BY FirstName, LastName;

6.SELECT Products.ProductName, Suppliers.SupplierName
  FROM Products
  INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
  WHERE Suppliers.SupplierName IN('GadgetSupplies', 'Clothing Mart');

7.SELECT FirstName + ' ' + LastName As CustomerName, MAX(OrderDate) AS MostRecentOrderDate
  FROM Customers
  Left JOIN Orders ON Customers.CustomerID = Orders.CustomerID
  GROUP BY FirstName, LastName;

8.SELECT FirstName + ' ' + LastName As CustomerName, SUM(TotalAmount) AS OrderTotal
  FROM Customers 
  INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
  GROUP BY FirstName, LastName
  HAVING SUM(TotalAmount) > 500;

9.SELECT ProductName, SaleDate, SaleAmount
  FROM Products
  INNER JOIN Sales ON Products.ProductID = Sales.ProductID
  WHERE YEAR(SaleDate) =  2022 OR SaleAmount > 400;

10.SELECT ProductName, SaleAmount AS TotalSaleAmount
   From Products
   INNER JOIN Sales ON Sales.ProductID = Products.ProductID;

11.SELECT Employees.Name AS EmployeeName, Departments.DepartmentName, Employees.Salary
   FROM Employees
   INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
   WHERE Departments.DepartmentName = 'HR' and Employees.Salary > 60000;

12.SELECT ProductName, Saledate, StockQuantity
   FROM Products
   INNER JOIN Sales ON Products.ProductID = Sales.ProductID
   WHERE YEAR(SaleDate) = 2023 AND StockQuantity > 100;

13.SELECT Employees.Name AS EmployeeName, Departments.DepartmentName, Employees.HireDate
FROM Employees
INNER JOIN Departments on Employees.DepartmentID = Departments.DepartmentID
WHERE DepartmentName = 'Sales' or Employees.HireDate > '2020-12-31'

14.SELECT FirstName + ' ' + LastName AS CustomerName, Orders.OrderID, Customers.Address, Orders.OrderDate
FROM Customers 
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
WHERE Country = 'USA' AND '[0-9][0-9][0-9][0-9]%';

15.SELECT Products.Productname, Products.Category, Sales.SaleAmount
FROM Products
INNER JOIN Sales ON Products.ProductID = Sales.ProductID
WHERE Category = 'Electronics' or Sales.SaleAmount > 350;

16.SELECT Categories.CategoryName, COUNT(Products.ProductID) As ProductCount
FROM Categories 
LEFT JOIN Products ON Categories.CategoryName = Products.Category
GROUP BY CategoryName

17.SELECT FirstName + ' ' + LastName AS CustomerName, City, Orders.OrderID, Orders.TotalAmount AS Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE City = 'Los Angeles' and TotalAmount >300

18.SELECT Employees.Name AS EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName IN('Human Resources', 'Finance') 

19.SELECT Employees.Name AS EmployeeName, Departments.DepartmentName, Employees.Salary
   FROM Employees
   INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
   WHERE Departments.DepartmentName IN('Sales', 'Marketing') AND Employees.Salary > 60000
