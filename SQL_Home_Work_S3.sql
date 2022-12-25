CREATE DATABASE SQL_Home_Work_S3;
USE SQL_Home_Work_S3;

CREATE TABLE staff
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    surname VARCHAR(20),
    specialty VARCHAR(20),
    seniority INT,
    salary INT,
    age INT
);
INSERT INTO staff(name,surname,specialty,seniority,salary,age)
VALUES
    ("Вася","Васькин","начальник",40000,100000,60),
    ("Петя","Петькин","начальник",8,70000,30),
    ("Катя","Каткина","инженер",2,70000,25),
    ("Саша","Сашкин","инженер",12,50000,35),
    ("Иван","Иванов","рабочий",40,30000,59),
    ("Петр","Петров","рабочий",20,25000,40),
    ("Сидор","Сидоров","рабочий",10,20000,35),
    ("Антон","Антонов","рабочий",8,19000,28),
    ("Юра","Юркин","рабочий",5,15000,25),
    ("Максим","Воронин","рабочий",2,11000,22),
    ("Юра","Галкин","рабочий",3,12000,24),
    ("Люся","Люськина","уборщик",10,10000,49);

SELECT * FROM staff;

-- 1. Отсортируйте поле “зарплата” (salary):
# в порядке убывания
SELECT *
FROM staff
ORDER BY salary DESC;
# и возрастания
SELECT *
FROM staff
ORDER BY salary;

-- 2. Выведите 5 максимальных зарплат (salary)
SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5;

-- 3. Подсчитать суммарную зарплату(salary) по каждой специальности (speciality)
SELECT SUM(salary) AS sum_salary, specialty
FROM staff
GROUP BY specialty;

-- 4. Найти количество сотрудников по специальности “Рабочий” (speciality) в возрасте от 24 до 42 лет.
SELECT COUNT(specialty) as count_specialty
FROM staff
WHERE age >23 and age <43
GROUP BY specialty
HAVING specialty = "Рабочий";

-- 5. Найти количество специальностей
SELECT COUNT(salary) AS sum_salary, specialty
FROM staff
GROUP BY specialty;
