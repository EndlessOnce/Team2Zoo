-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: zoo
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `Animal_ID` smallint NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `Health` tinyint DEFAULT NULL,
  `Diet` varchar(40) NOT NULL,
  `Exhibit_ID` tinyint DEFAULT NULL,
  `Common_Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Animal_ID`),
  KEY `Exhibit_ID` (`Exhibit_ID`),
  CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Exhibit_ID`) REFERENCES `exhibit` (`Exhibit_ID`) ON UPDATE CASCADE,
  CONSTRAINT `Diet_Constraint` CHECK ((`Diet` in (_utf8mb4'Herbivore',_utf8mb4'Omnivore',_utf8mb4'Carnivore'))),
  CONSTRAINT `Gender_Constraint` CHECK ((`Gender` in (_utf8mb4'Male',_utf8mb4'Female')))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'Sophie','Female','Loxodonta africana',1,'Herbivore',1,'African Elephant'),(2,'Kaia','Female','Loxodonta africana',0,'Herbivore',1,'African Elephant'),(3,'Zuli','Male','Loxodonta africana',1,'Herbivore',2,'African Elephant'),(4,'Joanne','Female','Pongo pygmaeus',1,'Herbivore',3,'Orangutan'),(5,'Marley','Female','Symphalangus syndactylus',1,'Omnivore',3,'Siamang'),(6,'Tala','Female','Spheniscus demersus',1,'Carnivore',5,'African Penguin'),(7,'Moe','Male','Spheniscus demersus',1,'Carnivore',5,'African Penguin'),(8,'Fran','Female','Spheniscus demersus',0,'Carnivore',5,'African Penguin'),(9,'Jose','Male','Spheniscus demersus',0,'Carnivore',5,'African Penguin'),(10,'Cannon','Female','Spheniscus demersus',1,'Carnivore',5,'African Penguin'),(11,'Molly','Female','Spheniscus demersus',1,'Carnivore',5,'African Penguin');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` tinyint NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Job_Description` varchar(45) DEFAULT NULL,
  `Exhibit_ID` tinyint DEFAULT NULL,
  `Show_ID` smallint DEFAULT NULL,
  `Shop_ID` tinyint DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `Exhibit_ID` (`Exhibit_ID`),
  KEY `Show_ID` (`Show_ID`),
  KEY `Shop_ID` (`Shop_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Exhibit_ID`) REFERENCES `exhibit` (`Exhibit_ID`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Show_ID`) REFERENCES `shows` (`Show_ID`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'David Near','Feeder',1,NULL,NULL),(2,'Steve Burton','Feeder',2,NULL,NULL),(3,'Don Dresden','Feeder/Cleaner',1,NULL,NULL),(4,'Jim Mets','Feeder/Cleaner',2,NULL,NULL),(5,'Diane Brown','Feeder/Cleaner',3,NULL,NULL),(6,'Dustin Kamal','Feeder/Cleaner',3,NULL,NULL),(7,'Jessica Gonzalez','Feeder',5,NULL,NULL),(8,'Ali Baton','Cleaner',5,NULL,NULL),(9,'Jasmine Harper','Presenting Nocturnal Animals',NULL,1,NULL),(10,'Hal Smith','Cashier',NULL,NULL,15),(11,'Alison Baker','Server',NULL,NULL,15),(12,'Ade Burkshire','Server',NULL,NULL,15),(13,'Philip Jane','Cook',NULL,NULL,15),(14,'Thomas Anvar','Cook',NULL,NULL,15),(15,'Andy Mao','Cashier',NULL,NULL,16),(16,'Lauren Doyle','Cook',NULL,NULL,16),(17,'Hugh Adams','Cashier',NULL,NULL,16),(18,'Daniel Mann','Stocker',NULL,NULL,16),(19,'Sarah Neighbors','Cashier',NULL,NULL,19),(20,'Gwen Woods','Cashier',NULL,NULL,20);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibit`
--

DROP TABLE IF EXISTS `exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibit` (
  `Exhibit_ID` tinyint NOT NULL AUTO_INCREMENT,
  `Exhibit_Status` varchar(6) NOT NULL,
  PRIMARY KEY (`Exhibit_ID`),
  CONSTRAINT `Status_Constraint` CHECK ((`Exhibit_Status` in (_utf8mb4'Open',_utf8mb4'Closed')))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibit`
--

