-- 1. Crear base de datos llamada películas.
create database peliculas;

-- 2. Cargar ambos archivos a su tabla correspondiente.
-- imagen adjunta

-- 3. Obtener el ID de la película “Titanic”.
select pelicula, id
from peliculas_csv
where pelicula = 'Titanic'


-- 4. Listar a todos los actores que aparecen en la película "Titanic".
select re.actor 
from reparto_csv re
inner join peliculas_csv pc on re.id = pc.id
where pc.pelicula = 'Titanic'


-- 5. Consultar en cuántas películas del top 100 participa Harrison Ford.
select count(distinct id) as cantidad_de_peliculas 
from reparto_csv 
where actor = 'Harrison Ford'

select pelicula
from peliculas_csv pc 
inner join reparto_csv re on re.id = pc.id
where re.actor = 'Harrison Ford'


-- 6. Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
select pelicula, "Año estreno" 
from peliculas_csv pc 
where "Año estreno"  between 1990 and 1999
order by pelicula desc


-- 7. Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
select pelicula, length(pelicula) as longitud_titulo
from peliculas_csv pc 

-- 8. Consultar cual es la longitud más grande entre todos los títulos de las películas.
select pelicula, length(pelicula) as longitud_titulo
from peliculas_csv pc 
order by longitud_titulo desc
limit 1
 









