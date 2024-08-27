--CREATE TABLE cars (
--	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--	name VARCHAR(255) NOT NULL,
--	model VARCHAR(255) NOT NULL,
--	"year" INTEGER NOT NULL,
--	price FLOAT NOT NULL
--);
--INSERT INTO cars (name, model, "year", price) VALUES
--('Toyota', 'Camry', 2017, 19000.00),
--('Honda', 'Fit', 2018, 15000.00),
--('Chevrolet', 'Sonic', 2019, 17000.00),
--('Hyundai', 'Tucson', 2018, 21000.00),
--('Subaru', 'Legacy', 2016, 18000.00),
--('Ford', 'Escape', 2019, 23000.00),
--('Mazda', 'CX-5', 2020, 25000.00),
--('Nissan', 'Rogue', 2021, 28000.00),
--('Audi', 'Q5', 2021, 45000.00),
--('BMW', 'X5', 2020, 60000.00),
--('Mercedes-Benz', 'E-Class', 2021, 55000.00),
--('Lexus', 'RX', 2022, 58000.00),
--('Porsche', 'Macan', 2022, 62000.00),
--('Tesla', 'Model X', 2021, 105000.00),
--('Bentley', 'Flying Spur', 2022, 250000.00),
--('Jaguar', 'F-PACE', 2021, 50000.00),
--('Land Rover', 'Discovery', 2020, 55000.00),
--('Volvo', 'XC60', 2021, 47000.00),
--('Genesis', 'GV80', 2021, 60000.00),
--('Maserati', 'Levante', 2021, 72000.00);
--

------------------------------
--to retreive all cars

--select * from cars
-------------------------------
--all cars manufactured in the year 2018.

--SELECT * FROM cars WHERE "year" = 2018;
----------------------------------------
--SELECT * FROM cars WHERE price > 20000;
-----------------------------------------

--to count by name
--SELECT name, COUNT(*)  FROM cars GROUP BY name;
------------------------------------------------------
--avg price of each year
--SELECT "year", AVG(price) FROM cars GROUP BY "year";
----------------------------------------------------
---most expensive car
--SELECT * FROM cars WHERE price = (SELECT MAX(price) FROM cars);
-------------------------------------------------
---price between 15000 and 30000
--SELECT * FROM cars WHERE price BETWEEN 15000 AND 30000;
-------------------------------------------------
-- increased the price of the  cars that are manufactured before 2015  that is beore than  2015) by 10% 
--UPDATE cars SET price = price +(price * 0.10) WHERE "year" < 2015;
--select *  from cars  ------------ to check
---------------------------------------------------
--DELETE FROM cars WHERE "year" < (SELECT strftime('%Y', 'now') - 10);
--select *  from cars
---------------------------------------

--SELECT * FROM cars AS c1 WHERE price = (
--  SELECT MAX(price) FROM cars AS c2
--   WHERE c1."year" = c2."year"
--);
---------------------------------------

--INSERT INTO cars (name, model, "year", price) 
--VALUES 
--('Toyota', 'Camry', 2015, 18000.00),
--('Toyota', 'Camry', 2012, 11000.00),
--('Toyota', 'Corolla', 2012, 10000.00);

-------------

--SELECT name, AVG(price) FROM cars GROUP BY name HAVING COUNT(*) > 3;
