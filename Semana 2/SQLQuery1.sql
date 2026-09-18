Use Northwind_S02_Lab
go





select ProductID, 
ProductName as producto,
UnitPrice as precio,
UnitsInStock as stock,
UnitsInStock * UnitPrice as Stockvalorizado
from dbo.Products;
go



select CustomerID, CompanyName, Country
from dbo.Customers
where Country= 'Germany';
go

select ProductID, ProductName, UnitPrice
from dbo.Products
where UnitPrice >20;
go


select LastName, FirstName
from dbo.Employees;
go



select ProductID, ProductName, UnitPrice, CategoryID
from dbo.Products
where UnitPrice between 10 and 30
and CategoryID in (2,7,8); -- que la categoria este entre 2, 7 y 8
go

----- Likes----

-- todas los resultados que enpiesan, contienen o terminan con una palabra
select CustomerID, CompanyName
from dbo.Customers
where CompanyName LIKE '%ar%';
go

select CustomerID, CompanyName
from dbo.Customers
where CompanyName LIKE '[A-C]';
go


---Funciones de Agregacion-----

select 
avg(UnitPrice) as Precio_Promedio,
max(UnitPrice) as Precio_Mayor,
min(UnitPrice) as Precio_Menor,
sum(UnitPrice) as Stocktotal,
count(*) as Precio_Promedio
from dbo.Products
where CategoryID = 4;


---Group By----

select CustomerID, Count(orderID) as NroPedidos
from dbo.Orders
group by CustomerID
order by NroPedidos desc





select CustomerID, orderID as NroPedidos
from dbo.Orders


--------------------HAVING----------
----- numero de pedidos superior un umbra----
---where me filtra en base a colmnas--
--Having me filtra ne base a grupos-- es un where pero para grupos
-- las condiciones de filtro del Having se usa sobre la funcion agregada, ne este caso count

select CustomerID, count(OrderID) as NroPedidos
from dbo.Orders
group by CustomerID
having count(OrderID) >2;



