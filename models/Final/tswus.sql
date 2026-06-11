{{ config(
    materialized='table'
) }} 


with source_data as (

    -- reference the raw orders table
    select *
    from {{source('sources','ORDERS')}}

),

transformed as (

    select
        order_id,
        customer_name,
        product_name,
        quantity,
        order_amount,
        order_date,

        -- add some useful derived fields
        upper(customer_name) as customer_name_upper,
        initcap(product_name) as product_name_clean,
        quantity * order_amount as total_value,
        year(order_date) as order_year,
        month(order_date) as order_month

    from source_data

)

select * from transformed
