{{ config(materialized='view') }}

with films as (
    select * 
    from {{ source('malaysiafilm', '2023films_raw') }}  -- Reference the source using the source macro
)

select * 
from films
