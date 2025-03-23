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

SELECT * FROM Salesman2
WHERE CITY IS NOT NULL;
