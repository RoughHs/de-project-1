insert into analysis.tmp_rfm_frequency
with Frequency as (
SELECT users.id as user_id
,order_id
FROM analysis.users users
  	 left join analysis.orders orders
     on users.id = orders.user_id
where 1=1 
			and status = 4
			and extract(year from order_ts) = 2022
)
select user_id
,ntile(5) over(order by cnt_orders) as frequency
from (
select user_id,count(order_id) as cnt_orders
from Frequency
group by user_id
) src
;