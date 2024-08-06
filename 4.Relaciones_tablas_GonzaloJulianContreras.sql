
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select t."Name" as "Nombre_pistas" ,
	a."Title" as "Titulo_album"
from "Track" t 
INNER join "Album" a 
	on t. "AlbumId" = a."AlbumId" ;

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select a."Name" as "Nombre_artista",
	a2."Title" as "Titulo_album"
from "Artist" a 
INNER join "Album" a2 
	on a."ArtistId" = a2."ArtistId"
order by "Nombre_artista";


-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select 
	concat(c."FirstName", ' ', c."LastName") as "Nombre_cliente",
	count(i."Total") as "Total_factura"
from "Customer" c 
INNER join "Invoice" i 
	on c."CustomerId" = i."CustomerId"
group by concat(c."FirstName", ' ', c."LastName")
limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select 
	concat(e."FirstName", ' ', e."LastName") as "Nombre_empleado" ,
	concat(c."FirstName", ' ', c."LastName") as "Nombre_cliente" 
from "Employee" e 
INNER join "Customer" c 
	on E."EmployeeId" = C."SupportRepId" ;
	

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select
	il."InvoiceId" as "ID_FACTURAS",
	t."Name" as "NOMBRE_PISTAS"
from "InvoiceLine" il 
INNER join "Track" t 
	on il."TrackId" = t."TrackId" ;

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select T."Composer" as "NOMBRE_ARTISTA",
	g."Name" as "GÉNERO"
from "Track" t 
INNER join "Genre" g 
	on t."GenreId" = g."GenreId"
order by "NOMBRE_ARTISTA";

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select 
	T."Name" as "NOMBRE_PISTA",
	mt."Name" as "MEDIO"
from "Track" t 
INNER join "MediaType" mt 
	on t."MediaTypeId" = mt."MediaTypeId" ;


-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select 
	t."Name" as "NOMBRE_PISTA",
	G."Name" as "GÉNERO"
from "Track" t 
LEFT join "Genre" g 
	on t."GenreId" = g."GenreId" ;

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select 
	i."CustomerId" as "CLIENTE",
	il."Quantity" as "FACTURAS_REALIZADAS"
from "InvoiceLine" il 
LEFT join "Invoice" i 
	on i."InvoiceId" = il."InvoiceId" 
order by "CustomerId" ;


-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
select 
	a."Title" as "ALBUM",
	A2."Name" as "NOMBRE_ARTISTA"
from "Album" a 
left join "Artist" a2 
	on a."ArtistId" = a2."ArtistId" 
	

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
select 
	count(t."Name") as "Número_pistas",
	g."Name" as "GÉNERO"
from "Track" t 
inner join "Genre" g 
	on t."GenreId" = g."GenreId" 
group by G."Name" 
order by "Número_pistas" asc;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select 
	a."Title" as "TÍTULO_ALBUM",
	sum (t."Milliseconds") as "DURACIÓN_TOTAL_PISTAS"
from "Album" a 
INNER join	"Track" t 
	on a."ArtistId" = t."AlbumId" 
group by a."Title" ;

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select 
	concat(c."FirstName", ' ', c."LastName") as "NOMBRE_CLIENTE",
	i."Total" as "TOTAL_GASTADO"
from "Customer" c 
inner join "Invoice" i 
	on c."CustomerId" = i."CustomerId" 


-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
select 
	concat(e."FirstName", ' ', e."LastName") as "NOMBRE_EMPLEADO",
	concat(c."FirstName", ' ', c."LastName") as "NOMBRE_CLIENTE" 
from "Employee" e 
left join "Customer" c 
	on e."EmployeeId" = c."SupportRepId" 


