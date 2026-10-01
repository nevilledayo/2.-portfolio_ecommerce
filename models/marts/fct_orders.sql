with orders as (
    select * from {{ ref('stg_orders') }}
), --macro

marketing_seeds as (
    select * from {{ ref('marketing_channels') }}
),

final_joining as (
    select
        orders.order_id,
        orders.user_id,
        orders.order_status,
        orders.customer_gender,
        orders.ordered_at,
        orders.total_items_in_order,
        -- Bringing in our clean seed category name
        coalesce(marketing_seeds.channel_group, 'Direct Traffic') as acquisition_channel
    from orders
    -- In a real scenario, we would join on a marketing tracking column. 
    -- For this portfolio example, we will map a placeholder join to see the lineage tie-in.
    left join marketing_seeds on orders.customer_gender = marketing_seeds.utm_source
)

select * from final_joining
