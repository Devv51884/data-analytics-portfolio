USE Online_Retail_DB;

-- Total Rows in dataset
SELECT COUNT(*) AS total_rows
from Online_Retail;

-- Rows With missing Customer_ID
SELECT COUNT(*) AS missing_customer_rows
FROM Online_Retail
WHERE Customer_ID IS NULL;

-- Cancelled Invoices
SELECT COUNT(*) AS cancelled_orders
FROM Online_Retail
WHERE Invoice LIKE 'C%';

-- Invalid Quantities OR Prices
SELECT COUNT(*) AS invalid_rows
FROM Online_Retail
WHERE Quantity <= 0 OR Price <= 0;

-- Create a cleaned version of the dataset
CREATE OR REPLACE VIEW Cleaned_Online_Retail AS
SELECT *
FROM Online_Retail
WHERE Customer_ID IS NOT NULL
AND Invoice NOT LIKE 'C%'
AND Quantity > 0
AND Price > 0;

-- Total Rows in Cleaned Dataset
SELECT COUNT(*) AS cleaned_rows
FROM Cleaned_Online_Retail;