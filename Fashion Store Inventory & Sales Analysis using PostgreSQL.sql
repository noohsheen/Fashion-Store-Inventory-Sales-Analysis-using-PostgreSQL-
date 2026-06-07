CREATE DATABASE fashion_store;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    color VARCHAR(30),
    size VARCHAR(10),
    price NUMERIC(10,2),
    stock_quantity INT,
    units_sold INT,
    rating NUMERIC(2,1)
);

INSERT INTO products
(product_name, category, brand, color, size, price, stock_quantity, units_sold, rating)
VALUES
('Classic T-Shirt','T-Shirts','Nike','Black','M',799,100,250,4.5),
('Slim Fit Jeans','Jeans','Levis','Blue','32',1999,80,180,4.6),
('Summer Dress','Dresses','H&M','Red','S',1499,60,120,4.3),
('Casual Shirt','Shirts','Zara','White','L',1299,70,150,4.4),
('Denim Jacket','Jackets','Levis','Blue','M',2999,40,90,4.7),
('Running Shoes','Shoes','Puma','Black','9',3499,50,220,4.8),
('Formal Shirt','Shirts','Allen Solly','Blue','M',1599,65,110,4.2),
('Graphic Tee','T-Shirts','H&M','White','L',699,120,300,4.4),
('Cargo Pants','Jeans','Roadster','Green','34',1799,75,140,4.1),
('Party Dress','Dresses','Zara','Black','M',2499,35,80,4.6);

--data exploring
TRUNCATE TABLE products RESTART IDENTITY;

SELECT * FROM products LIMIT 5;

DROP TABLE IF EXISTS products;

--number of products 
SELECT COUNT(*) AS total_products
FROM products;

--category A
SELECT DISTINCT category
FROM products;