/* Write your T-SQL query statement below */
with T as (
 select count(distinct product_key) as count,
    customer_id
    from customer
    group by customer_id 
    having count(distinct product_key) = 
    (
        select count(product_key) as count1 from product 
    )
)

select customer_id from T
