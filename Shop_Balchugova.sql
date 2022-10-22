CREATE DATABASE shop;

USE shop;

CREATE TABLE categories
(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(255) NOT NULL
);

CREATE TABLE products 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	price DECIMAL(10, 2) NOT NULL,
	categoryId INT NOT NULL,
	FOREIGN KEY (categoryId) REFERENCES categories (id)
		ON UPDATE CASCADE
);
 
INSERT INTO categories(name)  
VALUES ('Vegetables'), ('Fruits'), ('MilkProducts');

INSERT INTO products(name, price, categoryId) 
VALUES ('Cucumbers', 75.00, 1), ('Apples', 105.50, 2), ('Yogurt', 40.50, 3);

DELETE FROM products 
WHERE price > 100;
 
UPDATE products 
SET price = price * 4, name = 'Tomatoes'
WHERE id = 1;

SELECT * FROM categories;

SELECT * FROM products;