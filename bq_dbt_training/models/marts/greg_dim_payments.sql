
{{
  config(
    materialized = 'incremental',
    unique_key = 'payment_method'
  )
}}

with payments as (
    select * from {{ ref('greg_stg_payments')}}
),

final as (
    select
        payment_method,
        sum(case when status = 'success' then amount end) as amount
    from payments
    group by payment_method
)

select * from final