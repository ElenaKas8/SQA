

--  В рамках БД "песочница: онлайн-магазин" напишите след/запросы:


--1.Вывести сред/стоимость товаров из категорий 1, 2, 5,
 --у которых название начинается с буквы t
-- SELECT AVG(price) AS average_price
-- FROM Products 
-- WHERE CategoryID IN (1, 2, 5) AND ProductName LIKE 't%';




-- 2.Посчитать стоимость заказа 10248


SELECT
    OrderDetails.OrderID,
    SUM(OrderDetails.Quantity * Products.Price) AS TotalOrderCost
FROM
    OrderDetails
JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
WHERE
    OrderDetails.OrderID = 10248;


-- 3.Вывести ко-во товаров с ценой от 10 до 250 EUR

SELECT
    COUNT(*) AS CountProducts
FROM
    Products
    WHERE Price BETWEEN 10 AND 250;


-- 4.Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT
    SUM(OrderDetails.Quantity * Products.Price) AS TotalAmount
FROM
    Orders
JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
JOIN
    OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN
    Products ON OrderDetails.ProductID = Products.ProductID
WHERE
    Customers.Country = 'Germany';



5.С помощью инструмента онлайн-проектирования опишите схему БД "чат поддержки" (базовые сущности и характеристики)

!!!-хотела удалить связь между clientName>>>>room_name(кажется не верно)  но не нашла как это сделать

 https://dbdiagram.io/d/65aab360ac844320ae4e667e

