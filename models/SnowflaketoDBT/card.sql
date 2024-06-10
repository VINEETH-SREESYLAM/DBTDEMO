{{
  config(
    materialized='table'
  )
}}

select *
from {{ source ("snowflake_card",'CARD') }}