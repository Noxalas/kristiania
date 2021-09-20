-- 1

SELECT * 
FROM city
WHERE Name LIKE "O%" AND Name LIKE "%o"
-- Kan forenkles til WHERE Name LIKE "O%o"
ORDER BY Name;


-- 2

SELECT country.Name AS CountryName, city.Name AS CityName, city.Population
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE city.Name LIKE "O%o"
ORDER BY CountryName, CityName;

-- 3

SELECT co.Name, ci.Name
FROM Country AS co LEFT JOIN City AS ci
ON co.Capital = ci.ID
ORDER BY co.Continent, co.Name;

-- 4

SELECT co.Name AS Country, Count(*) AS CityCount,
AVG(ci.Population) AS AvgCityPopulation
FROM country AS co JOIN City AS ci
ON co.Code = ci.CountryCode
GROUP BY co.code;

-- 5

SELECT country.Name AS CountryName, country.Population, 
	country.Continent, city.Name AS CityName, city.Population AS CityPopulation
FROM country
LEFT JOIN city ON country.Code = city.CountryCode
WHERE country.Population < 1000
ORDER BY CountryName;

-- 6

SELECT ci.Name, co.GovernmentForm
FROM country AS co
JOIN city AS ci
ON ci.CountryCode = co.Code
WHERE co.GovernmentForm LIKE "%onarchy%"
ORDER BY ci.Population DESC;

-- 7 

SELECT ci.Name, ci.Population, co.Continent
FROM Country AS co JOIN City AS ci
ON co.Code = ci.CountryCode
WHERE ci. Population >= 8000000
ORDER BY ci.Population DESC;

-- 8

SELECT name, count(*) AS antSpraak
FROM countrylanguage cl join country c
ON cl.CountryCode = c.Code
WHERE c.Continent = 'Asia'
GROUP BY c.Code
HAVING antSpraak>9
ORDER BY antSpraak DESC;