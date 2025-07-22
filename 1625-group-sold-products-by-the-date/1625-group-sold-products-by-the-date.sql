# Write your MySQL query statement below
SELECT sell_date, COUNT(DISTINCT product) AS num_sold , GROUP_CONCAT(DISTINCT product) as products
from activities
group by sell_date 
order by sell_date