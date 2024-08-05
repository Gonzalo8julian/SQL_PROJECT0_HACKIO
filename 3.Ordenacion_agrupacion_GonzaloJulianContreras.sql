
-- Ejercicio 1:  Selecciona el nombre de todos los álbumes y ordénalos alfabéticamente.
select "Title" 
from "Album"
order by "Title" ;

-- Ejercicio 2:  Encuentra el álbum con el mayor número de canciones.
select max("AlbumId"), "Name" 
from "Track" t 
group by "Name"
LIMIT 1;

-- Ejercicio 3:  Calcula la duración promedio, desviación estándar y varianza por compositor.

select round(avg("Milliseconds"),2) as "DURACION_PROMEDIO",
	ROUND (stddev ("Milliseconds"),2) as "DESVIACION_PROMEDIO",
	ROUND (VARIANCE ("Milliseconds"),2) as "VARIANCIA"
from "Track" t ;

-- Ejercicio 4: Selecciona el título y el precio de las pistas, y limita los resultados a 10.
select "Name" as "TÍTULO",
	"UnitPrice" as "PRECIO"
from "Track" t
limit	10;
   
-- Ejercicio 5: Lista los nombres de los empleados y ordénalos por el ID del empleado en orden descendente.
select concat("FirstName", ' ', "LastName") as "NOMBRE_EMPLEADOS",
	"EmployeeId" as "ID_EMPLEADO"
from "Employee" e
ORDER by "EmployeeId" desc ;


-- Ejercicio 6:  Muestra el número de géneros distintos disponibles en la base de datos.
select count("GenreId") as "GENEROS"
from "Track" t ;

-- Ejercicio 7: Selecciona el nombre del cliente y el país, limitando los resultados a 5, y ordena por el nombre del cliente.
select concat("FirstName", ' ', "LastName") as "NOMBRE_CLIENTE" ,
	"Country" as "PAIS"
from "Employee" e 
order by "FirstName" 
limit 5;
    
-- Ejercicio 8: Muestra la cantidad total de clientes agrupados por país.
select count("CustomerId") as "CLIENTES",
	"Country" as "PAIS"
from "Customer" c
group by "Country";

-- Ejercicio 9: Obtén el total de importes de facturas para cada país y muestra solo aquellos con un total superior a 10,000.
select "Total" 
from "Invoice" i 
where "Total" > 10.000;

-- Ejercicio 10: Encuentra los países donde el número total de clientes es mayor a 5. Muestra el país y el número de clientes.
select "Country" as "PAIS" ,
	COUNT ("CustomerId") as "TOTAL_CLIENTES"
from "Customer" c 
group by "Country" 
having COUNT("CustomerId") > 5
order by "TOTAL_CLIENTES";

-- Ejercicio 11: Obtén la cantidad de pistas en cada tipo de medio (MediaType) que tienen una duración mayor a 250,000 milisegundos.

select "MediaTypeId" as "TIPO_MEDIO",
	"Name" as "PISTAS",
	"Milliseconds" as "DURACION"
from "Track" t 
where "Milliseconds" > 250000
order by "DURACION";

-- Ejercicio 12: Lista el país y el número total de clientes que han sido asistidos por un representante de ventas específico, cuyo ID sea menor a 5.
select "Country" as "PAIS",
	COUNT("CustomerId") as "TOTAL_CLIENTES"
from "Customer" c 
group by "Country" , "SupportRepId" 
having "SupportRepId" < 5
order by "TOTAL_CLIENTES" ;

-- Ejercicio 13: Muestra los códigos postales (BillingPostalCode) de los clientes que han hecho más de 5 compras.

select "CustomerId" as "NUMERO_CLIENTE" ,
	"BillingPostalCode" as "CODIGO_POSTAL"
from "Invoice" i 
group by "BillingPostalCode", "CustomerId" 
having COUNT("CustomerId") > 5
order by "NUMERO_CLIENTE" ;

-- Ejercicio 14: Encuentra la cantidad total de pistas en cada tipo de medio (MediaTypeId) donde el precio de la pista (UnitPrice) es mayor a 0.99 y la duración de la pista (Milliseconds) es mayor a 200,000. Muestra el tipo de medio y el número total de pistas.
select count("TrackId") as "TOTAL_PISTAS",
	"MediaTypeId" as "TIPO_MEDIO"
from "Track" t 
where "UnitPrice" > 0.99 and "Milliseconds" > 200000
group by "MediaTypeId" ;

-- Ejercicio 15: Lista el país y el estado de los clientes que tienen el soporte asignado a un representante con ID mayor a 3 y cuyo nombre de empresa (Company) no es nulo. Muestra el país, el estado y el número de clientes.
select "Country" as "PAIS",
	"State" as "ESTADO",
	COUNT("CustomerId") as "NUMERO_CLIENTES"
from "Customer" c 
where "SupportRepId" > 3 and "Company" is not null 
group by "Country" , "State" ;
