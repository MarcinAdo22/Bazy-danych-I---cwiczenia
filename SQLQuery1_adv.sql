/*
WITH TempEmployeeInfo ( Imie, Nazwisko, Miasto, Adres, Kod_pocztowy, Telefon, Stanowisko, Oddzial, Pensja )
AS
(
    SELECT Person.Person.FirstName as Imie, Person.Person.LastName as Nazwisko, Person.Address.City as Miasto, Person.Address.AddressLine1 as Adres, Person.Address.PostalCode as Kod_pocztowy, 
	Person.PersonPhone.PhoneNumber as Telefon, HumanResources.Employee.JobTitle as Stanowisko, HumanResources.Department.Name as Oddzial, HumanResources.EmployeePayHistory.Rate as Pensja
	FROM Person.Person JOIN Person.BusinessEntity ON Person.Person.BusinessEntityID = Person.BusinessEntity.BusinessEntityID JOIN Person.BusinessEntityAddress ON Person.BusinessEntity.BusinessEntityID = Person.BusinessEntityAddress.BusinessEntityID 
	JOIN Person.Address ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID JOIN Person.PersonPhone ON Person.PersonPhone.BusinessEntityID = Person.Person.BusinessEntityID
	JOIN HumanResources.Employee ON HumanResources.Employee.BusinessEntityID = Person.Person.BusinessEntityID JOIN HumanResources.EmployeeDepartmentHistory ON HumanResources.EmployeeDepartmentHistory.BusinessEntityID = Person.Person.BusinessEntityID 
	JOIN HumanResources.Department ON HumanResources.Department.DepartmentID = HumanResources.EmployeeDepartmentHistory.DepartmentID JOIN HumanResources.EmployeePayHistory ON HumanResources.EmployeePayHistory.BusinessEntityID = Person.Person.BusinessEntityID 



)


Select * FROM TempEmployeeInfo

( Person.Person.FirstName, Person.Person.LastName, Person.Address.City, Person.Address.AddressLine1, Person.Address.PostalCode
Person.PersonPhone.PhoneNumber, 
HumanResources.Employee.JobTitle, HumanResources.Department.Name, HumanResources.EmployeePayHistory.Rate )



WITH Company_products_sales ( CompanyContact, Revenue )
AS
(
    
    SELECT SalesLT.Customer.CompanyName + ' ' + '(' + SalesLT.Customer.FirstName + ' ' + SalesLT.Customer.LastName + ')' as CompanyContact, 
	SalesLT.SalesOrderHeader.TotalDue as Revenue FROM SalesLT.Customer JOIN SalesLT.SalesOrderHeader ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID
)

Select * FROM Company_products_sales



WITH Category_products_sal (Category, SalesValue )
AS
(

    SELECT SalesLT.ProductCategory.Name as Category, SUM(SalesLT.SalesOrderDetail.LineTotal) as SalesValue
	FROM SalesLT.Product JOIN SalesLT.ProductCategory ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID 
	JOIN SalesLT.SalesOrderDetail ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID GROUP BY SalesLT.Product.ProductCategoryID, SalesLT.ProductCategory.Name
)


Select * FROM Category_products_sal
*/
