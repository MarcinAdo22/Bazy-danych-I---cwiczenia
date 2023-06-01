/*
BEGIN TRANSACTION tran_pier

UPDATE Production.Product SET ListPrice = ListPrice * 1.1 WHERE ProductID = 680

COMMIT

BEGIN TRANSACTION tran_delet

DELETE FROM Production.Product WHERE ProductID = 707
ROLLBACK


BEGIN TRANSACTION tran_prod


INSERT INTO Production.Product ( Name, ProductNumber, MakeFlag, FinishedGoodsFlag, 
Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode,
WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, 
ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate) Values ( 'Really_fit_shorts', 'S-4786-L', '0', '1', 'NULL', '5', '7', '45.00', '77.00', 'L', 'NULL', 'NULL', 'NULL', '0', 'T', 'W', 'N', '27', '17', '2017-11-27 00:00:00.000', 'NULL', 'NULL', '2018-01-07 00:00:00.000', '76HFJ75K-7FH5-8XJ3-9HE5-8H735V7787L7')

COMMIT



BEGIN TRANSACTION tran_cost


UPDATE Production.Product SET StandardCost = StandardCost * 11/10
if ((SELECT SUM(StandardCost) * 11/10 FROM Production.Product) <= 50000)
    
	COMMIT;

else
     
	ROLLBACK TRANSACTION tran_cost;
	



BEGIN TRANSACTION tran_prod_nas

BEGIN TRY
INSERT INTO Production.Product (Name, ProductNumber, MakeFlag, FinishedGoodsFlag, 
Color, SafetyStockLevel, ReorderPoint, StandardCost, ListPrice, Size, SizeUnitMeasureCode,
WeightUnitMeasureCode, Weight, DaysToManufacture, ProductLine, Class, Style, ProductSubcategoryID, 
ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, rowguid, ModifiedDate) VALUES ( 'Red Brackets', 'BK-M18B-53', '0', '1', 'RED', '700', '430', '85.00', '167.00', '', 'DM', 'G', '270', '3', 'S', 'L', 'W', '7', '127', '2017-11-17 00:00:00.000', '2018-11-07', '', CONVERT(uniqueidentifier, '74785325-8773-9457-8583-583334587787'), '2018-01-27 00:00:00.000')
if (SELECT COUNT(ProductNumber) FROM Production.Product WHERE ProductID = (SELECT MAX(ProductID) FROM Production.Product)) < 2
     COMMIT
END TRY
BEGIN CATCH

if (SELECT COUNT(ProductNumber) FROM Production.Product WHERE ProductID = (SELECT MAX(ProductID) FROM Production.Product)) < 2

EXISTS (Select ProductNumber FROM Production.Product WHERE ProductID = (SELECT MAX(ProductID) FROM Production.Product))

    COMMIT

else

    ROLLBACK TRANSACTION tran_prod_nas

END CATCH



BEGIN TRANSACTION tran_ord


UPDATE Sales.SalesOrderDetail SET OrderQty = OrderQty + 1
if EXISTS (SELECT OrderQty FROM Sales.SalesOrderDetail WHERE OrderQty = 0)
    ROLLBACK TRANSACTION tran_ord
else
    COMMIT


SELECT * INTO SalesOrderDet FROM Production.Product



BEGIN TRANSACTION tran_delet_prod


DELETE FROM dbo.SalesOrderDet WHERE StandardCost > (SELECT AVG(StandardCost) FROM dbo.SalesOrderDet)
if (SELECT COUNT(*) FROM dbo.SalesOrderDet WHERE (SELECT AVG(StandardCost) FROM dbo.SalesOrderDet) < StandardCost) > 10
    ROLLBACK TRANSACTION tran_delet_prod
else
    COMMIT


*/