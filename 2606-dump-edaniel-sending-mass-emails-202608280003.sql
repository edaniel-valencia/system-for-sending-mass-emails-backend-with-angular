-- MySQL dump 10.13  Distrib 26.7.0, for macos14.8 (x86_64)
--
-- Host: localhost    Database: edaniel-sending-mass-emails
-- ------------------------------------------------------
-- Server version	26.7.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '2a3d77ee-a094-11f1-82a0-039e11792b6e:1-195';

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `Aid` int NOT NULL AUTO_INCREMENT,
  `Aname` varchar(255) NOT NULL,
  `Alastname` varchar(255) NOT NULL,
  `Aemail` varchar(255) NOT NULL,
  `Awhatsapp` varchar(255) NOT NULL,
  `Apassword` varchar(255) NOT NULL,
  `Astatus` int NOT NULL,
  `Acreated` datetime NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','Edaniel','edaniel@adavam.com','0995411580','$2b$12$rdliKp7fYzP1jSCUTL.6FOMIVjgiO/MBaxA7x4fukAHb6CoaxlRiy',1,'2026-08-09 00:00:00');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Cid` int NOT NULL AUTO_INCREMENT,
  `Cname` varchar(255) NOT NULL,
  `Cstatus` int NOT NULL,
  `Ccreated` datetime NOT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Main',1,'2026-08-09 00:00:00'),(2,'User',1,'2026-08-28 04:45:02');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configs` (
  `Cid` int NOT NULL AUTO_INCREMENT,
  `Chost` varchar(255) NOT NULL,
  `Cport` varchar(255) NOT NULL,
  `Csecure` varchar(255) NOT NULL,
  `Cauth` varchar(255) NOT NULL,
  `Cpass` varchar(255) NOT NULL,
  `Cstatus` int NOT NULL,
  `Ccreated` datetime NOT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketings`
--

DROP TABLE IF EXISTS `marketings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketings` (
  `Mid` int NOT NULL AUTO_INCREMENT,
  `Mtitle` varchar(255) NOT NULL,
  `Mimage` varchar(255) NOT NULL,
  `Mmessage` text NOT NULL,
  `Mtype` varchar(255) NOT NULL,
  `Mstatus` int NOT NULL,
  `Mcreated` datetime NOT NULL,
  PRIMARY KEY (`Mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketings`
--

LOCK TABLES `marketings` WRITE;
/*!40000 ALTER TABLE `marketings` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Uid` int NOT NULL AUTO_INCREMENT,
  `Uname` varchar(255) NOT NULL,
  `Ulastname` varchar(255) NOT NULL,
  `Uemail` varchar(255) NOT NULL,
  `Uwhatsapp` varchar(255) NOT NULL,
  `CategoryId` int NOT NULL,
  `Ustatus` int NOT NULL,
  `Ucreated` datetime NOT NULL,
  PRIMARY KEY (`Uid`),
  KEY `CategoryId` (`CategoryId`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'DANIEL','VALENCIA','edanielvalencia','0962589307',1,1,'2026-08-27 00:00:00'),(2,'EDWIN DANIEL VALENCIA MARTINEZ','VALENCIA MARTINEZ','edanielvalenciam@gmail.com','09345803948034',2,1,'2026-08-28 04:45:44'),(3,'dan','vale','ednaie@gmail.com','099345348',1,1,'2026-08-28 04:51:29'),(4,'dan','vale','ednaie@gmail.com','099345348',1,1,'2026-08-28 04:51:46'),(5,'dan','vale','ednaie@gmail.com','099345348',1,1,'2026-08-28 04:53:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edaniel-sending-mass-emails'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-28  0:03:13
