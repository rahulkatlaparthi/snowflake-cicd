-- models/staging/stg_customers.sql

with source as (
    select * from {{ source('raw', 'customers') }}
)

select
    id as customer_id,
    name as customer_name,
    email
from source
