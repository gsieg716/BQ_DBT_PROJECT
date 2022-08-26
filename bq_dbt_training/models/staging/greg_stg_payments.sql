
SELECT 
    id as payment_id, 
    orderid as order_id, 
    paymentmethod as payment_method,
    status,
    amount,
    created
FROM {{ source('dna_stg', 'PaymentsGregory') }}