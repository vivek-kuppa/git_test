 {{config(materialized='table')}}
 
    with y as (
        select id,name,sum(sales_amount)
        from g_sale
        group by id, name
    )

    select * from y