--супер-песочница https://sqliteonline.com/
--https://western-appeal-39b.notion.site/GenTech-Summary-Jan-22-2024-0ab8ab027fb04ac584588ab112f5da01


--Агрегация

--TASK

-- Вывести общее кол-во товаров и их среднюю стоимость из категорий 1 и 4

-- SELECT
--     COUNT(*) AS total,
--     AVG(price) AS avg_price
-- FROM
--     Products
-- WHERE
--     CategoryID IN (1, 4)

-- Задача. Вывести данные о товарах, у которых название начинается на букву A
-- (проекция: все_поля + цена_с_наценкой_20%)

--  SELECT
--    *,
--      price * 1.2 AS price_with_tax
--  FROM
--      Products
--  WHERE
--      ProductName LIKE 'A%'
     

     SELECT *,
	Price > = 40 AS is_premium
FROM Products
