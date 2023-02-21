CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city TEXT NOT NULL,
    favorite_color TEXT NOT NULL
);



INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('John', 30, 180, 'New York', 'White'),
('Sarah', 25, 165, 'Orlando', 'Orange'),
('Jimbo', 48, 200, 'Waco', 'Black'),
('Timmy', 12, 150, 'New York', 'Red'),
('Ann', 68, 155, 'Dallas', 'Green');

SELECT * FROM person
ORDER BY height DESC

SELECT * FROM person
ORDER BY height ASC

SELECT * FROM person
ORDER BY age DESC

SELECT * FROM person
WHERE age > 20

SELECT * FROM person
WHERE age = 18

SELECT * FROM person 
WHERE age BETWEEN 20 AND 30

SELECT * FROM person
WHERE age != 27

SELECT * FROM person 
WHERE favorite_color != 'Red'

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue'

SELECT * FROM person 
WHERE favorite_color IN ('Orange', 'Green')

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue')

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple')
