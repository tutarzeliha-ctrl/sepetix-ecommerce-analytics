# Sepetix E-Commerce Customer Analytics

> SQL-based customer segmentation and spend analysis using Google BigQuery

## Business Question

Who are our highest-value customers, and which city-category 
combinations drive the most revenue?

## Dataset

- Source: Sepetix e-commerce platform (BigQuery)
- Tables: `sepetix.orders`, `sepetix.customers`
- Joined on: `customer_id`

## Analysis Covered

- Customer segmentation by spend tier
- City and category revenue breakdown
- High-spend segment identification (Istanbul focus)
- Monthly order trend analysis
- Average spend filtering with HAVING

## Key Findings

- Istanbul's home appliances segment averages 2× the category benchmark
- Electronics combines high AOV with high order volume — strongest growth opportunity
- Top 20% of customers generate disproportionate share of revenue

## 🚀 Case Study: Investigating Drop-offs with Root Cause Analysis

**Scenario:** During the analysis, I simulated a scenario where a 20% drop in weekly active users was observed.

**The Approach (Simplicity Scales):**
Instead of jump-starting a complex Machine Learning model, I used a **SQL-first approach** to segment the data. I focused on identifying "where" and "why" the drop happened.

**The Analysis:**
- Used `WINDOW FUNCTIONS` and `PARTITION BY` to track user behavior across cohorts.
- Segmented retention by **signup source** and **device type** (Android vs. iOS).
- Found that a specific segment (e.g., Android users from Instagram) had 37% lower retention due to a technical friction point in the onboarding funnel.

**Business Impact:**
By identifying the root cause with SQL, I could provide immediate actionable insights to the technical team to fix the funnel, restoring engagement without the need for expensive ML infrastructure.

## Tools & Technologies

- **Google BigQuery** — SQL queries and segmentation
- **SQL** — GROUP BY, JOIN, HAVING, Window Functions (ROW_NUMBER), CTEs

## Author

**Zeliha Tutar** — Data Analyst | Decision Intelligence  
[LinkedIn](https://www.linkedin.com/in/zeliha-tutar-35a3013aa) | 
[GitHub](https://github.com/tutarzeliha-ctrl)

> This project applies SQL-based analysis to real e-commerce data, 
translating business questions into measurable insights.
