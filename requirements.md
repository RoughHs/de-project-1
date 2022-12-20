Для использования необходимы колонки:
users.login
orders.order_id
orders.order_ts
orders.cost
orders.status
orders.user_id

1.Создать view в схеме analysis из таблиц production
2.Создать витрину в схеме analysis dm_rfm_segments, куда в дальнейшем будут заливаться данные
3.Создать временные таблицы в схеме analysis tmp_rfm_recency,tmp_rfm_frequency,tmp_rfm_monetary_value для расчетов факторов
4.Написать запросы для каждого фактора и залить их во временные таблцы
5.Наполнить витрину dm_rfm_segments данными из временных таблиц п.3