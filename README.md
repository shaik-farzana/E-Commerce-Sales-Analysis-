# E-Commerce-Sales-Analysis-

Exploratory Data Analysis on 1500+ transaction records across 19 Indian states using Python , SQL ,power BI

## 📌 Project Overview

This project performs end-to-end Exploratory Data Analysis (EDA) on a real-world Indian e-commerce dataset covering sales, profit, customer behaviour, payment preferences, and geographic trends across a full calendar year (2018).
The dataset contains two relational tables — Orders and Order Details — joined on `order_id` to form a complete transactional view of the business.


## 📁 Dataset

| File   | Rows | Description |
|--------|------|-------------|
| order.csv | 500 | Order-level info — date, customer, location |
| order_details.csv| 1500 | Item-level info — amount, profit, category |


## 🎯 Objectives

* ✅ Clean and prepare raw ecomeerce data using Python (Pandas)
* ✅ Perform Exploratory Data Analysis to find insights
* ✅ Query business insights using MySQL on customer segments and loyalty
* ✅ Build an interactive Power BI dashboard for stakeholder reporting
* ✅ Deliver a project report with findings and business recommendations


## 📊 Key Metrics

| Metric          | Value      |
|:----------------|:----------:|
| Total Revenue   | ₹4,37,771  |
| Total Profit    | ₹36,963    |
| Total Orders    | 500        |
| Avg Order Value | ₹875.54    |
| Profit Margin   | 8.44%      |

## 🏷️ Category Performance

| Category    | Revenue    | Profit  | Margin % |
|:------------|:----------:|:-------:|:--------:|
| Electronics | ₹1,66,267  | ₹13,162 | 7.92%    |
| Clothing    | ₹1,44,323  | ₹13,325 | 9.23%    |
| Furniture   | ₹1,27,181  | ₹10,476 | 8.24%    |

## 💡 Business Insights

Electronics generates the highest revenue (38% of total) but Clothing has the best profit margin (9.23%). This suggests Electronics may have higher discounting or cost structure.

Printers alone contribute ₹8,606 — 23.3% of total profit despite being a single sub-category. Bookcases contribute another 17.6%.

Maharashtra and Madhya Pradesh together contribute 43.4% of total revenue. Top cities are Indore (₹63,680), Mumbai (₹58,886), and Pune (₹43,612)

COD dominates in order count (45.6%) but Credit Card orders have a much higher average value (₹533/order vs COD ₹227/order). EMI also shows high average order value suggesting expensive item purchases.

Revenue drops sharply from June (₹23,658) to July (₹12,966) — a 45% decline. Strong performance in Q1 (Jan–Mar) with ₹1,61,288 combined.

Top 5 customers contribute ₹39,492 — 9% of total revenue.


## 🎯 Overall Business Recommendations
Fix loss-making sub-categories — Furnishings and Electronic Games are bleeding profit. Review cost or discontinue.

Push digital payments — Incentivise UPI and Credit Card to reduce COD dependency and improve cash flow.

Focus on Printers & Bookcases — These two sub-categories drive 40%+ of total profit. Increase stock and visibility.

Target Maharashtra & MP deeper — Already strong markets. Offer regional promotions to retain and grow.

Combat July–August slump — Introduce mid-year sales events to lift the seasonal low.
Reward top customers — Harivansh, Madhav, Madan Mohan are VIP customers. Loyalty rewards can increase retention.

Expand Clothing category — Highest margin (9.23%). More SKUs and marketing can drive profit significantly.
