exports.all = function(req, res){
  var sql = `SELECT * FROM EmployeeAccount`
  var query = db.query(sql, function(err, result) {
    res.json(result)
  });
};

exports.login = function(req, res){
  var username = req.body.username;
  var password = req.body.password;
  var sql = `SELECT * FROM EmployeeAccount WHERE restaurant.EmployeeAccount.Username = "${username}" AND restaurant.EmployeeAccount.Pass = "${password}"`
  var query = db.query(sql, function(err, result) {
    if (result.length === 0) res.status(404).json({ message: 'No account found with those credentials.'})
    res.json(result[0])
  });
};

exports.signup = function(req, res){
  var firstname = req.body.firstname;
  var lastname = req.body.lastname;
  var username = req.body.username;
  var password = req.body.password;
  var sql = "INSERT INTO `EmployeeAccount`(`FirstName`,`LastName`) VALUES ('" + firstname + "','" + lastname + "')";

  var query = db.query(sql, function(err, result) {
    console.log(result)
  });
};