/**Roles**/

DROP TABLE IF EXISTS `restaurant`.`BulletinComment`;
DROP TABLE IF EXISTS `restaurant`.`BulletinPost`;
DROP TABLE IF EXISTS `restaurant`.`PurchasedMenuItem`;
DROP TABLE IF EXISTS `restaurant`.`MenuItem`;
DROP TABLE IF EXISTS `restaurant`.`Orders`;
DROP TABLE IF EXISTS `restaurant`.`EmployeeAccount`;
DROP TABLE IF EXISTS `restaurant`.`Employees`;
DROP TABLE IF EXISTS `restaurant`.`Roles`;

CREATE TABLE IF NOT EXISTS `restaurant`.`Roles` (
  `RoleID` INT NOT NULL,
  `RoleName` CHAR(50) NOT NULL,
  `PayRate` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`RoleID`),
  UNIQUE INDEX `RoleName_UNIQUE` (`RoleName` ASC) VISIBLE);

/** Employees **/

CREATE TABLE IF NOT EXISTS `restaurant`.`Employees` (
  `EmployeeID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` CHAR(50) NOT NULL,
  `LastName` CHAR(50) NOT NULL,
  `Email` VARCHAR(64) NOT NULL,
  `PhoneNumber` VARCHAR(30) NOT NULL,
  `JoinedDate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RoleID` INT NOT NULL DEFAULT(0),
  PRIMARY KEY (`EmployeeID`),
  INDEX `RoleID_idx` (`RoleID` ASC) VISIBLE,
  CONSTRAINT `RoleID`
    FOREIGN KEY (`RoleID`)
    REFERENCES `restaurant`.`Roles` (`RoleID`));

/*Employee Account*/

CREATE TABLE IF NOT EXISTS `restaurant`.`EmployeeAccount` (
  `EmployeeAccountID` INT NOT NULL AUTO_INCREMENT,
  `EmployeeID` INT NOT NULL,
  `UserName` VARCHAR(64) NOT NULL,
  `Pass` VARCHAR(64) NOT NULL,
  `Admin` BIT(1) NOT NULL DEFAULT(0),
  PRIMARY KEY (`EmployeeAccountID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `restaurant`.`Employees` (`EmployeeID`));

/**BulletinPost**/

CREATE TABLE IF NOT EXISTS `restaurant`.`BulletinPost` (
  `BulletinPostID` INT AUTO_INCREMENT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `Text` CHAR(255) NOT NULL,
  PRIMARY KEY (`BulletinPostID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `BulletinPost_EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `restaurant`.`Employees` (`EmployeeID`));

/**BulletinComment**/

CREATE TABLE IF NOT EXISTS `restaurant`.`BulletinComment` (
  `BulletinCommentID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `Text` CHAR(255) NOT NULL,
  PRIMARY KEY (`BulletinCommentID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `CommentEmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `restaurant`.`BulletinPost` (`EmployeeID`));

/**Orders**/

CREATE TABLE IF NOT EXISTS `restaurant`.`Orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `EmployeeID` INT NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `Orders_EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `restaurant`.`Employees` (`EmployeeID`));

/**MenuItem**/

CREATE TABLE IF NOT EXISTS `restaurant`.`MenuItem` (
  `MenuItemID` INT NOT NULL,
  `Name` CHAR(255) NOT NULL,
  `Price` DECIMAL NOT NULL,
  PRIMARY KEY (`MenuItemID`));

/**Purchased MenuItem**/


CREATE TABLE IF NOT EXISTS `restaurant`.`PurchasedMenuItem` (
  `PurchasedMenuItemID` INT NOT NULL,
  `MenuItemID` INT NOT NULL,
  `OrderID` INT NOT NULL,
  `PurchasedPrice` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`PurchasedMenuItemID`),
  INDEX `MenuItemID_idx` (`MenuItemID` ASC) VISIBLE,
  INDEX `OrderID_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `MenuItemID`
    FOREIGN KEY (`MenuItemID`)
    REFERENCES `restaurant`.`MenuItem` (`MenuItemID`),
  CONSTRAINT `OrderID`
    FOREIGN KEY (`OrderID`)
    REFERENCES `restaurant`.`Orders` (`OrderID`));


/** Insert Data **/
INSERT INTO restaurant.Roles(RoleID, RoleName, PayRate) 
VALUES (1, 'Manager', 50);
INSERT INTO restaurant.Roles(RoleID, RoleName, PayRate) 
VALUES (0, 'Employee', 50);

//** Here the Managers are Claudia, and Randall **/
INSERT INTO restaurant.Employees (Employeeid,FirstName,LastName,Email,PhoneNumber,Roleid,JoinedDate) VALUES 
(1,"Claudia","Holman","CHolman@gmail.com","912-455-7153",1,"2017-06-24 16:30:32"),
(2,"Kirestin","Beach","KBeach@gmail.com","703-874-9693",0,"2017-04-08 23:41:51"),
(3,"Medge","Evans","MEvans@gmail.com","602-993-8976",0,"2019-12-17 00:39:45"),
(4,"Olympia","Dyer","ODyer@gmail.com","801-364-8225",0,"2018-10-18 12:02:03"),
(5,"Alan","Randall","ARandall@gmail.com","802-789-8569",1,"2018-01-03 12:03:03"),
(6,"Phillip","Conley","PConley@gmail.com","631-413-1375",0,"2015-12-02 22:46:11"),
(7,"Maite","Stokes","MStokes@gmail.com","859-781-1134",0,"2020-09-27 14:49:16"),
(8,"Mufutau","Acevedo","MAcevedo@gmail.com","225-238-3369",0,"2021-03-08 12:44:07"),
(9,"Xenos","Gibbs","XGibbs@gmail.com","815-929-2887",0,"2021-09-07 18:11:29"),
(10,"Shafira","Travis","STravis@gmail.com","503-275-7905",0,"2020-01-09 21:12:23");

INSERT INTO restaurant.EmployeeAccount (Employeeid,Username,Pass) VALUES
(1,"CHolman","Password"),
(2,"KBeach","Password"),
(3,"MEvans","Password"),
(4,"ODyer","Password"),
(5,"ARandall","Password"),
(6,"PConley","Password"),
(7,"MStokes","Password"),
(8,"MAcevedo","Password"),
(9,"XGibbs","Password"),
(10,"STravis","Password");

INSERT INTO restaurant.BulletinPost (BulletinPostID,EmployeeID,Text) VALUES 
(1,1,"facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus"),
(2,2,"nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus"),
(3,3,"hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim."),
(4,4,"tellus justo sit amet nulla. Donec non justo. Proin non"),
(5,5,"Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis"),
(6,6,"sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra,");

INSERT INTO restaurant.Orders (OrderID,EmployeeID,OrderDate) VALUES 
(1,1,"2020-01-19 14:49:16"),
(2,2,"2020-02-20 14:49:16"),
(3,2,"2020-03-21 13:00:00"),
(4,2,"2020-03-14 14:49:16"),
(5,3,"2020-02-13 14:49:16"),
(6,3,"2020-04-01 14:49:16"),
(7,9,"2020-03-12 14:49:16"),
(8,9,"2020-02-10 14:49:16"),
(9,1,"2020-03-05 14:49:16"),
(10,1,"2020-01-01 14:49:16");




