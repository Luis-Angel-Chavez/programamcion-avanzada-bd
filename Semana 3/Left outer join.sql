
use Northwind_S02_Lab;
go

select 
p.ProductID,
p.ProductName,
c.CategoryName
from dbo.Products as p
left outer join dbo.Categories as c
On p.CategoryID = c.CategoryID; 
go



