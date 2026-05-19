CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);

INSERT INTO customers (first_name, last_name, city)
VALUES
('Ali', 'Khan', 'Muscat'),
('Sarah', 'Smith', 'Dubai'),
('John', 'Doe', 'Muscat'),
('Fatima', 'Ahmed', 'Doha'),
('Emily', 'Brown', 'Dubai'),
('Daniel', 'Wilson', 'Muscat');

INSERT INTO products (product_name, category, price)
VALUES
('Laptop', 'Electronics', 850),
('Phone', 'Electronics', 600),
('Desk Chair', 'Furniture', 120),
('Monitor', 'Electronics', 300),
('Notebook Pack', 'Stationery', 25),
('Office Desk', 'Furniture', 200);

INSERT INTO orders (customer_id, product_id, quantity, order_date)
VALUES
(1, 1, 1, '2025-01-10'),
(2, 2, 2, '2025-01-11'),
(3, 3, 1, '2025-01-15'),
(1, 4, 2, '2025-01-17'),
(4, 5, 5, '2025-01-20'),
(5, 2, 1, '2025-01-21'),
(6, 6, 1, '2025-01-23'),
(2, 1, 1, '2025-01-25'),
(3, 5, 3, '2025-01-27'),
(1, 2, 1, '2025-01-30');

