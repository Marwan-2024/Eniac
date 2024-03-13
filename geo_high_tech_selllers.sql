SELECT DISTINCT
    g.lat, g.lng, SUM(oi.price) AS total_sales, g.city, s.seller_id
FROM
    geo g
        JOIN
    sellers s ON s.seller_zip_code_prefix = g.zip_code_prefix
        JOIN
    order_items oi ON s.seller_id = oi.seller_id
        JOIN
    products p ON oi.product_id = p.product_id
        JOIN
    product_category_name_translation AS t ON p.product_category_name = t.product_category_name
WHERE
    p.product_category_name = 'electronics'
        OR p.product_category_name = 'audio'
        OR p.product_category_name = 'computers_acessories'
        OR p.product_category_name = 'computers'
        OR p.product_category_name = 'telephony'
        OR p.product_category_name = 'tablets_printing_image'
GROUP BY s.seller_id;