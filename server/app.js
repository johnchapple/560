/**
* Module dependencies.
*/
const express = require('express')
  , routes = require('./routes')
  , user = require('./routes/user')
  , bulletin = require('./routes/bulletin')
  , employees = require('./routes/employees')
  , employeeAccount = require('./routes/employeeAccount')
  , roles = require('./routes/roles')
  , reports = require('./routes/reports')
  , http = require('http')
  , path = require('path');
//const methodOverride = require('method-override');
// const session = require('express-session');
const app = express();
const cors = require('cors');
const mysql = require('mysql');
let bodyParser=require("body-parser");

let connection = mysql.createConnection({
              host     : 'localhost',
              user     : 'root',
              password : 'sigmas10',
              database : 'restaurant',
              port : 3306,
              insecureAuth : true
});
 
connection.connect((err) => {
    if (err) throw err;
    console.log('Connected!');
  });
 
global.db = connection;
 
// all environments
app.set('port', process.env.PORT || 4000);
// app.set('views', __dirname + '/views');
// app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static('public'))
app.use(cors())

// app.use(express.static(path.join(__dirname, 'public')));
/*
app.use(session({
              secret: 'keyboard cat',
              resave: false,
              saveUninitialized: true,
              cookie: { maxAge: 60000 }
            }))*/
 
// development only
 
app.get('/', routes.index);//call for main index page
app.get('/home/dashboard', user.dashboard);//call for dashboard page after login
app.get('/home/logout', user.logout);//call for logout
app.get('/home/profile',user.profile);//to render users profile

app.get('/employees', employees.all);
app.get('/bulletinPosts', bulletin.all);
app.get('/employeeAccounts', employeeAccount.all);

app.post('/bulletinPosts', bulletin.post);
app.delete('/bulletinPosts', bulletin.delete);
app.post('/deleteBulletinPosts', bulletin.delete)

app.get('/reports', reports.all);
app.get('/reports/monthly', reports.monthly);
app.get('/reports/topitems', reports.bestSelling);
app.get('/reports/monthlySales', reports.monthlySales)

app.get('/roles', roles.all);
app.post('/roles', roles.new);

// app.get('/signup', employeeAccount.signup);//call for signup page
app.post('/signup', employeeAccount.signup);

app.post('/login', employeeAccount.login);

//Middleware
app.listen(4000)