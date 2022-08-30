{% snapshot greg_snapshot_orders %}

    SELECT * FROM {{ source('dna_stg', 'OrdersGregory') }}

{% endsnapshot %}