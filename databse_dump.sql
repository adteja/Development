-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: probpm
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `admin_employee_totals`
--

DROP TABLE IF EXISTS `admin_employee_totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_employee_totals` (
  `id` int NOT NULL,
  `expensecategoryid` int DEFAULT '0',
  `amount` decimal(19,2) DEFAULT '0.00',
  `lastupdatedon` date DEFAULT NULL,
  `lastupdatedby` varchar(255) DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `expensebearer` int DEFAULT '0',
  `profit` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `employeeid7` (`employeeid`),
  KEY `employeesconsultantexpensetotals` (`employeeid`),
  KEY `expensecategoriesconsultantexpensetotals` (`expensecategoryid`),
  KEY `expensecategoryid` (`expensecategoryid`),
  CONSTRAINT `expensecategoriesconsultantexpensetotals1` FOREIGN KEY (`expensecategoryid`) REFERENCES `admin_expensecategories_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_employee_totals`
--

LOCK TABLES `admin_employee_totals` WRITE;
/*!40000 ALTER TABLE `admin_employee_totals` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_employee_totals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_expense_bearer_lookup`
--

DROP TABLE IF EXISTS `admin_expense_bearer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_expense_bearer_lookup` (
  `id` int NOT NULL,
  `trial_bearer_name_2` varchar(255) DEFAULT NULL,
  `trial_bearer_shortform_3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id19` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_expense_bearer_lookup`
--

LOCK TABLES `admin_expense_bearer_lookup` WRITE;
/*!40000 ALTER TABLE `admin_expense_bearer_lookup` DISABLE KEYS */;
INSERT INTO `admin_expense_bearer_lookup` VALUES (1,'Employer','er'),(2,'Employee','ee');
/*!40000 ALTER TABLE `admin_expense_bearer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_expensecategories_lookup`
--

DROP TABLE IF EXISTS `admin_expensecategories_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_expensecategories_lookup` (
  `id` int NOT NULL,
  `trial_expensecategoryname_2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_expensecategories_lookup`
--

LOCK TABLES `admin_expensecategories_lookup` WRITE;
/*!40000 ALTER TABLE `admin_expensecategories_lookup` DISABLE KEYS */;
INSERT INTO `admin_expensecategories_lookup` VALUES (1,'* TRIAL *'),(2,'* TRIAL * TRIAL * TRIAL * '),(3,'Attorney Fee'),(4,'ER Medical Insurance'),(5,'Education Evaluation'),(6,'RFE Fee'),(7,'GC Processing Fee'),(8,'Salary'),(9,'* TR'),(10,'* TRIAL * TRIA'),(11,'POAmount');
/*!40000 ALTER TABLE `admin_expensecategories_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_expensesuffixtype_lookup`
--

DROP TABLE IF EXISTS `admin_expensesuffixtype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_expensesuffixtype_lookup` (
  `id` int NOT NULL,
  `expensesuffixtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id5` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_expensesuffixtype_lookup`
--

LOCK TABLES `admin_expensesuffixtype_lookup` WRITE;
/*!40000 ALTER TABLE `admin_expensesuffixtype_lookup` DISABLE KEYS */;
INSERT INTO `admin_expensesuffixtype_lookup` VALUES (1,'Hour'),(2,'* TRIAL');
/*!40000 ALTER TABLE `admin_expensesuffixtype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_po_profile`
--

DROP TABLE IF EXISTS `admin_po_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_po_profile` (
  `id` int NOT NULL,
  `trial_profile_master_id_2` int DEFAULT '0',
  `trial_validfrom_3` date DEFAULT NULL,
  `validto` date DEFAULT NULL,
  `trial_po_id_5` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `admin_profile_id` (`trial_profile_master_id_2`),
  KEY `id7` (`id`),
  KEY `po_id` (`trial_po_id_5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_po_profile`
--

LOCK TABLES `admin_po_profile` WRITE;
/*!40000 ALTER TABLE `admin_po_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_po_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_po_totals`
--

DROP TABLE IF EXISTS `admin_po_totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_po_totals` (
  `trial_id_1` int NOT NULL,
  `trial_po_id_2` int DEFAULT '0',
  `trial_invoiceamounttotal_3` decimal(19,2) DEFAULT '0.00',
  `receivedamounttotal` decimal(19,2) DEFAULT '0.00',
  `unpaidinvoiceamounttotal` decimal(19,2) DEFAULT '0.00',
  `employeeamounttotal` decimal(19,2) DEFAULT '0.00',
  `trial_employeramounttotal_7` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`trial_id_1`),
  KEY `id18` (`trial_id_1`),
  KEY `po_id1` (`trial_po_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_po_totals`
--

LOCK TABLES `admin_po_totals` WRITE;
/*!40000 ALTER TABLE `admin_po_totals` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_po_totals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_profilenames_master`
--

DROP TABLE IF EXISTS `admin_profilenames_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_profilenames_master` (
  `id` int NOT NULL,
  `profilename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id3` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profilenames_master`
--

LOCK TABLES `admin_profilenames_master` WRITE;
/*!40000 ALTER TABLE `admin_profilenames_master` DISABLE KEYS */;
INSERT INTO `admin_profilenames_master` VALUES (1,'seventyfive');
/*!40000 ALTER TABLE `admin_profilenames_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_profiles`
--

DROP TABLE IF EXISTS `admin_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_profiles` (
  `id` int NOT NULL,
  `expense_bearer` int DEFAULT '0',
  `trial_expense_category_3` varchar(255) DEFAULT NULL,
  `expense_suffix` varchar(255) DEFAULT NULL,
  `expense_amount` int DEFAULT '0',
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  `comments` varchar(255) DEFAULT NULL,
  `profile_id` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id8` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profiles`
--

LOCK TABLES `admin_profiles` WRITE;
/*!40000 ALTER TABLE `admin_profiles` DISABLE KEYS */;
INSERT INTO `admin_profiles` VALUES (1,1,'*','2',100,_binary '\0',NULL,1),(2,1,'1','2',100,_binary '\0',NULL,1),(3,1,'3','2',100,_binary '\0',NULL,1),(4,1,'4','2',100,_binary '\0',NULL,1),(5,1,'*','2',100,_binary '\0',NULL,1),(6,2,'2','2',100,_binary '\0',NULL,1),(7,2,'4','2',100,_binary '\0',NULL,1),(8,2,'*','2',100,_binary '\0',NULL,1),(9,2,'6','2',100,_binary '\0',NULL,1),(10,2,'7','2',100,_binary '\0',NULL,1),(12,1,'11','2',75,_binary '\0',NULL,1);
/*!40000 ALTER TABLE `admin_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrativestaff`
--

DROP TABLE IF EXISTS `administrativestaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrativestaff` (
  `id` int NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `enabled` bit(2) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativestaff`
--

LOCK TABLES `administrativestaff` WRITE;
/*!40000 ALTER TABLE `administrativestaff` DISABLE KEYS */;
INSERT INTO `administrativestaff` VALUES (1,'rowen',NULL,NULL,_binary '\0'),(2,'Venky',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `administrativestaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank payments`
--

DROP TABLE IF EXISTS `bank payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank payments` (
  `id` int NOT NULL,
  `transactionid` varchar(255) DEFAULT NULL,
  `transactiondescription` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `dateposted` date DEFAULT NULL,
  `transactiontype` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactionid` (`transactionid`),
  KEY `transactiontype_lookupbank payments` (`transactiontype`),
  CONSTRAINT `transactiontype_lookupbank payments1` FOREIGN KEY (`transactiontype`) REFERENCES `transactiontype_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank payments`
--

LOCK TABLES `bank payments` WRITE;
/*!40000 ALTER TABLE `bank payments` DISABLE KEYS */;
INSERT INTO `bank payments` VALUES (17,'1',NULL,80.00,NULL,1),(18,'2',NULL,850.00,NULL,1),(19,'*',NULL,555.00,NULL,2);
/*!40000 ALTER TABLE `bank payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankcustomerpayments`
--

DROP TABLE IF EXISTS `bankcustomerpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankcustomerpayments` (
  `id` int NOT NULL,
  `bankpaymentid` int DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `customerid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank paymentsbankcustomerpayments` (`bankpaymentid`),
  KEY `bankpaymentid` (`bankpaymentid`),
  KEY `customerid1` (`customerid`),
  KEY `customersbankcustomerpayments` (`customerid`),
  KEY `id24` (`id`),
  CONSTRAINT `bank paymentsbankcustomerpayments1` FOREIGN KEY (`bankpaymentid`) REFERENCES `bank payments` (`id`),
  CONSTRAINT `customersbankcustomerpayments1` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankcustomerpayments`
--

LOCK TABLES `bankcustomerpayments` WRITE;
/*!40000 ALTER TABLE `bankcustomerpayments` DISABLE KEYS */;
INSERT INTO `bankcustomerpayments` VALUES (21,17,80.00,NULL),(22,NULL,NULL,2),(23,NULL,NULL,NULL),(24,18,850.00,NULL),(25,18,NULL,1),(26,18,NULL,NULL),(27,NULL,NULL,NULL),(28,17,NULL,NULL),(29,NULL,NULL,NULL),(30,19,NULL,NULL),(31,19,50.00,3),(32,NULL,NULL,NULL),(33,17,NULL,NULL),(34,17,NULL,NULL);
/*!40000 ALTER TABLE `bankcustomerpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefits` (
  `id` int NOT NULL,
  `benefittype` int DEFAULT NULL,
  `employeercontribution` decimal(19,2) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `paycheckid` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `benefits_lookupbenefits` (`benefittype`),
  KEY `employee_id1` (`employee_id`),
  KEY `id17` (`id`),
  KEY `paycheckdetailsbenefits` (`paycheckid`),
  CONSTRAINT `benefits_lookupbenefits1` FOREIGN KEY (`benefittype`) REFERENCES `benefits_lookup` (`id`),
  CONSTRAINT `paycheckdetailsbenefits1` FOREIGN KEY (`paycheckid`) REFERENCES `paycheckdetails` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` VALUES (1586,2,942.88,4,2974,NULL),(1587,2,942.88,5,2975,NULL),(1588,2,1328.04,6,2976,NULL),(1589,2,321.44,7,2977,NULL),(1590,1,4375.00,2,2982,NULL),(1591,2,242.68,2,2982,NULL),(1592,2,242.68,19,2986,NULL),(1593,2,321.44,10,2988,NULL),(1594,1,4375.00,11,2989,NULL),(1595,1,4375.00,1,2991,NULL),(1596,2,942.88,21,2994,NULL),(1597,1,7500.00,22,2995,NULL),(1598,2,785.36,22,2995,NULL),(1612,2,942.88,4,3020,NULL),(1613,2,942.88,5,3021,NULL),(1614,2,1328.04,6,3022,NULL),(1615,2,321.44,7,3023,NULL),(1616,1,4375.00,2,3028,NULL),(1617,2,242.68,2,3028,NULL),(1618,2,242.68,19,3032,NULL),(1619,2,321.44,10,3034,NULL),(1620,1,4375.00,11,3035,NULL),(1621,1,4375.00,1,3037,NULL),(1622,2,942.88,21,3040,NULL),(1623,1,7500.00,22,3041,NULL),(1624,2,785.36,22,3041,NULL);
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits_lookup`
--

DROP TABLE IF EXISTS `benefits_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefits_lookup` (
  `id` int NOT NULL,
  `be_name` varchar(255) DEFAULT NULL,
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id27` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits_lookup`
--

LOCK TABLES `benefits_lookup` WRITE;
/*!40000 ALTER TABLE `benefits_lookup` DISABLE KEYS */;
INSERT INTO `benefits_lookup` VALUES (1,'Medical',_binary '\0',NULL),(2,'401k',_binary '\0',NULL);
/*!40000 ALTER TABLE `benefits_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_categories`
--

DROP TABLE IF EXISTS `bill_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_categories` (
  `id` int NOT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  `isdisabled` bit(2) NOT NULL DEFAULT b'0',
  `isemployee` bit(2) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `id9` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_categories`
--

LOCK TABLES `bill_categories` WRITE;
/*!40000 ALTER TABLE `bill_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billlineitems`
--

DROP TABLE IF EXISTS `billlineitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billlineitems` (
  `id` int NOT NULL,
  `billid` int DEFAULT NULL,
  `employeeid` int DEFAULT NULL,
  `lineitemamount` decimal(19,2) DEFAULT NULL,
  `iscompany` bit(2) NOT NULL DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `billid` (`billid`),
  KEY `billsbilllineitems` (`billid`),
  KEY `employeeid1` (`employeeid`),
  KEY `id4` (`id`),
  CONSTRAINT `billsbilllineitems1` FOREIGN KEY (`billid`) REFERENCES `bills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billlineitems`
--

LOCK TABLES `billlineitems` WRITE;
/*!40000 ALTER TABLE `billlineitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `billlineitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billpaylineitems`
--

DROP TABLE IF EXISTS `billpaylineitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billpaylineitems` (
  `id` int NOT NULL,
  `contractor_id` int DEFAULT NULL,
  `payment_lineitem_amount` decimal(19,2) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `bill_lineitem_id` int DEFAULT NULL,
  `billpaymentid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_lineitem_id` (`bill_lineitem_id`),
  KEY `billlineitemsbillpaylineitems` (`bill_lineitem_id`),
  KEY `billpaymentid` (`billpaymentid`),
  KEY `billpaymentsbillpaylineitems` (`billpaymentid`),
  KEY `contractor_id` (`contractor_id`),
  KEY `id2` (`id`),
  CONSTRAINT `billlineitemsbillpaylineitems1` FOREIGN KEY (`bill_lineitem_id`) REFERENCES `billlineitems` (`id`),
  CONSTRAINT `billpaymentsbillpaylineitems1` FOREIGN KEY (`billpaymentid`) REFERENCES `billpayments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billpaylineitems`
--

LOCK TABLES `billpaylineitems` WRITE;
/*!40000 ALTER TABLE `billpaylineitems` DISABLE KEYS */;
INSERT INTO `billpaylineitems` VALUES (1,NULL,250.00,NULL,NULL,1),(2,0,350.00,NULL,NULL,NULL),(3,NULL,150.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `billpaylineitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billpayment_check`
--

DROP TABLE IF EXISTS `billpayment_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billpayment_check` (
  `id` int NOT NULL,
  `checknum` int DEFAULT NULL,
  `check` longtext,
  `checkdate` date DEFAULT NULL,
  `employeebillpaymentid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checknum` (`checknum`),
  KEY `employeebillpaymentid` (`employeebillpaymentid`),
  KEY `id25` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billpayment_check`
--

LOCK TABLES `billpayment_check` WRITE;
/*!40000 ALTER TABLE `billpayment_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `billpayment_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billpayments`
--

DROP TABLE IF EXISTS `billpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billpayments` (
  `id` int NOT NULL,
  `bank_payment_total_amount` decimal(19,2) DEFAULT NULL,
  `bank_payment_transaction_desc` varchar(255) DEFAULT NULL,
  `bank_payment_dt` date DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `bank_payment_type` int DEFAULT NULL,
  `bank_doc` longtext,
  `contractor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contractor_id2` (`contractor_id`),
  KEY `id22` (`id`),
  KEY `paymenttype_lookupbillpayments` (`bank_payment_type`),
  CONSTRAINT `paymenttype_lookupbillpayments1` FOREIGN KEY (`bank_payment_type`) REFERENCES `paymenttype_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billpayments`
--

LOCK TABLES `billpayments` WRITE;
/*!40000 ALTER TABLE `billpayments` DISABLE KEYS */;
INSERT INTO `billpayments` VALUES (1,200.00,NULL,'2024-02-05',NULL,4,'',NULL),(5,150.00,NULL,'2024-02-06',NULL,4,'',NULL);
/*!40000 ALTER TABLE `billpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `id` int NOT NULL,
  `totalamount` decimal(19,2) DEFAULT NULL,
  `bill_creation_dt` date DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `contractor_id` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `billstartdate` date DEFAULT NULL,
  `billenddate` date DEFAULT NULL,
  `billduedate` date DEFAULT NULL,
  `billdoc` longtext,
  PRIMARY KEY (`id`),
  KEY `administrativestaffemployeebills` (`created_by`),
  KEY `bill_categoriesemployeebills` (`category_id`),
  KEY `category_id` (`category_id`),
  KEY `contractorsemployeebills` (`contractor_id`),
  KEY `id6` (`id`),
  CONSTRAINT `administrativestaffemployeebills1` FOREIGN KEY (`created_by`) REFERENCES `administrativestaff` (`id`),
  CONSTRAINT `bill_categoriesemployeebills1` FOREIGN KEY (`category_id`) REFERENCES `bill_categories` (`id`),
  CONSTRAINT `contractorsemployeebills1` FOREIGN KEY (`contractor_id`) REFERENCES `contractors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companybills`
--

DROP TABLE IF EXISTS `companybills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companybills` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `bill_creation_dt` date DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `contractor_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `administrativestaffcompanybills` (`created_by`),
  KEY `bill_categoriescompanybills` (`category_id`),
  KEY `contractor_id1` (`contractor_id`),
  KEY `contractorscompanybills` (`contractor_id`),
  KEY `exp_category_id` (`category_id`),
  KEY `id10` (`id`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `administrativestaffcompanybills1` FOREIGN KEY (`created_by`) REFERENCES `administrativestaff` (`id`),
  CONSTRAINT `bill_categoriescompanybills1` FOREIGN KEY (`category_id`) REFERENCES `bill_categories` (`id`),
  CONSTRAINT `contractorscompanybills1` FOREIGN KEY (`contractor_id`) REFERENCES `contractors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companybills`
--

LOCK TABLES `companybills` WRITE;
/*!40000 ALTER TABLE `companybills` DISABLE KEYS */;
INSERT INTO `companybills` VALUES (1,NULL,100.00,'2024-02-05',1,2,NULL,NULL),(5,NULL,100.00,NULL,NULL,1,1,NULL),(6,NULL,250.00,NULL,2,2,NULL,NULL);
/*!40000 ALTER TABLE `companybills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyholidays`
--

DROP TABLE IF EXISTS `companyholidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companyholidays` (
  `id` int NOT NULL,
  `financialyear` int DEFAULT '0',
  `holiday` date DEFAULT NULL,
  `holidayname` varchar(255) DEFAULT NULL,
  `isdisabled` bit(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyholidays`
--

LOCK TABLES `companyholidays` WRITE;
/*!40000 ALTER TABLE `companyholidays` DISABLE KEYS */;
INSERT INTO `companyholidays` VALUES (1,2024,'2024-11-23','* TRIAL * TRI',_binary '\0'),(2,2024,'2024-01-15','* TRIAL * TRIAL * TRIAL *',_binary '\0'),(3,2024,'2024-11-11','* TRIAL * TR',_binary '\0'),(4,2024,'2024-09-04','Labor Day',_binary '\0'),(5,2024,'2024-12-25','Christmas Day',_binary '\0');
/*!40000 ALTER TABLE `companyholidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL DEFAULT '0',
  `ct_firstname` varchar(255) DEFAULT NULL,
  `ct_lastname` varchar(255) DEFAULT NULL,
  `ct_addressline1` varchar(255) DEFAULT NULL,
  `ct_addressline2` varchar(255) DEFAULT NULL,
  `ct_city` varchar(255) DEFAULT NULL,
  `ct_state` varchar(255) DEFAULT NULL,
  `ct_zip` varchar(255) DEFAULT NULL,
  `ct_email` varchar(255) DEFAULT NULL,
  `ct_type` varchar(255) DEFAULT NULL,
  `ct_officephonenum` varchar(255) DEFAULT NULL,
  `ct_mobilephonenum` varchar(255) DEFAULT NULL,
  `ct_faxnumber` varchar(255) DEFAULT NULL,
  `ct_vendorid` int DEFAULT '0',
  `ct_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ct_customerid` (`ct_vendorid`),
  KEY `ct_mobilephonenum` (`ct_mobilephonenum`),
  KEY `id26` (`id`),
  KEY `vendorscontacts` (`ct_vendorid`),
  CONSTRAINT `vendorscontacts1` FOREIGN KEY (`ct_vendorid`) REFERENCES `vendors` (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (0,NULL,NULL,NULL,NULL,'* ','Arkansas',NULL,NULL,NULL,NULL,NULL,NULL,2,NULL),(1,NULL,NULL,NULL,NULL,'* ','Atlanta',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contractors`
--

DROP TABLE IF EXISTS `contractors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contractors` (
  `id` int NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `ein` varchar(255) DEFAULT NULL,
  `w9doc` longtext,
  `addressline1` varchar(255) DEFAULT NULL,
  `addressline2` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `isemployee` bit(2) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `id23` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractors`
--

LOCK TABLES `contractors` WRITE;
/*!40000 ALTER TABLE `contractors` DISABLE KEYS */;
INSERT INTO `contractors` VALUES (1,'Microsoft',NULL,NULL,'',NULL,NULL,NULL,NULL,_binary '\0'),(2,'Google',NULL,NULL,'',NULL,NULL,NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `contractors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporationtype_lookup`
--

DROP TABLE IF EXISTS `corporationtype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporationtype_lookup` (
  `trial_id_1` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `trial_notes_3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trial_id_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporationtype_lookup`
--

LOCK TABLES `corporationtype_lookup` WRITE;
/*!40000 ALTER TABLE `corporationtype_lookup` DISABLE KEYS */;
INSERT INTO `corporationtype_lookup` VALUES (1,'S-Corp',NULL),(2,'C-Corp',NULL),(3,'N-Corp',NULL);
/*!40000 ALTER TABLE `corporationtype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerid` int NOT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `addressline1` varchar(255) DEFAULT NULL,
  `addressline2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'yash',NULL,NULL,'* ','Missouri',NULL,NULL),(2,'Gupta',NULL,NULL,'NA','* TRIAL ',NULL,NULL),(3,'* TRIA',NULL,NULL,'KA','Kenessa',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deduction`
--

DROP TABLE IF EXISTS `deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deduction` (
  `id` int NOT NULL,
  `deductiontype` int DEFAULT NULL,
  `employeecontribution` decimal(19,2) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `paycheckid` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deductions_lookupdeduction` (`deductiontype`),
  KEY `employee_id` (`employee_id`),
  KEY `employeesdeduction` (`employee_id`),
  KEY `id16` (`id`),
  KEY `paycheckdetailsdeduction` (`paycheckid`),
  CONSTRAINT `deductions_lookupdeduction1` FOREIGN KEY (`deductiontype`) REFERENCES `deductions_lookup` (`id`),
  CONSTRAINT `paycheckdetailsdeduction1` FOREIGN KEY (`paycheckid`) REFERENCES `paycheckdetails` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduction`
--

LOCK TABLES `deduction` WRITE;
/*!40000 ALTER TABLE `deduction` DISABLE KEYS */;
INSERT INTO `deduction` VALUES (1838,2,300.00,4,2974,NULL),(1839,2,300.00,5,2975,NULL),(1840,2,300.00,6,2976,NULL),(1841,2,300.00,7,2977,NULL),(1842,3,1000.00,7,2977,NULL),(1843,1,550.00,2,2982,NULL),(1844,2,300.00,2,2982,NULL),(1845,2,300.00,19,2986,NULL),(1846,3,500.00,9,2987,NULL),(1847,2,300.00,10,2988,NULL),(1848,1,595.83,11,2989,NULL),(1849,1,550.00,1,2991,NULL),(1850,2,300.00,21,2994,NULL),(1851,1,595.83,22,2995,NULL),(1852,2,300.00,22,2995,NULL),(1868,2,300.00,4,3020,NULL),(1869,2,300.00,5,3021,NULL),(1870,2,300.00,6,3022,NULL),(1871,2,300.00,7,3023,NULL),(1872,3,1000.00,7,3023,NULL),(1873,1,550.00,2,3028,NULL),(1874,2,300.00,2,3028,NULL),(1875,2,300.00,19,3032,NULL),(1876,3,500.00,9,3033,NULL),(1877,2,300.00,10,3034,NULL),(1878,1,595.83,11,3035,NULL),(1879,1,550.00,1,3037,NULL),(1880,2,300.00,21,3040,NULL),(1881,1,595.83,22,3041,NULL),(1882,2,300.00,22,3041,NULL),(1883,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deductions_lookup`
--

DROP TABLE IF EXISTS `deductions_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deductions_lookup` (
  `id` int NOT NULL,
  `de_id` int DEFAULT '0',
  `de_name` varchar(255) DEFAULT NULL,
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `de_id` (`de_id`),
  KEY `id21` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deductions_lookup`
--

LOCK TABLES `deductions_lookup` WRITE;
/*!40000 ALTER TABLE `deductions_lookup` DISABLE KEYS */;
INSERT INTO `deductions_lookup` VALUES (1,1,'401K',_binary '\0',NULL),(2,0,'Medical',_binary '\0',NULL),(3,0,'Cash Advance',_binary '\0',NULL);
/*!40000 ALTER TABLE `deductions_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivinglicence`
--

DROP TABLE IF EXISTS `drivinglicence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivinglicence` (
  `id` int NOT NULL,
  `dlnumber` varchar(255) DEFAULT NULL,
  `expiry date` date DEFAULT NULL,
  `dlcopycollected` bit(2) NOT NULL DEFAULT b'0',
  `dl state` varchar(255) DEFAULT NULL,
  `addressline1` varchar(255) DEFAULT NULL,
  `addressline2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  `employeeid` int DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid11` (`employeeid`),
  KEY `employeesdl` (`employeeid`),
  KEY `employeesdl1` (`employeeid`),
  KEY `zipcode` (`zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivinglicence`
--

LOCK TABLES `drivinglicence` WRITE;
/*!40000 ALTER TABLE `drivinglicence` DISABLE KEYS */;
INSERT INTO `drivinglicence` VALUES (1,'918260','2022-05-21',_binary '','TX','commerce St','22','Dallas','Texas','75036',_binary '\0',1,NULL),(2,'99998','2023-03-31',_binary '','TX','99','88','Frisco','TX','75036',_binary '',2,NULL),(3,'758595','2022-12-31',_binary '',NULL,'77','77','Dallas','TX','75036',_binary '\0',3,NULL);
/*!40000 ALTER TABLE `drivinglicence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eadinfo`
--

DROP TABLE IF EXISTS `eadinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eadinfo` (
  `id` int NOT NULL,
  `employeeid` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `employeeid10` (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eadinfo`
--

LOCK TABLES `eadinfo` WRITE;
/*!40000 ALTER TABLE `eadinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `eadinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeecash`
--

DROP TABLE IF EXISTS `employeecash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeecash` (
  `id` int NOT NULL,
  `employeeid` int DEFAULT '0',
  `cashgivendate` date DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `cashamount` decimal(19,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `employeeid13` (`employeeid`),
  KEY `employeesemployeecash` (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecash`
--

LOCK TABLES `employeecash` WRITE;
/*!40000 ALTER TABLE `employeecash` DISABLE KEYS */;
INSERT INTO `employeecash` VALUES (1,1,NULL,NULL,15000.00),(2,2,NULL,NULL,0.00);
/*!40000 ALTER TABLE `employeecash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeoverhead`
--

DROP TABLE IF EXISTS `employeeoverhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeoverhead` (
  `id` int NOT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `invoicedescription` varchar(255) DEFAULT NULL,
  `notes` longtext,
  `amount` decimal(19,2) DEFAULT '0.00',
  `expensecategoryid` int DEFAULT '0',
  `paidamount` decimal(19,2) DEFAULT '0.00',
  `paiddate` date DEFAULT NULL,
  `paidby` varchar(255) DEFAULT NULL,
  `paymenttype` int DEFAULT '0',
  `paymentconfirmation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid16` (`employeeid`),
  KEY `employeesemployeeoverhead` (`employeeid`),
  KEY `expensecategories_lookupemployeeoverhead` (`expensecategoryid`),
  KEY `expensecategoryid1` (`expensecategoryid`),
  CONSTRAINT `expensecategories_lookupemployeeoverhead1` FOREIGN KEY (`expensecategoryid`) REFERENCES `admin_expensecategories_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeoverhead`
--

LOCK TABLES `employeeoverhead` WRITE;
/*!40000 ALTER TABLE `employeeoverhead` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeoverhead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeid` int NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `commonname` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `workauthstatus` int DEFAULT '0',
  PRIMARY KEY (`employeeid`),
  KEY `employeeid2` (`employeeid`),
  KEY `workauthstatuslookupemployees` (`workauthstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Krishna','mellamarthy@gmail.com','7327818702','Mellamarthy',NULL,'Krishna Mellamarthy','446-13-6792',NULL),(2,'Mahesh','mahesh@probpm.com','123456789','Dacharla',NULL,'Mahesh Dacharla','734-64-5360',NULL),(3,'Arshiya Hayatkhan',NULL,NULL,'Pathan',NULL,'Arshiya Hayatkhan Pathan','122-37-3284',NULL),(4,'Arun Kumar',NULL,NULL,'Vasam',NULL,'Arun Kumar Vasam','35131437',NULL),(5,'Raghuveer',NULL,NULL,'Aelgani',NULL,'Raghuveer Aelgani','824-17-9954',NULL),(6,'Vijay Sena Reddy',NULL,NULL,'Banala',NULL,'Vijay Sena Reddy Banala','219-93-5555',NULL),(7,'Ganesh',NULL,NULL,'Bandi',NULL,'Ganesh Bandi','802-46-1811',NULL),(8,'Pramod',NULL,NULL,'Bathini',NULL,'Pramod Bathini','878-29-6353',NULL),(9,'NAVEEN KUMAR',NULL,NULL,'KOTHAPALLI',NULL,'NAVEEN KUMAR KOTHAPALLI','769-06-5903',NULL),(10,'Srinivasa Shatanand',NULL,NULL,'Mahavratayajula',NULL,'Srinivasa Shatanand Mahavratayajula','677-99-1589',NULL),(11,'Pravallika',NULL,NULL,'Mannem',NULL,'Pravallika Mannem','737-33-6410',NULL),(12,'Abhinav',NULL,NULL,'Mellamarthy',NULL,'Abhinav Mellamarthy','140-19-5529',NULL),(13,'AKHILA',NULL,NULL,'BEZAWADA',NULL,'AKHILA BEZAWADA','775-93-1483',NULL),(14,'Urmila',NULL,NULL,'Bingi',NULL,'Urmila Bingi','745-30-6852',NULL),(15,'Vanitha',NULL,NULL,'Boreddy',NULL,'Vanitha Boreddy','780-83-7320',NULL),(16,'Rajesh',NULL,NULL,'Daruvuri',NULL,'Rajesh Daruvuri','860-94-8579',NULL),(17,'SURAJ K',NULL,NULL,'GUMMARAJU',NULL,'SURAJ K GUMMARAJU','031-91-3340',NULL),(18,'Saarthak',NULL,NULL,'Joshi',NULL,'Saarthak Joshi','077-21-4741',NULL),(19,'Pramod',NULL,NULL,'Kambhampati',NULL,'Pramod Kambhampati','716-36-8222',NULL),(20,'Sai Lakshmi Praveena',NULL,NULL,'Rayapureddi',NULL,'Sai Lakshmi Praveena Rayapureddi','478899809',NULL),(21,'Rakesh',NULL,NULL,'Velpula',NULL,'Rakesh Velpula','184-19-3790',NULL),(22,'Mallikharjun',NULL,NULL,'Yarapathineni',NULL,'Mallikharjun Yarapathineni','374-49-1898',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employmentdetails`
--

DROP TABLE IF EXISTS `employmentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employmentdetails` (
  `id` int NOT NULL,
  `joiningdate` date DEFAULT NULL,
  `terminationdate` date DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `offerletter` bit(2) NOT NULL DEFAULT b'0',
  `employmentagreement` bit(2) NOT NULL DEFAULT b'0',
  `jobduties` longtext,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid9` (`employeeid`),
  KEY `employeesemploymentdates` (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employmentdetails`
--

LOCK TABLES `employmentdetails` WRITE;
/*!40000 ALTER TABLE `employmentdetails` DISABLE KEYS */;
INSERT INTO `employmentdetails` VALUES (1,'2021-08-20',NULL,1,_binary '\0',_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `employmentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immigrationdetails`
--

DROP TABLE IF EXISTS `immigrationdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `immigrationdetails` (
  `id` int NOT NULL,
  `validfrom` date DEFAULT NULL,
  `validto` date DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `immigrationtype` int DEFAULT '0',
  `wacardnumber` varchar(255) DEFAULT NULL,
  `i9` bit(2) NOT NULL DEFAULT b'0',
  `everify` bit(2) NOT NULL DEFAULT b'0',
  `aliennumber` varchar(255) DEFAULT NULL,
  `everifydoneby` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `i94` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid15` (`employeeid`),
  KEY `employeesimmigrationdetails` (`employeeid`),
  KEY `immigrationtypeimmigrationdetails` (`immigrationtype`),
  CONSTRAINT `immigrationtypeimmigrationdetails1` FOREIGN KEY (`immigrationtype`) REFERENCES `immigrationtype_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immigrationdetails`
--

LOCK TABLES `immigrationdetails` WRITE;
/*!40000 ALTER TABLE `immigrationdetails` DISABLE KEYS */;
INSERT INTO `immigrationdetails` VALUES (1,'2021-12-05','2023-01-31',1,1,NULL,_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `immigrationdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immigrationtype_lookup`
--

DROP TABLE IF EXISTS `immigrationtype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `immigrationtype_lookup` (
  `id` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immigrationtype_lookup`
--

LOCK TABLES `immigrationtype_lookup` WRITE;
/*!40000 ALTER TABLE `immigrationtype_lookup` DISABLE KEYS */;
INSERT INTO `immigrationtype_lookup` VALUES (1,'* T',_binary '\0'),(2,'opt',_binary '\0'),(3,'983',_binary '\0'),(4,'* TRIAL * ',_binary '\0'),(5,'citizen',_binary '\0');
/*!40000 ALTER TABLE `immigrationtype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_type_lookup`
--

DROP TABLE IF EXISTS `insurance_type_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_type_lookup` (
  `id` int NOT NULL,
  `ins_name` varchar(255) DEFAULT NULL,
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `id12` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_type_lookup`
--

LOCK TABLES `insurance_type_lookup` WRITE;
/*!40000 ALTER TABLE `insurance_type_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance_type_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurancetracker`
--

DROP TABLE IF EXISTS `insurancetracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurancetracker` (
  `id` int NOT NULL,
  `insurance_type` int DEFAULT '0',
  `amount` decimal(19,2) DEFAULT '0.00',
  `poid` int DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`poid`),
  KEY `immigrationtype_lookupinsurancetracker` (`insurance_type`),
  KEY `purchaseorderinsurancetracker` (`poid`),
  CONSTRAINT `immigrationtype_lookupinsurancetracker1` FOREIGN KEY (`insurance_type`) REFERENCES `immigrationtype_lookup` (`id`),
  CONSTRAINT `purchaseorderinsurancetracker1` FOREIGN KEY (`poid`) REFERENCES `purchaseorder` (`poid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurancetracker`
--

LOCK TABLES `insurancetracker` WRITE;
/*!40000 ALTER TABLE `insurancetracker` DISABLE KEYS */;
INSERT INTO `insurancetracker` VALUES (1,NULL,50.00,1,NULL);
/*!40000 ALTER TABLE `insurancetracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_status_lookup`
--

DROP TABLE IF EXISTS `inv_status_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inv_status_lookup` (
  `id` int NOT NULL,
  `statustype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_status_lookup`
--

LOCK TABLES `inv_status_lookup` WRITE;
/*!40000 ALTER TABLE `inv_status_lookup` DISABLE KEYS */;
INSERT INTO `inv_status_lookup` VALUES (1,'* TRIAL *'),(2,'* TR');
/*!40000 ALTER TABLE `inv_status_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invlinetype_lookup`
--

DROP TABLE IF EXISTS `invlinetype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invlinetype_lookup` (
  `id` int NOT NULL,
  `inv_linetype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invlinetype_lookup`
--

LOCK TABLES `invlinetype_lookup` WRITE;
/*!40000 ALTER TABLE `invlinetype_lookup` DISABLE KEYS */;
INSERT INTO `invlinetype_lookup` VALUES (1,'Regular'),(2,'OverTime'),(3,'Expenses');
/*!40000 ALTER TABLE `invlinetype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceexcesspayments`
--

DROP TABLE IF EXISTS `invoiceexcesspayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoiceexcesspayments` (
  `id` int NOT NULL,
  `bankcustomerpmtid` int DEFAULT NULL,
  `excessamount` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bankcustomerpaymentsinvoiceexcesspayments` (`bankcustomerpmtid`),
  KEY `bankcustomerpmtid1` (`bankcustomerpmtid`),
  KEY `id11` (`id`),
  CONSTRAINT `bankcustomerpaymentsinvoiceexcesspayments1` FOREIGN KEY (`bankcustomerpmtid`) REFERENCES `bankcustomerpayments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceexcesspayments`
--

LOCK TABLES `invoiceexcesspayments` WRITE;
/*!40000 ALTER TABLE `invoiceexcesspayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoiceexcesspayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicefreq_lookup`
--

DROP TABLE IF EXISTS `invoicefreq_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicefreq_lookup` (
  `invfreq_id` int NOT NULL,
  `invoicefreq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invfreq_id`),
  KEY `invfreq_id` (`invfreq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicefreq_lookup`
--

LOCK TABLES `invoicefreq_lookup` WRITE;
/*!40000 ALTER TABLE `invoicefreq_lookup` DISABLE KEYS */;
INSERT INTO `invoicefreq_lookup` VALUES (1,'Weekly'),(2,'Bi-Weekly'),(3,'Monthly');
/*!40000 ALTER TABLE `invoicefreq_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicelineitems`
--

DROP TABLE IF EXISTS `invoicelineitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicelineitems` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT '0',
  `numhours` double DEFAULT '0',
  `rate` decimal(19,2) DEFAULT '0.00',
  `description` varchar(255) DEFAULT NULL,
  `linetotal` decimal(19,2) DEFAULT '0.00',
  `taxamount` decimal(19,2) DEFAULT '0.00',
  `servicestartdate` date DEFAULT NULL,
  `serviceenddate` date DEFAULT NULL,
  `inv_linetype` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `invoicesinvoicelineitems` (`invoice_id`),
  KEY `numhours` (`numhours`),
  KEY `rateid` (`rate`),
  CONSTRAINT `invoicesinvoicelineitems1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicelineitems`
--

LOCK TABLES `invoicelineitems` WRITE;
/*!40000 ALTER TABLE `invoicelineitems` DISABLE KEYS */;
INSERT INTO `invoicelineitems` VALUES (390,429,35,20.00,NULL,700.00,0.00,'2023-12-01','2023-12-02',1),(391,429,40,20.00,NULL,800.00,0.00,'2023-12-01','2023-12-02',NULL),(392,429,40,20.00,NULL,800.00,0.00,'2023-12-01','2023-12-02',NULL),(393,429,40,20.00,NULL,800.00,0.00,'2023-12-01','2023-12-02',NULL),(394,429,24,20.00,NULL,480.00,0.00,'2023-12-01','2023-12-02',NULL),(395,429,15,20.00,NULL,300.00,0.00,'2023-12-01','2023-12-02',NULL),(396,430,35,20.00,NULL,700.00,0.00,'2024-01-01','2024-01-06',1),(397,430,40,20.00,NULL,800.00,0.00,'2024-01-07','2024-01-13',1),(398,430,40,20.00,NULL,800.00,0.00,'2024-01-14','2024-01-20',1),(399,430,40,20.00,NULL,800.00,0.00,'2024-01-21','2024-01-27',1),(400,430,24,20.00,NULL,480.00,0.00,'2024-01-28','2024-01-31',1),(401,430,15,20.00,NULL,300.00,0.00,'2024-02-01','2024-02-03',1),(402,432,35,20.00,NULL,700.00,0.00,'2024-02-04','2024-02-10',1),(403,432,40,20.00,NULL,800.00,0.00,'2024-02-11','2024-02-17',1),(404,432,40,20.00,NULL,800.00,0.00,'2024-02-18','2024-02-24',1),(405,432,32,20.00,NULL,640.00,0.00,'2024-02-25','2024-02-29',1),(406,442,16,110.00,NULL,1760.00,0.00,'2024-02-01','2024-02-03',1),(407,443,40,110.00,NULL,4400.00,0.00,'2024-02-04','2024-02-10',1),(408,444,40,110.00,NULL,4400.00,0.00,'2024-02-11','2024-02-17',1),(409,445,40,110.00,NULL,4400.00,0.00,'2024-02-18','2024-02-24',1),(410,446,32,110.00,NULL,3520.00,0.00,'2024-02-25','2024-02-29',1),(411,447,40,110.00,NULL,4400.00,0.00,'2024-01-01','2024-01-06',1),(412,448,40,110.00,NULL,4400.00,0.00,'2024-01-07','2024-01-13',1),(413,449,40,110.00,NULL,4400.00,0.00,'2024-01-14','2024-01-20',1),(414,450,40,110.00,NULL,4400.00,0.00,'2024-01-21','2024-01-27',1),(415,451,24,110.00,NULL,2640.00,0.00,'2024-01-28','2024-01-31',1),(416,452,32,110.00,NULL,3520.00,0.00,'2024-09-01','2024-09-07',1),(417,453,40,110.00,NULL,4400.00,0.00,'2024-09-08','2024-09-14',1),(418,454,40,110.00,NULL,4400.00,0.00,'2024-09-15','2024-09-21',1),(419,455,40,110.00,NULL,4400.00,0.00,'2024-09-22','2024-09-28',1),(420,456,8,110.00,NULL,880.00,0.00,'2024-09-29','2024-09-30',1),(421,457,8,110.00,NULL,880.00,0.00,'2024-11-01','2024-11-02',1),(422,458,40,110.00,NULL,4400.00,0.00,'2024-11-03','2024-11-09',1),(423,459,40,30.00,NULL,1200.00,0.00,'2024-01-01','2024-01-06',1),(424,459,40,30.00,NULL,1200.00,0.00,'2024-01-07','2024-01-13',1);
/*!40000 ALTER TABLE `invoicelineitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicepayments`
--

DROP TABLE IF EXISTS `invoicepayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicepayments` (
  `id` int NOT NULL,
  `pmt_amount` decimal(19,2) DEFAULT '0.00',
  `inv_id` int DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  `bankcustomerpmtid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bankcustomerpaymentsinvoicepayments` (`bankcustomerpmtid`),
  KEY `bankcustomerpmtid` (`bankcustomerpmtid`),
  KEY `id` (`id`),
  KEY `inv_id` (`inv_id`),
  KEY `invoicesinvoicepayments` (`inv_id`),
  CONSTRAINT `bankcustomerpaymentsinvoicepayments1` FOREIGN KEY (`bankcustomerpmtid`) REFERENCES `bankcustomerpayments` (`id`),
  CONSTRAINT `invoicesinvoicepayments1` FOREIGN KEY (`inv_id`) REFERENCES `invoices` (`inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicepayments`
--

LOCK TABLES `invoicepayments` WRITE;
/*!40000 ALTER TABLE `invoicepayments` DISABLE KEYS */;
INSERT INTO `invoicepayments` VALUES (9,0.00,431,NULL,22),(10,0.00,431,NULL,25),(11,500.00,431,NULL,31);
/*!40000 ALTER TABLE `invoicepayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `inv_id` int NOT NULL,
  `inv_generateddate` date DEFAULT NULL,
  `inv_duedate` date DEFAULT NULL,
  `employeeid` int DEFAULT NULL,
  `poid` int DEFAULT '0',
  `inv_lastupdatedon` date DEFAULT NULL,
  `inv_lastupdatedby` int DEFAULT NULL,
  `inv_sentdate` date DEFAULT NULL,
  `verifiedon` date DEFAULT NULL,
  `verifiedby` int DEFAULT NULL,
  `isincominginvoice` bit(2) NOT NULL DEFAULT b'0',
  `inv_notes` longtext,
  `inv_totalamount` decimal(19,2) DEFAULT '0.00',
  `inv_auditnotes` longtext,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`inv_id`),
  KEY `administrativestaffinvoices` (`verifiedby`),
  KEY `administrativestaffinvoices1` (`verifiedby`),
  KEY `employeeid8` (`employeeid`),
  KEY `employeesinvoices` (`employeeid`),
  KEY `inv_status_lookupinvoices` (`status`),
  KEY `projectid1` (`poid`),
  KEY `purchaseorderinvoices` (`poid`),
  CONSTRAINT `administrativestaffinvoices11` FOREIGN KEY (`verifiedby`) REFERENCES `administrativestaff` (`id`),
  CONSTRAINT `administrativestaffinvoices2` FOREIGN KEY (`verifiedby`) REFERENCES `administrativestaff` (`id`),
  CONSTRAINT `inv_status_lookupinvoices1` FOREIGN KEY (`status`) REFERENCES `inv_status_lookup` (`id`),
  CONSTRAINT `purchaseorderinvoices1` FOREIGN KEY (`poid`) REFERENCES `purchaseorder` (`poid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (127,'2023-12-30','2023-12-31',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL,NULL,1),(429,'2024-01-26','2024-01-27',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(430,'2024-01-26','2024-01-27',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(431,'2024-01-26','2024-01-27',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(432,'2024-01-29','2024-01-30',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(433,'2024-01-29','2024-01-30',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(434,'2024-01-29','2024-01-30',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(435,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(436,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(437,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(438,'2024-01-30','2024-01-31',1,6,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(439,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(440,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(441,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(442,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(443,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(444,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(445,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(446,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(447,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(448,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(449,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(450,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(451,'2024-01-30','2024-01-31',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(452,'2024-01-31','2024-02-01',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(453,'2024-01-31','2024-02-01',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(454,'2024-01-31','2024-02-01',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(455,'2024-01-31','2024-02-01',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(456,'2024-01-31','2024-02-01',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(457,'2024-01-31','2024-02-01',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1),(458,'2024-02-01','2024-02-02',1,1,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,2),(459,'2024-02-02','2024-02-04',2,2,NULL,NULL,NULL,NULL,NULL,_binary '\0',NULL,0.00,NULL,1);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lca`
--

DROP TABLE IF EXISTS `lca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lca` (
  `id` int NOT NULL,
  `lcaid` varchar(255) DEFAULT NULL,
  `lcasalary` int DEFAULT '0',
  `lcastatus` varchar(255) DEFAULT NULL,
  `lcaapplieddate` date DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `trial_lastupdatedby_7` varchar(255) DEFAULT NULL,
  `lastupdatedon` date DEFAULT NULL,
  `lockedby` varchar(255) DEFAULT NULL,
  `lockedon` date DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid12` (`employeeid`),
  KEY `employeeslca` (`employeeid`),
  KEY `lcaid` (`lcaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lca`
--

LOCK TABLES `lca` WRITE;
/*!40000 ALTER TABLE `lca` DISABLE KEYS */;
/*!40000 ALTER TABLE `lca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lcaaddress`
--

DROP TABLE IF EXISTS `lcaaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lcaaddress` (
  `id` int NOT NULL,
  `lcaid` int DEFAULT '0',
  `line-1` varchar(255) DEFAULT NULL,
  `line-2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid5` (`lcaid`),
  KEY `lcalcaaddress` (`lcaid`),
  CONSTRAINT `lcalcaaddress1` FOREIGN KEY (`lcaid`) REFERENCES `lca` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcaaddress`
--

LOCK TABLES `lcaaddress` WRITE;
/*!40000 ALTER TABLE `lcaaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `lcaaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msacontract`
--

DROP TABLE IF EXISTS `msacontract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msacontract` (
  `id` int NOT NULL,
  `msasigneddate` date DEFAULT NULL,
  `msanotes` varchar(255) DEFAULT NULL,
  `msanonsolicitdays` int DEFAULT '0',
  `msanoncompetedays` int DEFAULT '0',
  `msacountersigneddate` date DEFAULT NULL,
  `vendorid` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `customerid2` (`vendorid`),
  KEY `vendorsmsacontract` (`vendorid`),
  CONSTRAINT `vendorsmsacontract1` FOREIGN KEY (`vendorid`) REFERENCES `vendors` (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msacontract`
--

LOCK TABLES `msacontract` WRITE;
/*!40000 ALTER TABLE `msacontract` DISABLE KEYS */;
INSERT INTO `msacontract` VALUES (1,'2023-11-09','yes',1,2,'2023-11-16',2),(2,'2023-11-16','* T',2,2,'2023-11-16',1);
/*!40000 ALTER TABLE `msacontract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msyscompacterror`
--

DROP TABLE IF EXISTS `msyscompacterror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msyscompacterror` (
  `errorcode` int DEFAULT NULL,
  `errordescription` longtext,
  `errorrecid` longblob,
  `errortable` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msyscompacterror`
--

LOCK TABLES `msyscompacterror` WRITE;
/*!40000 ALTER TABLE `msyscompacterror` DISABLE KEYS */;
INSERT INTO `msyscompacterror` VALUES (-1206,'* TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TR',_binary '.±\0','* TRIAL * T'),(-1206,'* TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TRIAL * TR',_binary '\0\ä\0','MSysNameMap'),(-1206,'Could not find field \'Description\'.',NULL,'f_invoice'),(-1206,'* TRIAL * TRIAL * TRIAL * TRIAL * T',NULL,'subf_INV'),(-1206,'* TRIAL * TRIAL * TRIAL * TRIAL * T',NULL,'subf_timesheet');
/*!40000 ALTER TABLE `msyscompacterror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officeexpenses`
--

DROP TABLE IF EXISTS `officeexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `officeexpenses` (
  `id` int NOT NULL,
  `expensedate` date DEFAULT NULL,
  `expenseamount` decimal(19,2) DEFAULT '0.00',
  `categoryid` int DEFAULT '0',
  `comments` longtext,
  PRIMARY KEY (`id`),
  KEY `expensecategoriesmasterofficeexpenses` (`categoryid`),
  CONSTRAINT `expensecategoriesmasterofficeexpenses1` FOREIGN KEY (`categoryid`) REFERENCES `admin_expensecategories_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officeexpenses`
--

LOCK TABLES `officeexpenses` WRITE;
/*!40000 ALTER TABLE `officeexpenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `officeexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passport` (
  `id` int NOT NULL,
  `passportnumber` varchar(255) DEFAULT NULL,
  `passport expiry date` date DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `addressline1` varchar(255) DEFAULT NULL,
  `addressline2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postalcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid14` (`employeeid`),
  KEY `employeespassport` (`employeeid`),
  KEY `postalcode` (`postalcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paste errors`
--

DROP TABLE IF EXISTS `paste errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paste errors` (
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paste errors`
--

LOCK TABLES `paste errors` WRITE;
/*!40000 ALTER TABLE `paste errors` DISABLE KEYS */;
INSERT INTO `paste errors` VALUES ('Michigan'),('Minnesota'),('Mississippi'),('* TRIAL '),('Montana'),('Nebraska'),('* TRIA'),('New Hampshire'),('New Jersey'),('New Mexico'),('New York'),('North Carolina'),('North Dakota'),('Ohio'),('Oklahoma'),('* TRIA'),('Pennsylvania'),('* TRIAL * TR'),('South Carolina'),('South Dakota'),('Tennessee'),('* TRI'),('* TR'),('Vermont'),('Virginia'),('* TRIAL * '),('* TRIAL * TRI'),('Wisconsin'),('* TRIAL');
/*!40000 ALTER TABLE `paste errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paycheckdetails`
--

DROP TABLE IF EXISTS `paycheckdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paycheckdetails` (
  `id` int NOT NULL,
  `employeeid` int DEFAULT '0',
  `grosssalary` decimal(19,2) DEFAULT '0.00',
  `employertaxestotal` decimal(19,2) DEFAULT '0.00',
  `netpay` decimal(19,2) DEFAULT '0.00',
  `payperiodstart` date DEFAULT NULL,
  `payperiodend` date DEFAULT NULL,
  `comments` longtext,
  `direct` bit(2) NOT NULL DEFAULT b'0',
  `runid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid17` (`employeeid`),
  KEY `runid` (`runid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paycheckdetails`
--

LOCK TABLES `paycheckdetails` WRITE;
/*!40000 ALTER TABLE `paycheckdetails` DISABLE KEYS */;
INSERT INTO `paycheckdetails` VALUES (2973,3,11781.50,901.28,7910.33,'2023-10-01','2023-10-31',NULL,_binary '\0',16),(2974,4,10833.33,756.62,7587.12,'2023-10-01','2023-10-31',NULL,_binary '',16),(2975,5,7836.42,527.36,5086.56,'2023-10-01','2023-10-31',NULL,_binary '',16),(2976,6,7836.42,497.89,5671.98,'2023-10-01','2023-10-31',NULL,_binary '',16),(2977,7,6667.00,485.43,3797.39,'2023-10-01','2023-10-31',NULL,_binary '',16),(2978,8,9670.25,739.78,7393.76,'2023-10-01','2023-10-31',NULL,_binary '',16),(2979,13,8242.00,698.06,6443.21,'2023-10-01','2023-10-31',NULL,_binary '\0',16),(2980,14,7100.00,543.15,5639.81,'2023-10-01','2023-10-31',NULL,_binary '',16),(2981,15,10000.00,765.00,7662.00,'2023-10-01','2023-10-31',NULL,_binary '',16),(2982,2,10000.00,746.43,4096.74,'2023-10-01','2023-10-31',NULL,_binary '',16),(2983,16,3300.00,252.45,2671.82,'2023-10-01','2023-10-31',NULL,_binary '',16),(2984,17,8242.00,630.51,7186.12,'2023-10-01','2023-10-31',NULL,_binary '',16),(2985,18,5622.92,430.15,4600.69,'2023-10-01','2023-10-31',NULL,_binary '',16),(2986,19,6667.00,491.46,5475.61,'2023-10-01','2023-10-31',NULL,_binary '',16),(2987,9,5000.00,24.40,4044.96,'2023-10-01','2023-10-31',NULL,_binary '\0',16),(2988,10,10833.33,804.16,8011.88,'2023-10-01','2023-10-31',NULL,_binary '\0',16),(2989,11,10833.33,828.75,4535.54,'2023-10-01','2023-10-31',NULL,_binary '',16),(2990,12,4500.00,385.20,4155.75,'2023-10-01','2023-10-31',NULL,_binary '\0',16),(2991,1,10000.00,765.00,4109.79,'2023-10-01','2023-10-31',NULL,_binary '',16),(2992,3,NULL,0.00,0.00,'2023-10-01','2023-10-31',NULL,_binary '',16),(2993,20,6666.67,519.23,5670.34,'2023-10-01','2023-10-31',NULL,_binary '\0',16),(2994,21,6169.00,399.80,4321.53,'2023-10-01','2023-10-31',NULL,_binary '',16),(2995,22,10833.33,869.15,1575.84,'2023-10-01','2023-10-31',NULL,_binary '',16),(3019,3,11781.50,901.28,7910.33,'2023-10-01','2023-10-31',NULL,_binary '\0',23),(3020,4,10833.33,756.62,7587.12,'2023-10-01','2023-10-31',NULL,_binary '',14),(3021,5,7836.42,527.36,5086.56,'2023-10-01','2023-10-31',NULL,_binary '',13),(3022,6,7836.42,497.89,5671.98,'2023-10-01','2023-10-31',NULL,_binary '',13),(3023,7,6667.00,485.43,3797.39,'2023-10-01','2023-10-31',NULL,_binary '',13),(3024,8,9670.25,739.78,7393.76,'2023-10-01','2023-10-31',NULL,_binary '',13),(3025,13,8242.00,698.06,6443.21,'2023-10-01','2023-10-31',NULL,_binary '\0',13),(3026,14,7100.00,543.15,5639.81,'2023-10-01','2023-10-31',NULL,_binary '',13),(3027,15,10000.00,765.00,7662.00,'2023-10-01','2023-10-31',NULL,_binary '',13),(3028,2,10000.00,746.43,4096.74,'2023-10-01','2023-10-31',NULL,_binary '',13),(3029,16,3300.00,252.45,2671.82,'2023-10-01','2023-10-31',NULL,_binary '',13),(3030,17,8242.00,630.51,7186.12,'2023-10-01','2023-10-31',NULL,_binary '',13),(3031,18,5622.92,430.15,4600.69,'2023-10-01','2023-10-31',NULL,_binary '',13),(3032,19,6667.00,491.46,5475.61,'2023-10-01','2023-10-31',NULL,_binary '',13),(3033,9,5000.00,24.40,4044.96,'2023-10-01','2023-10-31',NULL,_binary '\0',13),(3034,10,10833.33,804.16,8011.88,'2023-10-01','2023-10-31',NULL,_binary '\0',13),(3035,11,10833.33,828.75,4535.54,'2023-10-01','2023-10-31',NULL,_binary '',13),(3036,12,4500.00,385.20,4155.75,'2023-10-01','2023-10-31',NULL,_binary '\0',13),(3037,1,10000.00,765.00,4109.79,'2023-10-01','2023-10-31',NULL,_binary '',13),(3038,3,NULL,0.00,0.00,'2023-10-01','2023-10-31',NULL,_binary '',13),(3039,20,6666.67,519.23,5670.34,'2023-10-01','2023-10-31',NULL,_binary '\0',13),(3040,21,6169.00,399.80,4321.53,'2023-10-01','2023-10-31',NULL,_binary '',13),(3041,22,10833.33,869.15,1575.84,'2023-10-01','2023-10-31',NULL,_binary '',13);
/*!40000 ALTER TABLE `paycheckdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentlinklineitem`
--

DROP TABLE IF EXISTS `paymentlinklineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentlinklineitem` (
  `id` int NOT NULL,
  `paymentid` int DEFAULT NULL,
  `paylineitemid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id28` (`id`),
  KEY `paylineitemid` (`paylineitemid`),
  KEY `paymentid` (`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentlinklineitem`
--

LOCK TABLES `paymentlinklineitem` WRITE;
/*!40000 ALTER TABLE `paymentlinklineitem` DISABLE KEYS */;
INSERT INTO `paymentlinklineitem` VALUES (1,1,2),(2,5,1),(3,1,3),(4,5,2);
/*!40000 ALTER TABLE `paymentlinklineitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttype_lookup`
--

DROP TABLE IF EXISTS `paymenttype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttype_lookup` (
  `id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttype_lookup`
--

LOCK TABLES `paymenttype_lookup` WRITE;
/*!40000 ALTER TABLE `paymenttype_lookup` DISABLE KEYS */;
INSERT INTO `paymenttype_lookup` VALUES (1,'None',NULL),(2,'* TRIAL * TRIA',NULL),(3,'Wire',NULL),(4,'* TRI',NULL);
/*!40000 ALTER TABLE `paymenttype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorder` (
  `poid` int NOT NULL,
  `potitle` varchar(255) DEFAULT NULL,
  `porate` decimal(19,2) DEFAULT '0.00',
  `povalidfrom` date DEFAULT NULL,
  `povalidto` date DEFAULT NULL,
  `ispocountersigned` bit(2) NOT NULL DEFAULT b'0',
  `poworkaddress1` varchar(255) DEFAULT NULL,
  `poworkaddress2` varchar(255) DEFAULT NULL,
  `poworkcity` varchar(255) DEFAULT NULL,
  `poworkstate` varchar(255) DEFAULT NULL,
  `poworkzip` varchar(255) DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `customerid` int DEFAULT '0',
  `invoicefrequency` int DEFAULT '0',
  `invoiceduedatedays` int DEFAULT '0',
  `accountspayablecontactid` int DEFAULT '0',
  `isdisabled` bit(2) NOT NULL DEFAULT b'0',
  `pocomments` varchar(255) DEFAULT NULL,
  `isinvoicetermsstrict` bit(2) NOT NULL DEFAULT b'0',
  `vendorid` int DEFAULT '0',
  PRIMARY KEY (`poid`),
  KEY `accountspayablecontactid` (`accountspayablecontactid`),
  KEY `contractid` (`customerid`),
  KEY `customerspurchaseorder` (`customerid`),
  KEY `employeeid6` (`employeeid`),
  KEY `employeespurchaseorder` (`employeeid`),
  KEY `invoicefreq_lookuppurchaseorder` (`invoicefrequency`),
  KEY `vendorid` (`vendorid`),
  KEY `vendorspurchaseorder` (`vendorid`),
  CONSTRAINT `customerspurchaseorder1` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`),
  CONSTRAINT `invoicefreq_lookuppurchaseorder1` FOREIGN KEY (`invoicefrequency`) REFERENCES `invoicefreq_lookup` (`invfreq_id`),
  CONSTRAINT `vendorspurchaseorder1` FOREIGN KEY (`vendorid`) REFERENCES `vendors` (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
INSERT INTO `purchaseorder` VALUES (1,'* T',110.00,'2023-11-01','2023-11-09',_binary '\0',NULL,NULL,NULL,NULL,NULL,1,3,1,1,10,_binary '\0',NULL,_binary '\0',1),(2,'* T',30.00,'2023-11-16',NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,2,2,2,2,0,_binary '\0',NULL,_binary '\0',2),(6,'ccc',20.00,'2023-11-10','2023-11-22',_binary '\0',NULL,NULL,NULL,NULL,NULL,1,1,3,1,12,_binary '\0',NULL,_binary '\0',6);
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarydetails`
--

DROP TABLE IF EXISTS `salarydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarydetails` (
  `id` int NOT NULL,
  `employeeid` int DEFAULT NULL,
  `planname` int DEFAULT NULL,
  `totalamnt` decimal(19,2) DEFAULT NULL,
  `employercontribution` decimal(19,2) DEFAULT NULL,
  `employecontribution` decimal(19,2) DEFAULT NULL,
  `dateofenroll` date DEFAULT NULL,
  `dateoftermination` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employeeid4` (`employeeid`),
  KEY `id14` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarydetails`
--

LOCK TABLES `salarydetails` WRITE;
/*!40000 ALTER TABLE `salarydetails` DISABLE KEYS */;
INSERT INTO `salarydetails` VALUES (1,2,NULL,10000.00,765.00,765.00,NULL,NULL);
/*!40000 ALTER TABLE `salarydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarytype_lookup`
--

DROP TABLE IF EXISTS `salarytype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarytype_lookup` (
  `id` int DEFAULT NULL,
  `salarytype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarytype_lookup`
--

LOCK TABLES `salarytype_lookup` WRITE;
/*!40000 ALTER TABLE `salarytype_lookup` DISABLE KEYS */;
INSERT INTO `salarytype_lookup` VALUES (1,NULL);
/*!40000 ALTER TABLE `salarytype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_lookup`
--

DROP TABLE IF EXISTS `states_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_lookup` (
  `stateid` varchar(255) NOT NULL,
  `statename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_lookup`
--

LOCK TABLES `states_lookup` WRITE;
/*!40000 ALTER TABLE `states_lookup` DISABLE KEYS */;
INSERT INTO `states_lookup` VALUES ('	AK','Alaska'),('	CT','Connecticut'),('AL','Alabama'),('AR','Arkansas'),('AZ','* TRIAL'),('CA','California'),('CO','* TRIAL '),('DC','Columbia'),('DE','Delaware'),('FL','* TRIAL'),('GA','Georgia'),('HI','Hawaii'),('IA','Iowa'),('ID','* TRI'),('IL','Illinois'),('IN','Indiana'),('KS','Kansas'),('KY','Kentucky'),('LA','Louisiana'),('MA','* TRIAL * TRI'),('MD','* TRIAL '),('ME','Maine'),('MI','Michigan'),('MN','Minnesota'),('MO','Missouri'),('MS','* TRIAL * T'),('MT','Montana'),('NC','North Carolina'),('ND','North Dakota'),('NE','Nebraska'),('NH','New Hampshire'),('NJ','New Jersey'),('NM','* TRIAL * '),('NV','Nevada'),('NY','* TRIAL '),('OH','Ohio'),('OK','* TRIAL '),('OR','Oregon'),('PA','Pennsylvania'),('RI','* TRIAL * TR'),('SC','* TRIAL * TRIA'),('SD','South Dakota'),('TN','* TRIAL *'),('TX','Texas'),('UT','* TR'),('VA','Virginia'),('VT','Vermont'),('WA','Washington'),('WI','Wisconsin'),('WV','West Virginia'),('WY','Wyoming');
/*!40000 ALTER TABLE `states_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempimporttable`
--

DROP TABLE IF EXISTS `tempimporttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempimporttable` (
  `ssn` varchar(255) DEFAULT NULL,
  `period start` varchar(255) DEFAULT NULL,
  `period end` varchar(255) DEFAULT NULL,
  `gross` decimal(19,2) DEFAULT NULL,
  `employer taxes total` decimal(19,2) DEFAULT NULL,
  `benefit401(k)` decimal(19,2) DEFAULT NULL,
  `â”” er match` decimal(19,2) DEFAULT NULL,
  `benefitmedical` decimal(19,2) DEFAULT NULL,
  `â”” er contr` decimal(19,2) DEFAULT NULL,
  `cash advance` decimal(19,2) DEFAULT NULL,
  `401(k)` decimal(19,2) DEFAULT NULL,
  `medical` decimal(19,2) DEFAULT NULL,
  `net` decimal(19,2) DEFAULT NULL,
  `direct deposit` decimal(19,2) DEFAULT NULL,
  `run id` double DEFAULT NULL,
  `employeeid` double DEFAULT NULL,
  KEY `run id` (`run id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempimporttable`
--

LOCK TABLES `tempimporttable` WRITE;
/*!40000 ALTER TABLE `tempimporttable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempimporttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheet` (
  `id` int NOT NULL,
  `categoryid` int DEFAULT NULL,
  `invoiceid` int DEFAULT NULL,
  `employeeid` int DEFAULT NULL,
  `weekstartingdt` date DEFAULT NULL,
  `weekendingdt` date DEFAULT NULL,
  `poid` int NOT NULL,
  `verifiedby` int DEFAULT NULL,
  `verfiedon` date DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `submittedon` date DEFAULT NULL,
  `auditnotes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `administrativestafftimesheet` (`verifiedby`),
  KEY `categoryid` (`categoryid`),
  KEY `employeeid3` (`employeeid`),
  KEY `employeestimesheet` (`employeeid`),
  KEY `id13` (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `invoicestimesheet` (`invoiceid`),
  KEY `projectid` (`poid`),
  KEY `purchaseordertimesheet` (`poid`),
  KEY `usertimesheetcategorytimesheet` (`categoryid`),
  CONSTRAINT `administrativestafftimesheet1` FOREIGN KEY (`verifiedby`) REFERENCES `administrativestaff` (`id`),
  CONSTRAINT `invoicestimesheet1` FOREIGN KEY (`invoiceid`) REFERENCES `invoices` (`inv_id`),
  CONSTRAINT `purchaseordertimesheet1` FOREIGN KEY (`poid`) REFERENCES `purchaseorder` (`poid`),
  CONSTRAINT `usertimesheetcategorytimesheet1` FOREIGN KEY (`categoryid`) REFERENCES `usertimesheetcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES (107,NULL,429,1,'2023-12-01','2023-12-02',6,NULL,NULL,NULL,NULL,NULL),(136,NULL,459,2,'2024-01-01','2024-01-06',2,NULL,NULL,NULL,NULL,NULL),(137,NULL,459,2,'2024-01-07','2024-01-13',2,NULL,NULL,NULL,NULL,NULL),(138,NULL,NULL,2,'2024-01-14','2024-01-20',2,NULL,NULL,NULL,NULL,NULL),(139,NULL,NULL,2,'2024-01-21','2024-01-27',2,NULL,NULL,NULL,NULL,NULL),(140,NULL,NULL,2,'2024-01-28','2024-01-31',2,NULL,NULL,NULL,NULL,NULL),(141,NULL,430,1,'2024-01-01','2024-01-06',6,NULL,NULL,NULL,NULL,NULL),(142,NULL,430,1,'2024-01-07','2024-01-13',6,NULL,NULL,NULL,NULL,NULL),(143,NULL,430,1,'2024-01-14','2024-01-20',6,NULL,NULL,NULL,NULL,NULL),(144,NULL,430,1,'2024-01-21','2024-01-27',6,NULL,NULL,NULL,NULL,NULL),(145,NULL,430,1,'2024-01-28','2024-01-31',6,NULL,NULL,NULL,NULL,NULL),(155,NULL,432,1,'2024-02-01','2024-02-03',6,NULL,NULL,NULL,NULL,NULL),(156,NULL,432,1,'2024-02-04','2024-02-10',6,NULL,NULL,NULL,NULL,NULL),(157,NULL,432,1,'2024-02-11','2024-02-17',6,NULL,NULL,NULL,NULL,NULL),(158,NULL,432,1,'2024-02-18','2024-02-24',6,NULL,NULL,NULL,NULL,NULL),(159,NULL,432,1,'2024-02-25','2024-02-29',6,NULL,NULL,NULL,NULL,NULL),(167,NULL,NULL,1,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL),(168,NULL,NULL,1,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL),(169,NULL,NULL,1,NULL,NULL,6,NULL,NULL,NULL,NULL,NULL),(170,NULL,442,1,'2024-02-01','2024-02-03',1,NULL,NULL,NULL,NULL,NULL),(171,NULL,443,1,'2024-02-04','2024-02-10',1,NULL,NULL,NULL,NULL,NULL),(172,NULL,444,1,'2024-02-11','2024-02-17',1,NULL,NULL,NULL,NULL,NULL),(173,NULL,445,1,'2024-02-18','2024-02-24',1,NULL,NULL,NULL,NULL,NULL),(174,NULL,446,1,'2024-02-25','2024-02-29',1,NULL,NULL,NULL,NULL,NULL),(175,NULL,447,1,'2024-01-01','2024-01-06',1,NULL,NULL,NULL,NULL,NULL),(176,NULL,448,1,'2024-01-07','2024-01-13',1,NULL,NULL,NULL,NULL,NULL),(177,NULL,449,1,'2024-01-14','2024-01-20',1,NULL,NULL,NULL,NULL,NULL),(178,NULL,450,1,'2024-01-21','2024-01-27',1,NULL,NULL,NULL,NULL,NULL),(179,NULL,451,1,'2024-01-28','2024-01-31',1,NULL,NULL,NULL,NULL,NULL),(180,NULL,NULL,1,'2024-03-01','2024-03-02',6,NULL,NULL,NULL,NULL,NULL),(181,NULL,NULL,1,'2024-03-03','2024-03-09',6,NULL,NULL,NULL,NULL,NULL),(182,NULL,NULL,1,'2024-03-10','2024-03-16',6,NULL,NULL,NULL,NULL,NULL),(183,NULL,NULL,1,'2024-03-17','2024-03-23',6,NULL,NULL,NULL,NULL,NULL),(184,NULL,NULL,1,'2024-03-24','2024-03-30',6,NULL,NULL,NULL,NULL,NULL),(185,NULL,NULL,1,'2024-03-31','2024-03-31',6,NULL,NULL,NULL,NULL,NULL),(201,NULL,457,1,'2024-11-01','2024-11-02',1,NULL,NULL,NULL,NULL,NULL),(202,NULL,458,1,'2024-11-03','2024-11-09',1,NULL,NULL,NULL,NULL,NULL),(203,NULL,NULL,1,'2024-11-10','2024-11-16',1,NULL,NULL,NULL,NULL,NULL),(204,NULL,NULL,1,'2024-11-17','2024-11-23',1,NULL,NULL,NULL,NULL,NULL),(205,NULL,NULL,1,'2024-11-24','2024-11-30',1,NULL,NULL,NULL,NULL,NULL),(207,NULL,452,1,'2024-09-01','2024-09-07',1,NULL,NULL,NULL,NULL,NULL),(208,NULL,453,1,'2024-09-08','2024-09-14',1,NULL,NULL,NULL,NULL,NULL),(209,NULL,454,1,'2024-09-15','2024-09-21',1,NULL,NULL,NULL,NULL,NULL),(210,NULL,455,1,'2024-09-22','2024-09-28',1,NULL,NULL,NULL,NULL,NULL),(211,NULL,456,1,'2024-09-29','2024-09-30',1,NULL,NULL,NULL,NULL,NULL),(212,NULL,NULL,1,'2024-12-01','2024-12-07',1,NULL,NULL,NULL,NULL,NULL),(213,NULL,NULL,1,'2024-12-08','2024-12-14',1,NULL,NULL,NULL,NULL,NULL),(214,NULL,NULL,1,'2024-12-15','2024-12-21',1,NULL,NULL,NULL,NULL,NULL),(215,NULL,NULL,1,'2024-12-22','2024-12-28',1,NULL,NULL,NULL,NULL,NULL),(216,NULL,NULL,1,'2024-12-29','2024-12-31',1,NULL,NULL,NULL,NULL,NULL),(222,NULL,NULL,1,'2024-12-01','2024-12-07',6,NULL,NULL,NULL,NULL,NULL),(223,NULL,NULL,1,'2024-12-08','2024-12-14',6,NULL,NULL,NULL,NULL,NULL),(224,NULL,NULL,1,'2024-12-15','2024-12-21',6,NULL,NULL,NULL,NULL,NULL),(225,NULL,NULL,1,'2024-12-22','2024-12-28',6,NULL,NULL,NULL,NULL,NULL),(226,NULL,NULL,1,'2024-12-29','2024-12-31',6,NULL,NULL,NULL,NULL,NULL),(227,NULL,NULL,2,'2024-11-01','2024-11-02',2,NULL,NULL,NULL,NULL,NULL),(228,NULL,NULL,2,'2024-11-03','2024-11-09',2,NULL,NULL,NULL,NULL,NULL),(229,NULL,NULL,2,'2024-11-10','2024-11-16',2,NULL,NULL,NULL,NULL,NULL),(230,NULL,NULL,2,'2024-11-17','2024-11-23',2,NULL,NULL,NULL,NULL,NULL),(231,NULL,NULL,2,'2024-11-24','2024-11-30',2,NULL,NULL,NULL,NULL,NULL),(237,NULL,NULL,2,'2024-09-01','2024-09-07',2,NULL,NULL,NULL,NULL,NULL),(238,NULL,NULL,2,'2024-09-08','2024-09-14',2,NULL,NULL,NULL,NULL,NULL),(239,NULL,NULL,2,'2024-09-15','2024-09-21',2,NULL,NULL,NULL,NULL,NULL),(240,NULL,NULL,2,'2024-09-22','2024-09-28',2,NULL,NULL,NULL,NULL,NULL),(241,NULL,NULL,2,'2024-09-29','2024-09-30',2,NULL,NULL,NULL,NULL,NULL),(242,NULL,NULL,1,'2024-09-01','2024-09-07',6,NULL,NULL,NULL,NULL,NULL),(243,NULL,NULL,1,'2024-09-08','2024-09-14',6,NULL,NULL,NULL,NULL,NULL),(244,NULL,NULL,1,'2024-09-15','2024-09-21',6,NULL,NULL,NULL,NULL,NULL),(245,NULL,NULL,1,'2024-09-22','2024-09-28',6,NULL,NULL,NULL,NULL,NULL),(246,NULL,NULL,1,'2024-09-29','2024-09-30',6,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheetdetail`
--

DROP TABLE IF EXISTS `timesheetdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheetdetail` (
  `id` int NOT NULL,
  `timesheettypeid` int DEFAULT NULL,
  `sunday` double DEFAULT NULL,
  `monday` double DEFAULT NULL,
  `tuesday` double DEFAULT NULL,
  `wednesday` double DEFAULT NULL,
  `thursday` double DEFAULT NULL,
  `friday` double DEFAULT NULL,
  `saturday` double DEFAULT NULL,
  `timesheetid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id20` (`id`),
  KEY `timesheetid1` (`timesheetid`),
  KEY `timesheettimesheetdetail` (`timesheetid`),
  KEY `timesheettype_lookuptimesheetdetail` (`timesheettypeid`),
  CONSTRAINT `timesheettimesheetdetail1` FOREIGN KEY (`timesheetid`) REFERENCES `timesheet` (`id`),
  CONSTRAINT `timesheettype_lookuptimesheetdetail1` FOREIGN KEY (`timesheettypeid`) REFERENCES `timesheettype_lookup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheetdetail`
--

LOCK TABLES `timesheetdetail` WRITE;
/*!40000 ALTER TABLE `timesheetdetail` DISABLE KEYS */;
INSERT INTO `timesheetdetail` VALUES (52,1,NULL,NULL,NULL,NULL,NULL,6,6,107),(138,1,NULL,8,8,8,8,8,0,136),(139,1,0,8,8,8,8,8,0,137),(140,1,0,0,8,8,8,8,0,138),(141,3,0,3,8,8,8,8,0,139),(142,1,0,8,8,8,NULL,NULL,NULL,140),(143,2,NULL,3,8,8,8,8,0,141),(144,1,0,8,8,8,8,8,0,142),(145,1,0,0,8,8,8,8,0,143),(146,1,0,8,8,8,8,8,0,144),(147,1,0,8,8,8,NULL,NULL,NULL,145),(162,1,NULL,NULL,NULL,NULL,8,7,0,155),(163,1,0,8,8,8,8,3,0,156),(164,1,0,8,8,8,8,8,0,157),(165,1,0,8,8,8,8,8,0,158),(166,1,0,8,8,8,8,NULL,NULL,159),(174,1,NULL,NULL,NULL,NULL,8,8,0,170),(175,1,0,8,8,8,8,8,0,171),(176,1,0,8,8,8,8,8,0,172),(177,1,0,8,8,8,8,8,0,173),(178,1,0,8,8,8,8,NULL,NULL,174),(179,1,NULL,8,8,8,8,8,0,175),(180,1,0,8,8,8,8,8,0,176),(181,1,0,0,8,8,8,8,0,177),(182,1,0,8,8,8,8,8,0,178),(183,1,0,8,8,8,NULL,NULL,NULL,179),(184,3,NULL,2,NULL,NULL,NULL,NULL,NULL,179),(185,1,NULL,NULL,NULL,NULL,NULL,8,0,180),(186,1,0,8,8,8,8,8,0,181),(187,1,0,8,8,8,8,8,0,182),(188,1,0,8,8,8,8,8,0,183),(189,1,0,8,8,8,8,8,0,184),(190,1,0,NULL,NULL,NULL,NULL,NULL,NULL,185),(206,1,NULL,NULL,NULL,NULL,NULL,8,0,201),(207,1,0,8,8,8,8,8,0,202),(208,1,0,0,8,8,8,8,0,203),(209,1,0,8,8,8,8,8,0,204),(210,1,0,8,8,8,8,8,0,205),(212,1,0,8,8,0,8,8,0,207),(213,1,0,8,8,8,8,8,0,208),(214,1,0,8,8,8,8,8,0,209),(215,1,0,8,8,8,8,8,0,210),(216,1,0,8,NULL,NULL,NULL,NULL,NULL,211),(217,1,0,8,8,8,8,8,0,212),(218,1,0,8,8,8,8,8,0,213),(219,1,0,8,8,8,8,8,0,214),(220,1,0,8,8,0,8,8,0,215),(221,1,0,8,8,NULL,NULL,NULL,NULL,216),(227,1,0,8,8,8,8,8,0,222),(228,1,0,8,8,8,8,8,0,223),(229,1,0,8,8,8,8,8,0,224),(230,1,0,8,8,0,8,8,0,225),(231,1,0,8,8,NULL,NULL,NULL,NULL,226),(232,1,NULL,NULL,NULL,NULL,NULL,8,0,227),(233,1,0,8,8,8,8,8,0,228),(234,1,0,0,8,8,8,8,0,229),(235,1,0,8,8,8,8,8,0,230),(236,1,0,8,8,8,8,8,0,231),(242,1,0,8,8,0,8,8,0,237),(243,1,0,8,8,8,8,8,0,238),(244,1,0,8,8,8,8,8,0,239),(245,1,0,8,8,8,8,8,0,240),(246,1,0,8,NULL,NULL,NULL,NULL,NULL,241),(247,1,0,8,8,0,8,8,0,242),(248,1,0,8,8,8,8,8,0,243),(249,1,0,8,8,8,8,8,0,244),(250,1,0,8,8,8,8,8,0,245),(251,1,0,8,NULL,NULL,NULL,NULL,NULL,246);
/*!40000 ALTER TABLE `timesheetdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheetdocuments`
--

DROP TABLE IF EXISTS `timesheetdocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheetdocuments` (
  `id` int NOT NULL,
  `timesheetdoc` longtext,
  `timesheetid` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `timesheetid` (`timesheetid`),
  KEY `timesheettimesheetdocuments` (`timesheetid`),
  CONSTRAINT `timesheettimesheetdocuments1` FOREIGN KEY (`timesheetid`) REFERENCES `timesheet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheetdocuments`
--

LOCK TABLES `timesheetdocuments` WRITE;
/*!40000 ALTER TABLE `timesheetdocuments` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheetdocuments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheettype_lookup`
--

DROP TABLE IF EXISTS `timesheettype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheettype_lookup` (
  `id` int NOT NULL,
  `timesheettype` varchar(255) DEFAULT NULL,
  `trial_isdisabled_3` bit(2) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `id15` (`id`),
  KEY `timesheettype_lookuptimesheettype` (`timesheettype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheettype_lookup`
--

LOCK TABLES `timesheettype_lookup` WRITE;
/*!40000 ALTER TABLE `timesheettype_lookup` DISABLE KEYS */;
INSERT INTO `timesheettype_lookup` VALUES (1,'Regular',_binary '\0'),(2,'Vacation',_binary '\0'),(3,'* TRIAL ',_binary '\0');
/*!40000 ALTER TABLE `timesheettype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactiontype_lookup`
--

DROP TABLE IF EXISTS `transactiontype_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactiontype_lookup` (
  `id` int NOT NULL,
  `transactiontype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactiontype_lookuptransactiontype` (`transactiontype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiontype_lookup`
--

LOCK TABLES `transactiontype_lookup` WRITE;
/*!40000 ALTER TABLE `transactiontype_lookup` DISABLE KEYS */;
INSERT INTO `transactiontype_lookup` VALUES (1,'Check'),(2,'Transfer');
/*!40000 ALTER TABLE `transactiontype_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertimesheetcategory`
--

DROP TABLE IF EXISTS `usertimesheetcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertimesheetcategory` (
  `id` int NOT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  `employeeid` int DEFAULT '0',
  `isdisabled` bit(2) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `employeeid` (`employeeid`),
  KEY `id1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertimesheetcategory`
--

LOCK TABLES `usertimesheetcategory` WRITE;
/*!40000 ALTER TABLE `usertimesheetcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertimesheetcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `vendorid` int NOT NULL,
  `vendorname` varchar(255) DEFAULT NULL,
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  `taxid` varchar(255) DEFAULT NULL,
  `w9` bit(2) NOT NULL DEFAULT b'0',
  `addressline1` varchar(255) DEFAULT NULL,
  `addressline2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `corporationtypeid` int DEFAULT '0',
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vendorid`),
  UNIQUE KEY `customerid` (`vendorid`),
  KEY `corporationtype_lookupvendors` (`corporationtypeid`),
  KEY `corporationtypeid` (`corporationtypeid`),
  KEY `states_lookupvendors` (`state`),
  KEY `taxid` (`taxid`),
  CONSTRAINT `corporationtype_lookupvendors1` FOREIGN KEY (`corporationtypeid`) REFERENCES `corporationtype_lookup` (`trial_id_1`),
  CONSTRAINT `states_lookupvendors1` FOREIGN KEY (`state`) REFERENCES `states_lookup` (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'Kumar',_binary '','87-5897877',_binary '\0','* TRIAL ',NULL,'* ','78981','USA',1,'AR'),(2,'Pavan',_binary '','* TRIAL * ',_binary '\0','* TRIAL ',NULL,'* ','4321','USA',2,'MN'),(6,'Krishna',_binary '','78-9785490',_binary '\0','* TRIAL ',NULL,'* ','78745','USA',3,'TX'),(57,'Sai',_binary '',NULL,_binary '\0',NULL,NULL,NULL,NULL,'* T',2,NULL);
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workauthstatuslookup`
--

DROP TABLE IF EXISTS `workauthstatuslookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workauthstatuslookup` (
  `id` int NOT NULL,
  `auth_name` varchar(255) DEFAULT NULL,
  `isactive` bit(2) NOT NULL DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workauthstatuslookup`
--

LOCK TABLES `workauthstatuslookup` WRITE;
/*!40000 ALTER TABLE `workauthstatuslookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `workauthstatuslookup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 18:54:37
