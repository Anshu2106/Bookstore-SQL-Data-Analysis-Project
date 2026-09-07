# Bookstore-SQL-Data-Analysis-Project
## 📌 Project Overview
This project focuses on analyzing a bookstore database using PostgreSQL and SQL. The database is designed around books, customers, and orders to explore inventory, sales activity, customer behavior, and book-level performance.

The project contains both Basic SQL Queries and Advanced SQL Queries, with query outputs documented in the project report.

## 🎯 Objectives

-The main objectives of this project are to:
-Analyze bookstore book and inventory data.
-Explore books by genre, author, publication year, price, and stock.
-Analyze customer and order information.
-Identify sales and purchasing patterns.
-Compare book and author performance.
-Analyze customer spending and order activity.
-Identify inventory conditions such as low-stock and remaining stock.
-Practice SQL concepts used in real-world data analysis.

## 🗂️ Database Structure
The project is based on a relational bookstore database containing the following main entities:

## 📖 Books
Contains information related to books and inventory.

-Book Id - Unique identifier for each book.
-Title - Name of the book.
-Author - Author of the book.
-Genre - Book genre/category.
-Published Year - Year of publication.
-Price - Price of the book.
-Stock - Available stock.

## 👤 Customers
Contains customer-related information such as customer details and location.

## 🛒 Orders
Contains information about customer purchases, including order details, quantities, dates, and order amounts.
The relationships between these tables allow the project to connect books → customers → orders → sales insights.

## 📊 Project Analysis Flow
Books
  ↓
Book & Inventory Analysis
  ↓
Customers
  ↓
Customer & Order Analysis
  ↓
Orders
  ↓
Sales Analysis
  ↓
Customer & Inventory Insights

The analysis combines information from different tables using SQL joins and aggregation to produce meaningful business insights.

## 🔍 Analysis Performed
 1. Book & Inventory Analysis

-The project analyzes:
-Books by genre.
-Books published after a selected year.
-Book prices.
-Most expensive books.
-Low-stock books.
-Total available stock.
-Average book price by genre.

 2. Customer Analysis

-The project analyzes:
-Customers by country and city.
-Customers from selected locations.
-Customers with multiple orders.
-Customer spending.
-High-value customer activity.

 3. Order Analysis

-The project examines:
-Order quantities.
-Total order amounts.
-Orders containing multiple copies.
-High-value orders.
-Orders within selected date ranges.
-Relationships between customers and their orders.

 4. Sales Analysis
The project uses order and book information to analyze:

-Total revenue.
-Books sold by genre.
-Top-selling books.
-Author-level sales performance.
-Average price by genre.

 5. Inventory Insights
The project also connects stock information with order quantities to analyze:

-Remaining inventory after sales.
-Books that may require restocking.
-Inventory demand across genres.
-Book-level sales and stock performance.

## SQL Concepts Used

The project demonstrates the practical use of:

-SELECT
-WHERE
-BETWEEN
-DISTINCT
-ORDER BY
-LIMIT
-SUM()
-AVG()
-COUNT()
-GROUP BY
-HAVING
-JOIN
-LEFT JOIN
-COALESCE()
-CAST()
-Subqueries
-Date filtering
-Aggregate functions

These concepts were applied to answer business-oriented questions rather than only retrieving raw records.

## 📈 Key Findings
The dataset contains 500 book records and the project report documents results from both basic and advanced SQL analysis.
The analysis helps identify:
-The availability and distribution of books across genres.
-Books with comparatively low inventory.
-Higher-priced books.
-Customer purchasing activity.
-Repeat-order customers.
-High-value orders.
-Genre-level sales patterns.
-Author contribution to book sales.
-Remaining stock after considering order quantities.

-The project report includes query outputs for the different analyses, including outputs returning 500 records, 449 records, 315 records, 198 records, 135 records, and smaller filtered result sets depending on the query.

## 🛠️ Tools & Technologies

-PostgreSQL
-pgAdmin 4
-SQL
-Excel / CSV for dataset preparation

## 💡 Business Value

This project demonstrates how SQL can be used to convert raw bookstore data into useful business information.
The analysis can support decisions related to:

-📦 Inventory replenishment
-📚 Book selection and category management
-📈 Sales performance
-👥 Customer purchasing behavior
-✍️ Author performance
-💰 Revenue analysis
-📊 Data-driven business decisions

## 📌 Project Outcome

The project provides hands-on experience in relational database analysis using PostgreSQL. By connecting books, customers, and orders, the analysis moves from basic data retrieval to business-oriented insights involving sales, customers, and inventory.
It demonstrates the ability to write SQL queries, work with relational data, apply aggregation and joins, and interpret query results for practical decision-making.


Skills demonstrated: 
-PostgreSQL 
-SQL 
-Data Analysis 
-Excel Business Analysis
