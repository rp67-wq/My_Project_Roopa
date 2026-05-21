{{ config(
    materialized='table',
    schema='TRANSFORMER_TEST'
) }}



select * from {{ref('my_second_dbt_model')}}
