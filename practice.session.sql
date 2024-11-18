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