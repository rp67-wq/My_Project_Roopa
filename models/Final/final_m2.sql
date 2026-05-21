{{ config(
    materialized='table',
    schema='MART_TEST'
) }}


select * from {{ref('inter_M1')}}
where order_id in ('1001','1002')
