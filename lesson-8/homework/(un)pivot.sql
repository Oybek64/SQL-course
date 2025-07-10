1. SELECT Category, SUM(ProductID) AS Total_Amount
   FROM Products
   GROUP BY Category;

2. SELECT Category, AVG(Price) As AVG_Price
   FROM Products
   WHERE Category = 'Electronics';

3. SElECT * FROM Customers
   WHERE City like 'L%';

4. SELECT * FROM Products
   WHERE ProductName LIKE '%er';

5. SELECT * FROM Customers
   WHERE Country LIKE '%A';

6. SELECT ProductName, MAX(Price) FROM Products;

7. SELECT ProductID, ProductName, StockQuantity,
          IIF(StockQuantity < 30, 'Low Stock', 'Sufficient') AS StockStatus
   FROM Products;

8. SELECT COUNTRY, SUM(CustomerID) AS Total_Customers
   FROM Customers
   GROUP BY Country;

9. SELECT MAX(Quantity) AS Max_Qty, 
          MIN(Quantity) AS Min_Qty
   FROM Orders;

10. SELECT DISTINCT CustomerID
    FROM Orders
    WHERE 
      OrderDate BETWEEN '2023-01-01' AND '2023-01-31'
      AND CustomerID NOT IN (
        SELECT DISTINCT CustomerID
        FROM Invoices
    );

11. SELECT ProductName FROM Products
    UNION ALL
    SELECT ProductName FROM Products_Discounted;

12. SELECT ProductName FROM Products
    UNION
    SELECT ProductName FROM Products_Discounted;

13. SELECT 
    YEAR(OrderDate) AS OrderYear,
    AVG(TotalAmount) AS AverageOrderAmount
    FROM Orders
    GROUP BY YEAR(OrderDate)
    ORDER BY OrderYear;

14. SELECT ProductName,
    CASE
      WHEN Price < 100 THEN 'LOW'
      WHEN Price BETWEEN 100 AND 500 THEN 'MID'
      WHEN Price > 500 then 'HIGH'
    END AS Price_Group
   FROM Products;

15. SELECT district_name, [2012], [2013]
    INTO population_each_year
    FROM (SELECT district_name, population, year FROM city_population) AS source_table
    PIVOT (sum(population) FOR year IN ([2012], [2013])) AS Pivot;


16. SELECT ProductID, SUM(SaleAmount) AS Total_Sales
    FROM Sales
    GROUP BY ProductID;

17. SELECT ProductName FROM Products
    WHERE ProductName LIKE '%oo%';

18. SELECT YEAR, [CHILONZOR], [YAKKASAROY], [BEKTEMIR]
    INTO POPULATION_EACH_CITY
    FROM (SELECT DISTRICT_NAME, POPULATION, YEAR FROM CITY_POPULATION) AS SOURCE_TABLE
    PIVOT 
        (SUM(POPULATION) FOR  DISTRICT_NAME IN([CHILONZOR], [YAKKASAROY], [BEKTEMIR])
    AS PIVOT

19. SELECT TOP 3 CustomerID, 
       SUM(TotalAmount) AS TotalSpent
    FROM Invoices
    GROUP BY Customerid
    ORDER BY TotalSpent DESC;

20. SELECT 
    district_id,
    district_name,
    population,
    year
    FROM Population_Each_Year
    UNPIVOT (
    population FOR year IN ([2012], [2013])
    ) AS UnpivotedData;

21. SELECT 
    p.ProductName,
    COUNT(s.SaleID) AS TimesSold
    FROM Products p
    JOIN Sales s ON p.ProductID = s.ProductID
    GROUP BY p.ProductID, p.ProductName
    ORDER BY TimesSold DESC;

22. SELECT 
    year,
    district_name,
    population
    FROM Population_Each_City
    UNPIVOT (
    population FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
    ) AS UnpivotedResult;
 
