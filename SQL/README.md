# Pizza Sales Analysis Using SQL

## Project Overview

This project explores a pizza restaurant's sales data using SQL to answer key business questions related to revenue, customer purchasing behavior, and product performance.

The objective was to use SQL to transform raw transactional data into actionable business insights that could help improve decision-making in areas such as inventory planning, marketing, staffing, and sales strategy.

---

## Business Problem

The restaurant collects thousands of sales transactions but lacks clear visibility into:

- Sales performance
- Customer ordering patterns
- Best-selling pizzas
- Revenue-generating products
- Peak business hours
- Category performance

Using SQL, this project answers these questions and provides insights that can support data-driven business decisions.

---

## Dataset

The analysis uses four relational tables.

| Table | Description |
|--------|-------------|
| `orders` | Order date and time |
| `order_details` | Individual pizza items and quantities ordered |
| `pizzas` | Pizza size and price information |
| `pizza_types` | Pizza names, categories, and ingredients |

---

## Business Questions Answered

### Basic Analysis

- How many orders were placed?
- What is the total revenue generated?
- Which pizza is the most expensive?
- What is the most commonly ordered pizza size?
- What are the top 5 most ordered pizza types?

### Intermediate Analysis

- How many pizzas were sold in each category?
- During which hours are the most orders placed?
- What is the distribution of pizzas across categories?
- What is the average number of pizzas ordered per day?
- Which three pizza types generate the most revenue?

### Advanced Analysis

- What percentage of total revenue does each pizza type contribute?
- How does cumulative revenue change over time?
- What are the top three revenue-generating pizzas within each category?

---

## SQL Skills Demonstrated

This project demonstrates practical SQL skills commonly used by Data Analysts and Analytics Engineers.

- Data retrieval using `SELECT`
- Filtering and sorting
- Aggregate functions (`SUM`, `COUNT`, `AVG`)
- Multi-table `JOIN`s
- Grouping and aggregation
- Subqueries
- Window Functions
  - `RANK()`
  - `SUM() OVER()`
- Date and time analysis
- Revenue calculations
- Business-focused data analysis



## Approach

The analysis followed a structured workflow:

1. Explored the dataset and relationships between tables.
2. Joined tables to create a complete sales dataset.
3. Calculated sales and revenue metrics.
4. Analyzed customer ordering behavior.
5. Identified best-selling and highest-revenue products.
6. Used window functions to rank products and calculate cumulative revenue.
7. Summarized findings into business insights.

---

## Key Business Insights

The SQL analysis helps answer important business questions such as:

- Which pizzas generate the highest revenue? The Thai Chicken Pizza generates 43434.25
- Which pizza is most popular? The Classic Deluxe Pizza  with a total of 2453
- What hours experience the highest customer demand? 12th hour had highest demand with  2520  orders
- Which pizza categories contribute most to sales? Classic has highest number of sales with 26.91% or total revenue


These insights can help management optimize pricing, staffing, inventory planning, and promotional campaigns.

---

## Business Value

This analysis can support decisions such as:

- Scheduling more staff during peak ordering hours.
- Increasing inventory for popular pizzas.
- Promoting high-revenue pizza types.
- Designing category-based marketing campaigns.
- Monitoring overall sales performance over time.

---

## Technologies Used

- SQL
- PostgreSQL (ANSI SQL compatible)
- CSV datasets
- Git
- GitHub

---

## Skills Demonstrated

- SQL
- Relational Database Management
- Data Cleaning
- Data Aggregation
- Business Intelligence
- Revenue Analysis
- Customer Behavior Analysis
- Window Functions
- Analytical Thinking

---


