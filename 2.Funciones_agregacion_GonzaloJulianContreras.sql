
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
select MIN("Milliseconds") as "Duracion_minima"
from "Track" t;

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
select max("Milliseconds") as "Duracion_maxima" 
from "Track" t;

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
   select min ("UnitPrice") as "Precio_minimo"
   from "Track" t;

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
   select max("UnitPrice") as "Precio_maximo"
   from "Track" t;

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
   select min ("InvoiceDate") as "Fecha_minima"
   from "Invoice" i;

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
   select max("InvoiceDate") as "Fecha_maxima"
   from "Invoice" i;

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
   select count("TrackId") as "Numero_pistas"
   from "Track" t;

-- Ejercicio 8: Contar el número de clientes en Brasil.
   select count("CustomerId") as "Numero_clientes"
   from "Customer" c;

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
   select sum("Milliseconds") as "Tiempo_total"
   from "Track" t ;

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
    select count("EmployeeId") as "Sales Support Agent"
    from "Employee" e ;

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
    select sum("Total") as "Total_cantidades_facturas"
    from "Invoice" i ;

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
    select round(avg("Milliseconds"),2) as "Duracion_media"
    from "Track" t ;

-- Ejercicio 13: Calcular el precio medio de las pistas.
    select round(avg("UnitPrice"), 2) as "Precio_medio"
    from "Track" t ;

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
    select round(stddev("Milliseconds"), 2) as "Desviacion_pistas"
    from "Track" t ;

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
   select round(variance("Milliseconds"), 2) as "Varianza_duracion"
   from "Track" t ;

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
  select round(stddev("UnitPrice"), 2) as "Desviacion_precio"
  from "Track" t ;


/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
select concat("FirstName", ' ', "LastName") as "Nombre_completo" 
from "Customer" c ;

