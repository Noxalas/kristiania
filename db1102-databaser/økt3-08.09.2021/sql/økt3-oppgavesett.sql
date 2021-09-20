/*
	Oppgave 1
*/

CREATE TABLE person (
	ID int NOT NULL AUTO_INCREMENT,
	Personnummer char(11) NOT NULL UNIQUE,
    Navn varchar(100) DEFAULT 'Ukjent',
    EPost varchar(100) UNIQUE,
    PRIMARY KEY (ID)
);


/*
	Oppgave 2
*/

INSERT INTO person (Personnummer, Navn, EPost)
VALUES ('12345678901', 'Ola Nordmann', 'ola@nordmann.no');

SELECT * FROM person;


/*
	Oppgave 3
*/

ALTER TABLE person
ADD Foedselsdato date;

SELECT * FROM person;


/*
	Oppave 4
*/

INSERT INTO person (Personnummer)
VALUE ('98765432109'); 

SELECT * FROM person;


/*
	Oppgave 5
*/

UPDATE person
SET Foedselsdato = '1990-01-01'
WHERE ID = 2;

SELECT * FROM person;


/*
	Oppgave 6
*/

INSERT INTO person (Personnummer, Navn, EPost, Foedselsdato)
VALUES ('69420694206', 'Nataniel Wlosek', 'Natiboy@gmail.com', '2002-07-29');

SELECT * FROM person;


/*
	Oppgave 7
*/

CREATE TABLE mailtest (
	Adresse varchar(75) NOT NULL UNIQUE,
    Type varchar(50),
    Person_ID int NOT NULL,
    PRIMARY KEY (Adresse),
    CONSTRAINT fk_mail_person FOREIGN KEY 
    (Person_ID) REFERENCES person(ID)
);

SELECT * FROM mailtest;


/*
	Oppgave 8
*/

INSERT INTO mailtest (Adresse, Person_ID)
SELECT EPost, ID
FROM person
WHERE EPost IS NOT NULL;

SELECT * FROM mailtest;

SELECT * FROM person;


/*
	Oppgave 9
*/

ALTER TABLE person
DROP COLUMN EPost;

SELECT * FROM person;


/*
	Oppgave 10
*/

CREATE TABLE personCopy (
	ID int AUTO_INCREMENT,
    PRIMARY KEY (ID)
);

DROP TABLE personCopy;


/*
	Oppgave 11
*/

SELECT Navn, DATE_FORMAT(Foedselsdato, '%d-%m-%Y') AS Foedselsdato, Personnummer
FROM person;

UPDATE person 
SET Foedselsdato = (STR_TO_DATE('20.02.1912', '%d.%m.%Y'))
WHERE Navn = 'Ola Nordmann';


/*
	Oppgave 12
*/

SELECT MAX(ID), Name
FROM city;

SELECT *
FROM information_schema.tables
WHERE table_schema = 'world';

-- Neste verdien til city.ID er 4080, der den ligger i schema informasjonen under AUTO_INCREMENT kolonnen.

-- 13

DELETE FROM city WHERE name = 'Bærum';

SELECT * FROM city WHERE name = 'Bærum';


-- 14

INSERT INTO city (Name, CountryCode, District, Population)
VALUES ('Pers by', 'NOR', 'Distrikt', 13);