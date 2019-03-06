--EXCERCISE 1 - Northwind Queries 
--SELECT CustomerID, CompanyName, Address, City, PostalCode, Country FROM Customers WHERE City = 'Paris' OR City='London';
--SELECT * FROM Products WHERE QuantityPerUnit LIKE '%bottle%';
--SELECT p.*, s.CompanyName, s.Country FROM Products p INNER JOIN Suppliers s ON p.SupplierID=s.SupplierID WHERE p.QuantityPerUnit LIKE '%bottles';
--SELECT c.CategoryName, COUNT(p.ProductName) AS "Number of Products"  FROM Products p INNER JOIN Categories c ON p.CategoryID = c.CategoryID  GROUP BY c.CategoryName ORDER BY [Number of Products] DESC;
--SELECT CONCAT(TitleOfCourtesy,' ',FirstName,' ',LastName) AS "Name", City   FROM Employees WHERE Country='UK';
/*SELECT t.RegionID, FORMAT(SUM(OS.Subtotal), 'N2') AS "Sales Totals"
FROM Territories t 
INNER JOIN EmployeeTerritories e ON t.TerritoryID = e.TerritoryID
INNER JOIN Orders o ON e.EmployeeID = o.EmployeeID
INNER JOIN [Order Subtotals] os ON o.OrderID=os.OrderID
GROUP BY RegionID
HAVING SUM(OS.Subtotal) > 1000000;*/
--SELECT COUNT(*) FROM Orders WHERE Freight>100 AND (ShipCountry='UK' OR ShipCountry='USA');
/*SELECT TOP 1 OrderID AS 'Order Number', Discount*UnitPrice AS "Discount Amount" 
FROM [Order Details] 
ORDER BY "Discount Amount" DESC;*/

--EXCERCISE 2 - Create Spartans Table 
/*CREATE TABLE MishuSpartaTable(
    Title VARCHAR(4),
    FirstName CHAR(10),
    LastName CHAR(10),
    University CHAR(255),
    Course CHAR(50),
    Grade VARCHAR(5),
);*/

/*INSERT INTO MishuSpartaTable (Title, FirstName, LastName, University, Course, Grade )
VALUES
('Miss', 'Mishu', 'Jahur', 'Queen Mary University of London', 'Mathematics', 'First'),
('Mr', 'Jerome', 'Hanciles', 'Middlesex University','3D Animation and Games',  'Third'),
('Mr', 'Thomas', 'Dam', 'Keele University', 'Psychology', '2:1'),
('Miss', 'Faduma', 'Hussein',  'St George''s, University of London', 'Biomedical Science', '2:2'),
('Miss','Yolanda', 'Simpson', 'The University of Northampton', 'Computing(computer systems engineering)', '2:1'),
('Miss', 'Rume', 'Rhuada', 'Coventry University','Medical and Pharmacological Science', '2:2'),
('Mr', 'Matthew','Shaw','Exeter Univeristy','Computer Science','2:1'),
('Mr', 'Tevin','Muparadzi','Middlesex University','BioChemical Engineering','2:1'),
('Mr', 'Rahib', 'Sayed', 'Westminister University', 'Computer Science','2:2');*/

--EXCERCISE 3 - Northwind Data Analysis linked to Excel 
--SELECT e.EmployeeID, CONCAT(e.FirstName,' ',e.LastName) AS Employee,  CONCAT(er.FirstName,' ',er.LastName) AS "Reports to"  FROM Employees e LEFT JOIN Employees er ON e.ReportsTo = er.EmployeeID;

/*SELECT s.CompanyName, SUM(od.UnitPrice*UnitsOnOrder*(1-Discount)) AS "Total Sales" 
FROM [Order Details] od 
INNER JOIN Products p ON od.ProductID = p.ProductID
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName
HAVING SUM(od.UnitPrice*UnitsOnOrder*(1-Discount)) > 10000
ORDER BY "Total Sales" DESC;*/

--SELECT OrderDate FROM Orders ORDER BY OrderDate DESC;
/*SELECT TOP 10 CompanyName , MAX(OrderDate)
FROM Orders O 
INNER JOIN Customers c ON o.CustomerID= c.CustomerID
WHERE YEAR (OrderDate) = 1998 
GROUP BY CompanyName
ORDER BY MAX(OrderDate) DESC;*/

/*SELECT MONTH(ShippedDate) AS "Month", AVG(DAY(ShippedDate-OrderDate)) AS "Number of Days to Ship" 
FROM Orders 
GROUP BY MONTH(ShippedDate) 
HAVING MONTH(ShippedDate) IS NOT NULL 
ORDER BY Month;*/