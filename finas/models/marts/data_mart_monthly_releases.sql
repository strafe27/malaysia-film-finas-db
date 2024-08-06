{{ config(materialized='table') }}

with monthly as (
    select 
        date_format(release_date, '%Y-%m-01') as month,
        count(*) as total_ticket_collection
    from 
        {{ ref('dim_films') }}
    group by 
        month
)

select * 
from monthly

order by 
    month
