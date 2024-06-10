{{
  config(
    materialized='table'
  )
}}

with card as
(
select *
from {{ source ("snowflake_card",'CARD') }}
),

 csv as (
    select * from {{ ref ("csvfile") }}
)

select CARD.disp_id,CARD.TYPE from card inner join csv 
on card.card_id=csv.CARD_ID
