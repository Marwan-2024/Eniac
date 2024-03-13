SELECT DISTINCT
    g.lat, g.lng, c.customer_zip_code_prefix, c.customer_id
FROM
    customers c
        JOIN
    geo g ON g.zip_code_prefix = c.customer_zip_code_prefix
        JOIN
    orders AS o ON o.customer_id = c.customer_id
        JOIN
    order_items AS oi ON oi.order_id = o.order_id
        JOIN
    products p ON p.product_id = oi.product_id
        JOIN
    product_category_name_translation AS t ON p.product_category_name = t.product_category_name
GROUP BY c.customer_id;