exports.all = function(req, res){
  var sql = "SELECT * FROM Roles"

  var query = db.query(sql, function(err, result) {
    res.json(result)
  });
};

exports.new = function(req, res){
  var RoleName = req.body.RoleName;
  var PayRate = req.body.PayRate;
  console.log(RoleName, PayRate)
  var sql = `INSERT INTO 'Roles'('RoleName','PayRate') VALUES ('" + "${RoleName}" + "','" + ${PayRate} + "')`;
  console.log(sql)
  var query = db.query(sql, function(err, result) {
    console.log(result)
    res.json(result)
  });
};