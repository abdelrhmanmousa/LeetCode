/* Write your T-SQL query statement below */
select product_id , first_year , quantity , price 
from (
    select product_id ,
    year as first_year ,
    quantity , 
    price ,
    rank()over( partition by product_id order by year asc) as rank 
    from sales 
)rank  
where rank = 1

