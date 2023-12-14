--Ejemplos de Filtros
--Obtener los productos de order_details cuyo precio sea mayor a 50
select * from public.order_details
where unit_price > 50

-- obtener productos de orders details cuya cantidad sea mayor de 3
select * from public.order_details 
where quantity > 73;

--obtener los empleados que contengan una W en su apellido:
select * from public.employees
where last_name like '%w%'

--Obtener los productos de orders details cuya cantidad se encuentre entre 75 y 150;
Select product_id, quantity from public .order_details
where quantity between 75 and 150;
--obtener los productos cuya stock este entre 100 y 200;
select * from products 
where units_in_stock between 100 and 200;
--obtener los productos cuyo nombre comience con c y termine con i
select * from products 
where product_name like 'c%i';

--obtener los productos cuyo nombre termine con n
select * from products 
where product_name like '%n';

--obtener los productos cuyo proveedor sea 1,5,7,2
select * from products 
where suplier_id in (1,5,7,2);

--obtener los productos cuyo nombre comience con A,G,R y ordenar por nombre del producto
select * from products 
where product_name like 'A%'
or product_name like 'G%'
or product_name like 'R%'
order by product_name;


--ORDER BY PARA ORDENAR (NOMBRE)
select * from products
order by product_name;


--ordenar la tabla de productos por id desendente
select * from products
order by product_id DESC;

--ORDENAR LA TABLA DE PRODUCTOS POR CATEGORIA ASCEDENTEMENTE Y PROVEEDOR DESENDIENTE
select * from products
order by category_id asc, supplier_id DESC;

--obtener  filas tiene la tabla de productos
--funciones de agregacion son: count, sum , avg(porcentaje), max, min
--la unica que acepta el * es count
--el resto el nombre de una columna o operacion aritmetrica


--obtener las filas de la tabla de productos
select count (*)as num_registros
from products;

select count (*) num_registros
from products;

--obtener el numero de filas de a tabla de empleados
select count (*) as num_registros
from employees;
--evitar el **
select count (employees_id) as num_registros
from employees;


select count (region) as num_registros
from employees;

select * from employees;

--gestion de nulos
create table datos
(a numeric);

 insert into datos 
 values 
 (8),(7),(null),(5);
 
 select * from datos
 
 select sum (A) FROM datos;
 
 create table datos2
(a numeric, b numeric);

insert into datos2 
 values 
 (8,2),(7,3),(null,3),(5,5);
 
 select * from datos2
 
 
 select a+b as suma from datos2;
 
 --sacar ell promedio de los datos
 select avg (a) from datos;
 

--obtener el precio promedio, maximo y minimo de productos;
select avg (unit_price) as promedio , max(unit_price) as maximo,
min(unit_price) as minimo
from products;

select unit_price from products order by unit_price

--obtener la cantidad promedio, maximo y minimo de orders details
select avg (quantity) as promedio , max(quantity) as maximo,
min(quantity) as minimo
from order_details;

--obtener las unidades en stock de los productos
select sum (units_in_stock) as unidades
from products;















