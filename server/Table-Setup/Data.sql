/**Creating 2 Roles**/
INSERT INTO restaurant.Roles(RoleID, RoleName, PayRate) 
VALUES (1, 'Manager', 50);
INSERT INTO restaurant.Roles(RoleID, RoleName, PayRate) 
VALUES (0, 'Employee', 50);

/**Creating 10 Employees, 1 & 5 Are Managers**/
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

/**Creating 10 Employee Accounts**/
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

/**Create 6 Bulletin Posts**/
INSERT INTO restaurant.BulletinPost (BulletinPostID,EmployeeID,Text) VALUES 
(1,1,"facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus"),
(2,2,"nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus"),
(3,3,"hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim."),
(4,4,"tellus justo sit amet nulla. Donec non justo. Proin non"),
(5,5,"Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis"),
(6,6,"sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra,");

/**Generate 500 Orders**/
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (1,1,"2020-08-12 15:23:19"),(2,10,"2021-02-06 22:56:36"),(3,2,"2019-09-29 00:59:24"),(4,10,"2019-07-21 22:28:14"),(5,9,"2021-10-09 23:07:42"),(6,5,"2020-12-28 12:16:02"),(7,9,"2019-06-18 19:17:19"),(8,10,"2020-07-27 17:19:43"),(9,6,"2020-09-05 06:59:14"),(10,6,"2021-04-12 09:27:59"),(11,9,"2020-02-27 02:53:40"),(12,9,"2019-11-21 22:32:32"),(13,9,"2021-05-04 09:05:29"),(14,5,"2021-10-29 20:57:57"),(15,3,"2019-05-29 13:50:10"),(16,3,"2021-06-26 12:28:13"),(17,3,"2021-11-10 19:44:54"),(18,2,"2021-10-29 22:37:23"),(19,5,"2019-07-28 01:41:53"),(20,10,"2019-07-20 20:50:23");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (21,9,"2019-06-30 08:09:55"),(22,6,"2019-05-16 09:14:04"),(23,9,"2021-10-30 05:28:15"),(24,8,"2020-06-30 14:59:59"),(25,6,"2021-07-04 14:41:31"),(26,4,"2019-11-07 00:00:29"),(27,1,"2021-09-02 12:58:51"),(28,9,"2021-03-09 11:28:17"),(29,2,"2019-02-24 08:10:29"),(30,2,"2019-10-06 17:45:15"),(31,2,"2021-08-19 04:35:56"),(32,9,"2019-10-31 21:54:13"),(33,4,"2019-07-30 11:43:39"),(34,9,"2020-01-15 18:06:12"),(35,3,"2019-12-08 07:26:45"),(36,6,"2021-03-27 22:38:52"),(37,10,"2021-01-11 03:02:34"),(38,3,"2019-03-16 14:00:21"),(39,6,"2020-05-08 18:26:12"),(40,9,"2019-05-07 03:31:40");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (41,5,"2019-02-05 00:14:28"),(42,6,"2019-09-29 14:54:09"),(43,5,"2020-01-03 07:31:31"),(44,5,"2020-11-17 02:31:00"),(45,9,"2019-09-07 13:47:37"),(46,10,"2021-07-04 11:39:42"),(47,4,"2020-08-22 20:42:27"),(48,6,"2021-10-31 19:18:56"),(49,2,"2020-09-27 09:01:28"),(50,3,"2020-05-29 04:15:24"),(51,7,"2021-05-04 13:25:03"),(52,3,"2021-06-15 10:09:38"),(53,7,"2019-07-27 20:44:25"),(54,2,"2021-04-24 22:18:35"),(55,4,"2021-10-03 16:19:44"),(56,2,"2019-04-06 22:01:54"),(57,3,"2019-09-26 18:43:25"),(58,1,"2021-04-27 04:49:26"),(59,4,"2019-03-17 16:57:30"),(60,6,"2020-12-13 01:18:15");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (61,8,"2020-01-19 23:09:35"),(62,9,"2019-09-01 15:48:10"),(63,4,"2020-06-26 21:28:06"),(64,5,"2020-10-27 20:27:52"),(65,8,"2021-07-23 04:26:00"),(66,2,"2020-02-13 07:31:48"),(67,9,"2020-11-27 22:49:28"),(68,6,"2020-06-26 17:03:19"),(69,3,"2019-03-22 15:50:15"),(70,10,"2019-05-09 23:26:00"),(71,8,"2021-06-30 16:39:53"),(72,5,"2021-09-14 06:47:12"),(73,5,"2021-09-07 19:36:05"),(74,2,"2020-12-21 19:58:22"),(75,7,"2020-05-02 11:37:31"),(76,9,"2021-04-04 00:01:35"),(77,8,"2021-11-08 20:08:57"),(78,1,"2019-03-11 00:57:48"),(79,5,"2020-06-25 09:12:56"),(80,7,"2019-05-12 18:40:50");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (81,3,"2019-04-12 03:20:58"),(82,9,"2021-09-12 20:49:53"),(83,1,"2019-03-14 06:17:30"),(84,1,"2021-09-20 02:34:01"),(85,9,"2021-03-03 11:55:22"),(86,2,"2020-01-08 12:00:38"),(87,1,"2019-09-30 06:48:37"),(88,9,"2020-09-27 04:26:18"),(89,4,"2020-09-15 15:19:33"),(90,10,"2019-11-05 23:27:28"),(91,2,"2021-10-06 08:53:21"),(92,2,"2019-01-04 03:10:45"),(93,4,"2020-12-01 18:37:02"),(94,1,"2021-04-27 09:45:46"),(95,2,"2019-11-10 08:37:39"),(96,3,"2019-07-05 05:24:14"),(97,1,"2019-02-25 10:15:40"),(98,2,"2020-08-02 10:37:21"),(99,8,"2021-07-04 07:47:30"),(100,5,"2020-04-28 17:34:10");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (101,3,"2021-09-12 18:57:03"),(102,7,"2020-09-24 02:42:22"),(103,8,"2020-10-13 10:34:13"),(104,1,"2020-08-04 21:53:02"),(105,8,"2020-05-19 18:27:27"),(106,10,"2021-08-06 16:51:15"),(107,4,"2020-11-18 14:14:59"),(108,2,"2021-03-15 03:01:28"),(109,4,"2020-12-24 19:33:02"),(110,9,"2019-05-20 22:23:04"),(111,10,"2021-07-06 07:54:14"),(112,1,"2020-03-17 17:02:40"),(113,9,"2019-05-23 09:21:05"),(114,3,"2020-02-25 23:23:22"),(115,8,"2021-02-10 13:42:34"),(116,3,"2021-06-25 18:15:40"),(117,5,"2019-07-02 02:05:44"),(118,7,"2019-08-12 20:06:12"),(119,5,"2020-10-01 05:59:34"),(120,2,"2019-09-05 03:27:48");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (121,3,"2019-06-21 15:49:03"),(122,9,"2021-02-03 19:27:50"),(123,9,"2019-01-20 16:39:10"),(124,1,"2021-04-03 11:09:23"),(125,3,"2020-01-15 04:46:28"),(126,3,"2020-10-03 10:58:12"),(127,10,"2019-06-21 22:42:49"),(128,2,"2019-09-22 07:47:28"),(129,5,"2020-03-08 12:16:06"),(130,7,"2020-03-11 00:44:10"),(131,5,"2020-07-09 16:59:30"),(132,6,"2020-03-31 03:57:24"),(133,8,"2021-10-28 06:58:56"),(134,9,"2021-04-30 05:48:59"),(135,7,"2020-10-11 00:14:26"),(136,2,"2020-01-11 16:18:31"),(137,10,"2020-07-17 17:30:10"),(138,2,"2019-02-01 08:53:18"),(139,8,"2020-09-12 16:07:29"),(140,5,"2021-05-15 19:31:21");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (141,3,"2020-05-08 08:30:24"),(142,9,"2019-01-10 04:53:56"),(143,2,"2020-05-29 11:10:06"),(144,9,"2019-07-21 10:55:53"),(145,4,"2021-08-01 20:17:29"),(146,8,"2021-01-25 15:01:32"),(147,4,"2020-08-08 08:00:45"),(148,2,"2021-04-04 18:47:21"),(149,6,"2019-08-27 13:09:25"),(150,6,"2021-07-20 03:33:11"),(151,9,"2020-06-27 17:24:11"),(152,2,"2021-08-17 18:08:55"),(153,1,"2019-09-30 01:04:50"),(154,10,"2020-11-03 17:05:36"),(155,4,"2021-09-19 02:06:47"),(156,8,"2021-07-19 06:03:00"),(157,8,"2021-05-13 17:34:54"),(158,9,"2020-04-27 01:50:57"),(159,9,"2021-01-01 04:00:32"),(160,8,"2021-01-09 01:55:33");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (161,8,"2021-09-20 14:36:22"),(162,1,"2020-09-22 02:59:19"),(163,10,"2020-04-11 00:52:33"),(164,9,"2021-01-30 22:54:12"),(165,2,"2020-03-12 15:58:10"),(166,2,"2020-03-30 02:15:07"),(167,7,"2019-12-26 08:07:58"),(168,1,"2021-08-09 17:21:25"),(169,10,"2020-03-09 05:41:07"),(170,5,"2020-02-03 03:33:20"),(171,9,"2021-10-02 23:55:05"),(172,9,"2020-03-22 23:03:28"),(173,1,"2020-12-16 08:34:01"),(174,8,"2021-04-16 18:38:06"),(175,3,"2021-06-06 02:35:32"),(176,8,"2020-01-14 14:35:39"),(177,1,"2021-07-28 12:43:29"),(178,6,"2019-11-28 03:27:14"),(179,4,"2019-08-08 09:45:00"),(180,5,"2020-07-26 08:19:04");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (181,8,"2019-06-20 04:15:25"),(182,4,"2021-02-23 23:35:19"),(183,9,"2020-01-20 07:27:18"),(184,10,"2020-04-01 17:11:36"),(185,7,"2019-05-11 18:28:18"),(186,3,"2019-05-25 17:37:31"),(187,10,"2019-06-09 02:43:18"),(188,5,"2019-05-10 05:05:20"),(189,1,"2020-02-13 10:32:54"),(190,1,"2021-07-21 10:26:10"),(191,1,"2019-10-05 09:05:11"),(192,2,"2019-09-01 06:27:38"),(193,10,"2021-02-13 21:42:06"),(194,2,"2021-02-01 17:58:21"),(195,3,"2020-05-13 17:22:56"),(196,7,"2021-09-18 17:51:49"),(197,3,"2020-11-09 14:08:39"),(198,10,"2020-07-13 14:56:44"),(199,4,"2019-02-11 23:49:43"),(200,1,"2019-06-26 23:07:40");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (201,2,"2019-03-06 00:30:47"),(202,3,"2021-03-15 20:23:37"),(203,2,"2020-06-10 07:11:25"),(204,1,"2021-10-09 16:49:35"),(205,4,"2020-12-15 02:59:43"),(206,9,"2020-12-06 05:10:46"),(207,3,"2020-05-25 15:10:29"),(208,9,"2021-04-08 09:26:34"),(209,8,"2021-06-08 15:03:11"),(210,3,"2020-08-23 08:06:40"),(211,8,"2021-04-02 10:11:04"),(212,7,"2020-07-01 08:49:14"),(213,3,"2021-02-23 13:39:21"),(214,6,"2019-10-07 22:46:35"),(215,6,"2020-09-21 22:18:51"),(216,9,"2020-08-05 06:38:07"),(217,8,"2021-01-09 09:50:30"),(218,4,"2020-01-29 14:50:26"),(219,10,"2021-06-12 18:05:15"),(220,5,"2020-05-25 19:58:44");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (221,5,"2021-05-13 00:32:02"),(222,6,"2020-12-06 16:02:33"),(223,7,"2020-01-01 20:20:50"),(224,2,"2021-06-14 08:47:38"),(225,1,"2020-02-26 23:01:46"),(226,3,"2019-06-08 20:17:39"),(227,5,"2019-09-22 12:18:11"),(228,8,"2019-01-23 03:09:53"),(229,4,"2020-07-08 06:25:51"),(230,6,"2020-09-25 19:45:04"),(231,5,"2020-05-02 22:10:56"),(232,9,"2019-01-17 17:47:01"),(233,3,"2020-05-20 08:13:21"),(234,3,"2019-01-25 06:09:24"),(235,2,"2019-03-22 07:43:55"),(236,1,"2021-02-28 09:39:25"),(237,10,"2020-11-19 03:20:53"),(238,7,"2020-06-22 16:41:38"),(239,9,"2019-11-27 19:18:57"),(240,6,"2021-01-12 15:11:43");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (241,5,"2021-07-10 21:16:04"),(242,1,"2021-02-28 06:15:03"),(243,7,"2019-07-11 20:36:14"),(244,8,"2020-11-28 02:39:19"),(245,10,"2021-02-09 21:05:17"),(246,7,"2019-10-17 17:22:37"),(247,4,"2019-10-28 02:14:54"),(248,9,"2019-03-19 16:05:30"),(249,3,"2019-07-25 15:53:41"),(250,8,"2021-11-05 09:11:23"),(251,7,"2021-03-17 12:56:49"),(252,7,"2021-04-26 05:54:04"),(253,2,"2021-09-06 00:02:04"),(254,3,"2020-12-08 19:20:28"),(255,3,"2021-01-15 04:15:29"),(256,6,"2019-09-12 22:00:08"),(257,5,"2019-09-03 01:37:56"),(258,9,"2019-11-28 13:09:21"),(259,6,"2019-10-26 22:28:54"),(260,9,"2020-03-16 17:29:10");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (261,1,"2019-06-11 01:17:32"),(262,8,"2021-08-31 22:46:39"),(263,3,"2021-06-29 09:51:40"),(264,7,"2020-05-10 05:59:33"),(265,10,"2020-05-06 22:49:51"),(266,8,"2019-06-02 03:40:13"),(267,10,"2021-07-15 16:40:46"),(268,9,"2019-01-01 04:14:57"),(269,7,"2019-06-06 03:53:29"),(270,1,"2021-02-24 05:17:05"),(271,6,"2021-03-26 14:49:51"),(272,8,"2021-10-13 21:47:57"),(273,8,"2019-09-03 06:18:30"),(274,10,"2020-03-29 23:57:33"),(275,6,"2020-12-13 20:08:58"),(276,1,"2020-05-16 20:22:10"),(277,7,"2020-12-31 12:31:13"),(278,9,"2019-11-26 10:14:31"),(279,5,"2019-10-03 15:54:33"),(280,4,"2021-06-25 13:21:15");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (281,3,"2020-03-15 14:01:19"),(282,3,"2021-08-28 15:13:38"),(283,5,"2020-01-18 12:31:37"),(284,1,"2019-10-28 14:13:59"),(285,5,"2020-01-07 18:50:02"),(286,4,"2019-04-09 05:20:38"),(287,1,"2019-11-01 12:45:29"),(288,6,"2020-04-12 03:56:12"),(289,1,"2021-05-12 23:19:26"),(290,7,"2019-02-12 01:57:58"),(291,2,"2019-07-08 14:55:35"),(292,10,"2020-08-28 17:55:44"),(293,3,"2021-03-17 08:36:05"),(294,10,"2021-03-30 08:08:15"),(295,1,"2021-10-12 18:01:40"),(296,8,"2020-10-31 12:52:21"),(297,1,"2019-10-09 20:01:16"),(298,1,"2020-05-03 06:39:26"),(299,10,"2021-07-29 02:47:02"),(300,5,"2020-05-09 07:11:22");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (301,1,"2019-02-06 00:04:16"),(302,2,"2019-04-18 12:33:40"),(303,4,"2020-09-13 09:13:24"),(304,9,"2021-09-08 11:56:43"),(305,8,"2021-01-21 22:44:14"),(306,1,"2019-01-27 16:31:24"),(307,2,"2020-04-15 00:41:11"),(308,1,"2020-06-13 01:21:04"),(309,2,"2019-09-15 02:42:54"),(310,4,"2020-11-15 03:17:47"),(311,6,"2020-12-21 07:25:39"),(312,8,"2020-03-16 14:20:14"),(313,4,"2019-02-24 22:05:39"),(314,6,"2019-10-16 22:57:56"),(315,3,"2019-09-23 09:17:03"),(316,8,"2020-01-23 04:26:01"),(317,1,"2019-11-15 07:30:30"),(318,2,"2019-09-21 06:37:21"),(319,5,"2019-11-17 00:05:05"),(320,9,"2021-08-14 23:34:03");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (321,10,"2021-05-18 01:25:46"),(322,9,"2019-11-28 06:49:09"),(323,9,"2021-02-18 23:19:54"),(324,2,"2020-02-22 17:02:02"),(325,8,"2019-09-22 01:28:43"),(326,1,"2019-08-24 07:27:44"),(327,6,"2021-10-04 02:02:14"),(328,10,"2020-12-16 11:47:50"),(329,5,"2021-02-08 06:01:33"),(330,9,"2019-02-08 16:36:46"),(331,8,"2021-05-05 16:50:40"),(332,3,"2019-05-09 16:29:28"),(333,4,"2020-03-16 20:28:38"),(334,4,"2020-06-21 19:22:59"),(335,6,"2021-10-20 02:54:31"),(336,8,"2021-02-13 21:59:30"),(337,5,"2019-10-23 22:54:44"),(338,6,"2019-11-23 00:06:28"),(339,9,"2019-06-27 06:59:38"),(340,6,"2019-06-27 09:35:58");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (341,7,"2021-03-02 04:28:11"),(342,8,"2021-03-30 20:54:40"),(343,7,"2020-08-09 04:58:36"),(344,6,"2020-09-07 09:35:52"),(345,10,"2021-01-20 05:28:39"),(346,7,"2021-07-14 15:46:38"),(347,3,"2021-08-18 05:22:32"),(348,3,"2020-11-14 09:39:20"),(349,9,"2020-08-24 09:54:45"),(350,4,"2020-01-10 10:14:49"),(351,1,"2019-07-13 21:27:46"),(352,2,"2019-01-26 17:07:00"),(353,10,"2019-12-06 10:11:35"),(354,6,"2020-03-21 16:01:47"),(355,10,"2021-07-04 10:58:10"),(356,9,"2021-04-14 08:55:48"),(357,3,"2021-07-10 05:32:38"),(358,4,"2019-05-03 12:24:02"),(359,10,"2020-07-09 20:10:07"),(360,1,"2020-08-13 20:25:16");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (361,5,"2021-08-22 17:51:01"),(362,2,"2019-10-22 09:03:04"),(363,6,"2019-08-17 23:50:56"),(364,2,"2021-09-01 06:59:48"),(365,4,"2020-10-17 12:03:28"),(366,9,"2019-03-12 09:35:59"),(367,6,"2020-09-01 02:45:31"),(368,3,"2019-05-21 04:47:23"),(369,10,"2021-04-24 04:18:21"),(370,1,"2020-04-30 16:59:44"),(371,7,"2019-08-25 02:42:14"),(372,6,"2021-03-04 16:25:39"),(373,1,"2020-10-14 16:09:25"),(374,10,"2020-11-17 22:07:10"),(375,4,"2020-09-16 16:39:11"),(376,3,"2019-01-21 12:12:07"),(377,1,"2020-03-11 01:06:50"),(378,3,"2020-06-04 07:08:12"),(379,2,"2021-02-09 00:26:05"),(380,6,"2019-03-22 06:10:47");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (381,1,"2019-11-19 15:15:05"),(382,2,"2021-07-01 16:08:54"),(383,4,"2020-01-16 23:47:22"),(384,1,"2019-05-12 09:33:02"),(385,6,"2019-01-23 19:22:03"),(386,9,"2021-04-04 19:20:55"),(387,5,"2021-10-21 05:31:27"),(388,8,"2019-07-08 13:03:40"),(389,3,"2020-11-16 07:21:46"),(390,6,"2019-03-14 16:48:41"),(391,1,"2020-02-28 01:09:57"),(392,2,"2019-06-02 07:19:06"),(393,5,"2019-03-24 19:02:06"),(394,3,"2019-08-15 07:08:34"),(395,4,"2019-03-14 05:46:48"),(396,5,"2019-11-16 00:18:15"),(397,10,"2021-01-10 12:24:51"),(398,8,"2020-02-16 02:50:50"),(399,1,"2019-04-19 14:24:19"),(400,3,"2020-06-19 21:27:14");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (401,2,"2019-10-14 01:03:53"),(402,8,"2020-10-07 20:49:06"),(403,5,"2021-02-24 10:22:43"),(404,6,"2020-05-19 11:42:51"),(405,6,"2021-05-20 01:05:25"),(406,6,"2020-05-11 11:46:59"),(407,3,"2020-06-15 09:50:54"),(408,9,"2021-02-23 02:24:46"),(409,3,"2020-04-01 20:38:10"),(410,5,"2020-05-10 09:34:04"),(411,9,"2021-08-18 21:59:14"),(412,10,"2021-10-04 12:26:57"),(413,6,"2019-12-20 08:28:30"),(414,1,"2019-08-04 09:48:20"),(415,2,"2021-05-23 07:17:53"),(416,10,"2019-08-17 20:44:40"),(417,4,"2021-06-11 13:34:05"),(418,2,"2021-04-23 06:15:22"),(419,8,"2020-09-13 02:17:53"),(420,7,"2020-01-13 15:50:16");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (421,8,"2019-10-28 16:30:55"),(422,10,"2019-07-02 18:50:26"),(423,8,"2020-07-23 20:57:19"),(424,8,"2020-11-26 07:15:01"),(425,7,"2019-11-08 01:28:09"),(426,10,"2019-09-14 00:48:00"),(427,6,"2021-01-18 09:26:36"),(428,8,"2020-12-03 06:23:59"),(429,4,"2020-07-24 13:55:16"),(430,8,"2019-02-21 09:31:30"),(431,7,"2021-10-29 00:57:37"),(432,7,"2019-12-21 10:12:19"),(433,4,"2020-11-25 05:29:22"),(434,10,"2019-02-10 14:38:04"),(435,6,"2021-10-08 16:45:12"),(436,2,"2020-11-23 23:58:43"),(437,3,"2019-12-15 12:35:37"),(438,3,"2021-09-02 12:00:52"),(439,7,"2020-08-09 05:02:12"),(440,5,"2020-09-10 16:08:20");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (441,6,"2019-09-01 19:49:43"),(442,5,"2020-12-02 10:04:21"),(443,10,"2021-02-08 06:53:51"),(444,9,"2021-07-24 14:50:22"),(445,4,"2020-05-24 21:38:23"),(446,2,"2019-12-12 20:23:24"),(447,1,"2021-05-01 11:42:00"),(448,10,"2020-06-08 06:45:23"),(449,4,"2020-10-02 03:03:24"),(450,3,"2021-08-25 11:54:20"),(451,3,"2019-12-22 08:23:06"),(452,9,"2021-01-03 23:04:50"),(453,2,"2019-05-19 07:28:15"),(454,7,"2021-03-14 12:51:55"),(455,9,"2021-08-27 22:54:58"),(456,4,"2021-04-17 11:39:13"),(457,10,"2020-09-11 04:51:59"),(458,2,"2021-11-15 03:46:46"),(459,5,"2020-06-07 19:03:24"),(460,6,"2021-04-16 06:27:20");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (461,10,"2019-05-10 05:43:28"),(462,9,"2019-05-13 02:41:13"),(463,4,"2020-03-04 21:54:50"),(464,9,"2020-04-30 11:46:45"),(465,8,"2019-04-05 07:05:39"),(466,3,"2020-08-15 07:11:33"),(467,5,"2021-01-07 07:17:20"),(468,6,"2020-09-20 09:05:52"),(469,6,"2019-05-21 12:58:49"),(470,4,"2020-07-20 18:44:19"),(471,10,"2020-08-21 22:16:29"),(472,1,"2021-07-21 02:08:19"),(473,4,"2019-10-10 16:36:30"),(474,3,"2019-03-04 05:16:28"),(475,4,"2019-10-26 03:02:29"),(476,10,"2020-10-15 02:48:47"),(477,1,"2020-02-01 15:42:13"),(478,9,"2019-02-11 00:33:54"),(479,9,"2020-10-11 02:19:24"),(480,6,"2021-06-29 11:44:51");
INSERT INTO restaurant.orders(OrderID,EmployeeID,OrderDate) VALUES (481,3,"2019-01-10 22:03:56"),(482,3,"2020-05-10 12:26:19"),(483,10,"2020-02-12 02:43:01"),(484,10,"2021-04-15 02:52:23"),(485,4,"2020-05-28 12:54:17"),(486,3,"2019-05-10 01:27:10"),(487,5,"2021-03-28 11:29:08"),(488,6,"2020-10-09 20:38:35"),(489,8,"2020-09-28 00:15:42"),(490,5,"2021-02-27 10:22:28"),(491,8,"2021-06-22 01:14:00"),(492,5,"2021-01-03 21:54:07"),(493,7,"2021-04-15 17:43:10"),(494,5,"2019-05-26 12:18:14"),(495,6,"2019-11-21 13:39:26"),(496,9,"2021-01-02 00:05:10"),(497,1,"2021-05-22 08:59:40"),(498,5,"2020-08-31 04:10:22"),(499,10,"2021-10-16 10:23:30"),(500,4,"2019-06-21 09:01:35");

