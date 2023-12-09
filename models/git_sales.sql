 {{config(materialized='table')}}
 
    with x as (
        select id,name,sum(sales_amount)
        from g_sale
        group by id, name
    )

    select * from x