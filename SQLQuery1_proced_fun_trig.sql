/*
CREATE PROCEDURE wypis_ciag_fibbo (@n INT)
AS
BEGIN
DECLARE @wypis_wart_tab TABLE (id_wyn INT NOT NULL, wyn_nas_wartos INT NOT NULL)
INSERT INTO @wypis_wart_tab (id_wyn, wyn_nas_wartos) SELECT * FROM dbo.fun_fib(@n)
SELECT 'Wartosc nr ' + CONVERT(varchar(7), id_wyn) + ': ' + CONVERT(varchar(37), wyn_nas_wartos) FROM @wypis_wart_tab

END
*/
/*
CREATE TABLE wyn_fibbon(id_wyn INT NOT NULL, wyn INT NOT NULL)
*/
/*
CREATE FUNCTION dbo.fun_fib (@ilo_wyn INT)
RETURNS @tab_wyn TABLE ( id_wyn INT, wyn_nas INT)
	AS
	BEGIN
		DECLARE @pierws INT = 0
		DECLARE @naste INT = 1
		DECLARE @ktory_ter INT = 0;
		DECLARE @wyn_wcze INT;
		DECLARE @wyn_jesz_wcze INT;
		DECLARE @wyn_nast INT;
		WHILE @ktory_ter < @ilo_wyn
		BEGIN
			IF @ktory_ter < 2
				IF @ktory_ter = 0
					INSERT INTO @tab_wyn (id_wyn, wyn_nas) VALUES (@ktory_ter, @pierws)
				ELSE
					INSERT INTO @tab_wyn (id_wyn, wyn_nas) VALUES (@ktory_ter, @naste)
			ELSE
				SELECT @wyn_wcze = wyn_nas FROM @tab_wyn WHERE id_wyn = @ktory_ter - 1
				SELECT @wyn_jesz_wcze = wyn_nas FROM @tab_wyn WHERE id_wyn = @ktory_ter - 1
				SET @wyn_nast = @wyn_wcze + @wyn_jesz_wcze
				INSERT INTO @tab_wyn (id_wyn, wyn_nas) VALUES (@ktory_ter, @wyn_nast)
				
				
			SET @ktory_ter = @ktory_ter + 1
			
		END

		
		RETURN
	END

*/
/*
CREATE TRIGGER person_name 
ON Person.Person
AFTER INSERT
AS
BEGIN

UPDATE Person.Person SET LastName = UPPER(LastName) WHERE BusinessEntityID = (SELECT MAX(BusinessEntityID) FROM Person.Person)
END
*/


/*
CREATE TRIGGER taxRateMonitoring
ON Sales.SalesTaxRate
AFTER UPDATE
AS
BEGIN
SELECT Wartosc kolumny TaxRate nie zosta³a zmieniona w odpowiedni sposób FROM Sales.SalesTaxRate WHERE Sales.SalesTaxRate.TaxRate > Sales.SalesTaxRate.TaxRate * 1.3 or Sales.SalesTaxRate.TaxRate < Sales.SalesTaxRate.TaxRate * 0.7

END


UPDATE Sales.SalesTaxRate SET Sales.SalesTaxRate.TaxRate = Sales.SalesTaxRate.TaxRate * 10/17 WHERE Sales.SalesTaxRate.SalesTaxRateID = 27
*/






















