/* Write your T-SQL query statement below */

with count0 as (
    select num as ConsecutiveNums ,
    lead(num,1) over(order by id) as leadfun, 
    lag(num , 1) over ( order by id) as lagfun
    from Logs 
)


select distinct ConsecutiveNums 
from count0
WHERE ConsecutiveNums  = leadfun AND ConsecutiveNums  = lagfun


