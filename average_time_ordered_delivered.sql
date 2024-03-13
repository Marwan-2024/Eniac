SELECT AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) AS average_delivery_time
FROM orders;