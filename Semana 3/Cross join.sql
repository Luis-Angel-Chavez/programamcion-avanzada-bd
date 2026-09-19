use Northwind_S02_Lab;
go

/**cross join */
/*Empareja cada fila de la primera tabla con todas las filas de la segunda tabla*/


select
p.ProductName,
s.CompanyName
from dbo.Products as p
Cross join dbo.Suppliers as s
Order by p.ProductName, s.CompanyName



/*tarea*/
select
p.productName,
p.UnitPrice,
c.CategoryName
from dbo.Products as p
Cross join dbo.Categories as c
Order by p.ProductName, c.CategoryName
