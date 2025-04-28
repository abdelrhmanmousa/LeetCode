# Write your MySQL query statement below
WITH Emp AS (
        select employee_id  , department_id  ,  primary_flag,  
        #count(department_id) as count1 ,
        count(department_id) over (partition by employee_id) as count1
        from employee 
        -- where primary_flag ='Y' or primary_flag ='N'
        #having  primary_flag ='Y' or count1 >=1 
)
select employee_id  , department_id
from Emp
where  count1 =1 or primary_flag ='Y'

