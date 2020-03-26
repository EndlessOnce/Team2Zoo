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
  `Sex` varchar(6) NOT NULL,
  `Common_Name` varchar(20) DEFAULT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `Health` tinyint DEFAULT NULL,
  `Diet` varchar(40) NOT NULL,
  `Exhibit_ID` tinyint NOT NULL,
  PRIMARY KEY (`Animal_ID`),
  KEY `Exhibit_ID` (`Exhibit_ID`),
  CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Exhibit_ID`) REFERENCES `exhibit` (`Exhibit_ID`) ON UPDATE CASCADE,
  CONSTRAINT `Diet_Constraint` CHECK ((`Diet` in (_cp850'Herbivore',_cp850'Omnivore',_cp850'Carnivore'))),
  CONSTRAINT `Gender_Constraint` CHECK ((`Sex` in (_cp850'Male',_cp850'Female')))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'Sophie','Female','African Elephant','Loxodonta africana',1,'Herbivore',1),(2,'Kaia','Female','African Elephant','Loxodonta africana',0,'Herbivore',1),(3,'Zuli','Male','African Elephant','Loxodonta africana',1,'Herbivore',2),(4,'Joanne','Female','Orangutan','Pongo pygmaeus',1,'Herbivore',3),(5,'Marley','Female','Siamang','Symphalangus syndactylus',1,'Omnivore',3),(6,'Tala','Female','African Penguin','Spheniscus demersus',1,'Carnivore',5),(7,'Moe','Male','African Penguin','Spheniscus demersus',1,'Carnivore',5),(8,'Fran','Female','African Penguin','Spheniscus demersus',0,'Carnivore',5),(9,'Jose','Male','African Penguin','Spheniscus demersus',0,'Carnivore',5),(10,'Cannon','Female','African Penguin','Spheniscus demersus',1,'Carnivore',5),(11,'Molly','Female','African Penguin','Spheniscus demersus',1,'Carnivore',5);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` smallint NOT NULL AUTO_INCREMENT,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Job_ID` smallint DEFAULT NULL,
  `Exhibit_ID` tinyint DEFAULT NULL,
  `Show_ID` smallint DEFAULT NULL,
  `Shop_ID` tinyint DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `Exhibit_ID` (`Exhibit_ID`),
  KEY `Show_ID` (`Show_ID`),
  KEY `Shop_ID` (`Shop_ID`),
  KEY `Job_ID` (`Job_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Exhibit_ID`) REFERENCES `exhibit` (`Exhibit_ID`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Show_ID`) REFERENCES `shows` (`Show_ID`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`),
  CONSTRAINT `employee_ibfk_4` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'David','Near',1,1,NULL,NULL),(2,'Don','Dresden',2,1,NULL,NULL),(3,'Steve','Burton',1,3,NULL,NULL),(4,'Jim','Mets',1,2,NULL,NULL),(5,'Diane','Brown',2,2,NULL,NULL),(6,'Dustin','Kamal',2,3,NULL,NULL),(7,'Jessica','Gonzalez',1,5,NULL,NULL),(8,'Ali','Baton',2,5,NULL,NULL),(9,'Jasmine','Harper',3,NULL,1,NULL),(10,'Hal','Smith',4,NULL,NULL,1),(11,'Alison','Baker',5,NULL,NULL,1),(12,'Ade','Burkshire',5,NULL,NULL,1),(13,'Philip','Jane',6,NULL,NULL,1),(14,'Thomas','Anvar',6,NULL,NULL,1),(15,'Andy','Mao',4,NULL,NULL,2),(16,'Lauren','Doyle',6,NULL,NULL,2),(17,'Hugh','Adams',4,NULL,NULL,3),(18,'Daniel','Mann',7,NULL,NULL,3),(19,'Sarah','Neighbors',4,NULL,NULL,5),(20,'Gwen','Woods',4,NULL,NULL,6);
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
  CONSTRAINT `Status_Constraint` CHECK ((`Exhibit_Status` in (_cp850'Open',_cp850'Closed')))
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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `Job_ID` smallint NOT NULL AUTO_INCREMENT,
  `Job_Name` varchar(20) NOT NULL,
  PRIMARY KEY (`Job_ID`),
  UNIQUE KEY `Job_Name` (`Job_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `Membership_ID` mediumint NOT NULL AUTO_INCREMENT,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
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
INSERT INTO `member` VALUES (1,'Kyle','Hopper','6197448533','2020-01-17 05:22:47','2021-01-17 00:00:00','437 North Hillshire Rd. San Diego, California 92101'),(2,'Landon','Yeter','6186330220','2020-03-23 08:40:11','2021-03-23 00:00:00','4578 East Johnson Blvd. San Diego, Clarifornia 92102');
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
  `Price` decimal(6,2) DEFAULT NULL,
  `Available_Qty` smallint DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Burger Plate',15.00,266),(2,'Teriyaki Kebabs',13.00,289),(3,'Coffee',6.50,422),(4,'Pumpkin Bread',7.10,202),(5,'Stuffed Animal-Whale',21.00,113),(6,'Bumper Sticker',8.00,89),(7,'Drinking Glass',10.00,133),(8,'Adult Ticket',25.00,NULL),(9,'Child Ticket',15.00,NULL),(10,'Senior Ticket',18.00,NULL);
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
  `Quantity` smallint NOT NULL,
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
INSERT INTO `products_of_transaction` VALUES (1,8,1),(2,8,1),(2,9,1),(3,1,1),(4,2,2),(5,3,1),(5,4,2),(6,5,1),(7,8,1),(8,8,1),(9,8,1),(10,1,1),(11,2,1),(12,1,1),(13,10,1),(14,3,1),(15,7,1);
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
  CONSTRAINT `Shop_Status_Constraint` CHECK ((`Shop_Status` in (_cp850'Open',_cp850'Closed'))),
  CONSTRAINT `Shop_Type_Constraint` CHECK ((`Shop_Type` in (_cp850'Admissions',_cp850'Dining',_cp850'Gift Shop')))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'Sabertooth Grill','Dining','Open'),(2,'Jungle Java','Dining','Open'),(3,'Panda Shop','Gift Shop','Open'),(4,'Parrot Palace','Gift Shop','Closed'),(5,'Ticket Booth A','Admissions','Open'),(6,'Ticket Booth B','Admissions','Open'),(7,'Ticket Booth C','Admissions','Closed');
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
  `Description` varchar(100) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
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
-- Table structure for table `stocked_by`
--

