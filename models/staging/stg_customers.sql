with source as (
    select * from {{ source('raw', 'customers') }}
)

select
    "{{ 'CUSTMER ID' }}" as customer_id,
    NAME as customer_name,
    EMAIL
from source
