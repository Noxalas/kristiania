#DB1102 #Scripting #SQL

# DB1102 Session 1 Tasks

--------------------------------------

```sql
USE world;

-- 1
SELECT * FROM city;

-- 2
SELECT * FROM city WHERE CountryCode = 'NOR';

-- 3
SELECT Name, Population FROM city WHERE CountryCode = 'NOR';

-- 4
SELECT Count(*) AS 'Antall land' FROM country;

-- 5
SELECT Sum(Population) AS 'WorldPopulation' FROM country;

-- 6
SELECT Sum(Population) AS 'PopulationInAsia' FROM country WHERE Continent = 'Asia';

-- 7
SELECT Code, Name, SurfaceArea FROM country ORDER BY SurfaceArea ASC;

-- 8
SELECT Code, Name, Continent, Population, LifeExpectancy FROM country ORDER BY LifeExpectancy DESC, Population ASC;

-- 9
SELECT * FROM countrylanguage;

-- 10
SELECT city.ID, city.Name, city.Population, city.CountryCode, countrylanguage.CountryCode, countrylanguage.Language 
FROM city
JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode;

-- 11
SELECT Count(Language) FROM countrylanguage;

-- EXTRA
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Europe' ORDER BY LifeExpectancy ASC;

```