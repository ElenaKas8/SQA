https://western-appeal-39b.notion.site/GenTech-190923-m-be-m-fe-m-qa-ed7e7a76535646e0a5fe8daf9f27c866


https://dbdiagram.io/d/online_chessmate_17jan2024-65a796d9ac844320ae18dbbe

https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_all

--Как создать описанную базу данных

https://western-appeal-39b.notion.site/GenTech-7-Jan-31-2024-6266862efcb64786a29329d83fa70f45

https://sqliteonline.com/


--сегодняшний урок 
https://western-appeal-39b.notion.site/GenTech-7-Jan-31-2024-6266862efcb64786a29329d83fa70f45



--SQL: DDL-delta defiэnition language-оператор отвечающий за определение структуры БД
--Создание БД
--CREATE DATABASE db_name;
CREATE DATABASE IF NOT EXISTS db_name;
​
--Создание таблиц
CREATE TABLE <название_таблицы> (<структура>);

CREATE TABLE users (
	-- название_поля тип_данных доп_хар-ки
    id int
);
​
--Удаление таблиц
DROP TABLE table_name;
DROP TABLE IF EXISTS table_name;
​
--Создание таблицы users
CREATE TABLE users (
    id int primary key auto_increment,
    created_at timestamp,
    fullname varchar(128),
    email varchar(128),
    country varchar(128),
    is_blocked bool
);
​
--Задача. Создать таблицу videos
CREATE TABLE videos (
		id int primary key auto_increment,
    created_at timestamp,
    title varchar(128),
		author_id int,
    duration_secs int
);
​
--SQL CRUD: Create / добавление / Оператор INSERT INTO
--П-ример. Добавить юзеров в таблицу users
INSERT INTO users (created_at, fullname, email, country, is_blocked)
VALUES
	(current_timestamp(), 'Ivan Ivanov', 'ivan@example.org', 'Germany', False),
  (current_timestamp(), 'User 2', 'ivan@example.org', 'Germany', False),
  (current_timestamp(), 'User 3', 'user3@example.org', 'USA', False),
  (current_timestamp(), 'User 4', 'u4@example.org', 'Germany', False),
  (current_timestamp(), 'User 5', 'me@example.org', 'USA', False);
​
--Пример. Вывести всех юзеров
SELECT *
FROM users
​
--Задача. Добавить несколько видео-роликов в таблицу videos
INSERT INTO videos (created_at, title, author_id, duration_secs)
VALUES
		(current_timestamp(), 'About USA', 1, 3600),
    (current_timestamp(), 'About me', 1, 7200),
		(current_timestamp(), 'About YOU', 2, 600),
    (current_timestamp(), 'About Germany', 3, 820),
		(current_timestamp(), 'About France', 5, 1200),
    (current_timestamp(), 'About Brazil', 5, 5600);
​
--SQL CRUD: Delete / удаление записей / Оператор DELETE FROM
--Пример. Очистить таблицу
DELETE FROM videos;
​
--Пример. Удалить видео 12
DELETE FROM videos
WHERE
	id = 12;
​
--SQL CRUD: Update / модификация / Оператор UPDATE
--Пример. Изменить страну пользователя 1 на USA
UPDATE users
SET
	country = 'USA'
WHERE
	id = 1
​
--Задача. Удалить (очистить) email-адреса у юзеров 3 и 4
UPDATE users
	SET email = ''
WHERE
	id IN (3, 4)
​
--Задача. Изменить название видео 2 (или другое) на произвольное
UPDATE videos
	SET title = 'NEW TITLE'
WHERE
	id = 11
​
--Задача. Вывести данные о видео-роликах
--(проекция: название_видео_ролика, имя_автора)
select
	users.fullname,
	videos.title
from videos

join users on videos.author_id = users.id
​
--Задача. Вывести общую продолжительность видео-роликов
select
	sum(duration_secs) as total_duration_secs
from videos;
​
--Задача. Вывести видео-ролики юзеров из France (или другой страны)
SELECT 
	videos.title, 
	users.fullname 
FROM videos

JOIN users on videos.author_id = users.id 

WHERE
	users.country = 'Germany'
​
--Задача. Вывести среднюю продолжительность видео-роликов по странам
select
	users.country,
	avg(videos.duration_secs) as avg_duration
from videos

join users on users.id = videos.author_id

group by users.country;
​
Задача. Создать таблицу реакций (на видео) и добавить в нее 10 записей


