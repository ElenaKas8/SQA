--https://western-appeal-39b.notion.site/GenTech-190923-m-be-m-fe-m-qa-ed7e7a76535646e0a5fe8daf9f27c866

--https://western-appeal-39b.notion.site/GenTech-Summary-Mar-4-2024-8e77876a93214c41a597620c8bf194f2


--Задача. Вывести общее ко-во клиентов не из Germany

SELECT
    COUNT(CustomerID) AS "Кол-во клиентов не из Germany"
FROM
    Customers
WHERE
    Country != "Germany"