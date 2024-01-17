-- https://dbdiagram.io/d/65a796d9ac844320ae18dbbe

-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_all

-- Задача. Вывести название и стоимость одного самого дорогого товара из категории 1

-- SELECT
-- 		ProductName,
--    	Price      
-- FROM Products

-- WHERE
-- 	CategoryID = 1 

-- ORDER BY Price DESC 
-- LIMIT 1


-- Задача. Вывести товары от поставщиков 1 и 5
-- проекция: название_товара, цена_со_скидкой_2_процента, цена_с_наценкой_5_процентов

-- SELECT
-- 	ProductName,
-- 	Price * .98 AS Price_down,
-- 	Price * 1.05 AS Price_up
-- FROM Products

-- WHERE
-- 	SupplierID IN (1, 5)

-- оператор Join

-- Задача. Вывести данные о товарах с ценой от `25` до `125` EUR**

-- проекция: `название_товара`, `цена_товара`, `название_компании_поставщика`

-- SELECT 
--     Products.ProductName,
--     Products.Price,
--     Suppliers.SupplierName
-- FROM Products
-- JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
-- WHERE Products.Price BETWEEN 25 AND 125


-- Задача. Вывести данные о заказах клиентов из France

SELECT * 
FROM Orders

JOIN Customers ON Orders.CustomerID = Customers.CustomerID

WHERE
	Customers.Country = 'France'


-- //АГРЕГАЦИЯ -позволяет получить данные которых у нас начинается-это одна из катигорий запроса
-- Aggregation

-- **Базовые операторы агрегации**

-- - `COUNT()` расчет ко-ва строк
-- - `AVG()` расчет сред/ариф. знач.
-- - `MAX()` расчет макс. значения
-- - `MIN()` расчет мин. значения
-- - `SUM()` расчет суммы

-- SELECT
-- 	COUNT(*) AS total_customers
-- FROM Customers


-- из Germany
-- SELECT
-- 	COUNT(*) AS total_germany_customers
-- FROM Customers

-- WHERE
-- 	Country = 'Germany'

-- выводим среднюю стоимость товара 

-- SELECT
-- 	AVG(Price) AS avg_price
-- FROM Products

-- вывести статистику по товарам
-- SELECT
-- 		COUNT(*) AS total_products,
--     MAX(Price) AS max_price,
--     MIN(Price) AS min_price,
--     SUM(Price) AS total_cost,
--     AVG(Price) AS avg_price
-- FROM Products

-- Задача. Вывести общее ко-во поставщиков не из USA и не из Spain

-- SELECT
--     COUNT(*) AS total_suppliers
-- FROM Suppliers
-- WHERE
--     Country NOT IN ('USA', 'Spain')

-- Задача. Вывести ко-во заказов, которое оформил клиент 1
-- SELECT 
--     COUNT(*) AS total_orders
-- FROM Orders
-- WHERE
--     CustomerID = 1

-- Задача. Вывести, какое количество раз был заказан товар 72 (по ко-ву заказов)
-- SELECT 
--     COUNT(*) AS total_orders
-- FROM OrderDetails
-- WHERE
--     ProductID = 72

-- **Задача. Вывести среднюю стоимость товаров от поставщика `3`**

-- **(проекция: `название_компании_поставщика`, `сред/стоимость`)**

SELECT
	Suppliers.SupplierName,
	AVG(Products.Price) AS avg_price
FROM Products

JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

WHERE
	Suppliers.SupplierID = 3