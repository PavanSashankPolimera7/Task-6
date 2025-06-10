select * from online_sales.sales;

# Use EXTRACT(MONTH FROM order_date) for month
SELECT date, date_format(str_to_date(date, '%Y-%m-%d'), '%m') AS month FROM online_sales.sales;

# GROUP BY year/month.
select date,count(date) as count_per_month from online_sales.sales group by date_format(str_to_date(date,'%Y-%m-%d'),'%m');

# Use SUM() for revenue.
select Product_Category,round(sum(total_revenue),2) as revnue_by_category from online_sales.sales group by Product_Category;

# COUNT(DISTINCT Transaction_ID) for volume
select count(distinct Transaction_ID) from online_sales.sales;

# Use ORDER BY for sorting
select Product_Name,Units_Sold,Payment_Method from online_sales.sales order by Units_Sold desc;

# Limit results for specific time periods
SELECT * 
FROM online_sales.sales 
WHERE str_to_date(date, '%d-%m-%Y') 
      BETWEEN str_to_date('02-03-2024', '%d-%m-%Y') 
      AND str_to_date('02-05-2024', '%d-%m-%Y');

