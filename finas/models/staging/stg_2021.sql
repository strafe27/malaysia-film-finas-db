{{ config(materialized='view') }}

with films as (
    select * 
    from {{ source('malaysiafilm','2021films_raw')}}  -- Reference to the raw table in a different database
)

select * 
from films
