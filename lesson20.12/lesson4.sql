https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_all


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

SELECT * FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID