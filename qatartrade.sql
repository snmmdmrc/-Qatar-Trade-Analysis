
/*
2013-2020 Qata Trade Analyze
Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types
*/

Select *
From QatarTradeReport..export
order by 1,3

Select *
From QatarTradeReport..import
order by 1,3

--TABLE1 TOTAL 
Select *
From QatarTradeReport..total


-- Import Data
Select Year, Month, Details, Destination, Quantity, Weight, Value
From QatarTradeReport..import
order by 1,2


-- Export Data
Select Year, Month, Details, Destination, Quantity, Weight, Value
From QatarTradeReport..export
order by 1,2


-- Total Export Value 2013-2020
SELECT SUM(Value) as TotalExportValue
FROM QatarTradeReport..export

-- Total Import Value 2013-2020
SELECT SUM(Value) as TotalImportValue
From QatarTradeReport..import
    
-- Total Export Quantity 2013-2020
SELECT SUM(Quantity) as TotalExportQuantity
FROM QatarTradeReport..export

-- Total Import Quantity  2013-2020
SELECT SUM(Quantity) as TotalImportQuantity
From QatarTradeReport..import


-- Total Export Weight 2013-2020
SELECT SUM(Weight) as TotalExportWeight
FROM QatarTradeReport..export

-- Total Import Weight  2013-2020
SELECT SUM(Weight) as TotalImportWeight
From QatarTradeReport..import


--Total Export Value by The Years of export
SELECT Year, SUM(Value) as TotalExportValue
FROM QatarTradeReport..export
Group by Year
order by Year



--TABLE2 
-- Avarage import Unit Price  by the years import
SELECT Year, (SUM(Value)/SUM(Weight)) as AvarageimportUnitPrice 
FROM QatarTradeReport..import
Group by Year
order by Year

--TABLE3
--Avarage export Unit Price by the years export
SELECT Year, (SUM(Value)/SUM(Weight)) as AvarageexportUnitPrice 
FROM QatarTradeReport..export
Group by Year
order by Year


--LARGEST totalValue OF  Export Value
SELECT Year, TotalExportValue
FROM QatarTradeReport..total
WHERE TotalExportValue = (SELECT MAX(TotalExportValue)
FROM QatarTradeReport..total)

----LARGEST totalValue OF  import Value
SELECT Year, TotalImportValue
FROM QatarTradeReport..total
WHERE TotalImportValue = (SELECT MAX(TotalImportValue)
FROM QatarTradeReport..total)

--LARGEST totalQuantity OF  import YEAR
SELECT Year, TotalImportQuantity
FROM QatarTradeReport..total
WHERE TotalImportQuantity = (SELECT MAX(TotalImportQuantity)
FROM QatarTradeReport..total)

---LARGEST totalQuantity OF  Export YEAR
SELECT Year, TotalExportQuantity
FROM QatarTradeReport..total
WHERE TotalExportQuantity = (SELECT MAX(TotalExportQuantity)
FROM QatarTradeReport..total)

--LARGEST WEIGHT OF import YEAR
SELECT Year, TotalimportWeight
FROM QatarTradeReport..total
WHERE TotalimportWeight = (SELECT MAX(TotalimportWeight)
FROM QatarTradeReport..total)

-- LARGEST totalWEIGHT OF EXPORT YEAR
SELECT Year, TotalExportWeight
FROM QatarTradeReport..total
WHERE TotalExportWeight = (SELECT MAX(TotalExportWeight)
FROM QatarTradeReport..total)


-- Largest totalvalue of import on 2013
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2013'
order by Value desc

-- Values TOP(10) of export on 2013
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2013'
order by Value desc

-- Values TOP(10) of import on 2013
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2013'
order by Value desc
-- can change WHERE Year = 'which year you want'

-- Values TOP(10) of export on 2014
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2014'
order by Value desc

-- Values TOP(10) of import on 2014
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2014'
order by Value desc

-- Values TOP(10) of export on 2015
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2015'
order by Value desc

-- Values TOP(10) of import on 2015
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2015'
order by Value desc

-- Values TOP(10) of export on 2016
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2016'
order by Value desc

-- Values TOP(10) of import on 2016
SELECT Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2016'
order by Value desc


-- Values TOP(10) of export on 2017
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2017'
order by Value desc

-- Values TOP(10) of import on 2017
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2017'
order by Value desc

-- Values of export on 2018
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2018'
order by Value desc

-- Values TOP(10) of import on 2018
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2018'
order by Value desc

-- Values TOP(10) of export on 2019
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2019'
order by Value desc

-- Values TOP(10) of import on 2019
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2019'
order by Value desc

-- Values TOP(10) of export on 2020
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..export
WHERE Year = '2020'
order by Value desc

-- Values TOP(10) of import on 2020 
SELECT TOP(10)
Year, Details, Destination, Value
FROM QatarTradeReport..import
WHERE Year = '2020'
order by Value desc

--TABLE 4
-- Merchandise trade balance by year
SELECT Year, (TotalExportValue-TotalImportValue) as MerchandiseTradeBalance
FROM QatarTradeReport..total
WHERE Year BETWEEN 2013 AND 2020