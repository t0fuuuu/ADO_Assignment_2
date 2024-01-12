{{ config(materialized='incremental', unique_key='orderId') }}

SELECT *
FROM {{ ref('order_detail_fresh') }}
{% if is_incremental() %}
WHERE CAST(ORDERID AS BIGINT) > (SELECT MAX(CAST(ORDERID AS BIGINT)) FROM {{ this }})
{% endif %}
