CREATE TABLE IF NOT EXISTS users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

INSERT INTO users (username, email)
VALUES 
    ('JohnDoe', 'john.doe@example.com'),
    ('JaneSmith', 'jane.smith@example.com'),
    ('MikeBrown', 'mike.brown@example.com'),
    ('AliceJohnson', 'alice.johnson@example.com'),
    ('ChrisWhite', 'chris.white@example.com'),
    ('EmmaClark', 'emma.clark@example.com'),
    ('LiamHarris', 'liam.harris@example.com'),
    ('OliviaMartin', 'olivia.martin@example.com'),
    ('NoahTaylor', 'noah.taylor@example.com'),
    ('SophiaLewis', 'sophia.lewis@example.com');


SELECT * FROM users;

-- DML Commands

CREATE TABLE IF NOT EXISTS employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
    );

-- Inserting into the table

INSERT INTO employees( name, email, department, salary)
VALUES
    ('Musharraf', 'musharraf02@gmail.com', 'CS', 230000.0),
    ('ALi', 'aLif02@gmail.com', 'AI', 270000.0),
    ('Khurram', 'khurram@gmail.com', 'CS', 220000.0),
    ('farhan', 'farhan@gmail.com', 'AI', 560000.0),
    ('hassan', 'hassan@gmail.com', 'CS', 260000.0),
    ('zammer', 'zammer@gmail.com', 'ELE', 2120000.0),
    ('maqsood', 'maqsood@gmail.com', 'AGRI', 230000.0),
    ('main', 'main@gmail.com', 'IT', 234000.0);


-- Reading from the table


SELECT * FROM employees;

SELECT * FROM employees WHERE department='CS';

SELECT * FROM employees WHERE salary > 230000;

SELECT department, salary FROM employees;


-- Update The Table

UPDATE employees SET salary = 10000 WHERE department = 'CS';

SELECT * FROM employees WHERE department='CS';

UPDATE employees SET name = 'Musharraf Hamraz' WHERE name = 'Musharraf';


-- Delete From Table

Delete From employees WHERE department = 'CS';

SELECT * FROM employees;



