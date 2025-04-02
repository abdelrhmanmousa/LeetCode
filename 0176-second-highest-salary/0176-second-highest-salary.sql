/* Write your T-SQL query statement below */
/*select salary as SecondHighestSalary 
from Employee
where salary < (select max(salary) from Employee  )
*/

/*SELECT (DISTINCT salary  

    FROM employee 

    ORDER BY salary DESC
    LIMIT 1 OFFSET 1)  as SecondHighestSalary */


    SELECT 
    (SELECT DISTINCT salary 
     FROM employee 
     ORDER BY salary DESC 
     LIMIT 1 OFFSET 1) 
    AS SecondHighestSalary;
