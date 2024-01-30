--1  Вывести заказы со стоимостью от 5000 EUR (проекция: номер_заказа, стоимость_заказа)

SELECT Orders.OrderID AS number_product, 
       SUM(OrderDetails.Quantity * Products.Price) AS price_product
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Orders.OrderID
HAVING price_product >= 5000;



--2 Вывести страны, в которые было отправлено 3 и более заказов


SELECT Customers.Country
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
HAVING COUNT(Orders.OrderID) >= 3


--3 Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)

SELECT Products.ProductName, SUM(OrderDetails.Quantity) AS total_quantity
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName
ORDER BY total_quantity DESC
LIMIT 10


--4 Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)

SELECT Employees.FirstName, 
       SUM(OrderDetails.Quantity * Products.Price) AS total_price,
       SUM(OrderDetails.Quantity * Products.Price) * .05 AS salary
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.FirstName