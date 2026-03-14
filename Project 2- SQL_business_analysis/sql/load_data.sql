USE Online_Retail_DB;

LOAD DATA INFILE 'C:/xampp/tmp/Online_Retail.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country);