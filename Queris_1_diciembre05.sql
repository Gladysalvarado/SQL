select* from categories;
--todas las columnas y las filas de las tablas de producto
select* from products;
--todas las columnas de las tablas de clientes
select* from customers;
--todas las columnas y las filas de las tablas deordenes
select* from orders;
--Obtener las columnas category_id, category_name de la tabla category
select category_id,category_name from categories;
--obtener las columnas de id, nombre, precio de la tabla de productos
select product_id, product_name,unit_price from products;
select category_id,category_name from categories;
--obtener las columnas de id, producto, cantidad la tabla de ordenes
select order_id, product_id,quantity from order_details;
--obtener las columnas de id, nombre, apellido, jefe de la tienda de la tabla de empleados
select employee_id,first_name,last_name,reports_to from employees;
--filtros
--no se muestran todas las filas 
--Unicamente las que cumplen con la condicion
--and/or/not
--opereadores de comparacion <>>=>=
--between - rangos between 1 and  20
--in  - definir si un valor esta en un conjunto sexo in (m, h);
--like es como un operador igual para usar un patron p%-%n, %l%
--ejercicios con estos

--obtener los productos  cuyo precio sea mayor a 50
select * from PRODUCTS
WHERE unit_price > 50;


--obtener los productos cuyo precio sea menor a 100
select * from PRODUCTS
WHERE unit_price <100;
--obtener los productos que tengan categoria 1,6,7
select * from PRODUCTS
where category_id in (1,6,7);
--obtener los productos que tengan el precio entre 35 y 75
select * from PRODUCTS
where unit_price between 35 and 75;
--obtener los productos que comiencen con P SU NOMBRE
select * from PRODUCTS
where product_name like 'P%'




