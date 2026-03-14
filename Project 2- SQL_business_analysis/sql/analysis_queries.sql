USE Online_Retail_DB;

--Total Customers
SELECT COUNT(DISTINCT Customer_ID) AS total_customers
FROM Cleaned_Online_Retail;

--Total Orders
SELECT COUNT(DISTINCT Invoice) AS total_orders
FROM Cleaned_Online_Retail;

--Total Revenue
SELECT ROUND(SUM(Quantity * Price),2) AS total_revenue
FROM Cleaned_Online_Retail;

--Revenues by Country
SELECT Country, ROUND(SUM(Quantity * Price),2) AS revenue
FROM Cleaned_Online_Retail
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;

--Top 10 Customers by Revenue
SELECT Customer_ID, ROUND(SUM(Quantity * Price),2) AS customer_revenue
FROM Cleaned_Online_Retail
GROUP BY Customer_ID
ORDER BY customer_revenue DESC
LIMIT 10;

--Top 10 Products by Revenue
SELECT StockCode, Description, ROUND(SUM(Quantity * Price),2) AS product_revenue
FROM Cleaned_Online_Retail
GROUP BY StockCode, Description
ORDER BY product_revenue DESC
LIMIT 10;

--Top 10 Products by Quantity Sold
SELECT StockCode, Description, SUM(Quantity) AS total_quantity_sold
FROM Cleaned_Online_Retail
GROUP BY StockCode, Description
ORDER BY total_quantity_sold DESC
LIMIT 10;

--Monthly Revenue Trend
SELECT DATE_FORMAT(ParsedInvoiceDate, '%Y-%m') AS month, ROUND(SUM(Quantity * Price),2) AS monthly_revenue
FROM Cleaned_Online_Retail
GROUP BY month
ORDER BY month;

--Average Order Value
SELECT ROUND(AVG(order_total),2) AS average_order_value
FROM (
    SELECT Invoice, SUM(Quantity * Price) AS order_total
    FROM Cleaned_Online_Retail
    GROUP BY Invoice) t;