DROP TABLE IF EXISTS `stocked_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocked_by` (
  `Shop_ID` tinyint NOT NULL,
  `Product_ID` int NOT NULL,
  PRIMARY KEY (`Shop_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `stocked_by_ibfk_1` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`),
  CONSTRAINT `stocked_by_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocked_by`
--

LOCK TABLES `stocked_by` WRITE;
/*!40000 ALTER TABLE `stocked_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocked_by` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,'2020-03-22 09:15:00',5),(2,2,'2020-03-22 10:12:23',6),(3,1,'2020-03-22 12:32:21',1),(4,2,'2020-03-22 01:02:02',1),(5,2,'2020-03-22 02:15:13',2),(6,3,'2020-03-22 02:33:55',3),(7,4,'2020-03-23 09:32:12',5),(8,5,'2020-03-23 09:35:56',5),(9,6,'2020-03-23 09:36:30',6),(10,5,'2020-03-23 11:15:15',1),(11,4,'2020-03-23 11:16:11',1),(12,6,'2020-03-23 11:17:45',1),(13,7,'2020-03-23 12:47:13',5),(14,7,'2020-03-23 01:07:02',2),(15,7,'2020-03-23 03:15:54',3);
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
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Ticket_Type` varchar(6) NOT NULL,
  `Is_Member` tinyint NOT NULL,
  `Group_ID` int NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Membership_ID` mediumint DEFAULT NULL,
  PRIMARY KEY (`Visitor_ID`),
  KEY `Membership_ID` (`Membership_ID`),
  CONSTRAINT `visitor_ibfk_1` FOREIGN KEY (`Membership_ID`) REFERENCES `member` (`Membership_ID`),
  CONSTRAINT `Ticket_Type_Constraint` CHECK ((`Ticket_Type` in (_cp850'Child',_cp850'Adult',_cp850'Senior')))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Larry','Folgers','Adult',0,1,'2020-03-22 09:15:00','6194128854',NULL),(2,'Kyle','Hopper','Adult',1,2,'2020-03-22 10:12:23','6197448533',1),(3,'Alan','Hopper','Child',0,2,'2020-03-22 10:12:23','6197495446',NULL),(4,'Landon','Yeter','Adult',1,4,'2020-03-23 08:40:11','6186330220',2),(5,'Sherry','Taz','Adult',0,4,'2020-03-23 08:40:11','2155546452',NULL),(6,'Brian','Stack','Adult',0,4,'2020-03-23 08:40:11','6188879612',NULL),(7,'Sherman','Gillis','Senior',0,3,'2020-03-23 12:47:13','6185523201',NULL);
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

-- Dump completed on 2020-03-25 21:34:11
