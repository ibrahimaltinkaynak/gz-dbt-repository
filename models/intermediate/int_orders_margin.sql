SELECT
orders_id,
date_date,
sum (revenue) as revenue,
sum (quantity) as quantity,
sum (purchase_cost) as purchase_cost,
sum (margin) as margin
from profound-coyote-448416-m4.dbt_ialtinkaynak.int_sales_margin
group by date_date, orders_id
order by date_date