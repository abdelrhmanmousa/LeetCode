/* Write your PL/SQL query statement below */
with nn as(
SELECT 
    id, 
    student, 
    CASE 
        WHEN MOD(id, 2) = 1 AND id != (SELECT MAX(id) FROM seat) THEN id + 1
        WHEN MOD(id, 2) = 0 THEN id - 1
        ELSE id
    END AS n_id
FROM seat

) 

select n_id as id , student
from nn
ORDER BY n_id;