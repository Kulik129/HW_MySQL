CREATE DATABASE SQL_Home_Work_S2;
USE SQL_Home_Work_S2;
-- 1. Используя операторы языка SQL, создайте таблицу “sales”

CREATE TABLE sales
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    order_date VARCHAR(20),
    count_product INT
);
-- Заполните ее данными.
INSERT INTO sales(order_date,count_product)
VALUES
("2022-01-01", 156),
("2022-01-02", 180),
("2022-01-03", 21),
("2022-01-04", 124),
("2022-01-05", 341);

/*2.  Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : 
меньше 100  -    Маленький заказ
От 100 до 300 - Средний заказ
больше 300  -     Большой заказ
*/
SELECT count_product,
CASE
	WHEN count_product < 100 THEN "Маленький заказ"
    WHEN count_product >= 100 AND count_product <= 300 THEN "Средний заказ"
    WHEN count_product > 300 THEN "Большой заказ"
    ELSE "FAIL"
END AS result
FROM sales;

-- 3. Создайте таблицу “orders”, заполните ее значениями

CREATE TABLE orders
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_id VARCHAR(20),
    amount VARCHAR(20),
    order_status VARCHAR(20)
);
    
INSERT INTO orders(employee_id,amount,order_status)
VALUES
("e03","15.00","OPEN"),
("e01","25.50","OPEN"),
("e05","100.70","CLOSED"),
("e02","22.18","OPEN"),
("e04","9.50","CLOSED");

SELECT * FROM orders;

/*Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED -  «Order is cancelled»
*/
SELECT *,
CASE
	WHEN order_status = "OPEN" 
		THEN "Order is in open state"
    WHEN order_status = "CLOSED" 
		THEN "Order is closed"
    WHEN order_status = "CANCELLED" 
		THEN "Order is cancelled"
    ELSE "FAIL"
END AS full_order_status
FROM orders;