/**Generate 5 Menu Items**/
INSERT INTO restaurant.menuitem(MenuItemID, Name) VALUES (1, 'Beef Wellington');
INSERT INTO restaurant.menuitem(MenuItemID, Name) VALUES (2, 'Scallops');
INSERT INTO restaurant.menuitem(MenuItemID, Name) VALUES (3, 'Caviar');
INSERT INTO restaurant.menuitem(MenuItemID, Name) VALUES (4, 'Ravioli');
INSERT INTO restaurant.menuitem(MenuItemID, Name) VALUES (5, 'Ratatouille');

/**Generate 500 Purchased Menu Items**/
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (1,4,1,"53.63"),(2,2,2,"82.85"),(3,5,3,"42.29"),(4,2,4,"98.31"),(5,5,5,"91.25"),(6,2,6,"40.38"),(7,1,7,"1.37"),(8,5,8,"26.26"),(9,5,9,"16.53"),(10,3,10,"61.49"),(11,4,11,"36.93"),(12,3,12,"29.46"),(13,2,13,"11.97"),(14,2,14,"91.77"),(15,1,15,"69.72"),(16,5,16,"39.33"),(17,1,17,"29.23"),(18,2,18,"92.50"),(19,1,19,"43.55"),(20,4,20,"35.09");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (21,1,21,"74.34"),(22,3,22,"0.63"),(23,4,23,"6.66"),(24,3,24,"56.17"),(25,4,25,"92.15"),(26,4,26,"61.72"),(27,1,27,"23.72"),(28,3,28,"66.27"),(29,3,29,"58.08"),(30,2,30,"92.60"),(31,2,31,"2.95"),(32,2,32,"37.53"),(33,1,33,"24.56"),(34,3,34,"60.77"),(35,1,35,"26.49"),(36,3,36,"94.09"),(37,5,37,"10.88"),(38,1,38,"24.14"),(39,1,39,"35.10"),(40,5,40,"81.29");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (41,1,41,"37.25"),(42,2,42,"67.65"),(43,5,43,"22.48"),(44,1,44,"89.87"),(45,5,45,"15.26"),(46,3,46,"39.59"),(47,2,47,"19.57"),(48,3,48,"66.88"),(49,2,49,"72.49"),(50,1,50,"47.46"),(51,2,51,"73.15"),(52,1,52,"47.75"),(53,5,53,"98.11"),(54,2,54,"82.52"),(55,2,55,"10.22"),(56,4,56,"82.40"),(57,5,57,"7.37"),(58,5,58,"41.16"),(59,1,59,"72.50"),(60,3,60,"55.73");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (61,1,61,"55.75"),(62,5,62,"59.89"),(63,4,63,"80.84"),(64,3,64,"13.93"),(65,3,65,"5.19"),(66,1,66,"44.39"),(67,5,67,"68.09"),(68,2,68,"22.98"),(69,3,69,"40.80"),(70,4,70,"40.72"),(71,3,71,"80.35"),(72,2,72,"13.68"),(73,1,73,"13.26"),(74,1,74,"34.94"),(75,3,75,"52.03"),(76,3,76,"26.38"),(77,4,77,"30.41"),(78,4,78,"58.58"),(79,3,79,"10.85"),(80,4,80,"39.19");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (81,3,81,"36.26"),(82,3,82,"28.58"),(83,3,83,"71.34"),(84,5,84,"63.02"),(85,2,85,"98.41"),(86,3,86,"39.62"),(87,2,87,"56.48"),(88,1,88,"14.13"),(89,4,89,"25.07"),(90,1,90,"75.84"),(91,4,91,"63.61"),(92,4,92,"39.53"),(93,3,93,"64.22"),(94,3,94,"71.83"),(95,3,95,"79.59"),(96,1,96,"25.44"),(97,1,97,"17.87"),(98,4,98,"73.89"),(99,5,99,"19.41"),(100,5,100,"81.60");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (101,1,101,"11.03"),(102,4,102,"8.23"),(103,3,103,"8.99"),(104,5,104,"61.96"),(105,4,105,"2.18"),(106,3,106,"41.95"),(107,2,107,"70.36"),(108,5,108,"70.07"),(109,5,109,"38.28"),(110,2,110,"88.67"),(111,4,111,"10.45"),(112,2,112,"84.71"),(113,3,113,"59.20"),(114,4,114,"49.16"),(115,4,115,"21.91"),(116,5,116,"68.13"),(117,1,117,"64.19"),(118,1,118,"79.52"),(119,5,119,"63.67"),(120,5,120,"55.01");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (121,2,121,"0.85"),(122,2,122,"0.09"),(123,4,123,"82.39"),(124,3,124,"75.91"),(125,5,125,"85.27"),(126,3,126,"44.15"),(127,4,127,"64.46"),(128,3,128,"77.76"),(129,2,129,"23.25"),(130,3,130,"70.79"),(131,3,131,"13.05"),(132,2,132,"71.57"),(133,3,133,"33.80"),(134,4,134,"81.96"),(135,2,135,"6.97"),(136,1,136,"42.46"),(137,4,137,"47.10"),(138,5,138,"44.87"),(139,5,139,"4.35"),(140,4,140,"13.51");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (141,5,141,"67.92"),(142,2,142,"46.93"),(143,4,143,"8.48"),(144,3,144,"88.43"),(145,3,145,"25.22"),(146,3,146,"49.09"),(147,5,147,"94.86"),(148,4,148,"87.63"),(149,1,149,"7.73"),(150,3,150,"12.48"),(151,3,151,"95.22"),(152,1,152,"15.35"),(153,5,153,"51.96"),(154,5,154,"14.21"),(155,2,155,"44.09"),(156,4,156,"78.49"),(157,5,157,"79.67"),(158,4,158,"57.82"),(159,4,159,"68.73"),(160,2,160,"20.19");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (161,5,161,"80.10"),(162,3,162,"34.17"),(163,5,163,"31.64"),(164,1,164,"46.86"),(165,2,165,"77.81"),(166,5,166,"57.66"),(167,5,167,"91.72"),(168,4,168,"91.70"),(169,2,169,"17.76"),(170,3,170,"4.96"),(171,2,171,"25.39"),(172,5,172,"55.91"),(173,4,173,"32.87"),(174,5,174,"9.22"),(175,4,175,"17.77"),(176,2,176,"85.41"),(177,1,177,"34.86"),(178,3,178,"19.14"),(179,5,179,"61.04"),(180,1,180,"66.35");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (181,4,181,"71.98"),(182,4,182,"74.46"),(183,2,183,"85.51"),(184,3,184,"14.88"),(185,3,185,"4.93"),(186,5,186,"76.04"),(187,4,187,"44.33"),(188,1,188,"81.08"),(189,1,189,"60.16"),(190,2,190,"67.77"),(191,1,191,"93.33"),(192,3,192,"96.28"),(193,1,193,"69.22"),(194,3,194,"53.84"),(195,3,195,"28.94"),(196,1,196,"49.47"),(197,4,197,"50.13"),(198,5,198,"72.94"),(199,2,199,"81.79"),(200,4,200,"92.87");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (201,2,201,"84.02"),(202,3,202,"90.29"),(203,5,203,"57.25"),(204,2,204,"16.40"),(205,1,205,"69.91"),(206,4,206,"18.92"),(207,5,207,"38.22"),(208,2,208,"83.87"),(209,2,209,"19.29"),(210,3,210,"91.79"),(211,4,211,"11.15"),(212,5,212,"18.57"),(213,5,213,"88.33"),(214,5,214,"29.15"),(215,1,215,"28.38"),(216,4,216,"84.52"),(217,5,217,"55.86"),(218,1,218,"83.65"),(219,4,219,"27.88"),(220,5,220,"74.14");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (221,1,221,"45.56"),(222,2,222,"34.68"),(223,2,223,"75.87"),(224,3,224,"52.70"),(225,4,225,"43.26"),(226,4,226,"39.72"),(227,2,227,"76.11"),(228,4,228,"97.43"),(229,4,229,"73.53"),(230,2,230,"26.82"),(231,1,231,"31.38"),(232,2,232,"48.63"),(233,1,233,"83.33"),(234,2,234,"36.19"),(235,1,235,"23.95"),(236,4,236,"48.87"),(237,2,237,"27.31"),(238,2,238,"92.46"),(239,2,239,"25.71"),(240,3,240,"2.41");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (241,2,241,"69.38"),(242,5,242,"79.57"),(243,2,243,"53.69"),(244,3,244,"87.91"),(245,1,245,"53.14"),(246,4,246,"3.91"),(247,4,247,"27.41"),(248,4,248,"22.70"),(249,1,249,"76.01"),(250,3,250,"28.43"),(251,2,251,"73.71"),(252,3,252,"83.75"),(253,4,253,"23.46"),(254,3,254,"29.06"),(255,1,255,"68.20"),(256,1,256,"69.80"),(257,5,257,"21.49"),(258,3,258,"58.94"),(259,2,259,"63.49"),(260,3,260,"46.41");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (261,5,261,"90.41"),(262,5,262,"67.23"),(263,5,263,"48.59"),(264,1,264,"84.49"),(265,3,265,"63.31"),(266,5,266,"82.40"),(267,4,267,"58.00"),(268,3,268,"25.22"),(269,5,269,"6.25"),(270,3,270,"21.25"),(271,4,271,"29.83"),(272,2,272,"12.54"),(273,5,273,"77.03"),(274,3,274,"36.26"),(275,5,275,"33.90"),(276,3,276,"36.05"),(277,3,277,"62.45"),(278,3,278,"54.00"),(279,1,279,"88.05"),(280,5,280,"89.13");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (281,4,281,"54.15"),(282,4,282,"16.43"),(283,3,283,"1.98"),(284,2,284,"54.14"),(285,5,285,"87.80"),(286,4,286,"65.03"),(287,2,287,"66.08"),(288,4,288,"77.27"),(289,2,289,"80.14"),(290,3,290,"22.69"),(291,3,291,"83.06"),(292,3,292,"49.67"),(293,1,293,"15.88"),(294,1,294,"49.13"),(295,2,295,"12.53"),(296,4,296,"87.29"),(297,5,297,"23.05"),(298,5,298,"57.80"),(299,3,299,"11.49"),(300,3,300,"51.26");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (301,2,301,"67.85"),(302,4,302,"39.78"),(303,4,303,"34.26"),(304,5,304,"10.92"),(305,2,305,"55.48"),(306,1,306,"78.61"),(307,5,307,"77.05"),(308,1,308,"24.84"),(309,2,309,"17.28"),(310,3,310,"70.66"),(311,2,311,"2.11"),(312,1,312,"25.80"),(313,5,313,"48.58"),(314,3,314,"22.01"),(315,1,315,"4.74"),(316,2,316,"84.15"),(317,1,317,"23.26"),(318,4,318,"17.68"),(319,2,319,"17.65"),(320,4,320,"37.87");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (321,2,321,"78.98"),(322,2,322,"59.54"),(323,3,323,"21.32"),(324,2,324,"6.32"),(325,2,325,"33.26"),(326,3,326,"76.65"),(327,3,327,"93.29"),(328,4,328,"82.11"),(329,3,329,"7.55"),(330,2,330,"22.24"),(331,1,331,"20.14"),(332,5,332,"91.97"),(333,1,333,"59.91"),(334,2,334,"69.63"),(335,3,335,"95.69"),(336,2,336,"70.51"),(337,4,337,"39.28"),(338,3,338,"33.54"),(339,5,339,"57.80"),(340,3,340,"79.27");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (341,1,341,"37.21"),(342,3,342,"52.42"),(343,1,343,"7.20"),(344,2,344,"29.86"),(345,2,345,"81.25"),(346,3,346,"20.27"),(347,4,347,"3.52"),(348,3,348,"60.21"),(349,5,349,"17.07"),(350,5,350,"56.58"),(351,1,351,"22.76"),(352,5,352,"91.96"),(353,5,353,"27.34"),(354,3,354,"15.15"),(355,4,355,"67.59"),(356,1,356,"37.54"),(357,3,357,"2.24"),(358,5,358,"73.18"),(359,2,359,"36.73"),(360,2,360,"99.67");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (361,1,361,"43.80"),(362,2,362,"21.56"),(363,2,363,"41.09"),(364,2,364,"41.15"),(365,3,365,"93.77"),(366,3,366,"10.18"),(367,3,367,"28.82"),(368,4,368,"20.45"),(369,3,369,"46.26"),(370,3,370,"7.11"),(371,3,371,"4.81"),(372,2,372,"72.53"),(373,4,373,"17.71"),(374,1,374,"78.45"),(375,4,375,"37.70"),(376,2,376,"28.45"),(377,1,377,"20.23"),(378,5,378,"82.31"),(379,1,379,"58.19"),(380,2,380,"26.27");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (381,3,381,"49.84"),(382,3,382,"74.57"),(383,5,383,"69.52"),(384,4,384,"97.95"),(385,3,385,"59.94"),(386,5,386,"76.53"),(387,5,387,"53.18"),(388,4,388,"64.58"),(389,2,389,"50.83"),(390,1,390,"50.90"),(391,3,391,"84.22"),(392,4,392,"79.22"),(393,2,393,"73.91"),(394,2,394,"43.50"),(395,2,395,"74.21"),(396,4,396,"70.34"),(397,2,397,"79.54"),(398,4,398,"52.14"),(399,5,399,"12.47"),(400,3,400,"95.13");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (401,2,401,"93.50"),(402,5,402,"44.03"),(403,3,403,"22.94"),(404,1,404,"51.31"),(405,4,405,"19.90"),(406,3,406,"73.33"),(407,3,407,"3.35"),(408,5,408,"38.08"),(409,2,409,"68.00"),(410,4,410,"76.98"),(411,4,411,"38.26"),(412,4,412,"76.18"),(413,5,413,"59.34"),(414,1,414,"12.37"),(415,4,415,"2.95"),(416,4,416,"70.02"),(417,1,417,"50.20"),(418,3,418,"77.52"),(419,3,419,"38.53"),(420,5,420,"53.05");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (421,1,421,"13.94"),(422,5,422,"27.21"),(423,3,423,"12.97"),(424,2,424,"66.51"),(425,5,425,"92.77"),(426,4,426,"14.44"),(427,4,427,"8.31"),(428,1,428,"52.34"),(429,4,429,"55.98"),(430,3,430,"77.25"),(431,4,431,"39.18"),(432,4,432,"60.25"),(433,5,433,"46.68"),(434,3,434,"68.19"),(435,2,435,"35.47"),(436,2,436,"30.11"),(437,5,437,"5.59"),(438,3,438,"77.92"),(439,4,439,"41.48"),(440,5,440,"19.90");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (441,5,441,"86.70"),(442,4,442,"17.01"),(443,1,443,"31.77"),(444,5,444,"82.11"),(445,1,445,"65.74"),(446,1,446,"81.74"),(447,2,447,"36.52"),(448,2,448,"96.36"),(449,1,449,"45.63"),(450,3,450,"13.62"),(451,5,451,"12.85"),(452,2,452,"51.40"),(453,5,453,"50.83"),(454,5,454,"80.47"),(455,2,455,"41.26"),(456,3,456,"7.26"),(457,5,457,"76.97"),(458,1,458,"82.20"),(459,2,459,"71.41"),(460,2,460,"2.51");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (461,3,461,"52.90"),(462,3,462,"1.61"),(463,1,463,"36.92"),(464,2,464,"61.36"),(465,2,465,"44.50"),(466,3,466,"32.45"),(467,5,467,"51.09"),(468,5,468,"3.43"),(469,4,469,"98.86"),(470,2,470,"45.32"),(471,3,471,"23.86"),(472,3,472,"85.16"),(473,4,473,"95.78"),(474,5,474,"29.61"),(475,1,475,"52.57"),(476,5,476,"7.56"),(477,5,477,"5.75"),(478,1,478,"99.45"),(479,2,479,"77.97"),(480,2,480,"45.42");
INSERT INTO purchasedmenuitem (PurchasedMenuItemID,MenuItemID,OrderID,PurchasedPrice) VALUES (481,2,481,"10.58"),(482,4,482,"45.98"),(483,3,483,"89.42"),(484,2,484,"41.42"),(485,3,485,"29.34"),(486,2,486,"85.01"),(487,3,487,"88.25"),(488,2,488,"27.70"),(489,2,489,"11.43"),(490,4,490,"41.01"),(491,4,491,"13.99"),(492,5,492,"33.37"),(493,4,493,"78.94"),(494,1,494,"26.70"),(495,1,495,"8.42"),(496,5,496,"79.65"),(497,3,497,"44.11"),(498,5,498,"9.95"),(499,1,499,"51.59"),(500,2,500,"10.66");
