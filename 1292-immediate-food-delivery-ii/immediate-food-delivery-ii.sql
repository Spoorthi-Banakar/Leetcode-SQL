with cte as (
select *,
    row_number() over (partition by customer_id order by order_date )
    as rn
    from Delivery
)
select 
round(
    avg(order_date=customer_pref_delivery_date)*100 ,2
) as immediate_percentage  
from cte
where rn = 1;