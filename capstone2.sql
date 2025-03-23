CREATE TABLE Restaurant(
NAME TEXT,
NEIGHBOURHOOD TEXT,
CUISINE TEXT,
REVIEW REAL,
PRICE TEXT,
HEALTH TEXT
);

INSERT INTO Restaurant(NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE, HEALTH) VALUES
('Montys Burger Bar', 'Elmsbrook street', 'American', 4.6, '££', '5'),
('Chik-Fil-A', 'Hanover road', 'Fast-Food', 4.7, '£', '5'),
('Costopoulous', 'Hanover road', 'Mediterranean', 4.4, '£££', '5'),
('Oriental Garden', 'Longfin way', 'Chinese', 4.8, '££', '5'),
('Brewers Fayre', 'Elmsbrook street', 'American', 3.9, '£', '4'),
('TGIF', 'Dandelion close', 'American', 4.3, '£££', '5'),
('McDonalds', 'Dandelion close', 'Fast-food', 4.2, '£££', '4'),
('KFC', 'Longfin way', 'Fast-food', 4.6, '££', '5'),
('Mrs Sungs Kitchen', 'Hanover road', 'Chinese', 4.9, '£', '5');

SELECT * FROM Restaurant;
SELECT DISTINCT NEIGHBOURHOOD FROM Restaurant;
SELECT NAME FROM Restaurant
WHERE CUISINE = 'American' or CUISINE = 'Fast-food';
SELECT NAME FROM Restaurant
WHERE PRICE = '£';
SELECT NAME FROM Restaurant
WHERE PRICE = '£' AND HEALTH = '5';
SELECT NAME FROM Restaurant
WHERE NAME LIKE 'C%' and NEIGHBOURHOOD = 'Hanover road';
SELECT NAME, NEIGHBOURHOOD FROM Restaurant
WHERE REVIEW > 4.5 AND PRICE = '£' OR PRICE = '££';
SELECT NAME, REVIEW FROM Restaurant
ORDER BY REVIEW DESC LIMIT 3;
SELECT NAME, CUISINE FROM Restaurant
WHERE NEIGHBOURHOOD = 'Longfin way';
