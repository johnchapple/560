exports.post = function(req, res){
  if(req.method == "POST"){
    var Text = req.body.Text;
    var EmployeeId = req.body.EmployeeId

    var sql = "INSERT INTO `BulletinPost`(`Text`,`EmployeeId`) VALUES ('" + Text + "','" + EmployeeId + "')";

    var query = db.query(sql, function(err, result) {
      res.json(result)
      // message = "Succesfully! Your account has been created.";
      // res.render('signup.ejs',{message: message});
    });
  }
  if(req.method == "GET"){
    /*
    var sql = "SELECT * FROM BulletinPost"

    var query = db.query(sql, function(err, result) {
      res.json(result)
    });
    */
    res.send({message: 'hello'})
  }
 };