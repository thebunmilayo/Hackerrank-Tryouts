-- Q1: Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.--
SELECT SUM(CI.POPULATION) FROM CITY CI
INNER JOIN COUNTRY CO ON CI.COUNTRYCODE = CO.CODE
WHERE CO.CONTINENT='ASIA';


-- Q2: Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.--
SELECT CI.NAME FROM CITY CI
INNER JOIN COUNTRY CO ON CI.COUNTRYCODE = CO.CODE
WHERE CO.CONTINENT = 'AFRICA';


-- Q3: Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.--
SELECT CO.CONTINENT, TRUNCATE(AVG(CI.POPULATION),0) FROM COUNTRY CO
INNER JOIN CITY CI ON CI.COUNRTYCODE = CO.CODE
GROUP BY CO.CONTINENT;