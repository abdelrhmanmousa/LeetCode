# Write your MySQL query statement below
with category_A as (
select account_id ,
         income , 
case 
    when income < 20000 then "Low Salary"
    when income between 20000 and 50000 then "Average Salary"
    ElSE "High Salary"

 END AS Category    
FROM Accounts  
), 
all_categories as(
    select "Low Salary" as category 
    UNION ALL
    select "Average Salary"
    UNION ALL 
    select "High Salary"
)

select ac.category , COALESCE(COUNT(a.category), 0) as accounts_count
from   all_categories ac left join category_A a
ON ac.category = a.category
group by ac.category 
order by ac.category