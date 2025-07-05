# **`Unleashing Advanced Querying Power`**

<div margin="center" style="border: 1px solid #ccc; border-radius: 6px; padding: 16px;  margin-bottom: 20px;">

## **About the Project**
This project is a part of the **ALX Airbnb Database Module**, where you will implement advanced SQL querying and optimization techniques to work with a simulated Airbnb database. By diving into real-world challenges like optimizing query performance, writing complex SQL scripts, and applying indexing and partitioning, participants will gain hands-on experience with database management and performance tuning. This ensures you are equipped to handle large-scale applications where efficiency and scalability are critical.

## **Learning Objectives**
This project is designed to enhance the skills of **professional developers** by focusing on advanced database concepts and practices. By the end of this project, learners will:

1. Master Advanced SQL: Write complex queries involving joins, subqueries, and aggregations for data retrieval and analysis.

1. Optimize Query Performance: Analyze and refactor SQL scripts using performance tools like `EXPLAIN` and `ANALYZE`.

1. Implement Indexing and Partitioning: Understand and apply indexing and table partitioning to improve database performance for large datasets.

1. Monitor and Refine Performance: Continuously monitor database health and refine schemas and queries for optimal performance.

1. Think Like a DBA: Learn to make data-driven decisions about schema design and optimization strategies for high-volume applications.

## **Requirements**
To successfully complete this project, learners must:

Have a solid understanding of SQL fundamentals, including SELECT, WHERE, and GROUP BY clauses.
Be familiar with relational database concepts such as primary keys, foreign keys, and normalization.
Have basic knowledge of performance monitoring tools (EXPLAIN, ANALYZE).
Be able to set up and manage a GitHub repository for submitting their work.

## **Key Highlights**

### **1. Defining Relationships with ER Diagrams**
Learners start by creating an Entity-Relationship (ER) diagram, modeling relationships and dependencies between users, bookings, properties, and reviews in the Airbnb schema.

### **2. Complex Queries with Joins**
Gain expertise in SQL joins with tasks that require combining multiple tables to extract meaningful insights. Learners explore `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN` for various scenarios.

### **3. Power of Subqueries**
Develop proficiency with both correlated and non-correlated subqueries. Learn how to nest queries for advanced data analysis, such as calculating average ratings or filtering users based on activity thresholds.

### **4. Aggregations and Window Functions**
Unlock analytical capabilities using SQL aggregation functions like COUNT and SUM. Dive into advanced window functions like `ROW_NUMBER` and `RANK` to rank and analyze data sets.

### **5. Indexing for Optimization**
Learners identify performance bottlenecks and write SQL commands to create indexes for frequently queried columns. They analyze the impact of these changes on query execution times.

### **6. Query Optimization Techniques**
Write and analyze complex queries for retrieving detailed information about bookings, properties, users, and payments. Refactor queries to improve execution times by reducing redundancies and leveraging indexing.

### **7. Partitioning Large Tables**
Address performance challenges with large datasets by implementing table partitioning. Focus on partitioning the Booking table to improve queries on date ranges and compare performance before and after partitioning.

### **8. Performance Monitoring and Schema Refinement**
Learners monitor query performance using `SHOW PROFILE` and `EXPLAIN ANALYZE`, identify bottlenecks, and propose schema changes. Practical tasks include implementing these adjustments and documenting results.

This comprehensive task flow ensures you learn not only to write efficient SQL queries but also to think strategically about database design and optimization. The goal is to prepare you for real-world database challenges in high-performance applications.

</div>

# **`Tasks`**

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`0. Write Complex Queries with Joins (mandatory)`**
**Objective:** Master SQL joins by writing complex queries using different types of joins.

**Instructions:**

- Write a query using an `INNER JOIN` to retrieve all bookings and the respective users who made those bookings.

- Write a query using a`LEFT JOIN` to retrieve all properties and their reviews, including properties that have no reviews.

- Write a query using a `FULL OUTER JOIN` to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
- **Files:** **` joins_queries.sql, README.md`**
</div>

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`1. Practice Subqueries (mandatory)`**
**Objective:** Write both correlated and non-correlated subqueries.

**Instructions:**

- Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

- Write a correlated subquery to find users who have made more than 3 bookings.

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
- **Files:** **` subqueries.sql, README.md`**
</div>

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`2. Apply Aggregations and Window Functions (mandatory)`**
**Objective:** Use SQL aggregation and window functions to analyze data.

**Instructions:**

- Write a query to find the total number of bookings made by each user, using the COUNT function and `GROUP BY` clause.

- Use a window function (`ROW_NUMBER`, `RANK`) to rank properties based on the total number of bookings they have received.

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
- **Files:** **` aggregations_and_window_functions.sql, README.md`**
</div>

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`3. Implement Indexes for Optimization (mandatory)`**
**Objective:** Identify and create indexes to improve query performance.

**Instructions:**

- Identify high-usage columns in your `User`, `Booking`, and `Property` tables (e.g., columns used in WHERE, JOIN, ORDER BY clauses).

- Write SQL `CREATE INDEX` commands to create appropriate indexes for those columns and save them on `database_index.sql`

- Measure the query performance before and after adding indexes using `EXPLAIN` or `ANALYZE`.

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
- **Files:** **` index_performance.md`**
</div>

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`4. Optimize Complex Queries (mandatory)`**
**Objective:** Refactor complex queries to improve performance.

**Instructions:**

- Write an initial query that retrieves all bookings along with the user details, property details, and payment details and save it on `
`

- Analyze the query’s performance using `EXPLAIN` and identify any inefficiencies.

- Refactor the query to reduce execution time, such as reducing unnecessary joins or using indexing.

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
- **Files:** **` optimization_report.md, perfomance.sql`**

</div>

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`5. Partitioning Large Tables (mandatory)`**
**Objective:** Implement table partitioning to optimize queries on large datasets.

**Instructions:**

- Assume the `Booking` table is large and query performance is slow. Implement partitioning on the `Booking` table based on the `start_date` column. Save the query in a file `partitioning.sql`

- Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).

- Write a brief report on the improvements you observed.

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
- **Files:** **` partition_performance.md, partitioning.sql`**
</div>

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`6. Monitor and Refine Database Performance (mandatory)`**
**Objective:** Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

**Instructions:**

- Use SQL commands like SHOW PROFILE or EXPLAIN ANALYZE to monitor the performance of a few of your frequently used queries.

- Identify any bottlenecks and suggest changes (e.g., new indexes, schema adjustments).

- Implement the changes and report the improvements.

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
- **Files:** **` performance_monitoring.md`**
</div>

<div style="border: 1px solid #ccc; border-radius: 6px; padding: 16px; margin: 20px auto; max-width: 800px;">

## **`7. Manual Review (mandatory)`**

#### **Repo**

- **GitHub repository**: `alx-airbnb-database`
- **Directory**: `database-adv-script`
</div>


---
**`Copyright © 2025 ALX, All rights reserved.`**
---


