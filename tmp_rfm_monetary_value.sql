insert into analysis.tmp_rfm_monetary_value
with Monetary_Value as (
SELECT users.id as user_id
,cost
FROM analysis.users users
  	 left join analysis.orders orders
     on users.id = orders.user_id
where 1=1 
			and status = 4
			and extract(year from order_ts) = 2022
)
select user_id
,ntile(5) over(order by sum_cost) as monetary_value
from (
select user_id,sum(cost) as sum_cost
from Monetary_Value
group by user_id
) src
;