--Revenue is: 
quantity x price
--SECTION A- BASIC FILTERING+SORTING
tables:orders, products, customers
--show all products costing more than 300

select product_name, category,price 
from products
WHERE price >300;

--show customers from muscat

select (first_name||' '||last_name) as full_name,
		city
from customers
WHERE city = 'Muscat'

--show orders sorted by newest date first

select *
from orders
ORDER BY order_date DESC

/*SECTION B- Revenue calculations*/
--show each order with: 

product name, quantity, price, total revenue
select * from products

select o.order_id, p.product_name, o.quantity,p.price,
		(o.quantity * p.price) as Total_revenue
from orders o
right join products p on o.product_id=p.product_id

--find total revenue generated from all orders

select sum(o.quantity * p.price) as Total_revenue
from orders o
right join products p on o.product_id=p.product_id

--find the highest single order revenue

select Max(o.quantity * p.price) as Max_revenue
from orders o
right join products p on o.product_id=p.product_id

/*SECTION C - JOINS*/
--show: customer full name, product purchased, quantity, order date.
select * from customers
select * from products
select * from orders

select (c.first_name||''||c.last_name) as full_name,
		p.product_name,
		o.quantity,
		o.order_date
from customers c
JOIN orders o on c.customer_id= o.customer_id
JOIN products p on p.product_id= o.product_id

--show all electronic products ordered

select * 
from products p
join orders o on p.product_id=o.product_id
WHERE category = 'Electronics'

--show all orders made by customers from dubai

select * from customers
select * from products
select * from orders

select (c.first_name||''||c.last_name) as full_name,
		p.product_name
from customers c
JOIN orders o on c.customer_id= o.customer_id
JOIN products p on p.product_id= o.product_id
WHERE city = 'Dubai'

/*SECTION D- GROUP BY + Analyst thinking*/
--Show total revenue by product category

select * from customers
select * from products
select * from orders

select sum(p.price* o.quantity) as Total_Revenue,
			p.category
from products p
join orders o on p.product_id=o.product_id 
GROUP BY category

--Show total quantity sold for each product

select * from customers
select * from products
select * from orders

select product_name,sum(o.quantity) as total_quantity
from orders o
join products p on p.product_id=o.product_id
GROUP by product_name

--find the top selling products by quantity sold

select   product_name,sum(o.quantity) as total_quantity
from products p
join orders o on o.product_id = p.product_id
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 1 --so here after the group by clause, i was meant to use order by an dlimit to filter the answers


/*SECTION E*/
--Show customers who generated more than 1000 in total spending
select * from customers
select * from products
select * from orders

select (c.first_name||' '||c.last_name) as full_name,
		sum(p.price*o.quantity) as total_revenue
from customers c
join orders o on c.customer_id=o.customer_id
join products p on p.product_id=o.product_id
GROUP BY full_name
--ORDER BY total_revenue>1000 DESC, solution below
HAVING SUM(p.price*o.quantity)>1000
---Why having not working???---

--classify orders
rules: revenue>1000=High value
revenue between 500 and 999= medium value
below 500=low value


select order_id,
		(p.price*o.quantity) as total_revenue,
		
--from customers c
--join orders o on c.customer_id=o.customer_id
--join products p on p.product_id=o.product_id

	CASE 
		WHEN (p.price*o.quantity) > 1000 THEN 'High value'
		WHEN (p.price*o.quantity) between 500 and 99 THEN 'Medium value'
		else 'Low value'
	END AS Order_category
from customers c
join orders o on c.customer_id=o.customer_id
join products p on p.product_id=o.product_id

--GROUP BY full_name
--also no using of 'is' in case 'THEN instead'
---what am i missing?, no group bys here, always remeber to end your case with"END AS....+alias"
--more also; your "CASE" should come after the ist of columns and not joins as you have here.
--joins and froms should typically be the last making sure they engulf the whole query

/*SECTION F- STRETCH CHALLENGE*/

--Find: the city generating the highest total revenue
select * from customers
select * from products
select * from orders


select c.city,
		sum(p.price*o.quantity) as total_revenue
from customers c
LEFT join orders o on c.customer_id=o.customer_id
join products p on p.product_id=o.product_id
GROUP BY city
ORDER BY total_revenue DESC
limit 1;















