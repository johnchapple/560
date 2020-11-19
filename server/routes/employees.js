exports.all = function(req, res){

    if(req.method == "GET"){
      var sql = "SELECT * FROM Employees"
  
      var query = db.query(sql, function(err, result) {
        res.json(result)
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

exports.patch = function(req, res) {
  var sql = `UPDATE restaurant.employees SET RoleID = ${req.body.RoleID} WHERE EmployeeID = ${req.params.id}`

  var query = db.query(sql, function(err, result) {
    res.json(result)
  });
}