CREATE DATABASE IF NOT EXISTS homework12DB;

USE homework12DB;


CREATE TABLE IF NOT EXISTS StoreStock(
serialNumber INT(100) AUTO_INCREMENT PRIMARY KEY NOT NULL,
product VARCHAR(50) NOT NULL,
category VARCHAR(100) NOT NULL,
stockQuantity INT(100) NOT NULL,
price DECIMAL(10,3) NOT NULL
);

INSERT INTO StoreStock (product, category, stockQuantity, price)
VALUES ("TV's", "Electronics", 50, 400.00), 
("Tablets", "Electronics", 15, 214.95),
("Printer", "Electronics", 10, 180.00),
("Cameras", "Electronics", 22, 319.00),
("Shirts", "Apparel", 40, 20.74), 
("Jeans", "Apparel", 55, 40.50),
("Dresses", "Apparel", 24, 30.99),
("Socks", "Apparel", 40, 20.74),
("Eloquent Javascript", "Books", 6, 24.35),
("Assata", "Books", 15, 94.99),
("Never Caught", "Books", 19, 22.00),
("Between the World and Me", "Books", 12, 16.25),
("Oxfords", "Shoes", 24, 160.75),
("Sneakers", "Shoes", 43, 84.99),
("Snow Boots", "Shoes", 16, 145.80), 
("Stilettos", "Shoes", 37, 173.00)
;



