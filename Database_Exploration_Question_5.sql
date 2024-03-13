SELECT 
    COUNT(DISTINCT magist.products.product_id) AS num_products,
    magist.products.product_category_name,
    magist.product_category_name_translation.product_category_name_english
FROM
    magist.products
        LEFT JOIN
    magist.product_category_name_translation ON magist.products.product_category_name = magist.product_category_name_translation.product_category_name
GROUP BY magist.products.product_category_name, magist.product_category_name_translation.product_category_name_english
ORDER BY num_products DESC;
