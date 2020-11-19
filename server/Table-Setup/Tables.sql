/**Dropping Tables**/
DROP TABLE IF EXISTS `restaurant`.`BulletinComment`;
DROP TABLE IF EXISTS `restaurant`.`BulletinPost`;
DROP TABLE IF EXISTS `restaurant`.`PurchasedMenuItem`;
DROP TABLE IF EXISTS `restaurant`.`MenuItem`;
DROP TABLE IF EXISTS `restaurant`.`Orders`;
DROP TABLE IF EXISTS `restaurant`.`EmployeeAccount`;
DROP TABLE IF EXISTS `restaurant`.`Employees`;
DROP TABLE IF EXISTS `restaurant`.`Roles`;

/**Created Roles Table**/
CREATE TABLE IF NOT EXISTS `restaurant`.`Roles` (
  `RoleID` INT NOT NULL,
  `RoleName` VARCHAR(50) NOT NULL,
  `PayRate` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`RoleID`),
  UNIQUE INDEX `RoleName_UNIQUE` (`RoleName` ASC) VISIBLE);

/**Create Employees Table**/
CREATE TABLE IF NOT EXISTS `restaurant`.`Employees` (
  `EmployeeID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(50) NOT NULL,
  `LastName` VARCHAR(50) NOT NULL,
  `Email` VARCHAR(64) NOT NULL,
  `PhoneNumber` VARCHAR(30) NOT NULL,
  `JoinedDate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RoleID` INT NOT NULL DEFAULT(0),
  PRIMARY KEY (`EmployeeID`),
  INDEX `RoleID_idx` (`RoleID` ASC) VISIBLE,
  CONSTRAINT `RoleID`
    FOREIGN KEY (`RoleID`)
    REFERENCES `restaurant`.`Roles` (`RoleID`));

/*Create EmployeeAccount Table*/
CREATE TABLE IF NOT EXISTS `restaurant`.`EmployeeAccount` (
  `EmployeeAccountID` INT NOT NULL AUTO_INCREMENT,
  `EmployeeID` INT NOT NULL UNIQUE,
  `UserName` VARCHAR(64) NOT NULL,
  `Pass` VARCHAR(64) NOT NULL,
  `Admin` BIT(1) NOT NULL DEFAULT(0),
  PRIMARY KEY (`EmployeeAccountID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `restaurant`.`Employees` (`EmployeeID`));

/**Create BulletinPost Table**/
CREATE TABLE IF NOT EXISTS `restaurant`.`BulletinPost` (
  `BulletinPostID` INT AUTO_INCREMENT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `Text` VARCHAR(255) NOT NULL,
  `Created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`BulletinPostID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `BulletinPost_EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `restaurant`.`Employees` (`EmployeeID`));

/**Create BulletinComment Table**/
CREATE TABLE IF NOT EXISTS `restaurant`.`BulletinComment` (
  `BulletinCommentID` INT AUTO_INCREMENT NOT NULL,
  `BulletinPostID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `Text` VARCHAR(255) NOT NULL,
  `Created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`BulletinCommentID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `BulletinPostID`
    FOREIGN KEY (`BulletinPostID`)
    REFERENCES `restaurant`.`BulletinPost` (`BulletinPostID`));

/**Create Orders Table**/
CREATE TABLE IF NOT EXISTS `restaurant`.`Orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `EmployeeID` INT NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  CONSTRAINT `Orders_EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `restaurant`.`Employees` (`EmployeeID`));

/**Create MenuItem Table**/
CREATE TABLE IF NOT EXISTS `restaurant`.`MenuItem` (
  `MenuItemID` INT NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`MenuItemID`));

/**Create PurchasedMenuItem Table**/
CREATE TABLE IF NOT EXISTS `restaurant`.`PurchasedMenuItem` (
  `PurchasedMenuItemID` INT NOT NULL,
  `MenuItemID` INT NOT NULL,
  `OrderID` INT NOT NULL,
  `PurchasedPrice` DECIMAL(5,2) NULL DEFAULT NULL,
  PRIMARY KEY (`PurchasedMenuItemID`),
  INDEX `MenuItemID_idx` (`MenuItemID` ASC) VISIBLE,
  INDEX `OrderID_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `MenuItemID`
    FOREIGN KEY (`MenuItemID`)
    REFERENCES `restaurant`.`MenuItem` (`MenuItemID`),
  CONSTRAINT `OrderID`
    FOREIGN KEY (`OrderID`)
    REFERENCES `restaurant`.`Orders` (`OrderID`));
