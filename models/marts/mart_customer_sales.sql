with orders as (
    select * from {{ ref('stg_orders') }}
)
select
    customer_id,
    count(order_id) as total_orders,
    sum(total_amount) as total_sales
from orders
group by customer_id
