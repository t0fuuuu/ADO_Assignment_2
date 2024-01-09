{{ config (materialized='table')}}

Select *
From {{ source('NWT_DISTRIBUTOR', 'ORDER_DETAIL')}}