SELECT 
order_id,
   	 DATEDIFF(order_delivered_customer_date, order_estimated_delivery_date) AS delay_time,
   	 product_length_cm / 100 * product_height_cm / 100 * product_width_cm / 100 AS product_volume_cubic_meter
FROM
   	 orders
		JOIN
    	order_items ON orders.order_id = order_items.order_id
   	     JOIN
   	 products ON order_items.product_id = products.product_id;

SELECT 
    AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) AS average_delivery_time
FROM
    orders;
