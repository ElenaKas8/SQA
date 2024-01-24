https://western-appeal-39b.notion.site/GenTech-190923-m-be-m-fe-m-qa-ed7e7a76535646e0a5fe8daf9f27c866


-- Примеры запросов
-- SELECT
-- 	COUNT(*) AS total_germany_customers
-- FROM Customers

-- WHERE
-- 	Country = 'Germany'


-- SELECT
-- 	COUNT(*) AS total,
--   AVG(Price) AS avg_price
-- FROM Products

-- WHERE
-- 	CategoryID IN (1, 4)


-- SELECT DISTINCT
-- 	Country
-- FROM Customers


-- SELECT
-- 	COUNT(*) AS total_customers
-- FROM Customers

-- WHERE
-- 	Country = 'UK'


-- /механизм группировки Group By/-объединяет все записи по какомуто признаку

-- SELECT
-- 	CategoryID,
-- 	COUNT(*) AS total_products
-- FROM Products
-- GROUP BY
-- 	CategoryID



-- SELECT
-- 	Country,
-- 	COUNT(*) AS total_customers
-- FROM Customers

-- GROUP BY Country

-- ORDER BY total_customers DESC


-- SELECT
-- 	CategoryID,
--   COUNT(*) AS total
-- FROM Products

-- GROUP BY CategoryID

-- Задача. Вывести кол/распределение заказов по перевозчикам (без JOIN)

--  SELECT
--  ShipperID,
--  COUNT(*) AS total_orders
--  FROM Orders
 
--  GROUP BY ShipperID

--

-- SELECT
-- 	Shippers.ShipperName,
--   COUNT(*) AS total_orders
-- FROM Orders

-- JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

-- GROUP BY Orders.ShipperID

-- Задача. Вывести ТОП-3 менеджеров по ко-ву заказов (фамилия_менеджера, ко-во_заказов)

--  SELECT
-- 	Employees.LastName AS managerLastName,
-- 	COUNT(*) AS total_orders
-- FROM Orders

-- JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID

-- GROUP BY Employees.EmployeeID

-- ORDER BY total_orders DESC
-- LIMIT 3


-- Задача. Вывести сред/стоимость товара для каждого поставщика (название_компании, сред_стоимость)
SELECT 
   SupplierName,
    AVG(Price) AS average_price
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
GROUP BY Suppliers.SupplierID


/*---------

SELECT
	Employees.LastName AS managerLastName,
	COUNT(*) AS total_orders
FROM Orders

JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID

GROUP BY Employees.EmployeeID
HAVING
	total_orders >= 80
ORDER BY total_orders DESC


--
SELECT
	Country,
	COUNT(*) AS total_customers
FROM Customers

GROUP BY Country
HAVING
	total_customers >= 9
ORDER BY total_customers DESC