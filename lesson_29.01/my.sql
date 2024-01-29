--группировка в sql
--Задача. Вывести максимальную стоимость для каждой категории товаров**

--проекция: `название_категории`, `макс_стоимость`
SELECT
 Categories.CategoryName,
 MAX(Products.Price) AS max_price
FROM Categories

JOIN Products ON Products.CategoryID = Categories.CategoryID

GROUP BY Categories.CategoryID

ORDER BY max_price DESC

    --Задача. Вывести ко-во товаров в категории 5

-- SELECT 
--     CategoryID,
--   COUNT(*) AS total
-- FROM Products
-- WHERE CategoryID = 5
-- GROUP BY CategoryID

--Задача. Вывести ко-во товаров для категорий 5 и 6 (отдельно для каждой)

-- SELECT
--   CategoryID,
--   COUNT(*) AS total
-- FROM Products
-- WHERE CategoryID = 5
-- OR CategoryID = 6
-- GROUP BY CategoryID

--Задача. Вывести компанию-перевозчика, которая находится на третьем месте по ко-ву заказов

SELECT 
  Orders.ShipperID,
  COUNT(*) AS total_orders
FROM Orders
GROUP BY Orders.ShipperID
ORDER BY total_orders DESC
LIMIT 1 
OFFSET 2
