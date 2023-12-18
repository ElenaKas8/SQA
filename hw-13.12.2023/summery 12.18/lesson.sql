/*https://github.com/annykh/genTech/blob/main/staff.txt


Вывести всю таблицу Staff

SELECT * FROM Staff

Найти список работников, которым больше 30 лет и у них нет детей,

SELECT * FROM Staff WHERE Age > 30 AND has_child ="N"

Найти самого молодого работника

SELECT * FROM Staff ORDER BY age ASC LIMIT 1
