-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: zoodb.online    Database: dbq83pweu5kpyp
-- ------------------------------------------------------
-- Server version	5.7.25-28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `Animal_by_diet`
--

DROP TABLE IF EXISTS `Animal_by_diet`;
/*!50001 DROP VIEW IF EXISTS `Animal_by_diet`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Animal_by_diet` AS SELECT 
 1 AS `Animals`,
 1 AS `Diet`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Animal_by_exhibit`
--

DROP TABLE IF EXISTS `Animal_by_exhibit`;
/*!50001 DROP VIEW IF EXISTS `Animal_by_exhibit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Animal_by_exhibit` AS SELECT 
 1 AS `Animals`,
 1 AS `Exhibit_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Animals_by_health`
--

DROP TABLE IF EXISTS `Animals_by_health`;
/*!50001 DROP VIEW IF EXISTS `Animals_by_health`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Animals_by_health` AS SELECT 
 1 AS `Noanimals`,
 1 AS `Health`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Employee_and_job`
--

DROP TABLE IF EXISTS `Employee_and_job`;
/*!50001 DROP VIEW IF EXISTS `Employee_and_job`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Employee_and_job` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Job_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Employee_by_exhibit`
--

DROP TABLE IF EXISTS `Employee_by_exhibit`;
/*!50001 DROP VIEW IF EXISTS `Employee_by_exhibit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Employee_by_exhibit` AS SELECT 
 1 AS `NEmployees`,
 1 AS `Exhibit_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Employee_by_shop`
--

DROP TABLE IF EXISTS `Employee_by_shop`;
/*!50001 DROP VIEW IF EXISTS `Employee_by_shop`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Employee_by_shop` AS SELECT 
 1 AS `NEmployees`,
 1 AS `Shop_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Membership_ratio`
--

DROP TABLE IF EXISTS `Membership_ratio`;
/*!50001 DROP VIEW IF EXISTS `Membership_ratio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Membership_ratio` AS SELECT 
 1 AS `No`,
 1 AS `Is_Member`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Revenue_by_shop`
--

DROP TABLE IF EXISTS `Revenue_by_shop`;
/*!50001 DROP VIEW IF EXISTS `Revenue_by_shop`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Revenue_by_shop` AS SELECT 
 1 AS `Revenue`,
 1 AS `Shop_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `Animal_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `Common_Name` varchar(20) DEFAULT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `Health` tinyint(4) DEFAULT NULL,
  `Diet` varchar(40) NOT NULL,
  `Exhibit_ID` tinyint(4) NOT NULL,
  PRIMARY KEY (`Animal_ID`),
  KEY `Exhibit_ID` (`Exhibit_ID`),
  CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Exhibit_ID`) REFERENCES `exhibit` (`Exhibit_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'Sophie','Female','African Elephant','Loxodonta africana',1,'Herbivore',1),(2,'Kaia','Female','African Elephant','Loxodonta africana',0,'Herbivore',1),(3,'Zuli','Male','African Elephant','Loxodonta africana',1,'Herbivore',2),(4,'Joanne','Female','Orangutan','Pongo pygmaeus',1,'Herbivore',3),(5,'Marley','Female','Siamang','Symphalangus syndactylus',1,'Omnivore',3),(6,'Tala','Female','African Penguin','Spheniscus demersus',1,'Carnivore',5),(7,'Moe','Male','African Penguin','Spheniscus demersus',1,'Carnivore',4),(8,'Fran','Female','African Penguin','Spheniscus demersus',0,'Carnivore',5),(9,'Jose','Male','African Penguin','Spheniscus demersus',0,'Carnivore',5),(10,'Cannon','Female','African Penguin','Spheniscus demersus',1,'Carnivore',5),(11,'Molly','Female','African Penguin','Spheniscus demersus',1,'Carnivore',5),(35,'Beary','Male','Bear','Unknown',1,'Carnivore',3),(36,'Paul','Male','Dog','Unknown',1,'Carnivore',3),(37,'Grey Wolf','Male','Wolf','C. lupus',1,'Carnivore',3),(38,'Emma','Female','Wolf','C. lupus',0,'Carnivore',5),(39,'Olivia','Female','Goat','Capra aegagrus hircus',1,'Herbivore',1),(40,'Isabella','Female','Goat','Unknown',1,'Herbivore',3),(41,'George','Male','Giraffe','Northern giraffe',0,'Herbivore',3),(42,'Joe','Male','Red fox','Vulpes vulpes',1,'Omnivore',2),(43,'Fynn','Male','Otter','Lutrinae',1,'Omnivore',2),(44,'Ozzie','Male','Otter','Lutrinae',1,'Omnivore',1),(45,'Charlotte','Female','Otter','Lutrinae',1,'Omnivore',4),(46,'Pop','Male','Dog','Unknown',1,'Carnivore',2),(47,'Van','Male','Honda','car',0,'Omnivore',3),(48,'Urie','Male','Dog','Unknown',0,'Omnivore',4),(49,'Jerry','Male','Rat','Mouse',0,'Carnivore',1),(50,'Ellie','Female','Seal','Harp seal',1,'Omnivore',4);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`uystanz8cpj8d`@`%`*/ /*!50003 TRIGGER `dbq83pweu5kpyp`.`animal_BEFORE_INSERT` BEFORE INSERT ON `animal` FOR EACH ROW
BEGIN
IF (NEW.Health <= 5) THEN
	SET NEW.Health = 10;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `db_user`
--

DROP TABLE IF EXISTS `db_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_user` (
  `user_id` char(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_user`
--

LOCK TABLES `db_user` WRITE;
/*!40000 ALTER TABLE `db_user` DISABLE KEYS */;
INSERT INTO `db_user` VALUES ('1','chase@gmail.com','secret',''),('17bb9af0-5f77-4be1-8cab-a6743b3f7659','12@12.com','12','Admin'),('2','email@email.com','admin',''),('2db40214-c51d-464f-b7a1-f70dd2e19534','hey@d.com','1234',''),('3','test@test.com','test',''),('35ffea50-6a78-46ce-9aeb-62ade39862fb','stevyno@yahoo.com','12345','Employee'),('4','test1@test.com','test',''),('4a969ad6-503f-492d-88c0-c23920de6cdb','test3@test.com','test1',''),('5','test2@test.com','test',''),('50eafcb7-957a-4ff8-985e-df3deabdbfff','test5@test.com','test',''),('8514384c-06dc-4cad-be42-d10e0eda4ca7','test4@test.com','test',''),('854608c9-ff01-4ec3-a362-25de200afca7','158@158.com','125','Employee'),('8c8dcb91-b7c2-4c37-aea2-5c81df9ce3e6','b@b.com','1234','Admin'),('91f91435-6d79-466c-98f2-c1fc06e2e7f1','123@123.com','1234',''),('9d073686-0e2e-4516-8132-b38b61ea4da1','itsamemario@gmail.com','mushroom',''),('b741fd00-ac26-4f19-ae37-fc371979d05d','1235@1235.com','1235','Admin'),('c9c67abe-9eb6-4146-8612-a2cf95e72468','hey@h.com','1234','Admin'),('cf570189-b701-4196-8300-2f69908b744e','13@13.com','13','Admin'),('dace179b-a47f-48d8-a109-0575a3ef9a9d','c@c.com','1234','Employee'),('Emp','Emp@db.com','2468','Employee'),('TA','TA@db.com','4567','Admin'),('Uma','uma@db.com','1234','Admin');
/*!40000 ALTER TABLE `db_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Job_ID` smallint(6) DEFAULT NULL,
  `Exhibit_ID` tinyint(4) DEFAULT NULL,
  `Show_ID` smallint(6) DEFAULT NULL,
  `Shop_ID` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `Exhibit_ID` (`Exhibit_ID`),
  KEY `Show_ID` (`Show_ID`),
  KEY `Shop_ID` (`Shop_ID`),
  KEY `Job_ID` (`Job_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Exhibit_ID`) REFERENCES `exhibit` (`Exhibit_ID`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Show_ID`) REFERENCES `shows` (`Show_ID`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`),
  CONSTRAINT `employee_ibfk_4` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'David','Near',1,1,NULL,NULL),(2,'Don','Dresden',2,1,NULL,NULL),(3,'Steve','Burton',1,3,NULL,NULL),(4,'Jim','Mets',1,2,NULL,NULL),(5,'Diane','Brown',2,2,NULL,NULL),(6,'Dustin','Kamal',2,3,NULL,NULL),(7,'Jessica','Gonzalez',1,5,NULL,NULL),(8,'Ali','Baton',2,5,NULL,NULL),(9,'Jasmine','Harper',3,NULL,1,NULL),(11,'Alison','Baker',5,NULL,NULL,1),(12,'Ade','Burkshire',5,NULL,NULL,1),(13,'Philip','Jane',6,NULL,NULL,1),(14,'Thomas','Anvar',6,NULL,NULL,1),(15,'Andy','Mao',4,NULL,NULL,2),(16,'Lauren','Doyle',6,NULL,NULL,2),(17,'Hugh','Adams',4,NULL,NULL,3),(18,'Daniel','Mann',7,NULL,NULL,3),(19,'Sarah','Neighbors',4,NULL,NULL,5),(20,'Gwen','Woods',4,NULL,NULL,6),(22,'Jason','Xu',7,5,3,3),(23,'Kenneth','Zavala',4,3,5,5),(25,'Blank','Box',4,4,2,6),(26,'Tom','Jan',2,3,2,4),(27,'Rain','Jo',3,1,2,NULL),(29,'The','New',4,4,3,3),(30,'Ron','Ted',2,2,2,6),(31,'Ken','You',6,3,1,3),(32,'Bob','Flew',6,2,2,3),(33,'Rat','Shawn',4,2,1,3),(34,'Jason','Xu',7,5,1,NULL),(35,'Jackson','Rain',4,1,1,NULL),(36,'Bob','Flew',6,2,1,2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibit`
--

DROP TABLE IF EXISTS `exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibit` (
  `Exhibit_ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Exhibit_Status` varchar(6) NOT NULL,
  `Exhibit_Start` date DEFAULT NULL,
  `Exhibit_End` date DEFAULT NULL,
  PRIMARY KEY (`Exhibit_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibit`
--

LOCK TABLES `exhibit` WRITE;
/*!40000 ALTER TABLE `exhibit` DISABLE KEYS */;
INSERT INTO `exhibit` VALUES (1,'Closed','2015-01-02','2016-09-09'),(2,'Open','2016-09-09',NULL),(3,'Open','2016-09-09',NULL),(4,'Closed','2016-09-09','2019-09-09'),(5,'Open','2016-09-09',NULL),(6,'Open','2016-09-09',NULL),(7,'Open','2016-09-09',NULL),(8,'Open','2016-09-09',NULL),(9,'Open','2016-09-09',NULL),(10,'Closed','2016-09-09','2017-09-09');
/*!40000 ALTER TABLE `exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `Job_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Job_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Job_ID`),
  UNIQUE KEY `Job_Name` (`Job_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (4,'Cashier'),(2,'Cleaner'),(6,'Cook'),(1,'Feeder'),(3,'Presenter'),(5,'Server'),(7,'Stocker');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Membership_ID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Join_Date` datetime NOT NULL,
  `Expiration_Date` datetime NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Points` int(11) DEFAULT NULL,
  PRIMARY KEY (`Membership_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Kyle','Hopper','2346758765','2020-05-20 05:00:00','2021-01-17 00:00:00','34 StarDrive Rd.',150),(2,'Landon','Yeter','6186330220','2020-03-23 08:40:11','2021-03-23 00:00:00','4578 East Johnson Blvd. San Diego, California 92102',130),(3,'Brian','Stack','6188879612','2020-02-12 09:54:45','2021-02-12 00:00:00','1234 Blue Street San Diego, California 92103',111),(4,'Aizen','Tran','6548984513','2020-07-25 05:15:18','2021-07-25 05:15:18','1234 Rainbow, California 90201',500),(5,'John','Tran','1234567890','2020-07-25 05:15:18','2021-07-26 05:15:18','1234 Rainbow, California 90201',100),(6,'Ellie','Tran','1234567890','2020-07-25 05:15:18','2021-07-26 05:15:18','1234 Rainbow, California 90201',100);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`uystanz8cpj8d`@`%`*/ /*!50003 TRIGGER `dbq83pweu5kpyp`.`member_add_points` BEFORE INSERT ON `member` FOR EACH ROW
BEGIN
SET NEW.Points = 100;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Price` decimal(6,2) DEFAULT NULL,
  `Available_Qty` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Burger Plate',15.00,266),(2,'Teriyaki Kebabs',13.00,289),(3,'Coffee',6.50,422),(4,'Pumpkin Bread',7.10,202),(5,'Stuffed Animal-Whale',21.00,113),(6,'Bumper Sticker',8.00,89),(7,'Drinking Glass',10.00,133),(8,'Adult Ticket',25.00,NULL),(9,'Child Ticket',15.00,NULL),(10,'Senior Ticket',18.00,NULL),(11,'Cotton Candy',1.00,235),(12,'Soda',3.00,245),(13,'Coffee thermose',10.00,100),(14,'Decorative mugs ',5.00,150),(15,'Penguin Keychain',8.00,170),(16,'Lion Keychain',8.00,175),(17,'Lion Bookmark',5.00,175),(18,'Giraffe Bookmark',5.00,145),(19,'Otter Bookmark',5.00,142),(20,'Otter Keychain',8.00,162),(21,'Panda Keychain',8.00,178);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_of_transaction`
--

DROP TABLE IF EXISTS `products_of_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_of_transaction` (
  `Transaction_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Quantity` smallint(6) NOT NULL,
  PRIMARY KEY (`Transaction_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `products_of_transaction_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transactions` (`Transaction_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_of_transaction_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_of_transaction`
--

LOCK TABLES `products_of_transaction` WRITE;
/*!40000 ALTER TABLE `products_of_transaction` DISABLE KEYS */;
INSERT INTO `products_of_transaction` VALUES (1,8,1),(2,8,1),(2,9,1),(3,1,1),(4,2,2),(5,3,1),(5,4,2),(6,5,1),(7,8,1),(8,8,1),(9,8,1),(10,1,1),(11,2,1),(12,1,1),(13,10,1),(14,3,1),(15,7,1),(16,6,10),(17,6,5),(18,9,15),(19,4,25),(20,3,14),(21,7,10),(31,13,24),(32,7,14),(33,17,42),(34,6,10),(35,13,5),(36,19,7),(37,15,8),(38,13,15),(39,14,15),(40,18,5),(41,18,5),(42,20,5),(43,12,9),(44,16,10),(45,17,15),(46,16,15),(47,19,34),(48,19,24),(49,11,25),(50,8,42),(51,13,45);
/*!40000 ALTER TABLE `products_of_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `country` varchar(3) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('bey','bey@bey.com','12','USA'),('chase','chase@gmail.com','1234','UK'),('chase2','chas2@gmail.com','1234','UK');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `Shop_ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Shop_Name` varchar(20) DEFAULT NULL,
  `Shop_Type` varchar(10) DEFAULT NULL,
  `Shop_Status` varchar(6) NOT NULL,
  PRIMARY KEY (`Shop_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'Sabertooth Grill','Dining','Open'),(2,'Jungle Java','Dining','Open'),(3,'Panda Shop','Gift Shop','Open'),(4,'Parrot Palace','Gift Shop','Closed'),(5,'Ticket Booth A','Admissions','Open'),(6,'Ticket Booth B','Admissions','Open'),(7,'Ticket Booth C','Admissions','Closed'),(9,'In-N-Out','Dining','Closed'),(10,'Johns','Gift Shop','Closed'),(11,'Aizens','Dining','Closed'),(12,'Avas','Gift Shop','Open'),(13,'Mias','Dining','Open'),(14,'Emma\'s','Gift Shop','Open'),(15,'Amelia\'s','Dining','Open'),(16,'Tessa\'s','Gift Shop','Open'),(17,'Neptune\'s','Dining','Open'),(18,'Sam\'s','Dining','Open'),(19,'Kumar\'s','Gift Shop','Open'),(20,'Liu\'s','Gift Shop','Open'),(21,'Zhang\'s','Dining','Open'),(22,'Jones','Gift Shop','Open'),(23,'','Dining','Open');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `Show_ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Date_Time` datetime DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Show_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,'2020-09-02 13:00:00','Exploring the abilities of Nocturnal Animals!','Lorenz Plaza'),(2,'2020-10-07 13:00:00','We like turtles, and you should too!','Lorenz Plaza'),(3,'2020-10-14 13:00:00','The threat of extinction','Watering Hole'),(5,'2020-11-07 00:00:00','Wonderfull Birds of the Amazon','Lorenz Plaza'),(6,'2020-04-13 05:00:00','The Magic Penguins','Tundra Freeze'),(7,'2020-07-02 05:00:00','Drake feat. Migos','Main Center'),(8,'2020-07-25 05:15:18','Shakira','Front Entrance');
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `Transaction_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Visitor_ID` int(11) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Shop_ID` tinyint(4) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `Shop_ID` (`Shop_ID`),
  KEY `Visitor_ID` (`Visitor_ID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Visitor_ID`) REFERENCES `visitor` (`Visitor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,'2020-03-22 09:15:00',5),(2,2,'2020-03-22 10:12:23',6),(3,1,'2020-03-22 12:32:21',1),(4,2,'2020-03-22 01:02:02',1),(5,2,'2020-03-22 02:15:13',2),(6,3,'2020-03-22 02:33:55',3),(7,4,'2020-03-23 09:32:12',5),(8,5,'2020-03-23 09:35:56',5),(9,6,'2020-03-23 09:36:30',6),(10,5,'2020-03-23 11:15:15',1),(11,4,'2020-03-23 11:16:11',1),(12,6,'2020-03-23 11:17:45',1),(13,7,'2020-03-23 12:47:13',5),(14,7,'2020-03-23 01:07:02',2),(15,7,'2020-03-23 03:15:54',3),(16,5,'2020-07-20 09:15:18',1),(17,24,'2020-07-20 09:17:18',4),(18,7,'2020-07-20 09:47:18',4),(19,9,'2020-02-01 11:25:45',5),(20,15,'2020-02-01 11:25:45',3),(21,18,'2020-07-26 10:15:18',5),(31,25,'2020-07-20 09:15:18',11),(32,7,'2020-07-20 09:15:25',14),(33,20,'2020-07-20 09:15:25',16),(34,26,'2020-07-24 09:15:25',18),(35,21,'2020-04-24 09:15:25',9),(36,19,'2020-05-24 09:25:25',16),(37,17,'2020-05-27 09:25:25',21),(38,14,'2020-05-27 09:25:25',10),(39,11,'2020-06-27 09:25:25',15),(40,12,'2020-09-27 11:25:25',19),(41,12,'2020-09-27 11:25:25',19),(42,13,'2020-09-29 11:45:00',13),(43,16,'2020-09-29 11:15:00',12),(44,1,'2020-09-30 01:15:00',17),(45,2,'2020-09-30 01:15:00',18),(46,4,'2020-10-15 10:30:00',22),(47,5,'2020-06-25 10:30:00',21),(48,7,'2020-06-23 10:30:15',18),(49,9,'2020-06-23 10:30:24',16),(50,8,'2020-05-20 05:25:00',7),(51,9,'2020-02-01 11:45:45',12);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user` varchar(30) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lastLogData` datetime NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Employee','1234','Emp','2020-04-24 20:09:00'),('Manager','1234','EmpElev','2020-04-24 20:08:00'),('TA','4567','Admin','2020-04-24 20:10:00'),('Uma','1234','Admin','2020-04-24 20:11:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `Visitor_ID` int(11) NOT NULL AUTO_INCREMENT,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Ticket_Type` varchar(6) NOT NULL,
  `Is_Member` tinyint(4) NOT NULL,
  `Ticket_Price` int(11) DEFAULT '40',
  `Group_ID` int(11) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Membership_ID` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`Visitor_ID`),
  KEY `Membership_ID` (`Membership_ID`),
  CONSTRAINT `visitor_ibfk_1` FOREIGN KEY (`Membership_ID`) REFERENCES `member` (`Membership_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Larry','Folgers','Adult',0,NULL,1,'2019-01-22 09:15:00','6194128854',NULL),(2,'Kyle','Hopper','Adult',1,NULL,2,'2019-02-22 10:12:23','6197448533',1),(3,'Alan','Hopper','Child',0,NULL,2,'2019-03-22 10:12:23','6197495446',NULL),(4,'Landon','Yeter','Adult',1,NULL,4,'2019-04-23 08:40:11','6186330220',2),(5,'Sherry','Taz','Adult',1,NULL,4,'2019-11-23 08:40:11','2155546452',NULL),(6,'Brian','Stack','Adult',1,NULL,4,'2019-12-23 08:40:11','6188879612',NULL),(7,'Sherman','Gillis','Senior',1,NULL,3,'2020-01-23 12:47:13','6185523201',NULL),(8,'Alex','Watson','Adult',1,20,6,'2019-04-23 08:40:11','7137159809',NULL),(9,'John','Smith','Adult',1,20,3,'2020-05-02 05:00:00','2453456678',NULL),(10,'Kobe','Bryant','Adult',0,40,8,'2020-04-13 05:00:00','2488242424',NULL),(11,'D','Wade','Adult',1,20,3,'2020-01-13 04:30:00','1234567765',NULL),(12,'Chase','ac','Adult',1,20,12,'2019-12-10 14:44:44','33333',NULL),(13,'John','Tran','Adult',0,40,25,'2020-02-25 05:15:18','2456481315',NULL),(14,'Johnson','Talks','Adult',0,40,23,'2019-07-20 09:15:18','3456879154',NULL),(15,'Johnson','Smith','Adult',0,40,60,'2019-09-21 09:15:18','7896879154',NULL),(16,'William','Smith','Child',1,20,10,'2019-10-25 10:15:18','7891589154',NULL),(17,'Jones','Smith','Senior',1,20,102,'2020-01-25 10:25:18','7891587125',NULL),(18,'Jones','Miller ','Senior',1,20,45,'2019-08-21 11:25:18','1431587125',NULL),(19,'Davis','Miller ','Adult',1,20,43,'2017-07-01 11:25:18','2431587125',NULL),(20,'Wilson','Brown','Adult',1,20,15,'2020-02-01 11:25:45','2431787142',NULL),(21,'Zhang','Li','Adult',0,40,17,'2017-04-07 11:25:45','1787142',NULL),(22,'Zhang','Xu','Adult',0,40,17,'2020-09-07 11:24:45','4561887854',NULL),(23,'Yang ','Wang','Adult',0,40,80,'2019-07-07 01:45:45','4789781246',NULL),(24,'Singh','Wang','Adult',0,40,80,'2019-09-07 01:41:45','4789784127',NULL),(25,'John','Tran','Adult',0,40,14,'2019-09-25 05:15:18','1234567890',NULL),(26,'Ellie','Tran','Adult',1,20,15,'2020-07-25 05:15:18','12347891234',NULL);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`uystanz8cpj8d`@`%`*/ /*!50003 TRIGGER `dbq83pweu5kpyp`.`visitor_is_member` BEFORE INSERT ON `visitor` FOR EACH ROW BEGIN
IF(NEW.Is_Member = 1) THEN
	SET NEW.Ticket_Price = 20;
ELSEIF(NEW.Is_Member = 0) THEN
	SET NEW.Ticket_Price = 40;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`uystanz8cpj8d`@`%`*/ /*!50003 TRIGGER `dbq83pweu5kpyp`.`visitor_ticket_type` BEFORE INSERT ON `visitor` FOR EACH ROW
BEGIN
IF(NEW.Ticket_Type = "Senior") THEN
	SET NEW.Ticket_Price = 18;
ELSEIF(NEW.Ticket_Type = "Child") THEN
	SET NEW.Ticket_Price = 18;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `visitor_month`
--

DROP TABLE IF EXISTS `visitor_month`;
/*!50001 DROP VIEW IF EXISTS `visitor_month`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `visitor_month` AS SELECT 
 1 AS `Date`,
 1 AS `Visitor_ID`,
 1 AS `Ticket_Type`,
 1 AS `Is_Member`,
 1 AS `Membership_ID`,
 1 AS `Ticket_Price`,
 1 AS `F_Name`,
 1 AS `L_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'dbq83pweu5kpyp'
--

--
-- Dumping routines for database 'dbq83pweu5kpyp'
--

--
-- Final view structure for view `Animal_by_diet`
--

/*!50001 DROP VIEW IF EXISTS `Animal_by_diet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Animal_by_diet` AS select count(`animal`.`Animal_ID`) AS `Animals`,`animal`.`Diet` AS `Diet` from `animal` group by `animal`.`Diet` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Animal_by_exhibit`
--

/*!50001 DROP VIEW IF EXISTS `Animal_by_exhibit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Animal_by_exhibit` AS select count(`animal`.`Animal_ID`) AS `Animals`,`animal`.`Exhibit_ID` AS `Exhibit_ID` from `animal` group by `animal`.`Exhibit_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Animals_by_health`
--

/*!50001 DROP VIEW IF EXISTS `Animals_by_health`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Animals_by_health` AS select count(`animal`.`Animal_ID`) AS `Noanimals`,`animal`.`Health` AS `Health` from `animal` group by `animal`.`Health` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Employee_and_job`
--

/*!50001 DROP VIEW IF EXISTS `Employee_and_job`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Employee_and_job` AS select `employee`.`Employee_ID` AS `Employee_ID`,`employee`.`F_Name` AS `FirstName`,`employee`.`L_Name` AS `LastName`,`job`.`Job_Name` AS `Job_Name` from (`employee` join `job` on((`employee`.`Job_ID` = `job`.`Job_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Employee_by_exhibit`
--

/*!50001 DROP VIEW IF EXISTS `Employee_by_exhibit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Employee_by_exhibit` AS select count(`employee`.`Employee_ID`) AS `NEmployees`,`employee`.`Exhibit_ID` AS `Exhibit_ID` from `employee` group by `employee`.`Exhibit_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Employee_by_shop`
--

/*!50001 DROP VIEW IF EXISTS `Employee_by_shop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Employee_by_shop` AS select count(`employee`.`Employee_ID`) AS `NEmployees`,`employee`.`Shop_ID` AS `Shop_ID` from (`employee` join `shop` on((`employee`.`Shop_ID` = `shop`.`Shop_ID`))) group by `employee`.`Shop_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Membership_ratio`
--

/*!50001 DROP VIEW IF EXISTS `Membership_ratio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Membership_ratio` AS select count(`visitor`.`Visitor_ID`) AS `No`,`visitor`.`Is_Member` AS `Is_Member` from `visitor` group by `visitor`.`Is_Member` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Revenue_by_shop`
--

/*!50001 DROP VIEW IF EXISTS `Revenue_by_shop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Revenue_by_shop` AS select sum(`product`.`Price`) AS `Revenue`,`transactions`.`Shop_ID` AS `Shop_ID` from ((`products_of_transaction` join `product` on((`products_of_transaction`.`Product_ID` = `product`.`Product_ID`))) join `transactions` on((`products_of_transaction`.`Transaction_ID` = `transactions`.`Transaction_ID`))) group by `transactions`.`Shop_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `visitor_month`
--

/*!50001 DROP VIEW IF EXISTS `visitor_month`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`uystanz8cpj8d`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `visitor_month` AS select date_format(`visitor`.`Date_Time`,' %M %Y') AS `Date`,`visitor`.`Visitor_ID` AS `Visitor_ID`,`visitor`.`Ticket_Type` AS `Ticket_Type`,`visitor`.`Is_Member` AS `Is_Member`,`visitor`.`Membership_ID` AS `Membership_ID`,`visitor`.`Ticket_Price` AS `Ticket_Price`,`visitor`.`F_Name` AS `F_Name`,`visitor`.`L_Name` AS `L_Name` from `visitor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 18:00:55
