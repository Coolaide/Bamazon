CREATE DATABASE ElectronicStoreDB;

USE ElectronicStoreDB;

CREATE TABLE StoreStock(
category VARCHAR(100),
quantity INT(100) NOT NULL,
);

INSERT INTO StoreStock (department, quantity)
VALUES ("Electronics", 1,826), 
("Apparel", 294), 
("Books", 53),
("Footwear", 142)
;

CREATE TABLE Apparel(
Category_Type VARCHAR(100) NOT NULL,
Quantity INT (100) NOT NULL
);

INSERT INTO Apparel (Category, Quantity)
VALUES ("Footwear", 142),
("Shirts", 152),
("Jeans", 0),
("Dresses", 0),
("Socks", 0), 
("Sleepwear", 0),
("Jackets & Coats", 0),
("Swimwear", 0)
;

CREATE TABLE Footwear(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL
);

INSERT INTO Footwear (Category, Product, Brand, Price, Quantity)
VALUES ("Boots", "UGG Classic Short II", "UGG", 159.95, 35),
("Boots", "UGG Kesey", "UGG", 169.95, 23),
("Heels", "Vince Camuto Vayda Dress Shooties", "Vince Camuto", 129.00, 8),
("Heels", "Calvin Klein Cherilyn Ankle-Strap", "Calvin Klein", 129.00, 6),
("Sneakers", "Nike Women's Free Run 2017", "Nike", 74.98, 24),
("Sneakers", "Nike Women's Air Huarache", "Nike", 98.98, 15),
("Sandals", "Steve Madden Women's Irenee Two-Piece Sandals", "Steve Madden", 79.00, 26),
("Sandals", "Nine West Pruce Block-Heel Sandals", "Nine West", 89.00, 5)
;

CREATE TABLE Shirts(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL
);

INSERT INTO Shirts (Category, Product, Brand, Price, Quantity)
VALUES ("Tee-Shirt", "IZOD Stretch Tee-Shirt", "IZOD", 19.95, 15),
("Polo Shirt", "Polo Ralph Lauren Classic-Fit", "Polo Ralph Lauren", 89.95, 35),
("Button-Down", "Tommy Hilfiger Long-Sleeve Twain Check Shirt", "Tommy Hilfiger", 39.00, 13),
("Button-Down", "Levi's Standard Barstow Denim Shirt", "Levi's", 21.99, 21),
("Tee-Shirt", "Sean John Melange Colorblocked Shirt", "Sean John", 74.98, 24),
("Sweater", "Polo Ralph Lauren Half-Zip Wool and Cashmere Blend Sweater,", "Polo Ralph Lauren", 98.50, 25),
("Sweater", "Alfani Men's Ribbed Full-Zip Sweater", "Alfani", 75.00, 16),
("Sweatshirt", "Nike Men's Therma Training Hoodie", "Nike", 49.00, 3)
;


CREATE TABLE Books(
Genre VARCHAR(100) NOT NULL,
Title VARCHAR (100)NOT NULL,
Author VARCHAR(100) NOT NULL,
Format VARCHAR (10),
Price DECIMAL (10,2)  NULL
Quantity INT (100) NOT NULL,
);

INSERT INTO Books (Genre, Title, Author, Format, Price, Quantity)
VALUES ("Fiction", 2),
("Christianity", 1),
("Biography", 1),
("History", 0),
("Mystery",1), 
("Cook Book", 0),
("Children Book", 1),
("Young Adult", 1)
;

INSERT INTO Books (Genre, Title, Author, Format, Price, Quantity)
VALUES ("Fiction", "The Rooster Bar", "John Grisham", "Paperback", 17.37, 10),
("Fiction", "Homegoing", "Yaa Gyasi", "Hardcover", 15.99, 13),
("Biography", "The Wisdom of Sundays: Life-Changing Insights from Super Soul Conversations", "Oprah Winfrey", "Audiobook", 21.99, 4),
("Christianity", "Soar!: Build Your Vision from the Ground Up", "T.D. Jakes", "Hardcover", 24.95, 8),
("Young Adult", "The Hate U Give", "Angie Thomas", "Paperback", 18.50, 9),
("Children Book", "How to Catch a Monster", "Adam Wallace & Andy Elkerton", "Hardcover", 9.79, 6),
("Mystery", "Two Kinds of Truth", "Michael Connelly", "Audiobook", 19.41, 3)
;

















