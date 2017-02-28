-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: hospitalmanagement
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountant` (
  `ACCOUNTANT_ID` int(11) NOT NULL,
  `DATE` datetime DEFAULT NULL,
  `STAFF_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ACCOUNTANT_ID`),
  KEY `FKqg8l0k7h43wctsjr8tdtigkq3` (`STAFF_ID`),
  CONSTRAINT `FKqg8l0k7h43wctsjr8tdtigkq3` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountant`
--

LOCK TABLES `accountant` WRITE;
/*!40000 ALTER TABLE `accountant` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `APPOINTMENT_ID` int(11) NOT NULL,
  `DATE` datetime DEFAULT NULL,
  `CLINIC_ID` int(11) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`APPOINTMENT_ID`),
  KEY `FK66sukmiesn906c8hn0mvo839e` (`CLINIC_ID`),
  KEY `FKd8g4rpki7ljet2w76fv9929e6` (`DOCTOR_ID`),
  KEY `FKl6dsim4mjpb8ju6epxi9m1dad` (`PATIENT_ID`),
  CONSTRAINT `FK66sukmiesn906c8hn0mvo839e` FOREIGN KEY (`CLINIC_ID`) REFERENCES `clinic` (`CLINIC_ID`),
  CONSTRAINT `FKd8g4rpki7ljet2w76fv9929e6` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`DOCTOR_ID`),
  CONSTRAINT `FKl6dsim4mjpb8ju6epxi9m1dad` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `BILL_ID` int(11) NOT NULL,
  `COST` double DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BILL_ID`),
  KEY `FK4alywqti2b2njj1jliot6bjcm` (`PATIENT_ID`),
  CONSTRAINT `FK4alywqti2b2njj1jliot6bjcm` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic`
--

DROP TABLE IF EXISTS `clinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinic` (
  `CLINIC_ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NO` int(11) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CLINIC_ID`),
  KEY `FKikj7anvaiurutfn5wg4lfm5wm` (`DOCTOR_ID`),
  CONSTRAINT `FKikj7anvaiurutfn5wg4lfm5wm` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`DOCTOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic`
--

LOCK TABLES `clinic` WRITE;
/*!40000 ALTER TABLE `clinic` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `DOCTOR_ID` int(11) NOT NULL,
  `STAFF_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DOCTOR_ID`),
  KEY `FKlviy3tgbob311dtafy9cisv4g` (`STAFF_ID`),
  CONSTRAINT `FKlviy3tgbob311dtafy9cisv4g` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (26),(26),(26),(26),(26),(26),(26),(26),(26),(26);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `PATIENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PATIENT_ID`),
  KEY `FKfy08bqrcwl23nk7j7bmfy5c4m` (`USER_ID`),
  CONSTRAINT `FKfy08bqrcwl23nk7j7bmfy5c4m` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precription`
--

DROP TABLE IF EXISTS `precription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precription` (
  `PRECRIPTION_ID` int(11) NOT NULL,
  `DRUG` varchar(255) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRECRIPTION_ID`),
  KEY `FKjua7jld9brpadekp4hkcew30b` (`DOCTOR_ID`),
  KEY `FKn7qhgkuwbp4nw8th7k07a6cpp` (`PATIENT_ID`),
  CONSTRAINT `FKjua7jld9brpadekp4hkcew30b` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`DOCTOR_ID`),
  CONSTRAINT `FKn7qhgkuwbp4nw8th7k07a6cpp` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precription`
--

LOCK TABLES `precription` WRITE;
/*!40000 ALTER TABLE `precription` DISABLE KEYS */;
/*!40000 ALTER TABLE `precription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `REPORT_ID` int(11) NOT NULL,
  `COST` bit(1) DEFAULT NULL,
  `TREATMENT_STATUS` bit(1) DEFAULT NULL,
  `ACCOUNTANT_ID` int(11) DEFAULT NULL,
  `DOCTOR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`REPORT_ID`),
  KEY `FKh91cbuk8qn0cj64ux56x9ej1n` (`ACCOUNTANT_ID`),
  KEY `FKae8m9rh61vscrepccusk7ryw8` (`DOCTOR_ID`),
  CONSTRAINT `FKae8m9rh61vscrepccusk7ryw8` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`DOCTOR_ID`),
  CONSTRAINT `FKh91cbuk8qn0cj64ux56x9ej1n` FOREIGN KEY (`ACCOUNTANT_ID`) REFERENCES `accountant` (`ACCOUNTANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rl_patient_doctor`
--

DROP TABLE IF EXISTS `rl_patient_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rl_patient_doctor` (
  `DOCTOR_ID` int(11) NOT NULL,
  `PATIENT_ID` int(11) NOT NULL,
  KEY `FKjkhiegtql3937v7a0og0qxpit` (`PATIENT_ID`),
  KEY `FKfplygkq1grune15qcl22eswcx` (`DOCTOR_ID`),
  CONSTRAINT `FKfplygkq1grune15qcl22eswcx` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `doctor` (`DOCTOR_ID`),
  CONSTRAINT `FKjkhiegtql3937v7a0og0qxpit` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rl_patient_doctor`
--

LOCK TABLES `rl_patient_doctor` WRITE;
/*!40000 ALTER TABLE `rl_patient_doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `rl_patient_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `STAFF_ID` int(11) NOT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`STAFF_ID`),
  KEY `FKcgf2dedbqdp8eghsllpo4wvx3` (`USER_ID`),
  CONSTRAINT `FKcgf2dedbqdp8eghsllpo4wvx3` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `AUTHORITY` varchar(255) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SURNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (16,'ankara','ROLE_USER','2017-02-26 17:59:09','patient@gmail.com','','patient','123456','patient'),(22,'ankara','ROLE_DOCTOR','2017-02-26 21:18:09','doctor@gmail.com','','doctor','123456','doctor'),(23,'ankara','ROLE_ACCOUNTANT','2017-02-26 21:18:37','accountant@gmail.com','','accountant','123456','accountant'),(24,'ankara','ROLE_ADMIN','2017-02-26 21:24:53','administrator','','administrator','123456','administrator');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-28 19:55:32
