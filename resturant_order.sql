
use resturant_order;
go

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
 


