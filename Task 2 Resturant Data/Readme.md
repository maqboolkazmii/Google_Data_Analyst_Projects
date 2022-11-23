![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/maqboolkazmii)
[![View Linkedin](https://img.shields.io/badge/View-My_Linkedin-blue?logo=Linkedin)](https://www.linkedin.com/in/maqboolkazmi/)


**Schema (MySQL v8.0)**

    create table orders (id integer, country text, customer_id integer,
    restaurant_id INTEGER, date date, order_value integer);
    create table customers (id integer, name text, country text);
    create table restaurants (id integer, name text, country text);
    INSERT INTO orders (
    
    id,
    country,
    customer_id,
    restaurant_id,
    date,
    order_value)
    VALUES
    (1, 'Pakistan', 1, 1, '2021-01-01', 400),
    (2, 'Pakistan', 2, 1, '2021-01-01', 500),
    (3, 'Pakistan', 4, 2, '2021-01-01', 300),
    (4, 'Pakistan', 4, 3, '2021-01-05', 200),
    (5, 'Pakistan', 5, 4, '2021-01-01', 250),
    (6, 'Pakistan', 4, 1, '2021-01-09', 266),
    (7, 'Pakistan', 3, 2, '2021-01-07', 322),
    (1, 'Holland', 1, 1, '2021-01-01', 378),
    (8, 'Pakistan', 1, 3, '2021-06-01', 289),
    (2, 'Holland', 1, 1, '2021-08-01', 480),
    (9, 'Pakistan', 1, 1, '2021-03-01', 580),
    (10, 'Pakistan', 3, 2, '2021-07-01', 360),
    (3, 'Holland', 1, 1, '2021-09-01', 550),
    
    (11, 'Pakistan', 4, 3, '2021-04-01', 991),
    (12, 'Pakistan', 5, 1, '2021-04-01', 875),
    (4, 'Holland', 1, 1, '2021-03-02', 250),
    (13, 'Pakistan', 1, 1, '2021-08-01', 150),
    (14, 'Pakistan', 1, 2, '2021-09-01', 290),
    (5, 'Holland', 1, 1, '2021-07-01', 240),
    (15, 'Pakistan', 1, 3, '2021-03-01', 780),
    (16, 'Pakistan', 1, 4, '2021-06-01', 987),
    (6, 'Holland', 1, 1, '2021-05-03', 457),
    (17, 'Pakistan', 1, 4, '2021-05-04', 258);
    INSERT INTO customers (
    
    id,
    name,
    country)
    VALUES
    (1, 'Steven Smith', 'Pakistan'),
    (2, 'Arthur Chen', 'Holland'),
    (3, 'Michael Wren', 'Pakistan'),
    (4, 'John Almagro', 'Pakistan'),
    (5, 'Luke Pablo', 'Pakistan'),
    (6, 'Monty Tron', 'Pakistan');
    INSERT INTO restaurants (
    
    id,
    name,
    country)
    VALUES
    (1, 'KFC', 'Pakistan'),
    (2, "McDonald's", 'Holland'),
    (3, 'Howdy', 'Pakistan'),
    (4, 'Kitchen Cuisine', 'Pakistan'),
    (5, 'JFC', 'Pakistan'),
    (6,'Hardees','Pakistan');

---
**Customers Table**

    Select * from customers;

| id  | name         | country  |
| --- | ------------ | -------- |
| 1   | Steven Smith | Pakistan |
| 2   | Arthur Chen  | Holland  |
| 3   | Michael Wren | Pakistan |
| 4   | John Almagro | Pakistan |
| 5   | Luke Pablo   | Pakistan |
| 6   | Monty Tron   | Pakistan |

---
**Resturants Table**

    select * from restaurants;

| id  | name            | country  |
| --- | --------------- | -------- |
| 1   | KFC             | Pakistan |
| 2   | McDonald's      | Holland  |
| 3   | Howdy           | Pakistan |
| 4   | Kitchen Cuisine | Pakistan |
| 5   | JFC             | Pakistan |
| 6   | Hardees         | Pakistan |

---
**Orders Table**

    select * from orders;

| id  | country  | customer_id | restaurant_id | date       | order_value |
| --- | -------- | ----------- | ------------- | ---------- | ----------- |
| 1   | Pakistan | 1           | 1             | 2021-01-01 | 400         |
| 2   | Pakistan | 2           | 1             | 2021-01-01 | 500         |
| 3   | Pakistan | 4           | 2             | 2021-01-01 | 300         |
| 4   | Pakistan | 4           | 3             | 2021-01-05 | 200         |
| 5   | Pakistan | 5           | 4             | 2021-01-01 | 250         |
| 6   | Pakistan | 4           | 1             | 2021-01-09 | 266         |
| 7   | Pakistan | 3           | 2             | 2021-01-07 | 322         |
| 1   | Holland  | 1           | 1             | 2021-01-01 | 378         |
| 8   | Pakistan | 1           | 3             | 2021-06-01 | 289         |
| 2   | Holland  | 1           | 1             | 2021-08-01 | 480         |
| 9   | Pakistan | 1           | 1             | 2021-03-01 | 580         |
| 10  | Pakistan | 3           | 2             | 2021-07-01 | 360         |
| 3   | Holland  | 1           | 1             | 2021-09-01 | 550         |
| 11  | Pakistan | 4           | 3             | 2021-04-01 | 991         |
| 12  | Pakistan | 5           | 1             | 2021-04-01 | 875         |
| 4   | Holland  | 1           | 1             | 2021-03-02 | 250         |
| 13  | Pakistan | 1           | 1             | 2021-08-01 | 150         |
| 14  | Pakistan | 1           | 2             | 2021-09-01 | 290         |
| 5   | Holland  | 1           | 1             | 2021-07-01 | 240         |
| 15  | Pakistan | 1           | 3             | 2021-03-01 | 780         |
| 16  | Pakistan | 1           | 4             | 2021-06-01 | 987         |
| 6   | Holland  | 1           | 1             | 2021-05-03 | 457         |
| 17  | Pakistan | 1           | 4             | 2021-05-04 | 258         |

---



**Q1 : What is the total number of orders placed in each country during January 2021. Return the country name, and total orders placed.**

    SELECT Country, COUNT(id) As Total_Orders
    FROM orders
    where date 
    between '2021-01-01' and '2021-01-01'
    GROUP BY Country;

| Country  | Total_Orders |
| -------- | ------------ |
| Pakistan | 4            |
| Holland  | 1            |

---

**Q2 : For each restaurant, return the restaurant name and total number of orders for that restaurant in January 2021.**

    SELECT r.name,COUNT(o.id) As Total_Orders 
    FROM restaurants r
    INNER JOIN orders o ON r.id=o.restaurant_id
    WHERE date between '2021-01-01' and '2021-01-30'
    GROUP BY r.name;

| name            | Total_Orders |
| --------------- | ------------ |
| KFC             | 4            |
| McDonald's      | 2            |
| Howdy           | 1            |
| Kitchen Cuisine | 1            |

---

**Q3 : How many customers ordered more than once since January 2021 Return the customer name, and total number of orders.**

    SELECT c.name AS Customer_Name, COUNT(o.customer_id) As Total_Orders
    FROM customers c
    INNER JOIN orders o ON c.id=o.customer_id
    
    GROUP BY c.name;

| Customer_Name | Total_Orders |
| ------------- | ------------ |
| Steven Smith  | 14           |
| Arthur Chen   | 1            |
| John Almagro  | 4            |
| Luke Pablo    | 2            |
| Michael Wren  | 2            |

---


**Q4 : Get the total number of customers in each month that placed any order since January 2021 by month name. Return the month name and number of customers.**

    SELECT MONTH(o.date) As Month, COUNT(o.customer_id) As Total_Customers,count(o.id) As Orders
    FROM customers c
    INNER JOIN orders o ON c.id=o.customer_id
    
    GROUP BY Month;

| Month | Total_Customers | Orders |
| ----- | --------------- | ------ |
| 1     | 8               | 8      |
| 6     | 2               | 2      |
| 8     | 2               | 2      |
| 3     | 3               | 3      |
| 7     | 2               | 2      |
| 9     | 2               | 2      |
| 4     | 2               | 2      |
| 5     | 2               | 2      |

---

## ✨ Contribution

>Contributions, issues, and feature requests are welcome!

>To contribute to this project, see the GitHub documentation on **[creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)**.

<br>

## 👏 Support

Give a ⭐️ if you like this project!
___________________________________

<p>&copy; 2022 Maqbool Kazmi</p>
