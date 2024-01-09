{{ config (materialized='table')}}

Select *
From {{ source('NWT_DISTRIBUTOR', 'EMPLOYEE_TERRITORY')}}