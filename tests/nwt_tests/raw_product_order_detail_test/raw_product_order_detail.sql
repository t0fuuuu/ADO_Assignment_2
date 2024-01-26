WITH product_details AS (
    SELECT 
        ProductID, 
        UnitPrice AS ProductUnitPrice
    FROM {{ ref('raw_product') }}
),
order_details AS (
    SELECT 
        ProductID, 
        UnitPrice AS OrderDetailUnitPrice
    FROM {{ ref('raw_order_detail') }}
)

SELECT
    p.ProductID,
    p.ProductUnitPrice,
    o.OrderDetailUnitPrice
FROM product_details p
LEFT JOIN order_details o ON p.ProductID = o.ProductID
WHERE p.ProductUnitPrice < o.OrderDetailUnitPrice