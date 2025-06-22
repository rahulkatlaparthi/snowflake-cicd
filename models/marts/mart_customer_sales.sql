with customers as (
    select * from {{ ref('stg_customers') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
),

aggregated as (
    select
        o.customer_id,
        sum(o.amount) as total_amount
    from orders o
    group by o.customer_id
)

select
    c.customer_id,
    c.customer_name,
    c.email,
    a.total_amount
from customers c
left join aggregated a
on c.customer_id = a.customer_id
