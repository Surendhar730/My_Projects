USE SQL;
CREATE TABLE orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100),
    Quantity INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5000, 'Surendhar', 'Bat', 10, '2025-04-05', 40000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5001, 'Narendhar', 'Ball', 20, '2025-04-06', 10000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5002, 'Dharmendhar', 'Gloves', 20, '2025-04-07', 10000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5003, 'Arjun', 'Ball', 20, '2025-04-06', 10000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5004, 'Sarjanar', 'Stumps', 12, '2025-04-06', 8000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5005, 'Adhi', 'Bleaching Powder', 10, '2025-04-26', 10000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5006, 'Vinay', 'Bat', 20, '2025-04-04', 50000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5007, 'Vijay', 'Ball', 20, '2025-04-06', 10000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5008, 'Jagun', 'Pads', 20, '2025-04-06', 20000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5009, 'Rajamouli', 'Shoes', 20, '2025-04-06', 40000);

INSERT INTO orders (OrderID, CustomerName, ProductName, Quantity, OrderDate, TotalAmount)
VALUES (5010, 'Sukumar', 'Bat', 20, '2025-04-06', 50000);

select * from Cricket_Sales;
SaleID	ProductName	Quantity	Price	SaleDate
10000	Sportsdress	50	100000.00	2025-04-12
20000	Ball	    200	100000.00	2025-04-12
30000	pads	    50	50000.00	2025-04-12
40000	Stumps	    24	200000.00	2025-04-12
50000	Bleaching powder	20	200000.00	2025-04-12
60000	gloves	    20	10000.00	2025-04-12
70000	Shoes	    80	100000.00	2025-04-12
80000	Guards	    50	20000.00	2025-04-12
90000	caps	    100	10000.00	2025-04-12


CREATE TABLE Cricket_Sales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (10001, 'Bat', 100, 100000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (20000, 'Ball', 200, 100000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (30000, 'pads', 50, 50000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (40000, 'Stumps', 24, 200000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (50000, 'Bleaching powder', 20, 200000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (60000, 'gloves', 20, 10000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (70000, 'Shoes', 80, 100000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (80000, 'Guards', 50, 20000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (90000, 'caps', 100, 10000, '2025-04-12');
INSERT INTO Cricket_Sales (SaleID, ProductName, Quantity, Price, SaleDate)
VALUES (10000, 'Sportsdress', 50, 100000, '2025-04-12');

select * from orders;

OrderID	CustomerName	ProductName	Quantity	OrderDate	TotalAmount
5000	Surendhar	     Bat	     10	     2025-04-05	     40000.00
5001	Narendhar	     Ball	     20	     2025-04-06	     10000.00
5002	Dharmendhar	    Gloves	     20	     2025-04-07	     10000.00
5003	Arjun	        Ball	     20	     2025-04-06	     10000.00
5004	Sarjanar	   Stumps	     12	     2025-04-06	     8000.00
5005	Adhi	   Bleaching Powder	10	     2025-04-26	     10000.00
5006	Vinay	       Bat	        20	     2025-04-04	     50000.00
5007	Vijay	       Ball	        20	     2025-04-06	     10000.00
5008	Jagun	       Pads	        20	     2025-04-06	     20000.00
5009	Rajamouli	   Shoes	    20	     2025-04-06	     40000.00
5010	Sukumar	       Bat	        20	     2025-04-06	     50000.00

Delete from Cricket_Sales 
WHERE SaleID IN(10003, 10004);

select cricket_sales.SaleID, orders.orderid from 
cricket_Sales
INNER JOIN orders ON cricket_sales.productName = orders.productName;

select cricket_sales.SaleID, orders.orderid from 
cricket_Sales
LEFT JOIN orders ON cricket_sales.productName = orders.productName;

select cricket_sales.SaleID, orders.orderid from 
cricket_Sales
RIGHT JOIN orders ON cricket_sales.productName = orders.productName;
select cricket_sales.SaleID, orders.orderid from 
cricket_Sales
FULL JOIN orders ON cricket_sales.productName = orders.productName;

select cricket_sales.SaleID, orders.orderid from 
cricket_Sales
FULL JOIN orders ON cricket_sales.productName = orders.productName;
