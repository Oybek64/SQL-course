1. SELECT OrderID, FirstName, OrderDate
FROM Orders 
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
where OrderDate > '2022-12-31'

2. select Name EmployeeName, DepartmentName
from Employees
inner join departments on employees.departmentID = departments.departmentID 
where departmentname in('sales', 'Marketing')

3. select Departments.DepartmentName, Max(Salary) as MaxSalary
from Departments
inner join Employees on Departments.DepartmentID = Employees.DepartmentID
group by Departments.DepartmentName;

4.select FirstName + ' ' + LastName as CustomerName, OrderID, Orderdate
  from Customers
  inner join Orders on Customers.CustomerID = Orders.CustomerID
  where Country = 'USA' and year(Orders.OrderDate) = 2023;

5. select FirstName + ' ' + LastName AS CustomerName, Count(OrderID) as TotalOrders
   from Customers 
   Left Join Orders On Customers.CustomerID = Orders.CustomerID
   GROUP BY FirstName, LastName;

6.SELECT Products.ProductName, Suppliers.SupplierName
  FROM Products
  INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
  WHERE Suppliers.SupplierName in('GadgetSupplies', 'Clothing Mart');

7.SELECT FirstName + ' ' + LastName As CustomerName, MAX(OrderDate) AS MostRecentOrderDate
  FROM Customers
  Left JOIN Orders ON Customers.CustomerID = Orders.CustomerID
  GROUP BY FirstName, LastName;

8. SELECT FirstName + ' ' + LastName As CustomerName, SUM(TotalAmount) AS OrderTotal
   FROM Customers 
   INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
   GROUP BY FirstName, LastName
   HAVING SUM(TotalAmount) > 500;

9.SELECT ProductName, SaleDate, saleamount
  FROM Products
  INNER JOIN Sales ON Products.ProductID = Sales.ProductID
  WHERE YEAR(SaleDate) =  2022 OR SaleAmount > 400;

10.SELECT ProductName, SaleAmount AS TotalSaleAmount
   From Products
   INNER JOIN Sales ON Sales.ProductID = Products.ProductID;

11.SELECT Employees.Name AS EmployeeName, Departments.DepartmentName, Employees.Salary
   FROM Employees
   INNER JOIN Departments ON Employees.departmentID = Departments.DepartmentID
   WHERE Departments.DepartmentName = 'HR' and Employees.Salary > 60000;

12.SELECT ProductName, Saledate, StockQuantity
   FROM Products
   INNER JOIN Sales ON Products.ProductID = Sales.ProductID
   WHERE YEAR(SaleDate) = 2023 AND StockQuantity > 100;

13.




