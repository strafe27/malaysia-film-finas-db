{{ config(materialized='table') }}

with films_2022 as (
    select 
        release_date,
        film_title,
        ticket_collection
    from {{ ref('stg_2022') }}  -- Reference to the stg_2022 model
),

films_2023 as (
    select 
        release_date,
        film_title,
        ticket_collection
    from {{ ref('stg_2023') }}  -- Reference to the stg_2023 model
)

select * 
from films_2022

union all

select * 
from films_2023
