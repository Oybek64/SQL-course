1. SELECT OrderID, FirstName, OrderDate
FROM Orders 
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
where OrderDate > '2022-12-31'

2. select Name EmployeeName, DepartmentName
from Employees
inner join departments on employees.departmentID = departments.departmentID 
where departmentname in('sales', 'Marketing')
