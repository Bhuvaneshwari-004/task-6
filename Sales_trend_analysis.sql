CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;
SELECT * FROM online_sales LIMIT 10;
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    DATE_FORMAT(date, '%Y-%m')
ORDER BY 
    month;
