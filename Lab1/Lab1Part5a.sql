SELECT 
	COUNT(DISTINCT CustomerID) 
FROM 
	orders;

SELECT
	COUNT(*)
FROM
	customers;

INSERT INTO
	customers (CustomerID, CompanyName, ContactName)
VALUES	
	("ITTRI", "IT at Tric", "Daniel Norris");
    
SELECT
	*
FROM 
	customers AS c
INNER JOIN 
	orders AS o
ON 
	o.CustomerID = c.CustomerID
WHERE 
	o.CustomerID = "ITTRI";