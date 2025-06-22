select
    ID as order_id,
    CUSTOMER_ID,
    ORDER_DATE,
    AMOUNT
from {{ source('raw', 'orders') }}
