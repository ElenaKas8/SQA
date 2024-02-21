--Case-флаг маркер

--https://western-appeal-39b.notion.site/GenTech-10-Feb-21-2024-c24a9eb969ae4e99a2afd689862d2f78?pvs=4

SELECT *,
	CASE
    	WHEN Price >= 50 THEN true
        ELSE false
    END AS is_premium
FROM Products


--------------------------------------
--бес case


--Задача. При чтении таблицы `Customers` добавить поле `is_europe`**

-- все поля + `is_europe`
-- для `Germany` и `France` - `true`

SELECT *,

	CASE
    	WHEN Country IN ('Germany', 'France') THEN true
      ELSE false
  END AS is_europe

FROM Customers

--
SELECT *,
	Country IN ('Germany', 'France') AS is_europe
FROM Customers


-- Задача. Вывести товары, добавив поле цена со скидкой Price_down в случае, если
-- цена от 100 EUR — скидка 10%
-- цена от 50 EUR — скидка 15%


SELECT *,
    CASE
        WHEN Price >= 100 THEN Price * .9
        WHEN Price >= 50 THEN Price * .85
        ELSE Price 
    END AS Price_down

FROM Products


Задача. Вывести все товары, причем для товаров из категорий 3 и 5 и ценой от 20 EUR добавить наценку в 12.5%
проекция: все поля + поле Price_up
SELECT *,

	CASE
			WHEN
	    	CategoryID IN (3, 5)
        AND
        Price >= 20
        THEN Price * 1.125
      ELSE Price

	END AS Price_up

FROM Products


--Задача. Вывести данные о компаниях-поставщиках, причем скрыть номера телефонов тех компаний, которые из USA (проекция: название_компании, номер_телефона)

SELECT CompanyName,
    Phone,

    CASE
        WHEN Country = 'USA' THEN NULL
        ELSE Phone 
    END AS Phone


---оператор для объединения страниц
--UNION
--UNION ALL

--Вертикальное объединение таблиц
--Операторы
--UNION только уникальные значения
--UNION ALL все значения
--Примеры запросов


--Примеры запросов
SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
​
SELECT City FROM Customers
WHERE Country = 'Germany'

UNION

SELECT City FROM Suppliers
WHERE Country = 'Germany'

--Задача. Вывести названия и цены трех самых дешевых товаров

SELECT ProductName, Price
FROM Products
ORDER BY Price ASC
LIMIT 3

--Вывести все заказы, которые повезет Speedy Express 

SELECT *
FROM Orders
WHERE ShipperID = 1
