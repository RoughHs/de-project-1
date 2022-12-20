Значение проверялись на null , отрицительные

Таблицы             | Объект         		      |Инструмент      
products.orderitems | id integer NOT NULL PRIMARY KEY | Первичный ключ
products.orderitems | product_id integer NOT NULL     | Внешний ключ
products.orderitems | order_id integer NOT NULL       | Внешний ключ
products.orderitems | name character varying NOT NULL | 
products.orderitems | price numeric NOT NULL          | Ограничение на только положительные числа (price >= 0)
products.orderitems | discount numeric NOT NULL       | Ограничение на только положительные числа (discount >=0) и сумма скидки меньше цены (discount <= price)
products.orderitems | quantity integer NOT NULL       | Ограничение на только положительные числа (quantity > 0)
products.orders     | order_id integer NOT NULL       | Первичный ключ
products.orders     | order_ts timestamp without time zone NOT NULL  | 
products.orders     | user_id integer NOT NULL        | 
products.orders     | bonus_payment numeric NOT NULL  | 
products.orders     | payment numeric NOT NULL        | 
products.orders     | cost numeric NOT NULL           | Ограничение на сумму (cost = payment + bonus_payment)
products.orders     | bonus_grant numeric NOT NULL    | 
products.orders     | status integer NOT NULL         | 
products.orderstatuses  | id integer NOT NULL         | Первичный ключ
products.orderstatuses  | key character varying NOT NULL  | 
products.orderstatuslog | id integer NOT NULL PRIMARY KEY | Первичный ключ
products.orderstatuslog | order_id integer NOT NULL   | Внешний ключ
products.orderstatuslog | status_id integer NOT NULL  | Внешний ключ
products.orderstatuslog | dttm timestamp without time zone NOT NULL  | 
products.products | id integer NOT NULL               | Первичный ключ
products.products | name character varying NOT NULL   | 
products.products | price numeric NOT NULL            | Ограничение на только положительны числа (price >= 0)
products.users    | id integer NOT NULL               | Первичный ключ
products.users    | name character varying NULL       | 
products.users    | login character varying NOT NULL  | 
