
SELECT * FROM 'orders.csv' LIMIT 5;
--total number of orders
SELECT COUNT(order_id) AS total_orders FROM orders.csv;
--Calculate the total revenue generated from pizza sales

SELECT ROUND(SUM(d.quantity * p.price), 2) AS total_sales
FROM 'order_details.csv' AS d
INNER JOIN pizzas.csv AS p ON p.pizza_id = d.pizza_id;
--Identify the highest-priced pizza.
SELECT t.name,p.price FROM 'pizzas.csv' AS p 
JOIN 'pizza_types.csv' AS t ON  t.pizza_type_id = p.pizza_type_id
ORDER BY price DESC LIMIT 1;
--Identify the most common pizza size ordered.
SELECT p.size, COUNT(d.order_details_id) AS order_count
FROM 'order_details.csv' AS d
JOIN 'pizzas.csv' AS p ON d.pizza_id = p.pizza_id
GROUP BY p.size ORDER BY order_count DESC LIMIT 1;
--List the top 5 most ordered pizza types along with their quantities.
SELECT t.name,SUM(d.quantity) AS total_quantity
FROM 'order_details.csv' AS d JOIN 'pizzas.csv' AS p ON d.pizza_id = p.pizza_id
JOIN 'pizza_types.csv' AS t ON p.pizza_type_id = t.pizza_type_id
GROUP BY t.name ORDER BY total_quantity DESC LIMIT 5;


--Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT t.category, SUM(d.quantity) AS total_quantity
FROM 'order_details.csv' AS d JOIN 'pizzas.csv' AS p ON d.pizza_id = p.pizza_id
JOIN 'pizza_types.csv' AS t ON p.pizza_type_id = t.pizza_type_id GROUP BY t.category 
ORDER BY total_quantity DESC;
--Determine the distribution of orders by hour of the day
SELECT EXTRACT(HOUR FROM time) AS order_hour, COUNT(order_id) AS order_count
FROM 'orders.csv' GROUP BY order_hour ORDER BY order_hour;
--Join relevant tables to find the category-wise distribution of pizzas.
SELECT category, COUNT(name) AS unique_pizza_count
FROM 'pizza_types.csv'GROUP BY category;
--Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT ROUND(AVG(pizzas_per_day),0) AS avg_pizzas_per_day FROM (
    SELECT o.date,SUM(d.quantity) AS pizzas_per_day FROM 'orders.csv' AS o
    JOIN 'order_details.csv' AS d ON o.order_id = d.order_id GROUP BY o.date);
--Determine the top 3 most ordered pizza types based on revenue.
SELECT t.name, ROUND(SUM(d.quantity * p.price), 2) AS total_revenue
FROM 'order_details.csv' AS d JOIN 'pizzas.csv' AS p ON d.pizza_id = p.pizza_id
JOIN 'pizza_types.csv' AS t ON p.pizza_type_id = t.pizza_type_id
GROUP BY t.name ORDER BY total_revenue DESC LIMIT 3;
--Calculate the percentage contribution of each pizza type to total revenue.
SELECT t.category,ROUND((SUM(d.quantity * p.price) / (SELECT SUM(d2.quantity * p2.price)
FROM 'order_details.csv' d2 JOIN 'pizzas.csv' p2 ON d2.pizza_id = p2.pizza_id)) * 100, 2) AS revenue_percentage
FROM 'order_details.csv' AS d JOIN 'pizzas.csv' AS p ON d.pizza_id = p.pizza_id
JOIN 'pizza_types.csv' AS pt ON p.pizza_type_id = t.pizza_type_id
GROUP BY t.category ORDER BY revenue_percentage DESC;
--Analyze the cumulative revenue generated over time.
SELECT date,ROUND(SUM(daily_revenue) OVER (ORDER BY date), 2) AS cumulative_revenue
FROM (SELECT o.date, SUM(d.quantity * p.price) AS daily_revenue
    FROM 'orders.csv' AS o JOIN 'order_details.csv' AS d ON o.order_id = d.order_id
    JOIN 'pizzas.csv' AS p ON d.pizza_id = p.pizza_id GROUP BY o.date) ORDER BY date;
--Determine the top 3 most ordered pizza types based on revenue for each pizza category.
SELECT category, name, revenue FROM (SELECT t.category, t.name, 
ROUND(SUM(d.quantity * p.price), 2) AS revenue, RANK() OVER(PARTITION BY t.category ORDER BY SUM(d.quantity * p.price) DESC) AS rank_num
    FROM 'order_details.csv' AS d JOIN 'pizzas.csv' AS p ON d.pizza_id = p.pizza_id
    JOIN 'pizza_types.csv' AS pt ON p.pizza_type_id = t.pizza_type_id GROUP BY t.category, t.name
) AS ranked_table
WHERE rank_num <= 3;