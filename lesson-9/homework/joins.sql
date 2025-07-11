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

5. 

6. SELECT Products.ProductName, Orders.OrderID
   FROM Products
   INNER JOIN Orders on Products.ProductID = Orders.ProductID;

7. SELECT Employees.Name, Departments.DepartmentName
   FROM Employees
   INNER JOIN Departments
   ON Employees.DepartmentID = Departments.DepartmentID;

8.

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

14. 













