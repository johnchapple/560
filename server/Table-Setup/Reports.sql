/**Report For Total Monthly Sales For Each Year**/
SELECT MONTHNAME(STR_TO_DATE(MONTH(OrderDate), '%m')) AS Month, SUM(PurchasedPrice) AS TotalMonthlySales
FROM restaurant.orders
JOIN purchasedmenuitem ON restaurant.orders.OrderID = purchasedmenuitem.OrderID
WHERE YEAR(OrderDate) = '2019'
GROUP BY MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC

/**Report For Total Sales Per Employee For Month/Year**/
SELECT CONCAT(FirstName, " ", LastName) AS EmployeeName, SUM(PurchasedPrice) AS TotalSales
FROM restaurant.orders AS O
JOIN restaurant.purchasedmenuitem ON O.OrderID = restaurant.purchasedmenuitem.OrderID
JOIN restaurant.employees ON O.EmployeeID = restaurant.employees.EmployeeID
WHERE YEAR(OrderDate) = '2019' OR '2020'
GROUP BY O.EmployeeID
ORDER BY TotalSales DESC

/**Report For Best Selling Menu Items Year/Month**/
SELECT restaurant.menuitem.name AS ItemName, COUNT(restaurant.purchasedmenuitem.MenuItemID) AS NumOrdered
FROM restaurant.purchasedmenuitem
JOIN restaurant.menuitem ON restaurant.purchasedmenuitem.MenuItemID = restaurant.menuitem.MenuItemID
JOIN restaurant.orders ON restaurant.purchasedmenuitem.OrderID = restaurant.orders.OrderID
WHERE MONTH(restaurant.orders.OrderDate) = MONTH(NOW()) AND YEAR(restaurant.orders.OrderDate) = YEAR(NOW())
GROUP BY restaurant.purchasedmenuitem.MenuItemID
ORDER BY NumOrdered DESC

/**Forecast For Next Month's Inventory Ordering Using THis Month's Sold Items**/
SELECT restaurant.menuitem.name AS ItemName, COUNT(restaurant.purchasedmenuitem.MenuItemID) AS NumOrdered, ROUND(COUNT(restaurant.purchasedmenuitem.MenuItemID) * 1.5) AS Forecast
FROM restaurant.purchasedmenuitem
JOIN restaurant.menuitem ON restaurant.purchasedmenuitem.MenuItemID = restaurant.menuitem.MenuItemID
JOIN restaurant.orders ON restaurant.purchasedmenuitem.OrderID = restaurant.orders.OrderID
WHERE MONTH(restaurant.orders.OrderDate) = MONTH(NOW()) AND YEAR(restaurant.orders.OrderDate) = YEAR(NOW())
GROUP BY restaurant.purchasedmenuitem.MenuItemID 


/**/
SELECT MONTH(restaurant.orders.OrderDate) AS Month, COUNT(restaurant.menuitem.Name) AS NumOrdered
FROM restaurant.orders
JOIN restaurant.purchasedmenuitem ON restaurant.orders.OrderID = restaurant.purchasedmenuitem.OrderID
JOIN restaurant.menuitem ON restaurant.purchasedmenuitem.MenuItemID = restaurant.menuitem.MenuItemID
WHERE YEAR(restaurant.orders.OrderDate) = 2020
GROUP BY Month(restaurant.orders.OrderDate)
ORDER BY MONTH(restaurant.orders.OrderDate) ASC