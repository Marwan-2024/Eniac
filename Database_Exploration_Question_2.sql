USE magist;
    
SELECT 
    COUNT(*) AS num_all_orders,  
    SUM(order_status = 'delivered') AS num_delivered_orders 
FROM orders;
