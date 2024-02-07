--workbanche
--https://western-appeal-39b.notion.site/GenTech-8-Feb-7-2024-95e0e565f64c46019cbe7d92a90a4e21?pvs=4

--создать базу данных
--Пример. Создать БД music 
CREATE DATABASE music;
--Задача. Создать таблицу users 
CREATE TABLE users(
    id int,
    fullname varchar(128),
    country varchar(64),
    created_at timestamp,
    is_blocked bool
)

--## Валидация данных в SQL / SQL Constraints

- По сути, представляет собой правила (ограничения)
- Позволяет повысить целостность

**Основные ограничения:**

- `primary key` (`unique + not null`)
- `unique` уникальное
- `not null` не пустое
- `foreign key` внешний ключ
- `check` проверка условий
- `default` установка значения по умолчания

--правильное решение  

create table users (
	id int primary key auto_increment,
	fullname varchar(128) not null,
	country varchar(64) not null,
	created_at timestamp default current_timestamp,
	is_blocked bool default false
)


--добавить 5 users в таблицу

INSERT INTO users ( fullname, country)
VALUES
    ('Elena Kaas ',  'Germany'),
    ('Olena Smitt',  'Ukraine'),
    ('Oleg Boss ',  'France'),
    ('Igor Mattis ', 'Spain'),
    ('Natalia Smitti ',  'Austria')


    Задача. Создать таблицу tracks с применением мех. валидации данных
id
created_at
title
is_published
duration_secs
author_id
album_id


create table tracks (
    id int auto_increment primary key,
    created_at timestamp default current_timestamp,
    title varchar(128) not null,
    is_published bool default false,
    duration_secs int check(duration_secs > 0),
    author_id int not null,
    album_id int not null,
    foreign key (author_id) references users(id)
);

--добавить title,duration_secs)

INSERT INTO tracks ( title, duration_secs,author_id)
VALUES
    ('Track', 300,1)
    

    Задача. Создать таблицу reactions (оценки на видео)

   CREATE TABLE reactions (
    id int auto_increment primary key,
    created_at timestamp default current_timestamp,
    value int not null check(value between 1 and 5),
    author_id int not null,
    album_id int not null,
    foreign key (author_id) references users(id),
    foreign key (album_id) references tracks(id)
);



    Задача. Добавить несколько произвольных оценок (реакций) в таблицу reactions 

    INSERT INTO reactions (`value`, author_id, album_id)
VALUES
    (5, 1, 1),
    (4, 2, 1),
    (3, 3, 1),
    (2, 4, 1),
    (1, 5, 1);


**Задача. Вывести данные о треках**

(проекция: `название_трека`, `продолжительность`, `имя_автора`)

SELECT tracks.title, tracks.duration_secs, users.fullname
FROM tracks
JOIN users
ON tracks.author_id = users.id


Задача. Очистить поле country юзерам 2 и 4

UPDATE users
SET country = ''
WHERE id = 2 OR id = 4


Задача. Вывести среднюю оценку на трек

SELECT AVG(reactions.value)
FROM reactions
JOIN tracks
ON reactions.album_id = tracks.id


## Схема БД “платежная система”

**Базовые сущности**

- юзеры
- счета (аккаунты)
- транзакции

**Связи между сущностями**

- юзеры - счета
- транзакции - счета
- транзакции - юзеры


CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address VARCHAR(255)
);

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    user_id INT,
    balance DECIMAL(10, 2),
    account_type VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    from_account_id INT,
    to_account_id INT,
    amount DECIMAL(10, 2),
    timestamp DATETIME,
    description VARCHAR(255),
    FOREIGN KEY (from_account_id) REFERENCES Accounts(account_id),
    FOREIGN KEY (to_account_id) REFERENCES Accounts(account_id)
);
