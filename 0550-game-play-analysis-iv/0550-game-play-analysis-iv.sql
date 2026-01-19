WITH first_date AS (
    SELECT
        player_id AS id,
        min(event_date) as first_date
        FROM Activity
        group by player_id
    
),
returned_next_date as (
    select distinct f.id  
    from first_date f 
    join activity a 
    on a.player_id = f.id 
    AND a.event_date = DATEADD (day , 1, f.first_date)


)
SELECT
    ROUND(
        1.0 * (select COUNT(*) from returned_next_date) /
         (SELECT COUNT(*) from first_date),
        2
    ) AS fraction

