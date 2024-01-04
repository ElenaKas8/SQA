--*  В рамках БД "песочница" ⁡⁣⁢⁢https://www.w3schools.com/mysql/trymysql.asp?⁡⁣⁢⁢filename=trysql_select_all⁡ напишите след/запросы:

--^ -- (1) Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпании поставщика)

SELECT ProductName,Price,CategoryName,SupplierName
FROM Products   
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID


-- ^(2) Вывести список стран, которые поставляют морепродукты

SELECT DISTINCT Country
FROM Suppliers
WHERE SupplierID IN (
    SELECT SupplierID
    FROM Products
    WHERE CategoryID IN (
        SELECT CategoryID
        FROM Categories
        WHERE CategoryName = 'Seafood'
    )
);


--^ (3) Вывести два самых дорогих товара из категории Beverages из USA
SELECT ProductName, Price
FROM Products
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
)
AND SupplierID IN (
    SELECT SupplierID
    FROM Suppliers
    WHERE Country = 'USA'
)
ORDER BY Price DESC
LIMIT 2;

--^ (4) Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT ProductName, Price AS Price_USD
FROM Products
ORDER BY Price DESC
LIMIT 1;


--* (5) Дайте короткий ответ на вопрос: в чем отличие БД от СУБД

БД (база данных)- это система управления базами данных,
СУБД (система управления базами данных).
Таким образом, БД - это набор данных, а СУБД - это программное обеспечение для эффективного управления этими данными.






