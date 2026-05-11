{{ config(materialized='table') }}

with source_data as (
    select
        1 as id,
        'Ada' as first_name,
        'Lovelace' as last_name
    union all
    select
        2 as id,
        'Grace' as first_name,
        'Hopper' as last_name
)

select *
from source_data
where id is not null
