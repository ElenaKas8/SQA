-- database: :memory:
https://western-appeal-39b.notion.site/GenTech-190923-m-be-m-fe-m-qa-ed7e7a76535646e0a5fe8daf9f27c866
https://western-appeal-39b.notion.site/GenTech-4-Jan-10-2024-d3a7ccb89c984a839ab33c006bfed7c0
//Проектирование БД-
описание схемы БД-какие должны быть сущности,поля и их связь

определить все связи в таблице

Схема диаграммы

https://dbdiagram.io/d/online_school_jan_10_2024-659e6a99ac844320ae9e360f

моя диаграмма 

https://dbdiagram.io/d/659e7a53ac844320ae9fb1b3


## Пример определения связей в БД “онлайн-магазин: песочница”

1. `Orders.CustomerID (M:1) Customers.CustomerID`
2. `Orders.OrderID (1:M) OrderDetails.OrderID`
3. `Orders.EmployeeID (M:1) Employees.EmployeeID`
4. `Orders.ShipperID (M:1) Shippers.ShipperID`
5. `OrderDetails.ProductID (M:1) Products.ProductID`
6. `Products.SupplierID (M:1) Suppliers.SupplierID`
7. `Products.CategoryID (M:1) Categories.CategoryID`

## Базовые типы связей между сущностями

- `1:1` (один к одному)
- `1:M` (один ко многим) - самый распространенный
- `M:M` (многие ко многим)


## Основные типы данных в MySQL

- каждый столбец (поле) таблицы должен иметь указание на тип данных

### Числовые

- `int` / `integer`
- `float`

### Строковые

- `varchar(x)`
    - `x` - макс. ко-во символов
- `text(x)`
    - `x` - макс. ко-во символов

### Логические

- `bool`

### Дата / время

- `datetime`
- `**timestamp**`
- `date`
