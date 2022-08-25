
SELECT 
    id as customer_id, 
    first_name, 
    last_name
FROM {{ source('dna_stg', 'CustomersGregory') }}