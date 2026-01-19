# Write your MySQL query statement below
with top3 as (
select Department.name as Department,
       Employee.name as Employee,
       Employee.salary as salary ,
       dense_rank()
        over (
            partition by  Department.id 
                order by salary desc) as dr
from Employee join Department
on Employee.DepartmentId = Department.id 

)

select Department , Employee , salary
from top3
where dr <=3
