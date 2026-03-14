USE Online_Retail_DB;

DROP TABLE IF EXISTS Online_Retail;

CREATE TABLE Online_Retail (
    Invoice VARCHAR(50),
    StockCode VARCHAR(50),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate VARCHAR(50),
    Price DECIMAL(10, 2),
    Customer_ID VARCHAR(50),
    Country VARCHAR(100)
);