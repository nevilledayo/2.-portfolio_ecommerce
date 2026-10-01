with source as (
    select * from {{ source('thelook', 'orders') }}
),

renamed as (
    select
        order_id,
        user_id,
        status as order_status,
        gender as customer_gender,
        cast(created_at as timestamp) as ordered_at,
        cast(shipped_at as timestamp) as shipped_at,
        cast(delivered_at as timestamp) as delivered_at,
        num_of_item as total_items_in_order
    from source
)

select * from renamed
