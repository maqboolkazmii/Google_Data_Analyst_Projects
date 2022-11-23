--Q1 : What is the total number of orders placed in each country during January 2021. Return the country name, and total orders placed.
SELECT 
  Country, 
  COUNT(id) As Total_Orders 
FROM 
  orders 
where 
  date between '2021-01-01' 
  and '2021-01-01' 
GROUP BY 
  Country;
--Q2 : For each restaurant, return the restaurant name and total number of orders for that restaurant in January 2021.
SELECT 
  r.name, 
  COUNT(o.id) As Total_Orders 
FROM 
  restaurants r 
  INNER JOIN orders o ON r.id = o.restaurant_id 
WHERE 
  date between '2021-01-01' 
  and '2021-01-30' 
GROUP BY 
  r.name;
--Q3 : How many customers ordered more than once since January 2021 Return the customer name, and total number of orders.
SELECT 
  c.name AS Customer_Name, 
  COUNT(o.customer_id) As Total_Orders 
FROM 
  customers c 
  INNER JOIN orders o ON c.id = o.customer_id 
GROUP BY 
  c.name;
--Q4 : Get the total number of customers in each month that placed any order since January 2021 by month name. Return the month name and number of customers.
SELECT 
  MONTH(o.date) As Month, 
  COUNT(o.customer_id) As Total_Customers, 
  count(o.id) As Orders 
FROM 
  customers c 
  INNER JOIN orders o ON c.id = o.customer_id 
GROUP BY 
  Month;
