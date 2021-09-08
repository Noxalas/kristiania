/*
	1. Lager en rangert liste over land etter antall mennesker per kvadratkilometer.
    (Tips: Se etter tabell som inneholder befolkning og km2for å komme igang. 
    Bruk matematiske operatorer i spørringen.)
*/
SELECT Name, (Population / SurfaceArea) AS PopulationDensity, Region
FROM country
WHERE Region LIKE "Nordic Countries"
ORDER BY PopulationDensity DESC;

/*
	2. Summerer hva totalt folketall per verdensdel(altså for alle verdensdeler)er, 
    sortert på folketall (synkende rekkefølge).
*/
SELECT DISTINCT Continent, Sum(Population) AS TotalPopulation
FROM country
GROUP BY Continent
ORDER BY TotalPopulation DESC;

/*
	3. Dobbeltsjekk svaret fra oppgaven over ved å manuelt summere alle folketallene fra svaret,
    og så sammenlikne de med en ny spørring som henter ut summen av verdens befolkning.
*/

SELECT Sum(Population) AS TotalPopulation
FROM country;

/*
	4. List ut landkode, navn og uavhengighetsår, sortert på år og deretter navn, 
    for alle land som har oppgitt et uavhengighetsår. (Tips: Noe med NULL.)
*/

SELECT Code, Name, IndepYear 
FROM country
WHERE IndepYear IS NOT NULL
ORDER BY IndepYear, Name;

/*
	5. Hent ut alle land som har 'W'som mellomste bokstav i landkoden sin.
*/
SELECT *
FROM country 
WHERE Code LIKE "_W_";

/*
	6. Hent ut alle data for landene som begynner på 'N', 'O'eller 'P'.Sorter de alfabetisk på navn.
*/
SELECT *
FROM country 
WHERE Name BETWEEN 'N' AND 'Q' -- Her funket ikke det! Bruk OR LIKE, eller REGEXP
ORDER BY Name ASC;

/*
	7. Hent ut alle språkdata for landene som har et offisielt språk som snakkes av 99% eller mer av befolkningen i landet. 
    Sorter etter synkende prosentverdi, deretter alfabetisk på språk.
*/
SELECT CountryCode, Language, Percentage
FROM countrylanguage
WHERE IsOfficial = 'T' AND Percentage >= 99
ORDER BY Percentage DESC, Language ASC;

/*
	8. Hent ut landkode, navn og kontinent for alle land i Amerika (både Nord-Amerika og Sør-Amerika). 
    Sorter alfabetisk på landkode.
*/
SELECT Code, Name, Continent
FROM country
WHERE Continent LIKE "%America"
ORDER BY Code ASC;

/*
	9.Hent ut antall land per kontinent for alle kontinentene.
*/
SELECT Continent, Count(*) AS Countries
FROM country
GROUP BY Continent
ORDER BY Countries DESC;

/*
	10.Hent ut kontinent og antall land i dette kontinentet, for de kontinentene som har 30 eller fler land.
    Sorter på antall land i synkende rekkefølge.
*/
SELECT Continent, Count(*) AS Countries
FROM country
GROUP BY Continent
HAVING Countries >= 30
ORDER BY Countries DESC;

/*
	Sammensetting av flere tabeller.
*/
SELECT Code, Name, Continent, Language, Percentage
FROM country
INNER JOIN countrylanguage 
ON country.Code = countrylanguage.CountryCode
WHERE Percentage >= 80 AND IsOfficial = 'T'
ORDER BY Code ASC;