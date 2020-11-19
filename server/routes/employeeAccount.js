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
  console.log(req, "<---- Req");
  var firstname = req.body.firstname;
  var lastname = req.body.lastname;
  var username = req.body.username;
  var password = req.body.password;
  var email = req.body.email;
  var phonenumber = req.body.phoneNumber;
  // var role = req.body.role;

  //create Employee
  //create EmployeeAccount
  // var sql = "INSERT INTO `Employees`(`username`,`password`) VALUES ('" + username + "','" + password + "')";
  var sql = "INSERT INTO `Employees`(`FirstName`,`LastName`,`Email`,`PhoneNumber`) VALUES ('" + firstname + "','" + lastname + "','" + email + "','" + phonenumber + "')";
  // var sql2 = "INSERT INTO `Employees`

  var query = db.query(sql, function(err, result) {
    // console.log(result);
    sql = `SELECT EmployeeID FROM Employees WHERE restaurant.Employees.email = "${email}" AND restaurant.Employees.phonenumber = "${phonenumber}"`;
    query = db.query(sql,function(err,result){
      var empid = result[0].EmployeeID;
      sql =  "INSERT INTO `EmployeeAccount`(`EmployeeID`,`UserName`,`Pass`) VALUES ('" + empid + "','" + username + "','" + password + "')";
      query = db.query(sql,function(err,result){
        if (result.length === 0) res.status(404).json({ message: 'ERRR'})
        res.json(result[0]);
      });
    });
    // var empid = result.EmployeeID;
    // var sql = "INSERT INTO `Employees`(`FirstName`,`LastName`,`Email`,`PhoneNumber`) VALUES ('" + firstname + "','" + lastname + "','" + email + "','" + phonenumber + "')";
    // res.json(result[0]);
  });
};