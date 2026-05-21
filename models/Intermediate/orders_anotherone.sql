{{ config(
    materialized='table',
    schema='TRANSFORMER_TEST'
) }}


with test as (
select order_id from {{source('sources','ORDERS')}}
where order_id in ('1003'
,'1004')

union all
select sale_id  from {{source('sources','SALES')}}
where sale_id in ('2003',
'2004'))

select * from test