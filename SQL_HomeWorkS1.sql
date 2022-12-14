CREATE DATABASE homeWork1;

USE homeWork1;

CREATE TABLE phones
(
	id INT NOT NULL PRIMARY KEY,
    ProduktName VARCHAR(45),
    Manufaturer VARCHAR(40),
    ProductCout INT,
    Price INT 
);

INSERT phones
VALUES
(1,"iPhone X","Apple",3,76000),
(2,"iPhone 8","Apple",2,51000),
(3,"Galaxy S9","Samsung",2,56000),
(4,"Galaxy S8","Samsung",1,41000),
(5,"Galaxy S22","Samsung",3,76000),
(6,"Galaxy S22+","Samsung",6,96000),
(7,"Galaxy S22 Ultra","Samsung",7,119000),
(8,"Galaxy S21","Samsung",4,46000),
(9,"Galaxy S20","Samsung",5,40000);

SELECT *
FROM phones;

SELECT ProduktName,Manufaturer,Price
FROM phones
WHERE ProductCout > 2;

SELECT ProduktName,Manufaturer
FROM phones
WHERE Manufaturer LIKE "Samsung%";