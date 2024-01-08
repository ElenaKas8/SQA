https://western-appeal-39b.notion.site/GenTech-190923-m-be-m-fe-m-qa-ed7e7a76535646e0a5fe8daf9f27c866


что такое проекция?
необходима,чтобы оптимизировать запрос и ускорить его выполнение.

Задача

Задача. Вывести названия и стоимость в USD товаров из категорий 1 и 4

SELECT
	ProductName,
	Price * 1.09 AS Price_usd
FROM Products

WHERE
	CategoryID IN (1, 4)

    Задача. Вывести один напиток, который находится на втором месте среди самых дорогих

SELECT *
FROM Products

WHERE
	CategoryID = 1

ORDER BY Price DESC
LIMIT 1 OFFSET 1

Задача. Вывести заказы менеджеров

(проекция: имя_клиента, номер_заказа)

SELECT
	Orders.OrderID,
	Customers.CustomerName
FROM Orders

JOIN Customers ON Customers.CustomerID = Orders.CustomerID

WHERE
	Orders.EmployeeID IN (2, 4)


Задача. Вывести проданные товары

(проекция: название_товара, номер_заказа)

SELECT
    Products.ProductName,
    Orders.OrderID
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
JOIN Orders ON Orders.OrderID = OrderDetails.OrderID




