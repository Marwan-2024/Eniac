USE magist;

SELECT 
    MONTH(order_purchase_timestamp) AS months,
    YEAR(order_purchase_timestamp) AS years
FROM
    orders
GROUP BY years, months;
