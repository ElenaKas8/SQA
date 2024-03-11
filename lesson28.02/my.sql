--вывести данные о заказах 

-- проекция

-- имя_клиента
-- фамилия_менеджера
-- название_компании_перевозчика

SELECT CustomerName,EmployeeName,CompanyName

FROM Orders

JOIN Customers ON Orders.CustomerID = Customers.CustomerID

JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID







