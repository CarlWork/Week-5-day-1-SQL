CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name TEXT NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INTEGER NOT NULL
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'beer', 2.50, 2),
			(1, 'whiskey', 5.00, 1),
			(2, 'beer', 2.50, 1),
			(2, 'scotch', 6.00, 3),
			(3, 'seltzer', 3.00, 4),
			(3, 'vodka', 4.00, 2);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT person_id, SUM(product_price * quantity)
FROM orders
GROUP BY person_id;