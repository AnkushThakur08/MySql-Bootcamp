-- CREATE DATABASE joins;

-- CREATE TABLE users(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE purchases(
--     Pr_ID INT AUTO_INCREMENT PRIMARY KEY,
--     order_date DATE,
--     AMOUNT INT,
--     users_id INT,
--     FOREIGN KEY (users_id) REFERENCES users(id)
-- );

-- INSERT INTO users(name, email)
-- VALUES("Mamta", "mam@test.com"),
-- ("Ankush", "ank@test.com"),
-- ("Tom", "Tom@gmail.com"),
-- ("Jerry", "jerry@jerry.com");

-- INSERT INTO purchases(order_date, AMOUNT, users_id)
-- VALUES(NOW(), 50000, 5);

