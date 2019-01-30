----People----
create table people (
id serial primary key
, name text
, age integer
, height integer
, city text
, favorite_color text
);

insert into people (name, age, height, city, favorite_color)
values ('Coby', '24', '180', 'Phoenix', 'Black')
,('Jake', '24', '183', 'Phoenix', 'Red')
,('Allan', '24', '182', 'Phoenix', 'Blue')
,('Brad', '24', '183', 'Phoenix', 'Green')
,('Sejo', '24', '185', 'Phoenix', 'Yellow')

select * from people
order by height desc;

select * from people
order by height asc;

select * from people
order by age desc;

select * from people
where age > 20

select * from people
where age = 18;

select * from people
where age < 30 and age > 20;

select * from people
where age != 27;

select * from people 
where favorite_color != 'red';

select * from people 
where favorite_color != 'Red';

select * from people 
where favorite_color != 'Red' and favorite_color != 'Blue';

select * from people 
where favorite_color = 'Green' or favorite_color = 'Orange';

select * from people 
where favorite_color in('Orange', 'Green', 'Blue');

select * from people 
where favorite_color in('Yellow', 'Purple');
----------------

-----Orders---------
create table orders(
person_id serial primary key
, product_name text
, product_price integer
, quantity integer
)

insert into orders(product_name, product_price, quantity)
values('Shirt', 20, 4)
,('Phone', 1000, 1)
,('Shoes', 60, 1)
,('Shorts', 40, 2)
,('Pants', 50, 3);

select * from orders;

select sum(quantity)
from orders;

select sum(quantity * product_price)
from orders;

select sum(quantity * product_price)
from orders
where person_id = 1;
----------------------------

--------Artist-------
insert into artist(name)
values('Death Grips')
, ('Megadeth')
, ('Power Trip');

select * from artist 
order by name desc
limit 10;

select * from artist 
where name like 'Black%'
limit 5;

select * from artist 
where name like '%Black%';
------------------

-------Employee-------
select first_name, last_name from employee 
where city like '%Calgary%';

select max(birth_date) from employee;

select min(birth_date) from employee;

select * from employee
where reports_to = 2;

select count(*) from employee
where city = 'Lethbridge'
------------------------

--------Invoice---------
select count(total) from invoice
where billing_country = 'USA'

select max(total) from invoice;

select min(total) from invoice;

select * from invoice
where total > 5

select * from invoice
where total < 5

select count(total) from invoice
where billing_state in('AZ','TX', 'CA');

select avg(total) from invoice;

select sum(total) from invoice;
---------------------------