create or replace view analysis.orders as
with order_log as (
select order_id,status_id
from (
SELECT order_id, status_id, dttm , row_number() over(partition by order_id order by dttm desc) as rn
FROM production.orderstatuslog
) src
where rn = 1
)
SELECT 
  orders.order_id
, order_ts
, user_id
, bonus_payment
, payment
, "cost"
, bonus_grant
, status_id as status
FROM production.orders orders
	 left join order_log
	 on orders.order_id = order_log.order_id
	 ;

