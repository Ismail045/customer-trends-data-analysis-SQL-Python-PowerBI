-- Sirf pehle 10 rows dekho
SELECT * FROM customer LIMIT 10;

-- 1. How many customers belong to each age group?
SELECT 
    CASE 
        WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 40 THEN '25-40'
        WHEN age BETWEEN 41 AND 55 THEN '41-55'
        ELSE 'Above 55'
    END AS age_group,
    COUNT(*) AS total_customers
FROM customer
GROUP BY 
    CASE 
        WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 40 THEN '25-40'
        WHEN age BETWEEN 41 AND 55 THEN '41-55'
        ELSE 'Above 55'
    END
ORDER BY total_customers DESC;

--2. What is the total and average purchase amount by product category?
SELECT 
    category,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount)::numeric, 2) AS avg_purchase
FROM customer
GROUP BY category
ORDER BY total_revenue DESC;


--3. Which season generates the highest sales revenue?
SELECT 
    season,
    COUNT(*) AS total_orders,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY season
ORDER BY total_revenue DESC;

--4. Do customers who use discounts spend more than those who don't?
SELECT 
    discount_applied,
    COUNT(*) AS total_customers,
    ROUND(AVG(purchase_amount)::numeric, 2) AS avg_purchase
FROM customer
GROUP BY discount_applied;

--Question: Find which payment methods are most frequently used by customers.

SELECT
    payment_method,
    COUNT(*) AS total_transactions
FROM customer
GROUP BY payment_method
ORDER BY total_transactions DESC;

--6. What is the spending pattern difference between male and female customers?
SELECT 
    gender,
    COUNT(*) AS total_customers,
    SUM(purchase_amount) AS total_spent,
    ROUND(AVG(purchase_amount)::numeric, 2) AS avg_spent
FROM customer
GROUP BY gender;

--7. Is there a relationship between review rating and purchase amount?
SELECT 
    review_rating,
    COUNT(*) AS total_customers,
    ROUND(AVG(purchase_amount)::numeric, 2) AS avg_purchase
FROM customer
GROUP BY review_rating
ORDER BY review_rating DESC;

--8. Who are the top 10 highest spending customers?
SELECT 
    customer_id,
    age,
    gender,
    location,
    SUM(purchase_amount) AS total_spent,
    COUNT(*) AS total_orders
FROM customer
GROUP BY customer_id, age, gender, location
ORDER BY total_spent DESC
LIMIT 10;

--9. Do subscribed customers spend more than non-subscribed customers?
SELECT 
    subscription_status,
    COUNT(*) AS total_customers,
    ROUND(AVG(purchase_amount)::numeric, 2) AS avg_purchase,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY subscription_status;


--10. Which locations generate the highest revenue for the company?
SELECT 
    location,
    COUNT(*) AS total_customers,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY location
ORDER BY total_revenue DESC
LIMIT 10;