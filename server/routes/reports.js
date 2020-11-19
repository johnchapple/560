exports.all = function(req, res){

    if(req.method == "GET"){
      var sql = '';


      var query = db.query(sql, function(err, result) {
        res.send(result)
      });
      /*
      res.send([
        { id: 0, FirstName: 'John', LastName: 'Chapple', JoinedDate: (new Date('January 1, 2018')) },
        { id: 1, FirstName: 'Mitch', LastName: 'McConnell', JoinedDate: (new Date('February 2, 2019')) },
        { id: 2, FirstName: 'Mike', LastName: 'Pence', JoinedDate: (new Date('March 3, 2020')) }
      ])
      */
    }
   };


   exports.monthly = function(req,res){
    console.log("hey");


    if(req.method == "GET"){
      var sql = `SELECT CONCAT(FirstName, " ", LastName) AS EmployeeName, SUM(PurchasedPrice) AS TotalSales ` +
                `FROM restaurant.orders AS O ` +
                `JOIN restaurant.purchasedmenuitem ON O.OrderID = restaurant.purchasedmenuitem.OrderID ` + 
                `JOIN restaurant.employees ON O.EmployeeID = restaurant.employees.EmployeeID ` + 
                `WHERE YEAR(OrderDate) =` + `'2020'` +
                `GROUP BY O.EmployeeID ` + 
                `ORDER BY TotalSales DESC`;


      var query = db.query(sql, function(err, result) {
        res.send(result)
      });
      /*
      res.send([
        { id: 0, FirstName: 'John', LastName: 'Chapple', JoinedDate: (new Date('January 1, 2018')) },
        { id: 1, FirstName: 'Mitch', LastName: 'McConnell', JoinedDate: (new Date('February 2, 2019')) },
        { id: 2, FirstName: 'Mike', LastName: 'Pence', JoinedDate: (new Date('March 3, 2020')) }
      ])
      */
    }   
  };


  exports.bestSelling = function(req,res){


    if(req.method == "GET"){
      var sql =  `SELECT restaurant.menuitem.name AS ItemName, COUNT(restaurant.purchasedmenuitem.MenuItemID) AS NumOrdered
FROM restaurant.purchasedmenuitem
JOIN restaurant.menuitem ON restaurant.purchasedmenuitem.MenuItemID = restaurant.menuitem.MenuItemID
JOIN restaurant.orders ON restaurant.purchasedmenuitem.OrderID = restaurant.orders.OrderID
WHERE MONTH(restaurant.orders.OrderDate) = MONTH(NOW()) AND YEAR(restaurant.orders.OrderDate) = YEAR(NOW())
GROUP BY restaurant.purchasedmenuitem.MenuItemID
ORDER BY NumOrdered DESC`


      var query = db.query(sql, function(err, result) {
        res.send(result)
      });

    }   
  };

  exports.monthlySales = function(req,res){
      if(req.method == "GET"){
      var sql = `SELECT MONTH(restaurant.orders.OrderDate) AS Month, SUM(restaurant.purchasedmenuitem.PurchasedPrice) AS TotalMonthlySales 
FROM restaurant.orders 
JOIN purchasedmenuitem ON restaurant.orders.OrderID = purchasedmenuitem.OrderID 
WHERE YEAR(restaurant.orders.OrderDate) = '2019' 
GROUP BY MONTH(restaurant.orders.OrderDate) 
ORDER BY MONTH(restaurant.orders.OrderDate) ASC`;


      var query = db.query(sql, function(err, result) {
        res.send(result)
      });

    }   
  };

