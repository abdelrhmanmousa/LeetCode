with first_orders AS (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM delivery
    GROUP BY customer_id)

SELECT ROUND( COUNT(CASE
            WHEN d.order_date = d.customer_pref_delivery_date THEN 'immediate'
            END)  * 100/count(*),2 )As immediate_percentage
FROM delivery d
INNER JOIN  first_orders
ON d.customer_id = first_orders.customer_id AND d.order_date = first_orders.first_order_date

