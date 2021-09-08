SELECT * FROM city;
SELECT * FROM city WHERE CountryCode = 'NOR';
SELECT Name, Population FROM city WHERE CountryCode = 'NOR';
SELECT Count(*) AS 'Antall land' FROM country;
SELECT Sum(Population) AS 'WorldPopulation' FROM country;
SELECT Sum(Population) AS 'PopulationInAsia' FROM country WHERE Continent = 'Asia';
SELECT Code, Name, SurfaceArea FROM country ORDER BY SurfaceArea ASC;
SELECT Code, Name, Continent, Population, LifeExpectancy FROM country ORDER BY LifeExpectancy DESC, Population ASC;
SELECT * FROM countrylanguage;
SELECT city.ID, city.Name, city.Population, city.CountryCode, countrylanguage.CountryCode, countrylanguage.Language 
FROM city
JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode;
SELECT Count(Language) FROM countrylanguage;


SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Europe' ORDER BY LifeExpectancy ASC;
