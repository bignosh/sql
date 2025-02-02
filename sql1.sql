CREATE TABLE supplier 
(SNO INT PRIMARY KEY,
SNAME VARCHAR(15),
CITY TEXT,
SALES INT);

INSERT INTO supplier(SNO, SNAME, CITY, SALES) VALUES
(1, "Amazon", "California", 5000000),
(2, "UPS", "New York", 3000000),
(3, "DHL", "Frankfurt", 3200000),
(4, "Royal Mail", "London", 3500000),
(5, "FedEx", "California", 2250000),
(6, "USPS", "New York", 8000000),
(7, "RWB", "Osaka", 2400000),
(8, "eBay", "Washington", 4750000);

SELECT * FROM supplier;
SELECT SNAME, SALES FROM supplier
WHERE SALES > 2500000;
SELECT SNAME, CITY FROM supplier
WHERE CITY IN("California", "New York", "Washington");
SELECT SNAME FROM supplier
WHERE SNAME LIKE "%a%";
SELECT SNAME, SALES FROM supplier
WHERE SALES BETWEEN 3000000 AND 8000000
