{{ config(materialized='incremental', unique_key='orderId') }}

SELECT *
FROM {{ ref('orders_fresh') }}
{% if is_incremental() %}
WHERE CAST(ORDERID AS BIGINT) > (SELECT MAX(CAST(ORDERID AS BIGINT)) FROM {{ this }})
{% endif %}