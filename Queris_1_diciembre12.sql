--Agrupar por 
--Group by
--select--from
--where 
--group by
--having
--order by

select * from products
order by category_id;

--contar los productos por categoria

select category_id ,count(product_id) as num_productos
from products
group by category_id
order by category_id

--obtener el precio promedio por categoria de la tabla de productos
select category_id, avg(unit_price) as precio_promedio
from products
group by category_id
order by category_id

--obtener cuantas unidades hay en stock, su maximo y minimo por proveedor
select supplier_id,
sum(units_in_stock) as stock, 
max (units_in_stock) as maximo,
min (units_in_stock)
from products
group by supplier_id
order by supplier_id

--obtener los productos vendidos por orden de la tabla detalle de ordenes
select order_id,
sum (quantity) as total
from order_details
group by order_id
order by order_id

--obtener la cantidad de ordenes por empleado de la tabla de ordenes
select employee_id,count (order_id)as cantidad
from orders
group by employee_id
order by employee_id
--obtener la cantidad de ordenes por cliente de la tabla de ordenes
select customer_id, count (order_id)as cantidad
from orders
group by customer_id
order by customer_id

--obtener el total de los productos vendidos por producto de la tabla de detalle de ordenes
select product_id, sum (quantity)
from public.order_details
group by product_id
order by product_id;


--Columnas Calculadas
--Incrementar en 10% el precio de los productos de la tabla de productos
select product_id, unit_price,unit_price *1.1 as nuevo_precio
from products;

--Calcular el valor del inventario igual a unidades stock * precio unitario 
-- id producto , nombre y valor del inventario
select product_id,
product_name,
units_in_stock * unit_price as valor_inventario
from products

--en la tabla de detalle de ordenes calcular el importe de cada producto 
--importe = cantidad* precio
--los datos de la consulta id de la orden , id producto,importe
select order_id,
product_id,
quantity * unit_price as importe
from order_details


--obtener el importe por orden de la tabla de detalle de ordenes
select order_id,
sum (quantity*unit_price) as total
from order_details
group by order_id
order by order_id

--obtener una consulta que muestre el valor del inventario por categoria
--de la tabla de productos
select category_id,
sum(units_in_stock*unit_price) 
from public.products
group by category_id
order by category_id

--contar los clientes por pais de la tabla de clientes
select country, 
count(customer_id)
from public.customers
group by country
order by country;

---obtener informacion de mas de una tabla(forma antigua)
select p.category_id,
category_name,
product_id,
product_name
from categories c, products p
where c.category_id = p.category_id;
---obtener informacion de mas de una tabla(forma nueva)
select p.category_id,
category_name,
product_id,
product_name
from categories c
inner join products p
on c.category_id = p.category_id;

--obtener el id orden , fecha de la orden ,empleado y su nombre de las 
--tablas ordenes y empleado
select order_id,
order_date,
o.employee_id,
first_name
from public.employees E
inner join public .orders o
on e.employee_id = o.employee_id

--Obtener el producto id, nombre, el proveedory nombre de la empresa
--de las tablas de producto y de proveedores
select p.supplier_id,
company_name,
product_id,
product_name
from public.products p
inner join public.suppliers s
on p.supplier_id = s.supplier_id


--obtener las ordenes de id y fecha y el cliente y su nombre
SELECT order_date,
company_name, 
order_id,
o.customer_id
FROM public.customers c
INNER JOIN  public.orders o
ON c.customer_id= o.customer_id;



















