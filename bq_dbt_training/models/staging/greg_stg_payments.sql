
SELECT 
    id as payment_id, 
    orderid, 
    paymentmethod,
    status,
    amount,
    created
FROM {{ source('dna_stg', 'PaymentsGregory') }}