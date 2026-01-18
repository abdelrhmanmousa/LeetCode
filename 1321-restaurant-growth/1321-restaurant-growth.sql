WITH daily AS (
    SELECT
        visited_on,
        SUM(amount) AS amount
    FROM customer
    GROUP BY visited_on
),
cte AS (
    SELECT
        visited_on,
        SUM(amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS sum_amount,
        AVG(amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS avg_amount,
        ROW_NUMBER() OVER (ORDER BY visited_on) AS rn
    FROM daily
)
SELECT
    visited_on,
    sum_amount AS amount,
    ROUND(avg_amount, 2) AS average_amount
FROM cte
WHERE rn >= 7;