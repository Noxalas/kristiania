USE skole;

SELECT eksamen.snr, student.navn, eksamen.karakter
FROM eksamen
RIGHT JOIN student 
	ON eksamen.snr = student.snr
WHERE eksamen.fnr = 1 
	AND eksamen.dato = STR_TO_DATE('20-05-2008', '%d-%m-%Y');


CREATE OR REPLACE VIEW studentraad_view AS
SELECT navn, adresse 
	FROM student;

SELECT * FROM studentraad_view;


CREATE OR REPLACE VIEW rektor_bestekarakter_view 
AS SELECT fnr, max(karakter) AS bestekarakter
FROM eksamen
GROUP BY fnr;

SELECT * FROM rektor_bestekarakter_view;


CREATE OR REPLACE VIEW studieadm_eksamenoversikt_view
AS SELECT min(karakter) as bestekarakter, fnr as fagnr, snr
	FROM eksamen
GROUP BY fnr, snr;

SELECT* from studieadm_eksamenoversikt_view;

CREATE OR REPLACE VIEW studieadm_studentstudiepoeng_view
AS SELECT s.snr, s.navn, sum(f.studiepoeng) AS sumstudiepoeng
	FROM student AS s
JOIN studieadm_eksamenoversikt_view AS e ON s.snr = e.snr
JOIN fag AS f ON e.fagnr = f.fnr
GROUP BY s.snr;

SELECT * from studieadm_studentstudiepoeng_view;


SELECT fnr, fnavn, bestekarakter, studiepoeng
FROM fag AS f
JOIN studieadm_eksamenoversikt_view AS v ON f.fnr = v.fagnr
WHERE v.snr = 1;


UPDATE studentraad_view
SET adresse = 'Qveien 12'
WHERE navn = 'OLA';

SELECT * FROM student WHERE navn = 'OLA';


UPDATE rektor_bestekarakter_view
SET bestekarakter = 1.0 WHERE fnr = 1;


USE world;

SELECT name,
CASE
	WHEN UPPER(GovernmentForm) LIKE '%MONARCHY%' THEN 'Monarki'
    WHEN UPPER(GovernmentForm) LIKE '%REPUBLIC%' THEN 'Republikk'
    ELSE 'Annet'
END AS Styresett
FROM country;


SELECT co.name AS Land, COALESCE(ci.name, 'Har ingen byer!') AS 'By'
FROM country co
LEFT JOIN city ci
ON co.Code = ci.CountryCode
ORDER BY co.Name;


SELECT Name
FROM Country
WHERE Code NOT IN (SELECT CountryCode FROM City)
ORDER BY Name;


SELECT Name, (100 * (Population/(SELECT sum(Population)
	FROM country))) as WorldPopPercentage, SurfaceArea
FROM country
ORDER BY WorldPopPercentage DESC;


CREATE OR REPLACE VIEW maxmincities AS(
SELECT co.name, co.code, MAX(ci.population) AS maxPop, MIN(ci.population) AS minPop
FROM country co LEFT JOIN city ci
ON co.code = ci.CountryCode
GROUP BY CountryCode);


SELECT mm.name AS Country, ci.name AS BiggestCity, ci.Population AS Population,
ci2.name AS SmallestCity, ci2.population AS Population
FROM maxmincities mm LEFT JOIN
city ci ON ci.CountryCode = mm.Code
AND mm.maxPop = ci.Population
LEFT JOIN
city ci2 ON ci2.CountryCode = mm.Code
AND mm.minPop = ci2.Population
ORDER BY mm.name;