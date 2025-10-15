# Write your MySQL query statement below
with summ as(
select turn as Turn ,
person_name , 
        person_id as ID,
        weight as Weight , 
        sum(weight) Over ( order by turn)  as Total_Weight

from queue        
)
select person_name 
from summ
where Total_Weight <= 1000
order by total_weight desc
limit 1