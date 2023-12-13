https://www.w3schools.com/mysql/trymysql.asp?
filename=trysql_select_all


13.12.2023

https://western-appeal-39b.notion.site/
GenTech-2-Dec-13-2023-f40e1867231e4b00a33640f4032a7aa

-- *вывести всех клиентов за исключением стран "UK",
"France","USA"
-- 
SELECT * FROM Customers
WHERE
NOT Country IN("UK","France","USA")
;
--* Вывести товары с ценой от 20 до 120 EUR
SELECT *
FROM Products
WHERE
	Price BETWEEN 20 AND 120

    -- вывести товары с ценной в долларах
    (проекция-название товара, цена в долларах)
    Price*1.08

    SELECT
	ProductName,
  Price * 1.08
FROM Products


--* переименовать поле

SELECT
	ProductName,
  Price * 1.08 AS Price_usd
FROM Products

-- ⁡⁣⁢⁣Псевдонимы / Оператор AS⁡
-- ⁡⁣⁢⁣Примеры⁡
SELECT
	ProductName,
  Price * 1.08 AS Price_usd
FROM Products
​

-- * переименовать поле
SELECT
	ProductName,
  Price AS Price_eur,
  Price * 1.08 AS Price_usd
FROM Products

⁡⁣⁢⁣(проекция: название_товара, цена_со_скидкой_в_10%)⁡

SELECT
	ProductName,
	Price * .9 AS Price_down
FROM Products

-- **Задача. Вывести `названия` товаров, а также их `стоимость`:**

-- -⁡⁢⁢⁢ полную⁡
-- - ⁡⁢⁢⁢со скидкой `25%`⁡
 --⁡⁢⁢⁢ с наценкой `15%⁡`

SELECT
		ProductName,
    Price AS Price_full,
    Price * .75 AS Price_down,
    Price * 1.15 AS Price_up
FROM Products


