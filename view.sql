create view analysis.orderitems as
SELECT *
FROM production.orderitems;

create view analysis.orders as
SELECT *
FROM production.orders;

create view analysis.orderstatuses as
SELECT *
FROM production.orderstatuses;

create view analysis.orderstatuslog as
SELECT *
FROM production.orderstatuslog;

create view analysis.products as
SELECT *
FROM production.products;

create view analysis.users as
SELECT *
FROM production.users;