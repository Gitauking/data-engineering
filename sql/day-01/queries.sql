
-- Day 1: SQL fundamentals

CREATE TEMP TABLE sales (
    sale_id INTEGER,
    product TEXT,
    amount NUMERIC(10, 2),
    city TEXT
);

INSERT INTO sales (sale_id, product, amount, city)
VALUES
    (1, 'Laptop', 75000, 'Nairobi'),
    (2, 'Mouse', 1500, 'Nakuru'),
    (3, 'Keyboard', 3500, 'Nairobi'),
    (4, 'Monitor', 22000, 'Mombasa'),
    (5, 'Mouse', 1500, 'Nairobi');

-- Task 1: Retrieve product names
SELECT product
FROM sales;

-- Task 2: Retrieve sales made in Nakuru
SELECT *
FROM sales
WHERE city = 'Nakuru';

-- Task 3: Find products costing more than 2000
SELECT product, amount
FROM sales
WHERE amount > 2000;

-- Task 4: Sort from cheapest to most expensive
SELECT product, amount
FROM sales
ORDER BY amount ASC;

-- Task: Calculate qualifying sales per city

SELECT city, SUM(amount) AS total_sales
FROM sales
WHERE amount >= 5000
GROUP BY city
HAVING SUM(amount) > 50000
ORDER BY total_sales DESC;
