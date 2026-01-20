-- Activate db
use northwind;


select *
from customers;


select *
from products;


select * 
from orders;


select customername, city, country
from customers;


SELECT ProductID, ProductName 
FROM Products;


-- return first, last and birth date of employees 
select firstname, lastname, birthdate
from employees;


select country
from customers;


select distinct country
from customers;


SELECT COUNT(DISTINCT Country) 
FROM Customers;


SELECT COUNT(DISTINCT CustomerID)
FROM Customers;


select firstname, lastname, birthdate 
from employees;


select customername, address, city
from customers;


select distinct city
from suppliers;


select count(distinct city)
from customers;


SELECT * 
FROM Customers                
WHERE Country = 'Mexico';


select productid, productname
from products
where productid = 1;


SELECT * 
FROM Customers                
WHERE City = 'London';


SELECT * 
FROM Customers                
WHERE City = "London";


SELECT * 
FROM Customers
WHERE CustomerID = 1;


SELECT * 
FROM Products
WHERE Price > 100;


SELECT * 
FROM Orders
WHERE OrderDate > '1996-07-30';


select * 
from customers
where country != "UK";


select *
from customers
where city = "London";


select count(*)
from customers
where country = "USA";


select *
from customers
where customerid >= 15;


SELECT * 
FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';


SELECT * 
FROM Suppliers
WHERE Country = 'Japan' AND City = 'Tokyo';


SELECT * 
FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';


SELECT * 
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';


select *
from customers
where city = "London" and country = "UK";


select *
from customers
where city = "Portland" or city = "Kirkland";


select *
from orders
where orderdate < "1996-08-27" or orderdate > "1997-02-21";


SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a%';


SELECT * 
FROM Customers
WHERE CustomerName LIKE '%a';


SELECT * 
FROM Customers
WHERE CustomerName LIKE '%import%';


SELECT * 
FROM Customers
WHERE CustomerName LIKE '_ra%';


-- new year cards
select *
from customers
where city like "%new%";


SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a__%';


SELECT * 
FROM Customers
WHERE ContactName LIKE 'a%o';


select *
from suppliers
where country like "%land%";


select *
from employees
where firstname like "_n%";


-- customers from UK, Germany, France
select *
from customers
where country = "UK" or country = "Germany" or country = "France";


select *
from customers
where country in ("UK", "France", "Germany");


SELECT * 
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');


SELECT * 
FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
-- Customers who are in same country as Suppliers

-- this query returns countries with suppliers
SELECT Country FROM Suppliers;


select *
from customers
where city in (select city from suppliers);


select *
from customers
where city in ("Berlin", "Paris", "Madrid");


select *
from orders
where shipperid in (1, 3);


select *
from customers
where customerid in (select customerid from orders );
-- if customerid is found in orders table, that customre placed an order.


select customername
from customers
where customerID in (select customerID from orders);


SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20;


SELECT * 
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;


SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);


SELECT * 
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;


SELECT * 
FROM Customers
ORDER BY Country DESC;


select * 
from products
order by productname, price;


select productname, price
from products
order by productname desc, price
limit 7;


SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;


select min(price)
from products;

 select max(price)
from products;

select sum(price)
from products;

select avg(price)
from products;


SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;


SELECT CustomerName AS Customer, ContactName AS "Contact Person"
FROM Customers;


select *
from customers;


select customername, city
from customers;


select distinct city
from customers;


select *
from products
where price > 50;


select *
from customers
where country in ("USA", "UK");


select *
from orders
order by orderdate desc;


select *
from products 
where price between 20 and 50
order by price desc;


select *
from customers
where country = "USA" and city in ("Portland", "Kirkland")
order by customername;


select *
from customers
where country = "UK" or city = "London"
order by customername desc;


 select *
 from products
 where categoryid in (1,2)
 order by productname;
 
 
 