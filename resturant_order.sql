
use resturant_order;
go

--------------------------item_table-----------------------
select * 
from menu_items
go

-- no.of items in the menue 
select count(*)
from menu_items
go

-- what are the most and least expensive on the menue
select *
from menu_items
order by price desc
go 

-- how many italian dishes are in menue 
select count(*)
from menu_items
where category = 'Italian'
go

-- what are the least and most expensive italian foods 
select *
from menu_items
where category = 'Italian'
order by price desc
go

-- how many dishes are in each category 
 select category, count(menu_item_id) as no_of_dishes 
 from menu_items
 group by category
 go

-- what is the average dish price within each category 
select category, avg(price) as Average_price 
from menu_items
group by category 
go
 
---------------------------order_table-----------------------

select *
from order_details
go

-- what is the date range of the table 
select min(order_date) as min_date, max(order_date) as max_date
from order_details
go

-- How many orders were made within that date range
select count(distinct order_id) as total_orders 
from order_details
go


-- how many items were ordered withis this date range 
select count(order_details_id) as total_items_orders
from order_details
go

-- which orders had the most numbers of the items?
select top 10 order_id, count(item_id) as total_items 
from order_details
group by order_id
order by total_items desc
go

-- how many orders had the more than 12 items?
select count(*) as toal_orders_grater_than_12 
from 
(select order_id, count(item_id) as num_items
from order_details
group by order_id 
having count(item_id) > 12) AS num_orders
go