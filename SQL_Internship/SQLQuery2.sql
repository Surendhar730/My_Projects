use SQL;
select * from Cricket_Sales;
select * from orders;
select AVG(price) as AVG_Amount from Cricket_Sales;

select SUM(Price) as Total_Price from Cricket_Sales;

select ProductName, saleID, price, ROW_NUMBER() OVER (PARTITION BY productname order by saledate ASC) AS ordernumber from Cricket_Sales;

SELECT  ProductName, SUM(Quantity) AS TotalSold, RANK() OVER (ORDER BY SUM(Quantity) ASC) AS SalesRank
FROM Cricket_Sales GROUP BY ProductName;

SELECT  ProductName, SUM(Quantity) AS TotalSold, RANK() OVER (ORDER BY SUM(Quantity) DESC) AS SalesRank
FROM Cricket_Sales GROUP BY ProductName;

SELECT productname, Saledate, price, SUM(Price) OVER (partition by saledate order by productname DESC) as RunningTotal
from Cricket_sales;

SELECT SaleID, price, LAG(price, 1) OVER (ORDER BY SaleDate) AS PreviousOrderAmount,
    price - LAG(price, 1) OVER (ORDER BY saleDate) AS Difference
FROM Cricket_Sales;

SELECT SaleID,ProductName,price,DENSE_RANK() OVER (ORDER BY price DESC) AS RankByAmount
FROM Cricket_Sales;

Select * from Cricket_Sales 
WHERE price>( select AVG(price) from Cricket_Sales);

Select * FROM Cricket_Sales
WHERE quantity > (select sum(Quantity) from Cricket_Sales);

SELECT ProductName,Price, ROUND((Price /TotalSales) * 100, 2) AS PricePercentOfTotal
FROM Cricket_Sales,
    (SELECT SUM(Price) AS TotalSales FROM Cricket_Sales) AS totals;

Select productname, quantity, (select avg(quantity) from Cricket_Sales) as AVGQuantity,
	quantity-(select avg(quantity) from Cricket_Sales) as diffrencefromavg
	from Cricket_Sales;

select * from Cricket_Sales WHERE ProductName IN (SELECT ProductName from Cricket_Sales WHERE price > 10000);

