
SELECT 
    id as order_id, 
    user_id, 
    order_date,
    status
FROM {{ source('dna_stg', 'OrdersGregory') }}