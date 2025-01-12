# Write your MySQL query statement below
SELECT activity_date day , Count(Distinct user_id ) active_users 
FROM Activity 
WHERE activity_date <= '2019-07-27' AND activity_date >'2019-06-27'
Group by activity_date