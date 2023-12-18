/*https://github.com/annykh/genTech/blob/main/staff.txt


//*Вывести всю таблицу Staff

SELECT * FROM Staff

Найти список работников, которым больше 30 лет и у них нет детей,

SELECT * FROM Staff WHERE Age > 30 AND has_child ="N"

Найти самого молодого работника

SELECT * FROM Staff ORDER BY age ASC LIMIT 1


OPERATOR --LIKE

SELECT * FROM Staff WHERE Name LIKE "A%";начало с "A"

SELECT * FROM Staff WHERE Name LIKE "A%r";начало с "A" и оканчивается "r"   


чтобы на 2-ой позиции была буква а

SELECT * FROM Staff WHERE Name LIKE "_a%";2-я буква а
или
SELECT * FROM Staff WHERE Name LIKE "%a_";если есть после а буква

чтобі біло 4 символа

SELECT * FROM Staff WHERE Name LIKE "____";4 символа

SELECT * FROM Staff WHERE Name LIKE "____";4 символа


-- Найти список работников, у которых средний уровень должности(middle) и им больше 20 лет

select * from Staff
where position like '%middle%' and age>20;

-- Найти список работников, у которых имя начинается с буквы А и у них нет детей,

select * from Staff
where firstname like 'A%' and has_child = 'N';  


-- Найти первых трех сотрудников, чьи имена начинаются на A

select * from Staff
where firstname like 'A%'
limit 3

