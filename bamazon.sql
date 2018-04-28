DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INTEGER NOT NULL UNIQUE,
  product_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (10101, "basketball", "sporting goods", 40.00, 12);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (20202, "soccer ball", "sporting goods", 30.00, 6);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (30303, "golf club", "sporting goods", 50.00, 47);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (40404, "electric bass guitar", "music", 320.00, 17);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (50505, "guitar amp", "music", 400.00, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (60606, "acoustic guitar", "music", .700, 6);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (70707, "paint brush", "home improvement", 8.00, 35);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (80808, "hammer", "home improvement", 19.50, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (90909, "hoop dreams", "dvds", 11.00, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (11111, "fight club", "dvds", 13.75, 11);

ALTER TABLE products
  ADD COLUMN product_sales DECIMAL(10,2) NULL;
  
USE bamazon;

CREATE TABLE departments (
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(45),
  over_head_costs DECIMAL(10,2) NULL,
  PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs)
VALUES 
	("sporting goods", 3000),
  ("music", 1500),
  ("home improvement",2000),
  ("dvds", 3200);
  
SELECT * FROM departments;