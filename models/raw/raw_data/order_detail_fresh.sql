{{ config (materialized='table')}}

SELECT *
from {{ source('NWT_DISTRIBUTOR', 'ORDER_DETAIL_FRESH') }}