SELECT current_database();

CREATE TABLE customer_table (
    customer_id INT,
    age INT,
    gender VARCHAR(20),
    item_purchased VARCHAR(100),
    category VARCHAR(50),
    purchase_amount INT,
    location VARCHAR(100),
    size VARCHAR(10),
    color VARCHAR(50),
    season VARCHAR(20),
    review_rating DECIMAL(3,1),
    subscription_status VARCHAR(10),
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(10),
    previous_purchases INT,
    payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(30),
    age_group VARCHAR(30),
    purchase_frequency_days INT
);

SELECT * FROM customer_table LIMIT 3;

-- Q1. Total revenue generated Male vs Female Customer?

SELECT gender, SUM(purchase_amount) as revenue
FROM customer_table
GROUP BY gender

-- Q2. Which customers used a discount but still spent more than average purchase amount?

SELECT customer_id, purchase_amount, discount_applied
FROM customer_table
WHERE discount_applied = 'Yes' AND purchase_amount>(SELECT AVG(purchase_amount)
FROM customer_table);

--Q3. Which are the top 5 products with the highest average review rating?

SELECT item_purchased,ROUND(AVG(review_rating),2) as "Average Product Rating"
FROM customer_table
GROUP BY item_purchased
ORDER BY  AVG(review_rating) DESC
LIMIT 5;

--Q4. Compare average purchase amount between standard and express shipping

SELECT shipping_type,
ROUND(AVG(purchase_amount),2)
FROM customer_table 
WHERE shipping_type in ('Express','Standard')
GROUP BY shipping_type

--Q5. Do subscribed customers spend more? Compare average spend and total revenue between 
-- subscribers and non-subscribers.

SELECT subscription_status,
COUNT(customer_id) as total_customers,
ROUND(AVG(purchase_amount),2) as average_amount,
ROUND(SUM(purchase_amount),2) as total_revenue
FROM customer_table
GROUP BY subscription_status
ORDER BY total_revenue, average_amount desc;

--Q6. Top 5 products with highest percentage of purchases with discount applied

SELECT item_purchased , 
ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/ COUNT(*),2) as discount_rate
FROM customer_table
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

--Q7. Customer Segmentation into New, Returning and Loyal Customers

WITH customer_type AS (
SELECT customer_id, previous_purchases,
CASE 
	WHEN previous_purchases = 1 THEN 'New'
	WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
	ELSE 'Loyal'
	END AS customer_segment
FROM customer_table
)
SELECT customer_segment, COUNT(*) AS "Number of customers"
FROM customer_type
GROUP BY customer_segment

--Q8. Are repeat buyers (buyers with more than 5 previous purchases) also likely to subscribe?

SELECT subscription_status,
COUNT(customer_id) as repeat_buyers
FROM customer_table
WHERE previous_purchases > 5
GROUP BY subscription_status

--Q9. Revenue Contribution by age group?

SELECT age_group,
SUM(purchase_amount) as total_revenue
FROM customer_table
GROUP BY age_group
ORDER BY total_revenue DESC;








