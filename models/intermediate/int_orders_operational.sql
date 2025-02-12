with operational_margin as (
    select
        m.orders_id,
        m.date_date,
        m.margin + sh.shipping_fee - sh.logcost - sh.ship_cost as operational_margin
    from profound-coyote-448416-m4.dbt_ialtinkaynak.int_sales_margin  as m
    LEFT JOIN profound-coyote-448416-m4.dbt_ialtinkaynak.stg_raw__ship as sh on m.orders_id=sh.orders_id
) 
select * from operational_margin

