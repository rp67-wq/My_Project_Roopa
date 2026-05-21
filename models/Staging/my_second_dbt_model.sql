{{ config(
    materialized='table',
    schema='STAGE_TEST'
) }}



select *
from {{ ref('my_first_dbt_model') }}
--where order_id = 1
