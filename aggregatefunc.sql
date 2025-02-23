CREATE TABLE Products(
PRODUCT_ID TEXT,
PRODUCT_NAME TEXT,
CATEGORY_ID TEXT,
QUANTITY INT,
PRICE REAL);

INSERT INTO Products(PRODUCT_ID, PRODUCT_NAME, CATEGORY_ID, QUANTITY, PRICE) VALUES
('1', 'Rice Krispies', 'Cereal', 30, 90.75),
('2', 'Penne pasta', 'Ready-to-cook', 12, 24),
('3', 'Glazed doughnuts', 'Bakery', 35, 62.5),
('4', 'Water', 'Essentials', 150, 250),
('5', 'Cakes', 'Bakery', 60, 132.5);

SELECT DISTINCT(CATEGORY_ID) FROM Products;
SELECT AVG(PRICE) FROM Products;
SELECT SUM(PRICE) * SUM(QUANTITY) FROM Products;
SELECT COUNT(CATEGORY_ID) AS Number_of_bakery_items FROM Products
WHERE CATEGORY_ID = 'Bakery';
