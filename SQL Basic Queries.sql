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

                                       -- BASIC QUERIES


--Q1. RETRIEVE ALL BOOKS WITH FICTION GENRES AVAILABLE IN BOOKS TABLE
SELECT title, genre FROM books
WHERE genre='Fiction';

--Q2. FIND BOOKS PUBLISHED AFTER THE YEAR 1950
SELECT title, genre, published_year FROM books
WHERE published_year>'1950';

--Q3. LIST ALL THE CUSTOMERS FROM CANADA
SELECT * FROM customers
WHERE country='Canada';

--Q4. SHOW ORDERS PLACED IN NOVEMBER 2023
SELECT * FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

--Q5. RETRIEVE THE TOTAL STOCK OF BOOKS AVAILABLE
SELECT SUM(stock) AS Stock_sum FROM books;

--Q6. FIND THE DETAILS OF THE MOST EXPENSIVE BOOK
SELECT * FROM books ORDER BY price DESC LIMIT 5;

--Q7. SHOW ALL THE CUSTOMERS WHO ORDERED MORE THAN 1 QUANTITY OF A BOOK
SELECT * FROM orders
WHERE quantity>1;

--Q8. RETRIEVE ALL ORDERS WHERE TOTAL AMOUNT EXCEEDS $100
SELECT * FROM orders
WHERE total_amount>100.00;

--Q9. LIST ALL GENRES AVAILABLE IN BOOKS TABLE
SELECT DISTINCT genre FROM books;

--Q10. FIND BOOKS WITH LOW STOCK
SELECT * FROM books ORDER BY stock ASC LIMIT 5;

--Q11. CALCULATE THE TOTAL REVENUE GENERATED FROM ALL ORDERS
SELECT SUM(total_amount) FROM orders;

