-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert data into Customers
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'Diana', 'USA'),
(5, 'Eve', 'India'),
(6, 'Frank', 'Germany'),
(7, 'Grace', 'France'),
(8, 'Hank', 'Italy'),
(9, 'Ivy', 'Australia'),
(10, 'Jack', 'New Zealand'),
(11, 'Karen', 'Mexico'),
(12, 'Leo', 'Brazil'),
(13, 'Mia', 'Argentina'),
(14, 'Nick', 'South Africa');

-- Insert data into Orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 1, '2024-01-15', 150.00),
(2, 2, '2024-01-16', 200.00),
(3, 3, '2024-01-17', 300.00),
(4, 1, '2024-01-18', 100.00),
(5, 5, '2024-01-19', 250.00),
(6, 6, '2024-01-20', 400.00),
(7, 7, '2024-01-21', 150.00),
(8, 8, '2024-01-22', 180.00),
(9, 9, '2024-01-23', 120.00),
(10, 10, '2024-01-24', 220.00),
(11, 11, '2024-01-25', 300.00),
(12, 12, '2024-01-26', 450.00),
(13, 13, '2024-01-27', 280.00),
(14, 14, '2024-01-28', 320.00);

-- Insert data into Products
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(1, 'Laptop', 'Electronics', 800.00),
(2, 'Smartphone', 'Electronics', 500.00),
(3, 'Table', 'Furniture', 150.00),
(4, 'Chair', 'Furniture', 75.00),
(5, 'Monitor', 'Electronics', 200.00),
(6, 'Keyboard', 'Electronics', 50.00),
(7, 'Desk Lamp', 'Furniture', 30.00),
(8, 'Bookshelf', 'Furniture', 120.00),
(9, 'Mouse', 'Electronics', 25.00),
(10, 'Headphones', 'Electronics', 150.00),
(11, 'Sofa', 'Furniture', 500.00),
(12, 'Bed', 'Furniture', 700.00),
(13, 'Microwave', 'Appliances', 250.00),
(14, 'Refrigerator', 'Appliances', 1200.00);

-- Insert data into OrderDetails
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
(1, 1, 1, 1),
(2, 1, 4, 2),
(3, 2, 2, 1),
(4, 3, 3, 2),
(5, 4, 4, 1),
(6, 5, 5, 2),
(7, 6, 6, 1),
(8, 7, 7, 3),
(9, 8, 8, 1),
(10, 9, 9, 4),
(11, 10, 10, 1),
(12, 11, 11, 1),
(13, 12, 12, 1),
(14, 13, 13, 1),
(15, 14, 14, 1);


-- DROP TABLE IF EXISTS OrderDetails;

-- -- Drop Orders table next
-- DROP TABLE IF EXISTS Orders;

-- -- Drop Products table
-- DROP TABLE IF EXISTS Products;

-- -- Drop Customers table
-- DROP TABLE IF EXISTS Customers;