LOCK TABLES `exhibit` WRITE;
/*!40000 ALTER TABLE `exhibit` DISABLE KEYS */;
INSERT INTO `exhibit` VALUES (1,'Open'),(2,'Open'),(3,'Open'),(4,'Closed'),(5,'Open');
/*!40000 ALTER TABLE `exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Membership_ID` int NOT NULL AUTO_INCREMENT,
  `Phone_Number` varchar(15) NOT NULL,
  `Join_Date` datetime NOT NULL,
  `Expiration_Date` datetime NOT NULL,
  `Address` varchar(60) NOT NULL,
  PRIMARY KEY (`Membership_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'6197448533','2020-01-17 05:22:47','2021-01-17 00:00:00','437 North Hillshire Rd. San Diego, California 92101');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Price` double(8,2) DEFAULT NULL,
  `Available_Qty` smallint DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Burger Plate',15.00,266),(2,'Teriyaki Kebabs',13.00,289),(3,'Coffee',6.50,422),(4,'Pumpkin Bread',7.10,202),(5,'Stuffed Animal-Whale',21.00,113),(6,'Bumper Sticker',8.00,89),(7,'Drinking Glass',10.00,133);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_of_transaction`
--

DROP TABLE IF EXISTS `products_of_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_of_transaction` (
  `Transaction_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  PRIMARY KEY (`Transaction_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `products_of_transaction_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transactions` (`Transaction_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_of_transaction_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_of_transaction`
--

LOCK TABLES `products_of_transaction` WRITE;
/*!40000 ALTER TABLE `products_of_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_of_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `Shop_ID` tinyint NOT NULL AUTO_INCREMENT,
  `Shop_Name` varchar(20) DEFAULT NULL,
  `Shop_Type` varchar(10) DEFAULT NULL,
  `Shop_Status` varchar(6) NOT NULL,
  PRIMARY KEY (`Shop_ID`),
  CONSTRAINT `Shop_Status_Constrain` CHECK ((`Shop_Status` in (_cp850'Open',_cp850'Closed'))),
  CONSTRAINT `Shop_Type_Constraint` CHECK ((`Shop_Type` in (_utf8mb4'Admissions',_utf8mb4'Dining',_utf8mb4'Gift Shop')))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (15,'Sabertooth Grill','Dining','Open'),(16,'Jungle Java','Dining','Open'),(17,'Panda Shop','Gift Shop','Open'),(18,'Parrot Palace','Gift Shop','Closed'),(19,'Ticket Booth A','Admissions','Open'),(20,'Ticket Booth B','Admissions','Open'),(21,'Ticket Booth C','Admissions','Closed');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `Show_ID` smallint NOT NULL AUTO_INCREMENT,
  `Date_Time` datetime DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Show_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,'2020-09-02 13:00:00','Exploring the abilities of Nocturnal Animals!','Lorenz Plaza');
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `Transaction_ID` int NOT NULL AUTO_INCREMENT,
  `Visitor_ID` int NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Shop_ID` tinyint NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `Shop_ID` (`Shop_ID`),
  KEY `Visitor_ID` (`Visitor_ID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Visitor_ID`) REFERENCES `visitor` (`Visitor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (10,1,'2020-03-22 09:15:00',19),(11,2,'2020-03-22 10:12:23',20),(12,1,'2020-03-22 12:32:21',15),(13,2,'2020-03-22 01:02:02',15),(14,2,'2020-03-22 02:15:13',16),(15,3,'2020-03-22 02:33:55',17),(16,4,'2020-03-23 12:47:13',19),(17,4,'2020-03-23 01:07:02',16),(18,4,'2020-03-23 03:15:54',17);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `Visitor_ID` int NOT NULL AUTO_INCREMENT,
  `Ticket_Type` varchar(6) NOT NULL,
  `Group_ID` int DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Is_Member` tinyint NOT NULL,
  PRIMARY KEY (`Visitor_ID`),
  CONSTRAINT `Ticket_Type_Constraint` CHECK ((`Ticket_Type` in (_utf8mb4'Child',_utf8mb4'Adult',_utf8mb4'Senior')))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Adult',1,'Larry Folgers','2020-03-22 09:15:00','6194128854',0),(2,'Adult',2,'Kyle Hopper','2020-03-22 10:12:23','6197448533',1),(3,'Child',2,'Alan Hopper','2020-03-22 10:12:23','6197495446',0),(4,'Senior',3,'Sherman Gilis','2020-03-23 12:47:13','6185523201',0);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23  4:03:45
