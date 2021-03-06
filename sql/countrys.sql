

use world;

--  5. ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 
--  y una población superior a 100,000? 
select name, surface_area,population from countries
where surface_area < 501 and population > 100000;

-- 6¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a
 -- 200 y una esperanza de vida superior a 75 años? (1);
 select * from countries;
 
 select name, life_expectancy, capital, government_form from countries
 where government_form = 'Constitutional Monarchy'and capital > 200 and life_expectancy > 75;
 
 -- 7. ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de 
 -- Buenos Aires y tener una población superior a 500,000? La consulta debe devolver el nombre del país,
 -- el nombre de la ciudad, el distrito y la población. (2)
 
select cn.name as country, ct.name as city, ct.district,ct.population
from cities ct
join countries cn on cn.id = ct.country_id
where ct.country_code LIKE 'ARG' AND ct.population > 500000 and ct.district ='Buenos Aires';
 
-- 8¿Qué consulta harías para resumir el número de países en cada región? La consulta debe mostrar
--  el nombre de la región y el número de países. Además, la -- 8.consulta debe organizar el resultado 
-- por el número de países en orden descendente. (2)
select region, count(*) as n_country from countries
group by region
order by n_country desc;


select * from cities;
select * from countries;

-- 1. ¿Qué consulta harías para obtener todos los países que hablan esloveno? Tu consulta debe devolver 
-- el nombre del país, el idioma y el porcentaje de idioma. Tu consulta debe organizar el resultado por 
-- porcentaje de idioma en orden descendente. (1)
select * from cities;
select * from countries;

select countries.name, languages.language, languages.percentage
 from languages
INNER JOIN countries ON countries.id= languages.country_id
where language like '%loven%'
ORDER BY languages.percentage DESC;



-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? Su consulta debe 
-- devolver el nombre del país y el número total de ciudades. Tu consulta debe organizar el resultado por
--  el número de ciudades en orden descendente. (3)

select cn.name, count(*) as ncities from cities ci
join countries cn on ci.country_id=cn.id
group by ci.country_id
order by ncities desc;

-- 3. ¿Qué consulta harías para obtener todas las ciudades de México con una población 
-- de más de 500,000? Tu consulta debe organizar el resultado por población en orden 
-- descendente. (1)

select * from cities;

select * from countries where name like '%xico%';

select cities.name,cities.population from cities
INNER JOIN countries on countries.id=cities.country_id
where countries.id=136
and cities.population > 500000
ORDER BY cities.population DESC;

-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al
 -- 89%? Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)
 
 select countries.name, languages.language, languages.percentage from languages
 INNER JOIN  countries ON countries.id= languages.country_id
 Where languages.percentage > 89
 ORDER BY languages.percentage DESC;









