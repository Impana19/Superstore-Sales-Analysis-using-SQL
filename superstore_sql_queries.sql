-- Superstore Sales Analysis Project

-- View dataset
SELECT * 
FROM superstore_clean
LIMIT 10;

-- Total Sales and Profit
SELECT 
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM superstore_clean;

-- Sales by Region
SELECT 
Region,
SUM(Sales) AS Total_Sales
FROM superstore_clean
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Profit by Category
SELECT 
Category,
SUM(Profit) AS Total_Profit
FROM superstore_clean
GROUP BY Category;

-- Top 5 Products by Sales
SELECT 
Product_Name,
SUM(Sales) AS Total_Sales
FROM superstore_clean
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- Average Discount by Category
SELECT 
Category,
AVG(Discount) AS Avg_Discount
FROM superstore_clean
GROUP BY Category;
