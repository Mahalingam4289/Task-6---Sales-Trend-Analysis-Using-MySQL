CREATE DATABASE sales_analysis;

USE sales_analysis;

SELECT * FROM online_salesonlinesales;

SELECT COUNT(*) AS Total_Records
FROM online_salesonlinesales;

SELECT order_date
FROM online_salesonlinesales
LIMIT 5;

SELECT
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Month,
    SUM(amount) AS Monthly_Revenue
FROM online_salesonlinesales
GROUP BY
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')),
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d'))
ORDER BY Year, Month;


SELECT
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Month,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM online_salesonlinesales
GROUP BY
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')),
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d'))
ORDER BY Year, Month;


SELECT
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Month,
    SUM(amount) AS Monthly_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM online_salesonlinesales
GROUP BY
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')),
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d'))
ORDER BY Year, Month;


SELECT
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Month,
    SUM(amount) AS Revenue
FROM online_salesonlinesales
GROUP BY
    YEAR(STR_TO_DATE(order_date,'%Y-%m-%d')),
    MONTH(STR_TO_DATE(order_date,'%Y-%m-%d'))
ORDER BY Revenue DESC
LIMIT 3;

