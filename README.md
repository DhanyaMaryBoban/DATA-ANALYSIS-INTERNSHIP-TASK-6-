# DATA ANALYSIS INTERNSHIP TASK-6 Sales Trend Analysis Using Aggregations

## 🎯 Objective  
Analyze **monthly revenue** and **order volume** using SQL aggregations.

## 🗂️ Dataset  
**Table:**  `orders`
**Columns:**  
- `order_id` (INT, Primary Key)  
- `order_date` (DATE)  
- `amount` (INT)  
- `product_id` (VARCHAR(10))  

## 🛠️ Tool  
- MySQL   

## 📑 Deliverables  
- SQL script with queries  
- Results table (monthly revenue + order volume)

## 📝 Practice Questions  

- **Extract Month**  
  Write a query to display the month number from the `order_date` column in the `online_sales` table.

- **Group by Year/Month**  
  Construct a query that groups sales data by both year and month using `EXTRACT()`.

- **Sum for Revenue**  
  Create a query that calculates the total monthly revenue by summing the `amount` column.

- **Count Distinct Orders**  
  Write a query that counts the distinct `order_id` values per month to measure order volume.

- **Order By Sorting**  
  How would you sort the monthly results chronologically by year and month?

- **Limit Results**  
  Write a query that restricts the output to only the first 2 months of 2025.






