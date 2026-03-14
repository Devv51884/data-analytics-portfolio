Business Insights – Online Retail SQL Analysis

This document summarizes the key insights derived from the Online Retail dataset using SQL analysis.

The dataset contains more than 1 million retail transactions from an international e-commerce business.

---

Total Revenue

Total revenue generated from all valid transactions:

41,945,189.10

This indicates a large volume of transactions and strong business activity across multiple countries.

---

Total Customers

The dataset contains:

5,879 unique customers

This reflects a wide customer base participating in the online retail platform.

---

Total Orders

Total completed orders recorded in the dataset:

40,077 orders

This metric helps measure the overall transaction volume of the business.

---

Average Order Value

Average order value per transaction:

523.31

This means customers spend approximately 523 per order on average, suggesting that many orders contain multiple items rather than single-product purchases.

---

Monthly Revenue Trend

Monthly revenue analysis reveals fluctuations across different months.

Examples:

Month| Revenue
2009-12| 825,685
2010-03| 833,570
2010-06| 752,270
2010-09| 924,333
2010-10| 1,165,483

Insight

Revenue increases significantly toward the end of the year, indicating possible seasonal shopping patterns or holiday demand.

---

Monthly Order Trends

Monthly order counts also show similar patterns.

Examples:

Month| Orders
2009-12| 1682
2010-03| 1681
2010-09| 1839
2010-10| 2301

Insight

The number of orders increases during certain months, suggesting higher shopping activity during peak periods.

---

Revenue by Country

Top revenue generating countries:

Country| Revenue
United Kingdom| 35,741,955
EIRE| 1,328,863
Netherlands| 1,108,464
Germany| 862,524
France| 713,889

Insight

The United Kingdom dominates total revenue, indicating that the business is primarily concentrated in the UK market.

---

Top Products by Quantity Sold

Most frequently purchased products include:

1. WORLD WAR 2 GLIDERS ASSTD DESIGNS
2. WHITE HANGING HEART T-LIGHT HOLDER
3. ASSORTED COLOUR BIRD ORNAMENT
4. PAPER CRAFT, LITTLE BIRDIE
5. JUMBO BAG RED RETROSPOT

Insight

These products have extremely high demand and are likely popular repeat purchase items.

They could be prioritized for:

- inventory planning
- marketing campaigns
- bundle offers

---

Top Products by Revenue

Products generating the highest revenue:

1. REGENCY CAKESTAND 3 TIER
2. Manual
3. DOTCOM POSTAGE
4. WHITE HANGING HEART T-LIGHT HOLDER
5. PAPER CRAFT, LITTLE BIRDIE

Insight

Some products generate higher revenue because of higher price points, even if they are not the most frequently sold.

---

Top Customers by Revenue

A small group of customers contributes a significant portion of total revenue.

Example high-value customers include:

Customer ID| Revenue
14646| 6,458,330
18102| 1,217,643
14156| 627,892
14911| 591,945

Insight

High-value customers are extremely important for business revenue.

Businesses can target these customers with:

- loyalty programs
- exclusive offers
- premium services

---

Customer Distribution by Country

Using SQL window functions, the top 5 customers per country were identified.

This analysis helps businesses understand regional high-value customers and target them with localized marketing strategies.

---

Order Value Segmentation

Orders were categorized into three segments:

Segment| Condition
Low Value| < 50
Medium Value| 50 – 200
High Value| > 200

Insight

Most orders fall into the Medium Value segment, indicating customers typically place moderately sized orders rather than extremely small purchases.

---

Key Business Takeaways

From this SQL analysis, several important insights emerge:

• The United Kingdom contributes the majority of revenue
• A small number of high-value customers generate a large share of revenue
• Some products dominate quantity sales, while others dominate revenue generation
• Sales activity shows clear seasonal trends
• Most purchases fall within the medium order value range

---

Conclusion

This project demonstrates how SQL can be used to transform raw transactional data into actionable business insights.

Through structured queries and analysis, businesses can better understand:

- customer purchasing behavior
- product performance
- geographic revenue distribution
- seasonal sales trends

These insights support data-driven decision making for marketing, inventory management, and customer retention strategies.