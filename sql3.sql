create database regex;
use regex;
create table product(pid int,pname varchar(20),price int);
insert into product values(10,"tv",100),(20,"mobile",200),(30,"gyzer",4000),(40,"yash",5000);
select * from product;
create table orders(oid int,city varchar(20),product_id int);
insert into orders values(1991,"jaipur",10),(1992,"goa",20),(1993,"uk",10),(1994,"shimla",40),(1995,"kerela",80);
select * from orders;
select o.oid,o.city,o.product_id,p.pid,p.pname,p.price from orders as o join product as p where o.product_id=p.pid;
-- diff syntax of above code
select o.oid,o.city,o.product_id,p.pid,p.pname,p.price from orders as o left join product as p on o.product_id=p.pid;
select o.oid,o.city,o.product_id,p.pid,p.pname,p.price from orders as o right join product as p on o.product_id=p.pid;
use sakila;
select * from actor;
select * from film_actor;
select a.actor_id,a.first_name,a.last_name,a.last_update,f.actor_id,f.film_id,f.last_update from actor as a 
inner join film_actor as f where a.actor_id=f.actor_id;