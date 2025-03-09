CREATE TABLE Orders(
ORD_NO TEXT,
PURCHASE_AMT INT,
ORD_DATE TEXT,
CUSTOMER_ID TEXT,
ID TEXT
);

INSERT INTO Orders(ORD_NO, PURCHASE_AMT, ORD_DATE, CUSTOMER_ID, ID) VALUES
('70001', 150, '2025-01-04', '3001', '5016'),
('70002', 96, '2023-2-26', '3002', '5017'),
('70003', 32, '2020-02-29', '3003', '5018'),
('70004', 575, '2012-07-13', '3004', '5019'),
('70005', 320, '2009-11-03', '3005', '5020'),
('70006', 800, '2021-04-05', '3006', '5021');

CREATE TABLE Salesman2(
ID TEXT PRIMARY KEY,
NAME TEXT,
CITY TEXT,
COMISSION INT
);

INSERT INTO Salesman2(ID, NAME, CITY, COMISSION) VALUES
('5016', 'James Newman', 'New York', 11),
('5017', 'Paul Knight', 'London', 10),
('5018', 'Guillaume de Bruyne', 'Paris', 15),
('5019', 'Guiseppe Marino', NULL, 13),
('5020', 'Luís Martinez', 'New Mexico', 16),
('5021', 'Natsuki Subaru', 'Tokyo', 12);

CREATE TABLE Customer(
CUSTOMER_ID INT,
CUST_NAME TEXT,
CITY TEXT,
ID TEXT
);

INSERT INTO Customer(CUSTOMER_ID, CUST_NAME, CITY, ID) VALUES
('3001', 'Brad Davis', 'New York ', '5016'),
('3002', 'Miguel García', 'Yucatán', '5017'),
('3003', 'Julian Greenwood', 'Paris', '5018'),
('3004', 'Hanz Zandvoort', 'Frankfurt', '5019'),
('3005', 'Julius McCabe', 'New York', '5016'),
('3006', 'Graham Cameron', 'Seattle', '5021');

SELECT Orders.ORD_NO, Customer.CUST_NAME, Salesman2.NAME 
FROM Orders JOIN Customer
ON Customer.CUSTOMER_ID = Orders.CUSTOMER_ID
JOIN Salesman2
ON Salesman2.ID = Orders.ID;

SELECT Orders.ORD_NO, Customer.CUST_NAME, Orders.PURCHASE_AMT, (Salesman2.COMISSION * Orders.PURCHASE_AMT)/100 AS 'Salesman Comission'
FROM Orders JOIN Customer
ON Orders.CUSTOMER_ID = Customer.CUSTOMER_ID
JOIN Salesman2
ON Salesman2.ID = Orders.ID;