CREATE TABLE Electronics(
Category_Type VARCHAR(100) NOT NULL,
Quantity INT (100) NOT NULL
);

INSERT INTO Electronics (Category, Quantity)
VALUES ("TV & Projectors", 273),
("Cameras", 471),
("Cell Phones", 300),
("Computer & Tablets", 271),
("Headphones",357), 
("Wireless Speakers", 154),
("Monitors", 0),
("Printers", 0)
;


CREATE TABLE TVnProjectors(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL
);

INSERT INTO TV & Projectors (Category, Product, Brand, Price, Quantity)
VALUES ("TV & Projectors", "Samsung 24-inch 720p LED TV", "Samsung", 450.00, 46),
("TV & Projectors", "Samsung 32-inch 1080p Smart LED TV", "Samsung", 860.00, 34),
("TV & Projectors", "LG 43-inch 4K Smart LED TV", "LG", 799.00, 81),
("TV & Projectors", "Sony 55-inch 4K Ultra HD Smart LED TV", "Sony", 2780.00, 36),
("TV & Projectors", "Vizio D32F-E1 Series 32inch LED Smart TV", "Vizio", 2130.00, 11),
("TV & Projectors", "Vizio 50-inch 1080p Smart LED TV", "Vizio", 2499.00, 39),
("TV & Projectors", "Epson Home Theater Projector 1080p 3D LCD", "Epson", 2699.00, 16),
("TV & Projectors", "JVC  DLA-X70 Home Cinema 4K Project", "JVC", 2499.00, 10)
;

CREATE TABLE Cameras(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL)
;

INSERT INTO Cameras (Category, Product, Brand, Price, Quantity)
VALUES ("Cameras", "Canon EOS Rebel T6 Digital SLR Camera", "Canon", 89.00, 84),
("Cameras", "Fujifilm Instax Mini 8 Instant Camera", "Fujifilm", 63.90, 124),
("Cameras", "Nikon COOLPIX L340 Digital", "Nikon", 271.00, 56),
("Cameras", "Sony Cyber Shot DSC H300 20.1 MP", "Sony", 190.51, 112),
("Cameras", "Panasonic LUMIX DMC-FZ70 16.1 MP", "Panasonic", 397.89, 15),
("Cameras", "Canon EOS Rebel T6 DSLR", "Canon", 549.00, 51),
("Cameras", "Drograce WP200 Sports Action", "Drograce", 29.00, 7),
("Cameras", "Kodak PIXPRO Friendly Zoom FZ43 16 MP Digital", "Kodak", 99.90, 22)
;

CREATE TABLE Cell_Phones(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL)
;

INSERT INTO Cell_Phones (Category, Product, Brand, Price, Quantity)
VALUES ("Cell Phone", "Apple iPhone 8 4.7inch 64GB", "Apple", 834.00, 72),
("Cell Phone", "Samsung Galaxy S8 Plus 64GB", "Samsung", 824.99, 32),
("Cell Phone", "Samsung Galaxy Note8 64GB", "Samsung", 789.99, 46),
("Cell Phone", "Apple iPhone 7 4.7inch 32GB", "Apple", 502.23, 54),
("Cell Phone", "Nokia 6 32GB", "Nokia", 179.99, 10),
("Cell Phone", "LG X Power 16GB", "LG", 120.90, 58),
("Cell Phone", "HTC One M8 32GB 4G LTE", "HTC", 138.00, 20),
("Cell Phone", "Apple iPhone 8 Plus 256GB", "Apple", 1119.66, 8)
;

