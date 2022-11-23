--North Wind SQL Data Analysis



/** Table of content
Looking into data	1
Supplier per country	2
Region wise Number of orders	2
Product wise total price	3
Region wise price calculation	3
Total Order Per Country	4
Total Price Per Priance Range And Catogory And Total Orders	4
Which Catogory I Mostly Selling In Which Region?	4
**/


--Looking into data 
select 
  * 
from 
  Region 
  /**Eastern
  Western       
  Northern      
  Southern **/
select 
  * 
from 
  Shippers 
  /** shipping companies
  Speedy Express
  United Package
  Federal Shipping
  **/
select 
  * 
from 
  Suppliers 
-- 29 suppliers , int this table region fax and home page have some null values
select 
  * 
from 
  Territories -- 53 Territories
select 
  * 
from 
  Products -- 77 products
select 
  * 
from 
  Orders -- 830 orders
select 
  * 
from 
  [Order Details] -- 487 order detail records
select 
  * 
from 
  Territories 
select 
  * 
from 
  Categories 
select 
  * 
from 
  CustomerDemographics 
select 
  * 
from 
  Customers -- total number of 


select 
  c.ContactTitle, 
  COUNT(c.ContactTitle) As 'Total' 
from 
  Customers c 
group by 
  c.ContactTitle 


--Supplier per country


select 
  * 
from 
  Suppliers 


select 
  sp.Country, 
  COUNT(sp.CompanyName) As 'supplier company' 
from 
  Suppliers sp 
group by 
  sp.Country 

--Region wise Number of orders 
select 
  r.RegionDescription, 
  sum(p.UnitsInStock) AS units_in_stock, 
  sum(p.UnitsOnOrder) AS units_on_order,
  ROUND(SUM(od.unitprice * od.Quantity),2) AS 'total amount Order',
  ROUND(SUM(p.unitprice * p.UnitsInStock),2) AS 'total amount Stock',
  (ROUND(SUM(od.unitprice * od.Quantity),2)+
  ROUND(SUM(p.unitprice * p.UnitsInStock),2)) AS 'total amount'
from 
  Orders o 
  inner join Region r on r.RegionID = o.ShipVia 
  inner join [Order Details] od on od.OrderID = o.OrderID 
  inner join Products p on p.ProductID = od.ProductID 
group by 
  RegionDescription 


--Product wise total price
select 
  p.ProductName, 
  sum(p.unitprice*(p.UnitsInStock+p.UnitsOnOrder)) as 'Total Price' 
from 
  Products p 
group by 
  p.ProductName



--Region wise price calculation
select 
  s.Region, 
  sum(p.UnitPrice) As 'Total', 
  sum(p.UnitsInStock) As 'Total Stock unit', 
  sum(p.UnitsOnOrder) As 'Total Order' 
from 
  Products p 
  join Categories c on c.CategoryID = p.CategoryID 
  join Suppliers s on s.SupplierID = p.SupplierID 
group by 
  s.Region 
order by 
  Total;
--Category wise Price 
select 
  c.CategoryID, 
  c.CategoryName, 
  sum(p.UnitPrice) As 'Total', 
  sum(p.UnitsInStock) As 'Total Stock unit', 
  sum(p.UnitsOnOrder) As 'Total Order' 
from 
  Products p 
  join Categories c on c.CategoryID = p.CategoryID 
  join Suppliers s on s.SupplierID = p.SupplierID 
group by 
  c.CategoryID, 
  c.CategoryName 
order by 
  [Total Stock unit] ASC;

--Total Order Per Country
select 
  o.ShipCountry, 
  COUNT(o.OrderID) As 'Total Order' 
from 
  Orders o 
group by 
  o.ShipCountry 


--Total Price Per Priance Range And Catogory And Total Orders
SELECT 
  c.categoryname, 
  CASE WHEN p.unitprice < 20 THEN '1. Below $20' WHEN p.unitprice >= 20 
  AND p.unitprice <= 50 THEN '2. $20 - $50' WHEN p.unitprice > 50 THEN '3. Over $50' END AS priceRange, 
  ROUND(
    SUM(d.unitprice * d.quantity), 
    2
  ) AS 'total amount', 
  COUNT(DISTINCT d.orderid) AS 'total number orders' 
FROM 
  Categories AS c 
  INNER JOIN Products AS p ON c.categoryid = p.categoryid 
  INNER JOIN [Order Details] AS d ON d.productid = p.productid 
GROUP BY 
  c.categoryname, 
  p.UnitPrice 
ORDER BY 
  c.categoryname, 
  priceRange;
--Which Catogory I Mostly Selling In Which Region?
SELECT 
  c.categoryname, 
  CASE WHEN s.country IN (
    'Australia', 'Singapore', 'Japan'
  ) THEN 'Asia-Pacific' WHEN s.country IN ('US', 'Brazil', 'Canada') THEN 'America' ELSE 'Europe' END AS supplier_region, 
  p.UnitsInStock AS units_in_stock, 
  p.UnitsOnOrder AS units_on_order, 
  p.reorderlevel 
FROM 
  suppliers AS s 
  INNER JOIN products AS p ON s.supplierid = p.supplierid 
  INNER JOIN categories AS c ON p.categoryid = c.categoryid 
WHERE 
  s.region IS NOT NULL 
ORDER BY 
  supplier_region, 
  c.categoryname, 
  p.unitprice;

