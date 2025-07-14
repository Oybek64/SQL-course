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

7. 




