--  Online Sales Trend Analysis Using Aggregations
CREATE DATABASE sales_trend;
USE sales_trend;

CREATE TABLE orders(
order_id INT PRIMARY KEY,
order_date DATE,
amount INT,
product_id INT);

ALTER TABLE orders MODIFY product_id VARCHAR(10);

INSERT INTO orders VALUES
(1001, '2025-01-05', 250,'P001'),
(1002, '2025-01-15', 120, 'P002'),
(1003, '2025-01-20', 300, 'P003'),
(1004, '2025-02-02', 200, 'P001'),
(1005, '2025-02-10', 150,'P004'),
(1006, '2025-02-18', 180,'P002'),
(1007, '2025-03-05', 400, 'P003'),
(1008, '2025-03-12', 220, 'P005'),
(1009, '2025-03-25',350, 'P001'),
(1010, '2025-04-03', 500,'P004');

-- 📝 Practice Questions
-- Extract Month  
-- Write a query to display the month number from the order_date column in the orders table.
SELECT
EXTRACT(MONTH FROM order_date) AS order_month
FROM
orders;

-- Group by Year/Month  
-- Construct a query that groups sales data by both year and month using EXTRACT().
SELECT
EXTRACT(YEAR FROM order_date) AS order_yr,
EXTRACT(MONTH FROM order_date) AS order_month,
SUM(amount) AS revenue
FROM
orders
GROUP BY 
EXTRACT(YEAR FROM order_date),
EXTRACT(MONTH FROM order_date)
ORDER BY order_yr, order_month;

-- Sum for Revenue  
-- Create a query that calculates the total monthly revenue by summing the amount column
SELECT
EXTRACT(MONTH FROM order_date) AS month,
SUM(amount) AS revenue
FROM
orders
GROUP BY 
EXTRACT(MONTH FROM order_date)
ORDER BY
month;

-- Count Distinct Orders  
-- Write a query that counts the distinct order_id values per month to measure order volume.
SELECT
EXTRACT(MONTH FROM order_date) AS month,
COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY month
ORDER BY month;

-- Order By Sorting  
-- How would you sort the monthly results chronologically by year and month?
SELECT 
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(amount) AS total_monthly_revenue
FROM 
    orders
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY sales_year, sales_month;

-- Limit Results  
-- Write a query that restricts the output to only the first 2 months of 2025.
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_monthly_revenue
FROM orders
WHERE 
    EXTRACT(MONTH FROM order_date) IN (1, 2)
GROUP BY year, month
ORDER BY year, month;
















