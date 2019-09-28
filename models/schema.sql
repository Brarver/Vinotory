DROP DATABASE IF EXISTS main_wine;
CREATE DATABASE main_wine;
USE main_wine;


CREATE TABLE main_inventory
(
id int NOT NULL AUTO_INCREMENT,
wine  VARCHAR(100) NOT NULL,
actualInventory INTEGER(5) NOT NULL,
shadowInventory INTEGER(5) NOT NULL,
boxType INTEGER(2) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE customerInfo (
clientName VARCHAR(100) NOT NULL,
primaryContact VARCHAR(100) NOT NULL,
phone VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
streetAddress VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL,
ST VARCHAR(2) NOT NULL,
zipcode VARCHAR(5) NOT NULL
);

CREATE TABLE orders (
	id int NOT NULL AUTO_INCREMENT,
	clientName VARCHAR(100) NOT NULL,
	wine VARCHAR(100) NOT NULL,
	actualOrdered INTEGER(5),
	promised INTEGER(5),
	boxTypeOne INTEGER(5),
	boxTypeTwo INTEGER(5),
	boxTypeThree INTEGER(5),
	labelsLeft INTEGER(5),
	notes VARCHAR(200);
)
