//**Roles**//

CREATE TABLE IF NOT EXISTS `Resturaunt`.`Roles` (
  `RoleID` INT NOT NULL,
  `RoleName` CHAR(50) NOT NULL,
  `PayRate` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`RoleID`),
  UNIQUE INDEX `RoleName_UNIQUE` (`RoleName` ASC) VISIBLE)

//** Employees **//

CREATE TABLE IF NOT EXISTS `Resturaunt`.`Employees` (
  `EmployeeID` INT NOT NULL,
  `FirstName` CHAR(50) NOT NULL,
  `JoinedDate` DATETIME NOT NULL,
  `RoleID` INT NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  INDEX `RoleID_idx` (`RoleID` ASC) VISIBLE,
  CONSTRAINT `RoleID`
    FOREIGN KEY (`RoleID`)
    REFERENCES `Resturaunt`.`Roles` (`RoleID`))

//*Employee Account*//

CREATE TABLE IF NOT EXISTS `Resturaunt`.`EmployeeAccount` (
  `EmployeeAccountID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `UserName` VARCHAR(64) NOT NULL,
  `PassWord` VARCHAR(64) NOT NULL,
  `Admin` BIT(1) NOT NULL,
  `Email` VARCHAR(64) NOT NULL,
  `PhoneNum` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`EmployeeAccountID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `Resturaunt`.`Employees` (`EmployeeID`))

//**BulletinPost**//

CREATE TABLE IF NOT EXISTS `Resturaunt`.`BulletinPost` (
  `BulletinPostID` INT AUTO_INCREMENT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `Text` CHAR(255) NOT NULL,
  PRIMARY KEY (`BulletinPostID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `BulletinPost_EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `Resturaunt`.`Employees` (`EmployeeID`))

//**BulletinComment**/

CREATE TABLE IF NOT EXISTS `Resturaunt`.`BulletinComment` (
  `BulletinCommentID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `Text` CHAR(255) NOT NULL,
  PRIMARY KEY (`BulletinCommentID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `CommentEmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `Resturaunt`.`BulletinPost` (`EmployeeID`))

//**Orders**//

CREATE TABLE IF NOT EXISTS `Resturaunt`.`Orders` (
  `OrderID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `OrderDate` DATE NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `Orders_EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `Resturaunt`.`Employees` (`EmployeeID`))

/**MenuItem**//

CREATE TABLE IF NOT EXISTS `Resturaunt`.`MenuItem` (
  `MenuItemID` INT NOT NULL,
  `Name` CHAR(255) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MenuItemID`))

/**Purchased MenuItem**/


CREATE TABLE IF NOT EXISTS `Resturaunt`.`PurchasedMenuItem` (
  `PurchasedMenuItemID` INT NOT NULL,
  `MenuItemID` INT NOT NULL,
  `OrderID` INT NOT NULL,
  `PurchasedPrice` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`PurchasedMenuItemID`),
  INDEX `MenuItemID_idx` (`MenuItemID` ASC) VISIBLE,
  INDEX `OrderID_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `MenuItemID`
    FOREIGN KEY (`MenuItemID`)
    REFERENCES `Resturaunt`.`MenuItem` (`MenuItemID`),
  CONSTRAINT `OrderID`
    FOREIGN KEY (`OrderID`)
    REFERENCES `Resturaunt`.`Orders` (`OrderID`))


/** Insert Data **/
INSERT INTO restaurant.Roles(RoleID, RoleName, PayRate) 
VALUES (1, ‘Manager’, 50)
INSERT INTO restaurant.Roles(RoleID, RoleName, PayRate) 
VALUES (0, ‘Employee’, 50)

//** Here the Managers are Claudia, and Randall **/
INSERT INTO restaurant.Employees (Employeeid,FirstName,LastName,Roleid,JoinedDate) VALUES 
(1,"Claudia","Holman",1,"2017-06-24 16:30:32"),
(2,"Kirestin","Beach",0,"2017-04-08 23:41:51"),
(3,"Medge","Evans",0,"2019-12-17 00:39:45"),
(4,"Olympia","Dyer",0,"2018-10-18 12:02:03"),
(5,"Alan","Randall",1,"2018-01-03 12:03:03"),
(6,"Phillip","Conley",0,"2015-12-02 22:46:11"),
(7,"Maite","Stokes",0,"2020-09-27 14:49:16"),
(8,"Mufutau","Acevedo",0,"2021-03-08 12:44:07"),
(9,"Xenos","Gibbs",0,"2021-09-07 18:11:29"),
(10,"Shafira","Travis",0,"2020-01-09 21:12:23");

INSERT INTO restaurant.EmployeeAccount (Employeeid,Username,Password) VALUES
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
(1,1,"'2020-01-19'"),
(2,2,"'2020-02-20'"),
(3,2,"'2020-03-21'"),
(4,2,"'2020-03-14'"),
(5,3,"'2020-02-13'"),
(6,3,"'2020-04-01'"),
(7,9,"'2020-03-12'"),
(8,9,"'2020-02-10'"),
(9,1,"'2020-03-05'"),
(10,1,"'2020-01-01'");




