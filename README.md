# -Ad-Hoc-Sales-Analytics
---

## Table of Contents
1. [Project Overview](#Project-Overview)  
2. [Problem Statement](#Problem-Statement)  
3. [Objectives](#Objectives)  
4. [Database and Tables Used](#Database-and-Tables-Used)  
5. [SQL Techniques Applied](#SQL-Techniques-Applied)  
6. [Business Questions and Insights](#Business-Questions-and-Insights)  
7. [Challenges and Learnings](#Challenges-and-Learnings)  
8. [Conclusion and Future Scope](#Conclusion-and-Future-Scope)  
9. [Tools Used](#Tools-Used)
 
---

## Project Overview 
AtliQ Hardware is a rapidly expanding hardware company striving to scale operations across diverse markets. However, the manual handling of large volumes of data created inefficiencies and limited the ability to make timely, data-driven decisions. This SQL-based project addresses real-world business challenges by leveraging structured queries to analyze internal datasets and extract actionable insights, empowering leadership with data-backed strategies for growth.

---

## Problem Statement
Initially, AtliQ relied on spreadsheets and manual record-keeping to manage its data. However, as the volume of data grew, this approach became increasingly inefficient. Challenges such as data redundancy, inconsistency, and slow retrieval times underscored the urgent need for a structured and scalable database solution.

---

## Objectives 
- Develop and implement advanced SQL functions and procedures to analyze sales, customer, and product data.  
- Address executive-level business questions through structured queries, enabling strategic decision-making.  
- Deepen understanding of customer, product, and market behavior using fiscal calendar logic, badge tagging, and top-N analysis.
- Practice advanced SQL techniques including JOINs, CTEs, aggregations, filtering, and window functions across stored procedures and views.
- Build a scalable foundation for business reporting by creating reusable SQL objects like views and region-based procedures.
 
---

## Database and Tables Used 
**Database**: `gdb0041` (Fictional business database)

**Tables:**  
- `dim_customer`: Customer details 
- `dim_date`: Fiscal year
- `dim_product`: Product metadata
- `fact_act_est`: Forecasted vs. actual sales data
- `fact_forecast_monthly`: Forecasted sales data
- `fact_freight_cost`:freight percent and other_cost_percent per market per fiscal_year
- `fact_gross_price`: Price-related facts
- `fact_manufacturing_cost`: Cost incurred per product
- `fact_post_invoice_deductions`: Post-invoice discounts and deductions
- `fact_pre_invoice_deductions`: Pre-invoice discounts and deductions


---

## SQL Techniques Applied
- Wrote **complex JOIN queries** in net_sales, gross_sales views, linking tables like fact_sales_monthly, dim_customer, dim_product.
- Used **GROUP BY, ORDER BY** in procedures like get_top_n_customer_by_net_sales for aggregating, ranking sales data.
- Applied **subqueries, CTEs** in get_forecast_Accuracy, customer wise net sales distibution per region for layered analysis.
- Leveraged **window functions** in customer wise net sales distibution per region for regional sales share calculations.
- Created **temporary tables via CTEs** in get_forecast_Accuracy to streamline forecast error computations.
- Used **CASE WHEN** in get_fiscal_quarter, get_market_badge for fiscal quarter, badge assignments.
- Built **stored procedures** like get_top_n_market_by_net_sales, get_top_n_product_net_sales for top-N sales insights.
- Designed **functions** get_fiscal_quarter, get_fiscal_year for reusable fiscal period calculations.
- Developed **views** net_sales, gross_sales for simplified access to aggregated sales metrics.

---

## Business Questions and Insights 

| # | Business Question | Insight Summary | Link |
|--|------------|------------|-------|
| 1 | What is the fiscal year for a specific date, considering a 4-month offset, to ensure consistent financial reporting?| [Task 1a](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Fiscal_Year%20Task%201a.sql) |
| 2 | How can we determine the fiscal quarter for a given calendar date to align sales reporting with our fiscal calendar?| [Task 1b]([https://github.com/VASU12122001/SQL-Project-Consumer-Goods-Ad-hoc-Insights/blob/main/Solutions%20(SQL%20Queries)/Task%202.sql](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Quarters%20Task%201b.sql)) |
| 3 | What is the total gross sales amount for each customer and product, combining sold quantity and gross price per item? | [Task 2](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Gross_sales%20Task%202.sql) | 
| 4 | Which markets achieved a "GOLD" badge based on total sold quantity exceeding 5 million units in fiscal year 2021? | [Task 3](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Get_Market_Badge%20Task%203.sql) |
| 5 | How can we calculate net sales after applying post-invoice discounts for all transactions, including customer and product details? | [Task 4](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Net%20Sales%20Task%204.sql) |
| 6 | Who are the top N customers by net sales in a specific market for a given fiscal year, expressed in millions? | [Task 5](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Top%20N%20customer%20Task%205.sql) |
| 7 | What are the top N markets by net sales for a specified fiscal year, rounded to two decimal places in millions? | [Task 6](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Top%20N%20Market%20Task%206.sql)|
| 8 | Which are the top N products by net sales in a given fiscal year, with sales values aggregated in millions? | [Task 7](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Top%20N%20Product%20Task%207.sql) |
| 9 | How is net sales distributed across customers within each region for a given fiscal year, including percentage share? | [Task 8](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Net%20sales%20Distribution%20Task%208.sql) |
| 10 | Which customers have the highest forecast accuracy for a given fiscal year, including net and absolute error percentages? | [Task 9](https://github.com/VASU12122001/-Ad-Hoc-Sales-Analytics/blob/main/Forecast%20Accuracy%20Task%209.sql) |

---

## Challenges and Learnings

### Challenges
- Handling large datasets with multiple joins  
- Interpreting vague business questions and translating them into SQL logic
- Merging actual and forecast data into a unified table for analysis
  
### Learnings
- Improved proficiency with **advanced SQL joins** and data modeling logic.  
- Learned to break down complex business problems into modular SQL queries.
- Gained strong command of `CTEs` and `Window Functions`  
- Gained confidence in building **reusable functions** like get_fiscal_year for fiscal logic.
- Gained hands-on experience in creating stored procedures to efficiently retrieve market, customer, and product performance metrics.
- Learned to design SQL views for simplified and reusable access to aggregated net and gross sales data.

---

## Conclusion and Future Scope

### Impact
This project successfully transformed AtliQ Hardware’s manual, spreadsheet-driven reporting system into a robust, SQL-based analytical framework. By designing reusable SQL objects such as functions, views, and stored procedures, the project enabled streamlined access to sales, customer, and product insights. Complex business questions were broken down and solved using structured SQL logic, including joins, CTEs, window functions, and conditional operations. The result is a scalable and efficient system that empowers business leaders to make data-driven decisions with greater speed and accuracy.

### Future Scope 
- Performance Optimization: Improve query performance by converting frequently accessed views into materialized views, indexing key columns, and analyzing query execution plans to reduce runtime and resource usage.
- Automation with Stored Procedures: Schedule stored procedures using a database scheduler or orchestration tool (e.g., Airflow) for automated reporting pipelines.
- Data Validation & Quality Checks: Implement data validation rules and exception handling to flag anomalies or missing values in critical sales and customer tables.
- Forecasting Models: Use Python or R alongside SQL to build predictive models (e.g., sales forecast, churn prediction) for proactive decision-making.
- Data Warehouse Migration: Consider scaling to cloud-based solutions (e.g., Snowflake, BigQuery, or Azure Synapse) for better performance and multi-source integration.

---

## Tools Used
- **MySQL / SQL Server**: For querying and data manipulation  
- **DB Browser / Workbench**: For executing and testing SQL queries   
