# Task-6
Sales Trend Analysis Using Aggregations

The SQL queries perform key analysis on the online_sales.sales dataset:

Preview Data: SELECT * retrieves all records.

Extract Month: DATE_FORMAT or EXTRACT(MONTH) used to isolate the month from the date.

Group by Month: Counts sales per month using GROUP BY.

Revenue by Category: Sums total_revenue per Product_Category.

Sales Volume: Uses COUNT(DISTINCT Transaction_ID) to measure transaction count.

Top Products: Sorts products by Units_Sold using ORDER BY.

Date Filter: Limits results to a specific range using STR_TO_DATE.
