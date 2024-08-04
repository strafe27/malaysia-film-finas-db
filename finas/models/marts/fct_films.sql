{{ config(materialized='table') }}

with films_2023 as (
    select 
        release_date,
        film_title,
        total_audience,
        ticket_collection
    from {{ ref('stg_2023') }}  -- Reference to the stg_2023 model
),

films_2022 as (
    select 
        release_date,
        film_title,
        null as total_audience,
        ticket_collection
    from {{ ref('stg_2022') }}  -- Reference to the stg_2022 model
),

films_2021 as (
    select 
        release_date,
        film_title,
        null as total_audience,
        null as ticket_collection
    from {{ ref('stg_2021') }}  -- Reference to the stg_2021 model
),

films_2020 as (
    select 
        release_date,
        film_title,
        null as total_audience,
        null as ticket_collection
    from {{ ref('stg_2020') }}  -- Reference to the stg_2020 model
),

films_2019 as (
    select 
        release_date,
        film_title,
        null as total_audience,
        null as ticket_collection
    from {{ ref('stg_2019') }}  -- Reference to the stg_2019 model
),

films_2018 as (
    select 
        release_date,
        film_title,
        null as total_audience,
        null as ticket_collection
    from {{ ref('stg_2018') }}  -- Reference to the stg_2018 model
)


select * 
from films_2018

union all

select * 
from films_2019

union all

select * 
from films_2020

union all

select * 
from films_2021

union all

select * 
from films_2022

union all

select * 
from films_2023

