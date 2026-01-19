# Write your MySQL query statement below

with duplicate_2015 as(

        select tiv_2015 , tiv_2016 , lat , lon,
        count(*) over (partition by tiv_2015 ) as rn ,
        count(*) over (partition by lat,lon) as rn2

        from insurance 
        
)
select round(sum(tiv_2016),2) as tiv_2016
from duplicate_2015
where rn > 1 and rn2 = 1