# Write your MySQL query statement below
select contest_id ,Round(count(distinct user_id)*100/(select Count( user_id)FROM users),2) AS percentage 
from register
group by contest_id
order by percentage  DESC , contest_id ASC