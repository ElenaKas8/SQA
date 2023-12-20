https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_all

https://western-appeal-39b.notion.site/GenTech-3-Dec-20-2023-19a36afcea9b4545846b95cf19d12218

Список всех конспектов
 https://western-appeal-39b.notion.site/GenTech-190923-m-be-m-fe-m-qa-ed7e7a76535646e0a5fe8daf9f27c866

-- Operator LIKE

-- SELECT * FROM Suppliers
-- WHERE
-- Phone LIKE "%555%";

-- Вывести имена и фамилии сотрудников,у которых в имени или фамилии усть вхождение строки LINENO

-- SELECT
--     FirstName,
--     LastName
-- FROM
--     Employees
-- WHERE
--     FirstName LIKE "%LINENO%" OR
--     LastName LIKE "%LINENO%";

--     вывести клиентов,у которых страна начинается на букву g 

-- SELECT
--     *
-- FROM
--     Customers
-- WHERE
--     Country LIKE "g%"

оператор,который помогает связать страницы -"JOIN"

ON -по какому полю

SELECT * FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID


SELECT
	Orders.OrderID,
  Customers.CustomerName
FROM Orders

JOIN Customers ON Customers.CustomerID = Orders.CustomerID


соединить таблицы 

SELECT *
FROM Orders

JOIN Customers ON Customers.CustomerID = Orders.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

Задача. Вывести данные о товарах
(проекция: название_товара, цена_товара, название_категории)

SELECT
  Products.ProductName,
  Products.Price,
  Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID


**Задача. Вывести данные о заказах**

(проекция: `номер_заказа`, `имя_менеджера`, `фамилия_менеджера`)

SELECT
  Orders.OrderID,
  Employees.FirstName,
  Employees.LastName
FROM Orders
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID


Пример. Применение псевдонимов в JOIN
SELECT
    P.ProductName,
    P.Price,
    C.CategoryName
FROM Products AS P

JOIN Categories AS C ON P.CategoryID = C.CategoryID


**Задача. Вывести данные о заказах клиентов из `Germany`**

(проекция: `номер_заказа`, `имя_клиента`, `контактное_имя_клиента`)

SELECT
  Orders.OrderID,
  Customers.CustomerName,
  Customers.ContactName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
  Customers.Country = "Germany"

**Задача. Вывести данные о товарах с ценой от `10` до `150` EUR, которые были поставлены из `Japan`, проекция:**

- `название_товара`
- `цена_товара`
- `цена_со_скидкой_15_процентов`
- `название_поставщика`

SELECT
  Products.ProductName,
  Products.Price,
  Products.Price * .85,
  Suppliers.SupplierName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
  Products.Price BETWEEN 10 AND 150
  AND
  Suppliers.Country = "Japan"


    //--- 2 variant--------------------------
  SELECT
		Products.ProductName,
    Products.Price AS Price_full,
    Products.Price * .85 AS Price_discount_15_perc,
    Suppliers.SupplierName

FROM Products

JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID

WHERE
	Suppliers.Country='Japan'
	AND
	Products.Price BETWEEN 10 AND 150


    ## Базовый порядок работы с Git

1. **Подключение**
    - `git init`
2. **Зафиксировать изменения**
    - `git add .` добавить в индекс (очередь на коммит)
    - `git commit -m 'update'`
3. **Привязка `LOCAL ↔ REMOTE` репозиториев**
    - `git remote add origin скопированная_ссылка`
    - `git remote -v` просмотр тек/привязка
4. **Выгрузить ветку на GitHub**
    - `git push -u origin название_ветки`

    