CREATE TABLE Amazon(
ITEM_ID INT PRIMARY KEY,
ITEM_NAME TEXT,
CATEGORY TEXT,
ITEM_DESC TEXT,
PRICE REAL,
DISCOUNT_PERCENT INT,
SHIPS_IN_DAYS INT,
PRIME_OR_NOT TEXT);

INSERT INTO Amazon(ITEM_ID, ITEM_NAME, CATEGORY, ITEM_DESC, PRICE, DISCOUNT_PERCENT, SHIPS_IN_DAYS, PRIME_OR_NOT) VALUES
(1, 'Humidifier', 'Appliances', '2l battery-operated 48hr lifespan', 249.99, 11, 3, 'no'),
(2, 'Set of cutlery', 'Kitchen', '60 pack, 20 forks, knives and spoons, stainless steel', 69.99, 8, 1, 'no'),
(3, 'Ballpoint pens', 'Stationery', '16 pack, blue and black ink, smooth writing', 24.99, 15, 1, 'yes'),
(4, 'Fridge', 'Appliances', 'Large capacity, 10 year warranty, includes freezer section', 699.99, 25, 7, 'yes'),
(5, 'Laptop', 'Technology', '72hr battery lifespan, 512GB storage, OLED screen, 8GB RAM', 899.99, 15, 2, 'yes'),
(6, 'Wireless headphones', 'Technology', '40hr battery, deep bass, rich audio, 3 year warranty', 159.99, 30, 1, 'yes'),
(7, 'Fresh vegetables', 'Grocery', 'Fresh veg delivered to doorstep', 14.99, 0, 1, 'no'),
(8, 'PS5', 'Technology', 'New best-seller console, 1TB storage, 5 year warranty, includes 6 months free PS plus', 449.99, 7, 5, 'yes'),
(9, 'Steam iron', 'Appliances', '800ml, quick steam, flawless ironing, 8 year warranty', 54.99, 16, 4, 'no'),
(10, 'Mechanical pencils', 'Stationery', '10 pack, including 5 cases of graphite, easy and writes well', 21.99, 3, 1, 'yes');

SELECT ITEM_NAME FROM Amazon
WHERE CATEGORY = 'Appliances' AND PRICE < 300;
-- #this is the query for items with 'battery' in it
SELECT ITEM_NAME, ITEM_DESC FROM Amazon
WHERE ITEM_NAME LIKE '%battery%' OR ITEM_DESC LIKE '%battery%';
SELECT ITEM_NAME, ITEM_DESC FROM Amazon
WHERE CATEGORY = 'Technology' AND SHIPS_IN_DAYS < 5;
SELECT ITEM_NAME FROM Amazon
WHERE PRIME_OR_NOT = 'yes' AND PRICE < 500;
