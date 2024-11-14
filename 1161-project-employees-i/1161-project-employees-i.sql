# Write your MySQL query statement below
SELECT J.project_id , ROUND(AVG(experience_years),2) as average_years 
FROM Employee E  join Project J
ON E.employee_id = J.employee_id
group by project_id
