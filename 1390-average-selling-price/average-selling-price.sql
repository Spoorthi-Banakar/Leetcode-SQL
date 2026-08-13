Select s.product_id,
coalesce(Round(sum(price*units)/sum(units),2),0) as average_price
from Prices s
left join UnitsSold u
on s.product_id = u.product_id
and u.purchase_date>=s.start_date
and u.purchase_date<=s.end_date
group by s.product_id;


