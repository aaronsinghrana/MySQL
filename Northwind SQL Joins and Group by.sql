use northwind;

-- join customers to orders table
select customers.customername, orders.orderid
from customers
inner join orders
on customers.customerid = orders.customerid;


-- join order and show employee info
select orders.orderid, employees.firstname, employees.lastname
from orders
inner join employees
on orders.employeeid = employees.employeeid;
 
 
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID;


-- find suppliers for each product
select products.productname, suppliers.suppliername
from products 
inner join suppliers
on products.supplierid = suppliers.supplierid;


-- where clasue
SELECT SupplierName, ProductName
FROM Products
INNER JOIN Suppliers
on Products.SupplierID = Suppliers.SupplierID
where SupplierName = "G'day, Mate";


select employees.firstname, employees.lastname, orders.orderdate
from employees
inner join orders
on employees.employeeid = orders.employeeid;


select shippername, shippers.shipperid, orderid
from orders
inner join shippers
on orders.shipperid = shippers.shipperid
where shippername = "Speedy Express";


select categoryname, productname
from products
inner join categories
on products.categoryid = categories.categoryid;


select productname, quantity, orderid
from products
inner join order_details
on products.productid = order_details.productid;


-- join 3 tables orders, order_details and products
select orders.orderid, productname, quantity
from orders
join order_details
on orders.orderid = order_details.orderid
join products
on products.productid = order_details.productid;


SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY orders.orderid;


-- Which customers has no orders ?
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
where orderid is null
ORDER BY orders.orderid;


-- employees with no orders
select *
from employees
left join orders
on orders.employeeid = employees.employeeid
where orderid is null;


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;


SELECT count(*)
FROM Customers
CROSS JOIN Orders;

-- 91 * 196

SELECT count(*)
FROM Customers; 

SELECT count(*)
FROM orders;


-- count(customerid) is aggregated column
-- country is non-aggregated
-- What are number of customer for each country? 
select count(customerid) as noofcust, country
from customers
group by country;


select count(customerid) as noofcust, city,  country
from customers
group by city, country;


-- Write a query to list all products and their total quantities for each order.
select productname, sum(quantity) as totalquantity
from products
join order_details
on products.productid = order_details.productid
group by productname;


-- The following SQL statement lists the number of orders sent by each shipper:
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders 
FROM Orders
LEFT JOIN Shippers 
ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;


-- The following SQL statement lists the total sales by product:
SELECT p.ProductName, SUM(od.Quantity * p.Price) AS TotalSales

FROM Order_Details as od -- order_details table renamed as od

JOIN Products as p -- products table renamed as p

ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;



-- Write SQL query to list the number of customers in each country. 
select country, count(customerid) as cust
from customers
group by country
order by cust desc; 

-- Write a query to list each product category and the total quantity of products sold in that category.
s-- Write a query to list each product category and the total quantity of products sold in that category.
select categoryname, sum(quantity) as prod
from products as p
join categories as c
on p.categoryid = c.categoryid
join order_details as od
on od.productid = p.productid
group by categoryname

-- Write a query to list each employee and the number of orders they have handled.#
select firstname, lastname, count(orderid) as orders
from employees as e
join orders as o
on e.employeeid = o.employeeid 
group by firstname, lastname
order by orders desc;
 

select suppliername, productname
from suppliers
inner join products
on suppliers.supplierid = products.SupplierID;
 
 
 select categoryname, productname
 from categories
 join products
 on categories.CategoryID = products.CategoryID;
 
 
 select *
 from categories
 inner join products
 on categories.CategoryID = products.CategoryID
 where categoryname = "meat/poultry";
 
 
 select *
 from employees
 join customers;
 
 
select customername, orderid, orderdate
from orders
inner join customers as c
on c.customerid = orders.customerid
where year(orders.orderdate) = 1996;
 
 
 select categoryname, count(productid) as prod
 from products as p
 join categories as c
 on p.categoryid = c.categoryid
 group by categoryname
 order by prod desc;
 
 
 select *
 from customers as cus
 join employees as emp
 on 
 