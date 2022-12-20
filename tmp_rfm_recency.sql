insert into analysis.tmp_rfm_recency
with Recency as (
SELECT users.id as user_id
,date(order_ts) order_dt
FROM analysis.users users
  	 left join analysis.orders orders
     on users.id = orders.user_id
where 1=1 
			and status = 4
			and extract(year from order_ts) = 2022
)
select user_id
,ntile(5) over(order by diff_dt desc) as recency
from (
select user_id,now()::date - max(order_dt) as diff_dt
from Recency
group by user_id
) src
;