CREATE TABLE Computers_Tablets(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL)
;

INSERT INTO Computer_Tablets (Category, Product, Brand, Price, Quantity)
VALUES ("Computer & Tablets", "Dell Latitude E7250 Intel Core Laptop", "Dell", 679.00, 35),
("Computer & Tablets", "Alienware AW17R3-7092SLV Laptop", "Alienware", 1297.27, 54),
("Computer & Tablets", "HP Pavilion 15t Gaming and Business Power Touch Laptop", "HP", 1049.00, 23),
("Computer & Tablets", "LG gram 14Z970 i5 14inch Touchscreen Laptop", "LG", 1099.99, 40),
("Computer & Tablets", "Lenovo Flagship Y700 Laptop", "Lenovo", 1249.00, 31),
("Computer & Tablets", "Lenovo Tab 10 Tablet", "Lenovo", 106.99, 12),
("Computer & Tablets", "Samsung Galaxy Tab E 9.6 inch Tablet", "Samsung", 169.00, 40),
("Computer & Tablets", "Apple iPad Air 2 MH1J2LL/A 9.7 inch Tablet", "Apple", 499.00, 36)
;

CREATE TABLE HeadPhones(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Wireless BOOLEAN NOT NULL,
Buds BOOLEAN NOT NULL,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL)
;

INSERT INTO HeadPhones (Category, Product, Brand, Wireless, Buds, Price, Quantity)
VALUES ("Headphones", "SENSO Bluetooth Headphones", "Senso", TRUE, TRUE, 29.97, 36),
("Headphones", "QuietComfort 35 Headphones II", "Bose", TRUE, FALSE, 349.95, 30),
("Headphones", "SoundSport Pulse Headphones", "Bose", TRUE, TRUE, 199.95, 27),
("Headphones", "Beats Solo3 Wireless ", "Beats By Dre", TRUE, FALSE, 349.68, 87),
("Headphones", "Powerbeats3 Headphones", "Beats By Dre", TRUE, TRUE, 199.95, 74),
("Headphones", "LG Tone Pro Headphones", "LG", TRUE, TRUE, 69.00, 32),
("Headphones", "Skullcandy Jib Earbuds", "Skullcandy", FALSE, TRUE, 16.00, 6),
("Headphones", "Apple Airpods", "Apple", TRUE, TRUE, 229.00, 65)
;

CREATE TABLE Wireless_Speakers(
Product_ID INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Category VARCHAR(100) NOT NULL,
Product VARCHAR(100) NOT NULL,
Brand VARCHAR(100) NOT NULL,
Water_Resistant BOOLEAN,
With_Remote BOOLEAN,
Price DECIMAL (10,2) NOT NULL,
Quantity INT (100) NOT NULL)
;

INSERT INTO Computer_Tablets (Category, Product, Brand, Water_Resistant, With_Remote, Price, Quantity)
VALUES ("Wireless Speakers", "Anker SoundCore 2 Speaker", "Anker", TRUE, TRUE, 39.99, 10),
("Wireless Speakers", "JBL Charge 3 Speaker", "JBL", TRUE, FALSE, 124.98, 24),
("Wireless Speakers", "Bose SoundLink Revolve 360 Speaker", "Bose", TRUE, FALSE, 199.00, 47),
("Wireless Speakers", "Sony XB10 Portable Wireless Speaker", "Sony", FALSE, FALSE, 58.00, 6),
("Wireless Speakers", "Samsung Level Box PRO", "Samsung", TRUE, FALSE, 199.99, 10),
("Wireless Speakers", "LG LOUDR Speaker ", "LG", FALSE, FALSE, 299.99, 7),
("Wireless Speakers", "iHome - iBT77 Portable Speaker ", "Apple", FALSE, FALSE, 49.99, 14),
("Wireless Speakers", "Samsung - Radiant360 R1 Speaker", "Samsung", FALSE, FALSE, 499.00, 36)
;

