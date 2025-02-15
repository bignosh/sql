CREATE TABLE Employees(
EMPLOYEE_ID INT,
NAME TEXT,
EMPLOYER TEXT,
DATA_STATUS TEXT);

INSERT INTO Employees(EMPLOYEE_ID, NAME, EMPLOYER, DATA_STATUS) VALUES
(1456, 'Eric', 'DXC Ltd.', 'SECURE'),
(1452, 'Chris', 'DXC Ltd.', 'SECURE'),
(1292, 'Damian', 'DXC Ltd.', 'SECURE'),
(1655, 'Mack', 'DXC Ltd.', 'SECURE'),
(1107, 'Max', 'DXC Ltd.', 'MISSING'),
(1982, 'Tarun', 'DXC Ltd.', 'SECURE'),
(2000, 'Aizen', 'DXC Ltd.', 'MISSING');

SELECT NAME FROM Employees
WHERE DATA_STATUS = 'MISSING';
SELECT EMPLOYEE_ID, NAME FROM Employees
WHERE DATA_STATUS = 'SECURE' AND EMPLOYEE_ID > 1400;
