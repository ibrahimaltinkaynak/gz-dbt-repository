with operational_margin as (
    select
        m.orders_id,
        m.date_date,
        m.revenue,
        m.margin,
        m.purchase_cost,
        sh.shipping_fee,
        sh.ship_cost,
        sh.logcost,
        m.quantity,
        m.margin + sh.shipping_fee - sh.logcost - sh.ship_cost as operational_margin
    from {{ref("int_sales_margin")}}  as m
    LEFT JOIN {{ref("stg_raw__ship")}} as sh on m.orders_id=sh.orders_id
) 
select * from operational_margin

