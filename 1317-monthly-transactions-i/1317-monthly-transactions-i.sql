# Write your MySQL query statement below
select DATE_FORMAT(trans_date, '%Y-%m') AS month ,
country ,
count(trans_date) as trans_count,
COUNT(CASE WHEN state = 'approved' THEN 1 END)as approved_count, 
SUM(amount) as trans_total_amount ,
SUM(CASE WHEN state = 'approved' THEN amount else 0 END ) as approved_total_amount
from Transactions

group by month , country 
#where state = 'approved' 

