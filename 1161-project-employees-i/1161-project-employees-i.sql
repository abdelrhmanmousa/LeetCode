# Write your MySQL query statement below
SELECT J.project_id , IFNULL(ROUND(AVG(experience_years),2),0) as average_years 
FROM Employee E  join Project J
ON E.employee_id = J.employee_id
group by project_id
