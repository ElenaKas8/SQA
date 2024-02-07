--создать базу данных для интернет магазина
CREATE DATABASE shop;

CREATE TABLE products(
    id int,
    title varchar(128),
    price int,
    category varchar(128)
)

--добавить 5 товаров
INSERT INTO products (id, title, price, category)
VALUES
    (1, 'product 1', 100, 'category 1'),
    (2, 'product 2', 200, 'category 2'),
    (3, 'product 3', 300, 'category 3'),
    (4, 'product 4', 400, 'category 4'),
    (5, 'product 5', 500, 'category 5');

--увеличить стоимость всех товаров с ценой от 50 до 5000 на 15%
UPDATE products
SET price = price * 1.15
WHERE price BETWEEN 50 AND 5000;

--вывести среднюю стоимость всех товаров
SELECT AVG(price)
FROM products

--вывести стоимость товара для каждой категории

SELECT category, AVG(price)
FROM products
GROUP BY category

--для товаров 1, 3, 5 уменьшить стоимость на 5%
UPDATE products
SET price = price * 0.95
WHERE id IN (1, 3, 5)


--Задача. Вывести данные о товарах
--(проекция: все_поля, цена_в_usd)
SELECT *,
	price * 1.07 AS price_usd
FROM products


--удалить товар с индитификатором 1
DELETE FROM products
WHERE id = 1


