{{ config (materialized='table')}}

SELECT *
from {{ source('NWT_DISTRIBUTOR', 'ORDERS_FRESH') }}