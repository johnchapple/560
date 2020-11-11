exports.post = function(req, res){
  if(req.method == "POST"){
    var Text = req.body.Text;
    var EmployeeId = req.body.Employeeid

    var sql = "INSERT INTO `BulletinPost`(`Text`,`EmployeeId`) VALUES ('" + Text + "','" + EmployeeId + "')";
    console.log(sql)

    let insertId = null
    var query = db.query(sql, function(err, result) {
      console.log(result)
      console.log(result.insertId)
      insertId = result.insertId
      sql = `SELECT * FROM BulletinPost WHERE BulletinPostID = ${insertId}`
      query = db.query(sql, function(err, result) {
        console.log(result)
        res.json(result)
      });
    })
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

 exports.all = function(req, res){
  var sql = "SELECT * FROM BulletinPost";

  var query = db.query(sql, function(err, result) {
    res.json(result)
  });
 };

 exports.delete = function(req, res){
  console.log('body', req.body.BulletinPostID)
  console.log('actual body', req.body)
  var BulletinPostID = req.body.BulletinPostID
  var sql = `DELETE FROM BulletinPost WHERE BulletinPostID = ${BulletinPostID}`;
  console.log(sql)
  var query = db.query(sql, function(err, result) {
    res.json(result)
  });
 };