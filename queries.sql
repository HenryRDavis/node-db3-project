-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Products.ProductName, Categories.CategoryName
FROM Products 
JOIN Categories ON Products.CategoryID = Categories.CategoryID
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Orders.OrderID,  Shippers.ShipperName
from Orders
join Shippers on Orders.ShipperID = Shippers.ShipperID
where Orders.OrderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Products.ProductName, OrderDetails.Quantity
from OrderDetails
join Products on Products.ProductID = OrderDetails.ProductID
where OrderDetails.OrderID = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Orders.OrderID, Customers.CustomerName, Employees.LastName FROM Orders
join Customers on Orders.CustomerID = Customers.CustomerID
join Employees on Orders.EmployeeID = Employees.EmployeeID