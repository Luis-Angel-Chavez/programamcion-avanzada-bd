
/*Full outer join*/

use Northwind_S02_Lab;
go


select
p.ProductID,
p.ProductName,
od.ProductID,
od.Quantity
from dbo.Products as p
full outer join
dbo.[Order Details] as od
ON p.ProductID = od.ProductID;

