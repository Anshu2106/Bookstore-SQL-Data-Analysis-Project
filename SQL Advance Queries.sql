DROP TABLE IF EXISTS orders;--books;--customers;--orders;

CREATE TABLE books(
             Book_Id SERIAL PRIMARY KEY,
			 Title VARCHAR(100) NOT NULL,
			 Author VARCHAR(100) NOT NULL,
			 Genre VARCHAR(50),
			 Published_Year INT,
			 Price NUMERIC(10,2),
			 Stock INT			 
);
CREATE TABLE customers(
             Customer_Id SERIAL PRIMARY KEY,
			 Name VARCHAR(100) NOT NULL,
			 Email VARCHAR(100) NOT NULL,
			 Phone VARCHAR(15),
			 City VARCHAR(50), 
			 Country VARCHAR(50)		 
);
CREATE TABLE orders(
             Order_Id SERIAL PRIMARY KEY,
			 Customer_Id INTEGER REFERENCES customers(Customer_Id),
			 Book_Id INTEGER REFERENCES books(Book_Id),
			 Order_Date DATE,
			 Quantity INT,
			 Total_Amount NUMERIC(10,2)			 
);

SELECT * FROM books;
SELECT * FROM orders;
SELECT * FROM customers;

                                  --ADVANCE QUERIES

--Q1. RETRIEVE THE TOTAL NUMBER OF BOOKS SOLD FOR EACH GENRE
SELECT b.genre, SUM (o.quantity) AS books_sold
FROM books b
JOIN orders o ON b.book_id=o.book_id
GROUP BY b.genre;

--Q2. FIND THE AVERAGE PRICE OF BOOKS IN FANTASY GENRE
SELECT CAST(AVG(price) AS DECIMAL (10,2))FROM books
WHERE genre='Fantasy';

--Q3. LIST CUSTOMERS WHO HAVE PLACED ATLEAST 2 ORDERS
SELECT o.customer_id, c.name, COUNT (o.order_id) AS order_count
FROM orders o
JOIN
customers c ON o.customer_id=c.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(o.order_id)>=2;

--Q4. FIND MOST FREQENTLY ORDERED BOOK
SELECT o.book_id, b.title , COUNT (o.order_id) AS order_count
FROM orders o
JOIN books b ON b.book_id=o.book_id
GROUP BY o.book_id, b.title
ORDER BY order_count DESC LIMIT 5 ;

--Q5. SHOW TOP 3 MOST EXPENSIVE BOOKS OF FANTASY GENRE
SELECT * FROM books
WHERE genre='Fantasy' ORDER BY price DESC LIMIT 3;

--Q6. RETRIEVE THE TOTAL QUANTITY OF BOOKS SOLD BY EACH AUTHOR
SELECT b.author, SUM(o.quantity) FROM
books b
JOIN orders o ON b.book_id=o.book_id
GROUP BY b.author;

--Q7 LIST THE CITIES WHERE CUSTOMERS WHO SPENT OVER $100 ARE LOCATED
SELECT  DISTINCT c.city, total_amount FROM
customers c
JOIN orders o ON c.customDer_id=o.customer_id
WHERE o.total_amount>=100;

--Q8. FIND CUSTOMER WHO SPENT THE MOST ON ORDERS
SELECT c.name, SUM(o.total_amount) AS amount_spent
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.name
ORDER BY amount_spent DESC LIMIT 5;

--Q9. CALCULATE THE STOCK REMAINING AFTER FULFILLING ALL THE ORDERS
SELECT b.book_id, b.title, b.stock, COALESCE (SUM(quantity),0) AS order_quantity,
b.stock-COALESCE (SUM(quantity),0) AS remaining_quantity
FROM 
books b
LEFT JOIN orders o ON b.book_id=o.book_id
GROUP BY b.book_id
ORDER BY b.book_id ASC;