# 📊 SQL Business Analysis - Online Retail Dataset

## Project Overview

This project analyzes a large retail transaction dataset using SQL.  
The goal is to extract business insights such as revenue trends, top customers, top products, and order patterns.

Dataset used: **Online Retail II (UCI / Kaggle)**

Rows: **1,067,371 transactions**

Tools Used:

- MySQL
- phpMyAdmin
- SQL
- VS Code
- GitHub

---

# Project Objectives

This project answers key business questions:

- What is the total revenue generated?
- How many unique customers exist?
- Which countries generate the most revenue?
- Who are the top customers by revenue?
- Which products sell the most?
- What are the monthly revenue trends?
- What is the average order value?

---

# Database Workflow

The analysis follows a standard data analyst workflow:

1️⃣ Create database  
2️⃣ Create table structure  
3️⃣ Load large CSV dataset  
4️⃣ Clean invalid data  
5️⃣ Create cleaned view  
6️⃣ Perform business analysis queries

---

# Dataset

Dataset Source:

Online Retail II Dataset

Main Columns:

- Invoice
- StockCode
- Description
- Quantity
- InvoiceDate
- Price
- Customer_ID
- Country

---

# SQL Files

| File | Description |
|-----|-------------|
| create_database.sql | Creates database |
| create_table.sql | Creates table structure |
| load_data.sql | Loads CSV dataset |
| cleaning_queries.sql | Data cleaning queries |
| analysis_queries.sql | Business analysis queries |

---

# Analysis Performed

The project includes analysis such as:

- Total Revenue
- Total Customers
- Total Orders
- Top 10 Customers by Revenue
- Top 10 Products by Revenue
- Top Products by Quantity Sold
- Revenue by Country
- Monthly Revenue Trends
- Monthly Order Counts
- Average Order Value
- Order Value Segmentation

---

# Example SQL Query

```sql
SELECT
Country,
ROUND(SUM(Quantity * Price),2) AS revenue
FROM Cleaned_Online_Retail
GROUP BY Country
ORDER BY revenue DESC;