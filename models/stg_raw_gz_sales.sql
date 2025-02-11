

with cleaned_data as (
    select 
        id,
        order_date,
        product_id,
        customer_id,
        total_amount
    from {{source(’gz_raw_data’, ‘raw_gz_sales’)}}
)

select * from cleaned_data

