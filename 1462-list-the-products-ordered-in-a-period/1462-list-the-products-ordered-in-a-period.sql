# Write your MySQL query statement below
select p.product_name , sum(o.unit) as unit
from products p join orders o 
on o.product_id = p.product_id 
where  order_date <= '2020-02-29' and order_date >='2020-02-01'
group by product_name
having  sum(unit) >=100