/**
RIGHT OUTER JOIN
*/
use Northwind_S02_Lab;
go

SELECT 
c.CustomerID,
C.ContactName,
o.OrderID,
o.OrderDate
from dbo.Customers as c
RIGHT OUTER JOIN dbo.Orders as o
ON c.CustomerID = o.CustomerID;
go


select
s.SupplierID,
s.CompanyName,
p.ProductName
from dbo.Products as p
right outer join dbo.Suppliers as s
on p.SupplierID = s.SupplierID;


select
s.SupplierID,
s.CompanyName,
p.ProductName
from dbo.Suppliers as s
right outer join dbo.Products as p
on p.SupplierID = s.SupplierID;


