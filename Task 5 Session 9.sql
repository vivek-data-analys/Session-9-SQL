create database users ;
use users;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO users (user_id, user_name, city)
VALUES
(1, 'Rahul Patel', 'Ahmedabad'),
(2, 'Priya Shah', 'Surat'),
(3, 'Amit Patel', 'Ahmedabad'),
(4, 'Neha Shah', 'Surat'),
(5, 'Vivek Mehta', 'Vadodara'),
(6, 'Pooja Patel', 'Ahmedabad'),
(7, 'Karan Desai', 'Rajkot'),
(8, 'Riya Desai', 'Rajkot'),
(9, 'Harsh Mehta', 'Vadodara'),
(10, 'Ankit Shah', 'Surat');

SELECT
    u1.user_name AS user1,
    u2.user_name AS user2,
    u1.city
FROM users u1
JOIN users u2
    ON u1.city = u2.city
    AND u1.user_id < u2.user_id;
    
    
---- Explanation ------

-------- I used ChatGPT to help me write the SQL query. 
AI suggested using a SELF JOIN to compare the users table with itself based on the city column. 
It also helped me debug the query by adding u1.user_id < u2.user_id, 
which prevents a user from being compared with themselves and avoids duplicate pairs. ---------------