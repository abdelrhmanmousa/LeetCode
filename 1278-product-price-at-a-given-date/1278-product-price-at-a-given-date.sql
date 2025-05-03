/* Write your T-SQL query statement below */
with lastupdate as (
    select product_id as product_id ,
    new_price,
    change_date, 
    Row_number() over (partition by product_id order by change_date desc)as lp
    from Products  p
    where change_date <='2019-08-16' 
)
select distinct products.product_id , 
CASE 
  WHEN lp = 1 THEN lastupdate.new_price 
  ELSE 10
END AS price
from products LEFT JOIN lastupdate 
on lastupdate.product_id = products.product_id 
and lp = 1 





