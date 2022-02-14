CREATE DATABASE shopSue;

USE shopSue;

CREATE TABLE categories
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(200) NOT NULL
);

CREATE TABLE products
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(225) NOT NULL,
	price DECIMAL(10, 2) NOT NULL,
	categoryId INT NOT NULL,
	FOREIGN KEY (categoryId) REFERENCES categories(id)
);

INSERT INTO categories(name)
VALUES 
	('Instruments'),
	('Food'),
	('Weapons');

INSERT INTO products(name, price, categoryId)
VALUES 
	('Axe', 894.55, 1),
	('Chainsaw', 1500, 1),
	('Hammer', 59.64, 1),
	('Ham', 500.13, 2),
	('Cheese', 349.99, 2),
	('Corn', 99.98, 2),
	('Shotgun', 64500, 3),
	('Revolver Colt', 24000, 3),
	('Bullets', 60.40, 3);

UPDATE products
SET name = 
	'Chainsaw Drujba', 
	price = 2000
WHERE id = 2;

DELETE FROM products
WHERE price > 100;