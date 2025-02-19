CREATE TABLE Customers(
NAME TEXT PRIMARY KEY,
LOCATION TEXT,
GRADE_VALUE INT
);

INSERT INTO Customers(NAME, LOCATION, GRADE_VALUE) VALUES
('George', 'Amsterdam', 112),
('Francis', 'New York', 101),
('Miles', 'New York', 62),
('Han', 'Tokyo', 87),
('Ella', 'Cardiff', 94),
('Robert', 'New York', 106),
('Walter', 'New Mexico', 42);

SELECT * FROM Customers
WHERE LOCATION = 'New York' OR GRADE_VALUE > 100;
SELECT * FROM Customers
WHERE LOCATION = 'New York' AND GRADE_VALUE > 100;
