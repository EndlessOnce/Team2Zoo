-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: zoo
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `admissions`
--

DROP TABLE IF EXISTS `admissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissions` (
  `Gate_ID` int NOT NULL,
  `Ticket_Number` int NOT NULL AUTO_INCREMENT,
  `Admissions_ID` varchar(45) NOT NULL,
  `Valid_Member` tinyint(1) NOT NULL COMMENT 'Are they a member or not yes or no',
  `Admissions_Type` varchar(45) NOT NULL COMMENT 'What kind of admission was it?',
  `Exhibit_Exhibit_ID` int NOT NULL,
  PRIMARY KEY (`Gate_ID`),
  UNIQUE KEY `Admissions_ID_UNIQUE` (`Admissions_ID`),
  UNIQUE KEY `Ticket_Number_UNIQUE` (`Ticket_Number`),
  KEY `fk_Admissions_Exhibit1_idx` (`Exhibit_Exhibit_ID`),
  CONSTRAINT `fk_Admissions_Exhibit1` FOREIGN KEY (`Exhibit_Exhibit_ID`) REFERENCES `exhibit` (`Exhibit_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissions`
--

LOCK TABLES `admissions` WRITE;
/*!40000 ALTER TABLE `admissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `Animal_ID` int NOT NULL AUTO_INCREMENT,
  `Exhibit_ID` varchar(45) NOT NULL,
  `Diet` varchar(45) NOT NULL,
  `Health` tinyint(1) NOT NULL COMMENT 'If an animal is healthy or sick',
  PRIMARY KEY (`Animal_ID`),
  UNIQUE KEY `Animal_ID_UNIQUE` (`Animal_ID`),
  UNIQUE KEY `Exhibit_ID_UNIQUE` (`Exhibit_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `Department_ID` int NOT NULL AUTO_INCREMENT,
  `Employee_Count` int NOT NULL,
  PRIMARY KEY (`Department_ID`),
  UNIQUE KEY `Department_ID_UNIQUE` (`Department_ID`),
  UNIQUE KEY `Employee_Count_UNIQUE` (`Employee_Count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dining_services`
--

DROP TABLE IF EXISTS `dining_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dining_services` (
  `Dining_ID` int NOT NULL,
  `Item_ID` varchar(45) NOT NULL,
  `Dining_Inventory` int NOT NULL,
  `Dining_Type` varchar(45) DEFAULT NULL COMMENT 'What kind of food it is',
  PRIMARY KEY (`Dining_ID`),
  UNIQUE KEY `Dining_ID_UNIQUE` (`Dining_ID`),
  UNIQUE KEY `Item_ID_UNIQUE` (`Item_ID`),
  UNIQUE KEY `Dining_Inventory_UNIQUE` (`Dining_Inventory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dining_services`
--

LOCK TABLES `dining_services` WRITE;
/*!40000 ALTER TABLE `dining_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `dining_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` varchar(45) NOT NULL COMMENT 'What kind of job the employee has',
  `Department_ID` varchar(45) NOT NULL COMMENT 'What department the employee belongs to',
  `Department_Department_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Department_Department_ID`),
  UNIQUE KEY `Employee_ID_UNIQUE` (`Employee_ID`),
  UNIQUE KEY `Department_ID_UNIQUE` (`Department_ID`),
  UNIQUE KEY `Job_ID_UNIQUE` (`Job_ID`),
  KEY `fk_Employee_Department1_idx` (`Department_Department_ID`),
  CONSTRAINT `fk_Employee_Department1` FOREIGN KEY (`Department_Department_ID`) REFERENCES `department` (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `Event_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `Types` varchar(45) NOT NULL COMMENT 'What kind of event it is',
  `Exhibit_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`Event_ID`),
  UNIQUE KEY `Date_UNIQUE` (`Date`),
  UNIQUE KEY `Event_ID_UNIQUE` (`Event_ID`),
  UNIQUE KEY `Types_UNIQUE` (`Types`),
  UNIQUE KEY `Exhibit_ID_UNIQUE` (`Exhibit_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibit`
--

DROP TABLE IF EXISTS `exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibit` (
  `Exhibit_ID` int NOT NULL,
  `Animal_Animal_ID` int NOT NULL,
  `Event_Event_ID` int NOT NULL,
  PRIMARY KEY (`Exhibit_ID`,`Animal_Animal_ID`,`Event_Event_ID`),
  UNIQUE KEY `Exhibit_ID_UNIQUE` (`Exhibit_ID`),
  KEY `fk_Exhibit_Animal1_idx` (`Animal_Animal_ID`),
  KEY `fk_Exhibit_Event1_idx` (`Event_Event_ID`),
  CONSTRAINT `fk_Exhibit_Animal1` FOREIGN KEY (`Animal_Animal_ID`) REFERENCES `animal` (`Animal_ID`),
  CONSTRAINT `fk_Exhibit_Event1` FOREIGN KEY (`Event_Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibit`
--

LOCK TABLES `exhibit` WRITE;
/*!40000 ALTER TABLE `exhibit` DISABLE KEYS */;
/*!40000 ALTER TABLE `exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibit_has_employee`
--

DROP TABLE IF EXISTS `exhibit_has_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibit_has_employee` (
  `Exhibit_Exhibit_ID` int NOT NULL,
  `Exhibit_Animal_Animal_ID` int NOT NULL,
  `Exhibit_Event_Event_ID` int NOT NULL,
  `Employee_Employee_ID` int NOT NULL,
  `Employee_Department_Department_ID` int NOT NULL,
  PRIMARY KEY (`Exhibit_Exhibit_ID`,`Exhibit_Animal_Animal_ID`,`Exhibit_Event_Event_ID`,`Employee_Employee_ID`,`Employee_Department_Department_ID`),
  KEY `fk_Exhibit_has_Employee_Employee1_idx` (`Employee_Employee_ID`,`Employee_Department_Department_ID`),
  KEY `fk_Exhibit_has_Employee_Exhibit1_idx` (`Exhibit_Exhibit_ID`,`Exhibit_Animal_Animal_ID`,`Exhibit_Event_Event_ID`),
  CONSTRAINT `fk_Exhibit_has_Employee_Employee1` FOREIGN KEY (`Employee_Employee_ID`, `Employee_Department_Department_ID`) REFERENCES `employee` (`Employee_ID`, `Department_Department_ID`),
  CONSTRAINT `fk_Exhibit_has_Employee_Exhibit1` FOREIGN KEY (`Exhibit_Exhibit_ID`, `Exhibit_Animal_Animal_ID`, `Exhibit_Event_Event_ID`) REFERENCES `exhibit` (`Exhibit_ID`, `Animal_Animal_ID`, `Event_Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibit_has_employee`
--

LOCK TABLES `exhibit_has_employee` WRITE;
/*!40000 ALTER TABLE `exhibit_has_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `exhibit_has_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Membership_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(15) NOT NULL,
  `Middle_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Street_Address` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`Membership_ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `Transction_ID` int NOT NULL AUTO_INCREMENT,
  `Price` varchar(45) NOT NULL,
  `Item_ID` int NOT NULL COMMENT 'The items will have unique ID''s',
  `Sales_Type` varchar(45) NOT NULL COMMENT 'What kind of sale it was being cash or credit',
  `Visitor_Ticket_Number` int NOT NULL,
  `Dining_Services_Dining_ID` int NOT NULL,
  `Admissions_Gate_ID` int NOT NULL,
  PRIMARY KEY (`Transction_ID`,`Visitor_Ticket_Number`,`Dining_Services_Dining_ID`,`Admissions_Gate_ID`),
  UNIQUE KEY `Item_ID_UNIQUE` (`Item_ID`),
  UNIQUE KEY `Transction_ID_UNIQUE` (`Transction_ID`),
  UNIQUE KEY `Price_UNIQUE` (`Price`),
  KEY `fk_Sales_Visitor1_idx` (`Visitor_Ticket_Number`),
  KEY `fk_Sales_Dining_Services1_idx` (`Dining_Services_Dining_ID`),
  KEY `fk_Sales_Admissions1_idx` (`Admissions_Gate_ID`),
  CONSTRAINT `fk_Sales_Admissions1` FOREIGN KEY (`Admissions_Gate_ID`) REFERENCES `admissions` (`Gate_ID`),
  CONSTRAINT `fk_Sales_Dining_Services1` FOREIGN KEY (`Dining_Services_Dining_ID`) REFERENCES `dining_services` (`Dining_ID`),
  CONSTRAINT `fk_Sales_Visitor1` FOREIGN KEY (`Visitor_Ticket_Number`) REFERENCES `visitor` (`Ticket_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `Shop_ID` int NOT NULL,
  `Item_ID` int NOT NULL,
  `Shop_Inventory` int NOT NULL,
  `Sales_Transction_ID` int NOT NULL,
  `Sales_Visitor_Ticket_Number` int NOT NULL,
  PRIMARY KEY (`Shop_ID`,`Sales_Transction_ID`,`Sales_Visitor_Ticket_Number`),
  UNIQUE KEY `Item_ID_UNIQUE` (`Item_ID`),
  UNIQUE KEY `Shop_ID_UNIQUE` (`Shop_ID`),
  KEY `fk_Shops_Sales1_idx` (`Sales_Transction_ID`,`Sales_Visitor_Ticket_Number`),
  CONSTRAINT `fk_Shops_Sales1` FOREIGN KEY (`Sales_Transction_ID`, `Sales_Visitor_Ticket_Number`) REFERENCES `sales` (`Transction_ID`, `Visitor_Ticket_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `Ticket_Number` int NOT NULL AUTO_INCREMENT,
  `Member` tinyint(1) NOT NULL COMMENT 'A member yes or no',
  `Ticket_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Ticket_Number`),
  UNIQUE KEY `Ticket_Number_UNIQUE` (`Ticket_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vistor`
--

DROP TABLE IF EXISTS `vistor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vistor` (
  `Ticket_Number` int NOT NULL,
  `Member` tinyint(1) NOT NULL COMMENT 'A member yes or no',
  `Ticket_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Ticket_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vistor`
--

LOCK TABLES `vistor` WRITE;
/*!40000 ALTER TABLE `vistor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vistor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'zoo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12  0:38:32
