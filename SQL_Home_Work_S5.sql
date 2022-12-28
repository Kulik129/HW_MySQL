CREATE DATABASE SQL_Home_Work_S5;
USE SQL_Home_Work_S5;

CREATE TABLE cars
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT INTO cars(`name`,`cost`)
VALUES
	("Audi", 52642), 
    ("Mercedes", 57127 ),
    ("Skoda", 9000 ),
    ("Volvo", 29000),
	("Bentley", 350000),
    ("Citroen ", 21000 ), 
    ("Hummer", 41400), 
    ("Volkswagen ", 21600);
    
SELECT *
FROM cars;


-- 1. Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE VIEW `V_show_cars` AS
SELECT name, cost
FROM cars
WHERE cost < 25000;

SELECT *
FROM `V_show_cars`;

-- 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)
ALTER VIEW V_show_cars AS
SELECT name, cost
FROM cars
WHERE cost < 30000;

SELECT *
FROM `V_show_cars`;

-- 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW V_show_cars_S_A AS
SELECT name, cost
FROM cars
WHERE name = "Audi" or name = "Skoda"
;

SELECT *
FROM `V_show_cars_S_A`;

