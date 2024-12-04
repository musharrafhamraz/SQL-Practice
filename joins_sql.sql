-- BASIC QUERIES

-- 1. Retrieve all customers from the USA.

SELECT * From customers
WHERE Country = "USA";

-- 2. Find all orders placed on or after '2024-01-20'.

SELECT * FROM orders
WHERE OrderDate = '2024-01-20';

-- 3. List all products with a price greater than $100.

SELECT * FROM products
WHERE Price > 100;

-- JOINS

-- 1. Write a query to display the CustomerName, OrderID, and TotalAmount for all orders.

SELECT CustomerName, OrderID, TotalAmount FROM customers
INNER JOIN orders
ON customers.CustomerID = orders.OrderID;

-- 2. Get a list of all products ordered, along with their OrderID and Quantity.

SELECT orderdetails.OrderID, products.ProductName, orderdetails.Quantity FROM products
INNER JOIN orderdetails
ON products.ProductID = orderdetails.ProductID;


-- 3. Retrieve the CustomerName and the names of all products they have purchased.

SELECT c.CustomerName, p.ProductName FROM customers c
INNER JOIN orders o
ON c.CustomerID = o.CustomerID
INNER JOIN orderdetails od
ON o.OrderID = od.OrderID
INNER JOIN products p
ON od.ProductID = p.ProductID;