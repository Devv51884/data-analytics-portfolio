USE Online_Retail_DB;

-- Top 5 Customers in each Country 
WITH customer_revenue AS (
    SELECT Customer_ID, Country, ROUND(SUM(Quantity * Price),2) AS revenue
    FROM Cleaned_Online_Retail
    GROUP BY Customer_ID, Country
)
Select * FROM (
    SELECT Customer_ID, Country, revenue,
           ROW_NUMBER() OVER (PARTITION BY Country ORDER BY revenue DESC) AS rn
    FROM customer_revenue
) ranked
WHERE rn <= 5;

--order value segmentation
SELECT Invoice, 
       CASE 
           WHEN (Quantity * Price) < 50 THEN 'Low Value'
           WHEN (Quantity * Price) BETWEEN 50 AND 200 THEN 'Medium Value'
           ELSE 'High Value'
       END AS order_value_segment
FROM Cleaned_Online_Retail
GROUP BY Invoice
ORDER BY order_value DESC;

--monthly order count
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS month, COUNT(DISTINCT Invoice) AS total_orders
FROM Cleaned_Online_Retail
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY month;