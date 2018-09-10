-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: ccollabdb
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_startdate` datetime NOT NULL,
  `activity_durationsecs` int(10) unsigned NOT NULL,
  `activity_userid` int(11) NOT NULL,
  `activity_reviewid` int(11) NOT NULL,
  `activity_code` char(1) NOT NULL,
  `activity_startsecs` int(10) unsigned NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `idx_activity_reviewId` (`activity_reviewid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'2018-03-01 14:38:33',81,2,1,'P',1519915113),(2,'2018-03-06 14:43:21',81,1,1,'P',1520347401),(3,'2018-03-29 21:24:31',5,1,2,'P',1522358671),(4,'2018-03-29 21:24:42',744,1,2,'A',1522358682),(5,'2018-03-29 22:09:46',5,1,2,'A',1522361386),(7,'2018-04-13 16:55:13',5,1,2,'A',1523638513),(8,'2018-04-13 17:22:44',5,1,2,'A',1523640164);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appstate`
--

DROP TABLE IF EXISTS `appstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appstate` (
  `appstate_id` int(11) NOT NULL AUTO_INCREMENT,
  `appstate_build` int(7) unsigned NOT NULL,
  `appstate_nreviews` int(8) unsigned NOT NULL,
  `appstate_nreviewsinprog` int(8) unsigned NOT NULL,
  `appstate_ndefects` int(9) unsigned NOT NULL,
  `appstate_nusers` int(7) unsigned NOT NULL,
  `appstate_nusersloggedin` int(7) unsigned NOT NULL,
  `appstate_nuserspastday` int(7) unsigned NOT NULL,
  `appstate_nuserspastmonth` int(7) unsigned NOT NULL,
  `appstate_snapshot` datetime NOT NULL,
  PRIMARY KEY (`appstate_id`),
  KEY `idx_appstate_snapshot` (`appstate_snapshot`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appstate`
--

LOCK TABLES `appstate` WRITE;
/*!40000 ALTER TABLE `appstate` DISABLE KEYS */;
INSERT INTO `appstate` VALUES (1,11000,0,0,0,1,0,1,1,'2018-02-15 18:37:08'),(2,11000,0,0,0,1,0,1,1,'2018-02-15 18:52:08'),(3,11000,0,0,0,1,0,1,1,'2018-02-15 19:07:08'),(4,11000,0,0,0,1,0,1,1,'2018-02-15 19:22:08'),(5,11000,0,0,0,1,0,1,1,'2018-02-15 19:37:08'),(6,11000,0,0,0,1,0,1,1,'2018-02-15 19:52:09'),(7,11000,0,0,0,1,0,1,1,'2018-02-15 20:07:09'),(8,11000,0,0,0,1,0,1,1,'2018-02-15 20:22:09'),(9,11000,0,0,0,1,0,1,1,'2018-02-15 20:37:09'),(10,11000,0,0,0,1,0,1,1,'2018-02-15 20:52:09'),(11,11000,0,0,0,1,0,1,1,'2018-02-15 21:07:08'),(12,11000,0,0,0,1,0,1,1,'2018-02-15 21:22:08'),(13,11000,0,0,0,1,0,1,1,'2018-02-15 21:37:08'),(14,11000,0,0,0,1,0,1,1,'2018-02-15 21:52:08'),(15,11000,0,0,0,1,0,1,1,'2018-02-15 22:07:08'),(16,11000,0,0,0,1,0,1,1,'2018-02-15 22:22:08'),(17,11000,0,0,0,1,0,1,1,'2018-02-15 22:37:08'),(18,11000,0,0,0,1,0,1,1,'2018-02-15 22:52:08'),(19,11000,0,0,0,1,0,1,1,'2018-02-15 23:07:08'),(20,11000,0,0,0,1,0,1,1,'2018-02-15 23:22:08'),(21,11000,0,0,0,1,0,1,1,'2018-02-15 23:37:08'),(22,11000,0,0,0,1,0,1,1,'2018-02-15 23:52:08'),(23,11000,0,0,0,1,0,1,1,'2018-02-16 00:07:08'),(24,11000,0,0,0,1,0,1,1,'2018-02-16 00:22:08'),(25,11000,0,0,0,1,0,1,1,'2018-02-16 00:37:08'),(26,11000,0,0,0,1,0,1,1,'2018-02-16 00:52:08'),(27,11000,0,0,0,1,0,1,1,'2018-02-16 01:07:08'),(28,11000,0,0,0,1,0,1,1,'2018-02-16 01:22:08'),(29,11000,0,0,0,1,0,1,1,'2018-02-16 01:37:08'),(30,11000,0,0,0,1,0,1,1,'2018-02-16 01:52:07'),(31,11000,0,0,0,1,0,1,1,'2018-02-16 02:07:07'),(32,11000,0,0,0,1,0,1,1,'2018-02-16 02:22:07'),(33,11000,0,0,0,1,0,1,1,'2018-02-16 02:37:07'),(34,11000,0,0,0,1,0,1,1,'2018-02-16 02:52:07'),(35,11000,0,0,0,1,0,1,1,'2018-02-16 03:07:07'),(36,11000,0,0,0,1,0,1,1,'2018-02-16 03:22:07'),(37,11000,0,0,0,1,0,1,1,'2018-02-16 03:37:07'),(38,11000,0,0,0,1,0,1,1,'2018-02-16 03:52:07'),(39,11000,0,0,0,1,0,1,1,'2018-02-16 04:07:07'),(40,11000,0,0,0,1,0,1,1,'2018-02-16 04:22:07'),(41,11000,0,0,0,1,0,1,1,'2018-02-16 04:37:07'),(42,11000,0,0,0,1,0,1,1,'2018-02-16 04:52:07'),(43,11000,0,0,0,1,0,1,1,'2018-02-16 05:07:07'),(44,11000,0,0,0,1,0,1,1,'2018-02-16 05:22:07'),(45,11000,0,0,0,1,0,1,1,'2018-02-16 05:37:07'),(46,11000,0,0,0,1,0,1,1,'2018-02-16 05:52:07'),(47,11000,0,0,0,1,0,1,1,'2018-02-16 06:07:07'),(48,11000,0,0,0,1,0,1,1,'2018-02-16 06:22:07'),(49,11000,0,0,0,1,0,1,1,'2018-02-16 06:37:07'),(50,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(51,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(52,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(53,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(54,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(55,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(56,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(57,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(58,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(59,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(60,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(61,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(62,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(63,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(64,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(65,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(66,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(67,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(68,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(69,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(70,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(71,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(72,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(73,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(74,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(75,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(76,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(77,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(78,11000,0,0,0,1,0,1,1,'2018-02-16 13:49:01'),(79,11000,0,0,0,1,0,1,1,'2018-02-16 14:06:59'),(80,11000,0,0,0,1,0,1,1,'2018-02-16 14:21:59'),(81,11000,0,0,0,1,0,1,1,'2018-02-16 14:36:59'),(82,11000,0,0,0,1,0,1,1,'2018-02-16 14:51:59'),(83,11000,0,0,0,1,0,1,1,'2018-02-16 15:06:59'),(84,11000,0,0,0,1,0,1,1,'2018-02-16 15:21:59'),(85,11000,0,0,0,1,0,1,1,'2018-02-16 15:36:59'),(86,11000,0,0,0,1,0,1,1,'2018-02-16 15:51:59'),(87,11000,0,0,0,1,0,1,1,'2018-02-16 16:06:59'),(88,11000,0,0,0,1,0,1,1,'2018-02-16 16:21:59'),(89,11000,0,0,0,1,0,1,1,'2018-02-16 16:36:58'),(90,11000,0,0,0,1,0,1,1,'2018-02-16 16:51:58'),(91,11000,0,0,0,1,0,1,1,'2018-02-16 17:06:58'),(92,11000,0,0,0,1,0,1,1,'2018-02-16 17:21:58'),(93,11000,0,0,0,1,0,1,1,'2018-02-16 17:36:58'),(94,11000,0,0,0,1,0,1,1,'2018-02-16 17:51:58'),(95,11000,0,0,0,1,0,1,1,'2018-02-16 18:06:58'),(96,11000,0,0,0,1,0,1,1,'2018-02-16 18:21:58'),(97,11000,1,0,0,2,0,1,2,'2018-03-06 15:10:52'),(98,11000,1,0,0,2,0,1,2,'2018-03-06 15:25:52'),(99,11000,1,0,0,2,0,1,2,'2018-03-06 15:40:52'),(100,11000,1,0,0,2,0,1,2,'2018-03-06 15:55:52'),(101,11000,1,0,0,2,0,1,2,'2018-03-06 16:10:52'),(102,11000,2,0,0,2,0,1,2,'2018-03-29 21:28:06'),(103,11000,2,0,0,2,0,1,2,'2018-03-29 21:43:06'),(104,11000,2,0,0,2,0,1,2,'2018-03-29 21:58:06'),(105,11000,2,0,0,2,0,1,2,'2018-03-29 22:13:06'),(106,11000,2,0,0,2,0,1,2,'2018-03-29 22:28:06'),(107,11000,2,0,0,2,0,1,2,'2018-03-29 22:43:06'),(108,11000,2,0,0,2,0,1,2,'2018-03-29 22:58:06'),(109,11000,2,0,0,2,0,1,2,'2018-03-29 23:13:06'),(110,11000,2,0,0,2,0,1,2,'2018-03-29 23:28:06'),(111,11000,2,0,0,2,0,1,2,'2018-03-29 23:43:06'),(112,11000,2,0,0,2,0,1,2,'2018-03-29 23:58:06'),(113,11000,2,0,0,2,0,1,2,'2018-03-30 00:13:06'),(114,11000,2,0,0,2,0,1,2,'2018-03-30 00:28:06'),(115,11000,2,0,0,2,0,1,2,'2018-03-30 00:43:06'),(116,11000,2,0,0,2,0,1,2,'2018-03-30 00:58:06'),(117,11000,2,0,0,2,0,1,2,'2018-03-30 01:13:06'),(118,11000,2,0,0,2,0,1,2,'2018-03-30 01:28:06'),(119,11000,2,0,0,2,0,1,2,'2018-03-30 01:43:06'),(120,11000,2,0,0,2,0,1,2,'2018-03-30 01:58:06'),(121,11000,2,0,0,2,0,1,2,'2018-03-30 02:13:06'),(122,11000,2,0,0,2,0,1,2,'2018-03-30 02:28:06'),(123,11000,2,0,0,2,0,1,2,'2018-03-30 02:43:06'),(124,11000,2,0,0,2,0,1,2,'2018-03-30 02:58:06'),(125,11000,2,0,0,2,0,1,2,'2018-03-30 03:13:05'),(126,11000,2,0,0,2,0,1,2,'2018-03-30 03:28:05'),(127,11000,2,0,0,2,0,1,2,'2018-03-30 03:43:05'),(128,11000,2,0,0,2,0,1,2,'2018-03-30 03:58:05'),(129,11000,2,0,0,2,0,1,2,'2018-03-30 04:13:05'),(130,11000,2,0,0,2,0,1,2,'2018-03-30 04:28:05'),(131,11000,2,0,0,2,0,1,2,'2018-03-30 04:43:05'),(132,11000,2,0,0,2,0,1,2,'2018-03-30 04:58:05'),(133,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(134,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(135,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(136,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(137,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(138,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(139,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(140,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(141,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(142,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(143,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(144,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(145,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(146,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(147,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(148,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(149,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(150,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(151,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(152,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(153,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(154,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(155,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(156,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(157,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(158,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(159,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(160,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(161,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(162,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(163,11000,2,0,0,2,0,1,2,'2018-03-30 12:48:45'),(164,11000,2,0,0,2,0,1,2,'2018-03-30 12:57:57'),(165,11000,2,0,0,2,0,1,2,'2018-03-30 13:12:57'),(166,11000,2,0,0,2,0,1,2,'2018-03-30 13:27:57'),(167,11000,2,0,0,2,0,1,2,'2018-03-30 13:42:57'),(168,11000,2,0,0,2,0,1,2,'2018-03-30 13:57:57'),(169,11000,2,0,0,2,0,1,2,'2018-03-30 14:12:57'),(170,11000,2,0,0,2,0,1,2,'2018-03-30 14:27:57'),(171,11000,2,0,0,2,0,1,2,'2018-03-30 14:42:57'),(172,11000,2,0,0,2,0,1,2,'2018-03-30 14:57:57'),(173,11000,2,0,0,2,0,1,2,'2018-03-30 15:12:57'),(174,11000,2,0,0,2,0,1,2,'2018-03-30 15:27:57'),(175,11000,2,0,0,2,0,1,2,'2018-03-30 15:42:57'),(176,11000,2,0,0,2,0,1,2,'2018-03-30 15:57:57'),(177,11000,2,0,0,2,0,1,2,'2018-03-30 16:12:57'),(178,11000,2,0,0,2,0,1,2,'2018-03-30 16:27:57'),(179,11000,2,0,0,2,0,1,2,'2018-03-30 16:42:57'),(180,11000,2,0,0,2,0,1,2,'2018-03-30 16:57:57'),(181,11000,2,0,0,2,0,1,2,'2018-03-30 17:12:57'),(182,11000,2,0,0,2,0,1,2,'2018-03-30 17:27:57'),(183,11000,2,0,0,2,0,1,2,'2018-03-30 17:42:57'),(184,11000,2,0,0,2,0,1,1,'2018-04-13 16:59:47'),(185,11000,2,0,0,2,0,1,1,'2018-04-13 17:14:47'),(186,11000,2,0,0,2,0,1,1,'2018-04-13 17:29:47'),(187,11000,2,0,0,2,0,1,1,'2018-05-08 17:42:19'),(188,11000,2,0,0,2,0,1,1,'2018-05-08 17:57:19'),(189,11000,2,0,0,2,0,1,1,'2018-05-08 18:12:19'),(190,11000,2,0,0,2,0,1,1,'2018-05-08 18:27:19'),(191,11000,2,0,0,2,0,1,1,'2018-05-08 18:42:19'),(192,11000,2,0,0,2,0,1,1,'2018-05-08 18:57:19'),(193,11000,2,0,0,2,0,1,1,'2018-05-08 19:12:19'),(194,11000,2,0,0,2,0,1,1,'2018-05-08 19:27:19'),(195,11000,2,0,0,2,0,1,1,'2018-05-08 19:42:19'),(196,11000,2,0,0,2,0,1,1,'2018-05-08 19:57:19'),(197,11000,2,0,0,2,0,1,1,'2018-05-08 20:12:19'),(198,11000,2,0,0,2,0,1,1,'2018-05-08 20:27:19'),(199,11000,2,0,0,2,0,1,1,'2018-05-08 20:42:19'),(200,11000,2,0,0,2,0,1,1,'2018-05-08 20:57:19'),(201,11000,2,0,0,2,0,1,1,'2018-05-08 21:12:19'),(202,11000,2,0,0,2,0,1,1,'2018-05-08 21:27:19'),(203,11000,2,0,0,2,0,1,1,'2018-05-08 21:42:19'),(204,11000,2,0,0,2,0,1,1,'2018-05-08 21:57:19'),(205,11000,2,0,0,2,0,1,1,'2018-05-08 22:12:19'),(206,11000,2,0,0,2,0,1,1,'2018-05-08 22:27:19'),(207,11000,2,0,0,2,0,1,1,'2018-05-08 22:42:19'),(208,11000,2,0,0,2,0,1,1,'2018-05-08 22:57:19'),(209,11000,2,0,0,2,0,1,1,'2018-05-08 23:12:19'),(210,11000,2,0,0,2,0,1,1,'2018-05-08 23:27:19'),(211,11000,2,0,0,2,0,1,1,'2018-05-08 23:42:19'),(212,11000,2,0,0,2,0,1,1,'2018-05-08 23:57:19'),(213,11000,2,0,0,2,0,1,1,'2018-05-09 00:12:19'),(214,11000,2,0,0,2,0,1,1,'2018-05-09 00:27:19'),(215,11000,2,0,0,2,0,1,1,'2018-05-09 00:42:19'),(216,11000,2,0,0,2,0,1,1,'2018-05-09 00:57:19'),(217,11000,2,0,0,2,0,1,1,'2018-05-09 01:12:19'),(218,11000,2,0,0,2,0,1,1,'2018-05-09 01:27:19'),(219,11000,2,0,0,2,0,1,1,'2018-05-09 01:42:19'),(220,11000,2,0,0,2,0,1,1,'2018-05-09 01:57:19'),(221,11000,2,0,0,2,0,1,1,'2018-05-09 02:12:19'),(222,11000,2,0,0,2,0,1,1,'2018-05-09 02:27:19'),(223,11000,2,0,0,2,0,1,1,'2018-05-09 02:42:19'),(224,11000,2,0,0,2,0,1,1,'2018-05-09 02:57:19'),(225,11000,2,0,0,2,0,1,1,'2018-05-09 03:12:19'),(226,11000,2,0,0,2,0,1,1,'2018-05-09 03:27:19'),(227,11000,2,0,0,2,0,1,1,'2018-05-09 03:42:19'),(228,11000,2,0,0,2,0,1,1,'2018-05-09 03:57:19'),(229,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(230,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(231,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(232,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(233,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(234,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(235,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(236,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(237,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(238,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(239,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(240,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(241,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(242,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(243,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(244,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(245,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(246,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(247,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(248,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(249,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(250,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(251,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(252,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(253,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(254,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(255,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(256,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(257,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(258,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(259,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(260,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(261,11000,2,0,0,2,0,1,1,'2018-05-09 12:20:17'),(262,11000,2,0,0,2,0,1,1,'2018-05-09 12:27:10'),(263,11000,2,0,0,2,0,1,1,'2018-05-09 12:42:10'),(264,11000,2,0,0,2,0,1,1,'2018-05-09 12:57:10'),(265,11000,2,0,0,2,0,1,1,'2018-05-09 13:12:10'),(266,11000,2,0,0,2,0,1,1,'2018-05-09 13:27:10'),(267,11000,2,0,0,2,0,1,1,'2018-05-09 13:42:10');
/*!40000 ALTER TABLE `appstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_userid` int(11) NOT NULL,
  `assignment_roleid` int(5) unsigned NOT NULL,
  `assignment_actioncode` char(1) NOT NULL,
  `assignment_signaturestatus` char(1) NOT NULL,
  `assignment_poolgroupid` int(11) NOT NULL,
  `assignment_reviewid` int(11) NOT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `idx_assignment_userId` (`assignment_userid`),
  KEY `idx_assignment_poolGroupId` (`assignment_poolgroupid`),
  KEY `idx_assignment_reviewId` (`assignment_reviewid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,1,2,'N','U',0,2),(2,2,3,'N','U',0,2);
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `assignment_state`
--

DROP TABLE IF EXISTS `assignment_state`;
/*!50001 DROP VIEW IF EXISTS `assignment_state`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `assignment_state` AS SELECT 
 1 AS `code`,
 1 AS `name`,
 1 AS `description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `assignment_view`
--

DROP TABLE IF EXISTS `assignment_view`;
/*!50001 DROP VIEW IF EXISTS `assignment_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `assignment_view` AS SELECT 
 1 AS `user_id`,
 1 AS `role_id`,
 1 AS `review_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `changelist`
--

DROP TABLE IF EXISTS `changelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelist` (
  `changelist_id` int(11) NOT NULL AUTO_INCREMENT,
  `changelist_localguid` varchar(40) NOT NULL,
  `changelist_date` datetime NOT NULL,
  `changelist_comment` text NOT NULL,
  `changelist_author` varchar(128) NOT NULL,
  `changelist_scmid` int(11) NOT NULL,
  `changelist_hostguid` varchar(32) NOT NULL,
  `changelist_uploadeddate` datetime NOT NULL,
  `changelist_scmidentifier` varchar(32) NOT NULL,
  PRIMARY KEY (`changelist_id`),
  KEY `idx_changelist_scmIdentifier` (`changelist_scmidentifier`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelist`
--

LOCK TABLES `changelist` WRITE;
/*!40000 ALTER TABLE `changelist` DISABLE KEYS */;
INSERT INTO `changelist` VALUES (1,'f5e2d0e6e8ac3a71c41a9e7145289a4b','2018-03-29 21:25:05','Attached URLs','admin',1,'76ee91f822aa8c93b216a32a4c716df1','2018-03-29 21:25:05','URL'),(2,'c552df9d4792c9a4e8b55d049c8f5cda','2018-03-29 21:25:42','Attached URLs','admin',1,'76ee91f822aa8c93b216a32a4c716df1','2018-03-29 21:25:42','URL'),(3,'4fd2adde5cfe326a2f4101d03563e4b6','2018-03-29 21:32:31','','admin',1,'76ee91f822aa8c93b216a32a4c716df1','2018-03-29 21:32:31','');
/*!40000 ALTER TABLE `changelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklist`
--

DROP TABLE IF EXISTS `checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklist` (
  `checklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `checklist_enabled` char(1) NOT NULL,
  `checklist_description` varchar(255) NOT NULL,
  `checklist_title` varchar(255) NOT NULL,
  PRIMARY KEY (`checklist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist`
--

LOCK TABLES `checklist` WRITE;
/*!40000 ALTER TABLE `checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklistitem`
--

DROP TABLE IF EXISTS `checklistitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklistitem` (
  `checklistitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `checklistitem_checklistid` int(11) NOT NULL,
  `checklistitem_itemname` varchar(255) NOT NULL,
  PRIMARY KEY (`checklistitem_id`),
  KEY `idx_checklistitem_checklistId` (`checklistitem_checklistid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklistitem`
--

LOCK TABLES `checklistitem` WRITE;
/*!40000 ALTER TABLE `checklistitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` text NOT NULL,
  `comment_publishstate` char(4) NOT NULL,
  `comment_versionid` int(11) NOT NULL,
  `comment_linenumber` int(11) NOT NULL,
  `comment_reviewid` int(11) NOT NULL,
  `comment_locatortype` char(1) NOT NULL,
  `comment_createdon` datetime NOT NULL,
  `comment_userid` int(11) NOT NULL,
  `comment_conversationid` int(11) NOT NULL,
  `comment_type` char(4) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `idx_comment_reviewId` (`comment_reviewid`),
  KEY `idx_comment_userId` (`comment_userid`),
  KEY `idx_comment_conversationId` (`comment_conversationid`),
  KEY `idx_comment_type` (`comment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation` (
  `conversation_id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_originversionid` int(11) NOT NULL,
  `conversation_originlocatorhash` varchar(40) NOT NULL,
  `conversation_lastmodifieddate` datetime NOT NULL,
  `conversation_reviewid` int(11) NOT NULL,
  PRIMARY KEY (`conversation_id`),
  KEY `idx_conversation_reviewId` (`conversation_reviewid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defect`
--

DROP TABLE IF EXISTS `defect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defect` (
  `defect_id` int(11) NOT NULL AUTO_INCREMENT,
  `defect_text` text NOT NULL,
  `defect_externalname` varchar(255) NOT NULL,
  `defect_versionid` int(11) NOT NULL,
  `defect_linenumber` int(11) NOT NULL,
  `defect_reviewid` int(11) NOT NULL,
  `defect_locatortype` char(1) NOT NULL,
  `defect_createdon` datetime NOT NULL,
  `defect_userid` int(11) NOT NULL,
  `defect_conversationid` int(11) NOT NULL,
  `defect_state` char(1) NOT NULL,
  PRIMARY KEY (`defect_id`),
  KEY `idx_defect_reviewId` (`defect_reviewid`),
  KEY `idx_defect_userId` (`defect_userid`),
  KEY `idx_defect_conversationId` (`defect_conversationid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defect`
--

LOCK TABLES `defect` WRITE;
/*!40000 ALTER TABLE `defect` DISABLE KEYS */;
/*!40000 ALTER TABLE `defect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `defect_custom_dropdowns`
--

DROP TABLE IF EXISTS `defect_custom_dropdowns`;
/*!50001 DROP VIEW IF EXISTS `defect_custom_dropdowns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `defect_custom_dropdowns` AS SELECT 
 1 AS `dropdownid`,
 1 AS `dropdownoption`,
 1 AS `customfield`,
 1 AS `customfield_enabled`,
 1 AS `dropdownoption_enabled`,
 1 AS `sequence`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `defect_state`
--

DROP TABLE IF EXISTS `defect_state`;
/*!50001 DROP VIEW IF EXISTS `defect_state`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `defect_state` AS SELECT 
 1 AS `code`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `defect_view`
--

DROP TABLE IF EXISTS `defect_view`;
/*!50001 DROP VIEW IF EXISTS `defect_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `defect_view` AS SELECT 
 1 AS `id`,
 1 AS `review_id`,
 1 AS `text`,
 1 AS `state`,
 1 AS `user_id`,
 1 AS `created_on`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `defectcustom`
--

DROP TABLE IF EXISTS `defectcustom`;
/*!50001 DROP VIEW IF EXISTS `defectcustom`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `defectcustom` AS SELECT 
 1 AS `defect_id`,
 1 AS `Severity`,
 1 AS `Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `defectcustom_compat`
--

DROP TABLE IF EXISTS `defectcustom_compat`;
/*!50001 DROP VIEW IF EXISTS `defectcustom_compat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `defectcustom_compat` AS SELECT 
 1 AS `defect_id`,
 1 AS `custom_id_125`,
 1 AS `custom_id_126`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `defects_by_path`
--

DROP TABLE IF EXISTS `defects_by_path`;
/*!50001 DROP VIEW IF EXISTS `defects_by_path`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `defects_by_path` AS SELECT 
 1 AS `file_path`,
 1 AS `num_defects`,
 1 AS `loc_reviewed`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `diffel`
--

DROP TABLE IF EXISTS `diffel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diffel` (
  `diffel_id` int(11) NOT NULL AUTO_INCREMENT,
  `diffel_prevstartidx` int(8) unsigned NOT NULL,
  `diffel_currstartidx` int(8) unsigned NOT NULL,
  `diffel_prevcount` int(8) unsigned NOT NULL,
  `diffel_currcount` int(8) unsigned NOT NULL,
  `diffel_diffpairid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`diffel_id`),
  KEY `idx_diffel_diffPairId` (`diffel_diffpairid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diffel`
--

LOCK TABLES `diffel` WRITE;
/*!40000 ALTER TABLE `diffel` DISABLE KEYS */;
/*!40000 ALTER TABLE `diffel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diffpair`
--

DROP TABLE IF EXISTS `diffpair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diffpair` (
  `diffpair_id` int(11) NOT NULL AUTO_INCREMENT,
  `diffpair_currentmd5` char(32) NOT NULL,
  `diffpair_previousmd5` char(32) NOT NULL,
  PRIMARY KEY (`diffpair_id`),
  KEY `idx_diffpair_currentMd5` (`diffpair_currentmd5`(8)),
  KEY `idx_diffpair_previousMd5` (`diffpair_previousmd5`(8))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diffpair`
--

LOCK TABLES `diffpair` WRITE;
/*!40000 ALTER TABLE `diffpair` DISABLE KEYS */;
/*!40000 ALTER TABLE `diffpair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externallink`
--

DROP TABLE IF EXISTS `externallink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externallink` (
  `externallink_id` int(11) NOT NULL AUTO_INCREMENT,
  `externallink_regex` varchar(255) NOT NULL,
  `externallink_casesensitive` char(1) NOT NULL,
  `externallink_urlformat` varchar(255) NOT NULL,
  `externallink_tooltip` varchar(255) NOT NULL,
  `externallink_title` varchar(255) NOT NULL,
  PRIMARY KEY (`externallink_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externallink`
--

LOCK TABLES `externallink` WRITE;
/*!40000 ALTER TABLE `externallink` DISABLE KEYS */;
/*!40000 ALTER TABLE `externallink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filemetrics`
--

DROP TABLE IF EXISTS `filemetrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filemetrics` (
  `filemetrics_id` int(11) NOT NULL AUTO_INCREMENT,
  `filemetrics_lines` int(7) unsigned NOT NULL,
  `filemetrics_pages` int(7) unsigned NOT NULL,
  `filemetrics_linesadded` int(7) unsigned NOT NULL,
  `filemetrics_linesremoved` int(7) unsigned NOT NULL,
  `filemetrics_linesmodified` int(7) unsigned NOT NULL,
  `filemetrics_linesdelta` int(8) NOT NULL,
  `filemetrics_versionid` int(11) NOT NULL,
  PRIMARY KEY (`filemetrics_id`),
  KEY `idx_filemetrics_versionId` (`filemetrics_versionid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filemetrics`
--

LOCK TABLES `filemetrics` WRITE;
/*!40000 ALTER TABLE `filemetrics` DISABLE KEYS */;
INSERT INTO `filemetrics` VALUES (1,29,0,29,0,0,29,3);
/*!40000 ALTER TABLE `filemetrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funfact`
--

DROP TABLE IF EXISTS `funfact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funfact` (
  `funfact_id` int(11) NOT NULL AUTO_INCREMENT,
  `funfact_fact` varchar(255) NOT NULL,
  PRIMARY KEY (`funfact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funfact`
--

LOCK TABLES `funfact` WRITE;
/*!40000 ALTER TABLE `funfact` DISABLE KEYS */;
/*!40000 ALTER TABLE `funfact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupadmins`
--

DROP TABLE IF EXISTS `groupadmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupadmins` (
  `groupadmins_id` int(11) NOT NULL AUTO_INCREMENT,
  `groupadmins_adminuserid` int(11) NOT NULL,
  `groupadmins_groupid` int(11) NOT NULL,
  PRIMARY KEY (`groupadmins_id`),
  KEY `idx_groupadmins_adminUserId` (`groupadmins_adminuserid`),
  KEY `idx_groupadmins_groupId` (`groupadmins_groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupadmins`
--

LOCK TABLES `groupadmins` WRITE;
/*!40000 ALTER TABLE `groupadmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupadmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupancestry`
--

DROP TABLE IF EXISTS `groupancestry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupancestry` (
  `groupancestry_id` int(11) NOT NULL AUTO_INCREMENT,
  `groupancestry_descendantid` int(11) NOT NULL,
  `groupancestry_ancestorid` int(11) NOT NULL,
  PRIMARY KEY (`groupancestry_id`),
  KEY `idx_groupancestry_descendantId` (`groupancestry_descendantid`),
  KEY `idx_groupancestry_ancestorId` (`groupancestry_ancestorid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupancestry`
--

LOCK TABLES `groupancestry` WRITE;
/*!40000 ALTER TABLE `groupancestry` DISABLE KEYS */;
INSERT INTO `groupancestry` VALUES (1,1,1);
/*!40000 ALTER TABLE `groupancestry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupdescription`
--

DROP TABLE IF EXISTS `groupdescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupdescription` (
  `groupdescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `groupdescription_type` char(1) NOT NULL,
  `groupdescription_title` varchar(255) NOT NULL,
  `groupdescription_description` varchar(255) NOT NULL,
  `groupdescription_reportingonly` char(1) NOT NULL,
  `groupdescription_active` char(1) NOT NULL,
  `groupdescription_reviewpool` char(1) NOT NULL,
  `groupdescription_defaulttemplateid` int(11) NOT NULL,
  `groupdescription_alltemplates` char(1) NOT NULL,
  `groupdescription_guid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupdescription_id`),
  KEY `idx_groupdescription_guid` (`groupdescription_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupdescription`
--

LOCK TABLES `groupdescription` WRITE;
/*!40000 ALTER TABLE `groupdescription` DISABLE KEYS */;
INSERT INTO `groupdescription` VALUES (1,'E','All Users','Built-in Group containing all Users','Y','Y','N',0,'Y','ae5b53b3dab231f20a7995445d2c98a3');
/*!40000 ALTER TABLE `groupdescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupgroups`
--

DROP TABLE IF EXISTS `groupgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupgroups` (
  `groupgroups_id` int(11) NOT NULL AUTO_INCREMENT,
  `groupgroups_childid` int(11) NOT NULL,
  `groupgroups_parentid` int(11) NOT NULL,
  PRIMARY KEY (`groupgroups_id`),
  KEY `idx_groupgroups_childId` (`groupgroups_childid`),
  KEY `idx_groupgroups_parentId` (`groupgroups_parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupgroups`
--

LOCK TABLES `groupgroups` WRITE;
/*!40000 ALTER TABLE `groupgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouptemplates`
--

DROP TABLE IF EXISTS `grouptemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouptemplates` (
  `grouptemplates_id` int(11) NOT NULL AUTO_INCREMENT,
  `grouptemplates_reviewtemplateid` int(11) NOT NULL,
  `grouptemplates_groupid` int(11) NOT NULL,
  PRIMARY KEY (`grouptemplates_id`),
  KEY `idx_grouptemplates_reviewTemplateId` (`grouptemplates_reviewtemplateid`),
  KEY `idx_grouptemplates_groupId` (`grouptemplates_groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouptemplates`
--

LOCK TABLES `grouptemplates` WRITE;
/*!40000 ALTER TABLE `grouptemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouptemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupusers`
--

DROP TABLE IF EXISTS `groupusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupusers` (
  `groupusers_id` int(11) NOT NULL AUTO_INCREMENT,
  `groupusers_userid` int(11) NOT NULL,
  `groupusers_groupid` int(11) NOT NULL,
  PRIMARY KEY (`groupusers_id`),
  KEY `idx_groupusers_userId` (`groupusers_userid`),
  KEY `idx_groupusers_groupId` (`groupusers_groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupusers`
--

LOCK TABLES `groupusers` WRITE;
/*!40000 ALTER TABLE `groupusers` DISABLE KEYS */;
INSERT INTO `groupusers` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `groupusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `highlightingschema`
--

DROP TABLE IF EXISTS `highlightingschema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `highlightingschema` (
  `highlightingschema_id` int(11) NOT NULL AUTO_INCREMENT,
  `highlightingschema_parentschemaguid` varchar(32) NOT NULL,
  `highlightingschema_innerschemaguid` varchar(32) NOT NULL,
  `highlightingschema_title` varchar(127) NOT NULL,
  `highlightingschema_description` varchar(255) NOT NULL,
  `highlightingschema_iscasesensitive` char(1) NOT NULL,
  `highlightingschema_extensions` varchar(255) NOT NULL,
  `highlightingschema_keywords` text NOT NULL,
  `highlightingschema_extrakeywordchars` varchar(64) NOT NULL,
  `highlightingschema_isoverridecommentpatterns` char(1) NOT NULL,
  `highlightingschema_isoverrideconstantpatterns` char(1) NOT NULL,
  `highlightingschema_isoverridefunctionalpatterns` char(1) NOT NULL,
  `highlightingschema_isoverrideinnerpatterns` char(1) NOT NULL,
  `highlightingschema_isoverridekeywords` char(1) NOT NULL,
  `highlightingschema_isoverridekeywordpatterns` char(1) NOT NULL,
  `highlightingschema_isoverridestringpatterns` char(1) NOT NULL,
  `highlightingschema_schemaguid` varchar(32) NOT NULL,
  PRIMARY KEY (`highlightingschema_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highlightingschema`
--

LOCK TABLES `highlightingschema` WRITE;
/*!40000 ALTER TABLE `highlightingschema` DISABLE KEYS */;
INSERT INTO `highlightingschema` VALUES (1,'','','SGML','Schema for Standard Generalized Markup language (SGML) and any SGML-based language','Y','.sgml','','','N','N','N','N','N','N','N','FC71AA863FE940CFB5E7C63F5E550AB4'),(2,'6B1FE0D149D14FABAAD946B61424E6A8','7058952343584ECDBE7AB30466A9F5BD','ASP.NET language','Schema for Active Server Pages for .NET (ASP.NET)','Y','.asp\n.aspx','','','N','N','N','N','N','N','N','CD9C5D83D2F1439EBA7DA6FC3BBF05E3'),(3,'','','Visual Basic','Schema for Visual Basic language','Y','.vb\n.vbs\n.vbx\n.bas\n.frm\n.cls\n.ctl','_\nAnd\nAs\nBinary\nByRef\nByVal\nDate\nElse\nEmpty\nError\nFalse\nFor\nFriend\nGet\nInput\nIs\nLen\nLet\nLock\nMe\nMid\nNew\nNext\nNothing\nNull\nOn\nOption\nOptional\nParamArray\nPrint\nPrivate\nProperty\nPublic\nResume\nSeek\nSet\nStatic\nStep\nString\nThen\nTime\nTo\nTrue\nWithEvent\nAppActivate\nBeep\nCall\nCase\nChDir\nChDrive\nClose\nConst\nDate\nDeclare\nDeftype\nDeleteSetting\nDim\nDo\nLoop\nEnd\nEnum\nErase\nError\nEvent\nExit\nFileCopy\nFor\nEach\nNext\nFunction\nGet\nGoSub\nReturn\nGoTo\nIf\nElse\nThan\nImplements\nInput\nKill\nLet\nLine Input\nLoad\nLock\nUnlock\nLSet\nMid\nMkDir\nName\nOr\nOpen\nOption\nBase\nCompare\nExplicit\nProperty\nPublic\nPut\nRaiseEvent\nRandomize\nReDim\nRem\nReset\nResume\nRmDir\nRSet\nSavePicture\nSaveSetting\nSeek\nSelect\nSendKeys\nSet\nSetAttr\nStatic\nStop\nSub\nTime\nType\nUnload\nWhile\nWend\nWidth\nWith\nWrite','','N','N','N','N','N','N','N','CDCF59D9829047108C0D8D1A79175ABE'),(4,'','','Assembler language','Schema for Assembler language','N','.s\n.asm\n.inc\n.uc\n.mmp\n.seq','%arg\n%assign\n%define\n%elif\n%elifctk\n%elifdef\n%elifid\n%elifidn\n%elifidni\n%elifmacro\n%elifnctk\n%elifndef\n%elifnid\n%elifnidn\n%elifnidni\n%elifnmacro\n%elifnnum\n%elifnstr\n%elifnum\n%elifstr\n%else\n%endif\n%endmacro\n%endrep\n%error\n%exitrep\n%iassign\n%idefine\n%if\n%ifctk\n%ifdef\n%ifid\n%ifidn\n%ifidni\n%ifmacro\n%ifnctk\n%ifndef\n%ifnid\n%ifnidn\n%ifnidni\n%ifnmacro\n%ifnnum\n%ifnstr\n%ifnum\n%ifstr\n%imacro\n%include\n%line\n%local\n%macro\n%out\n%pop\n%push\n%rep\n%repl\n%rotate\n%stacksize\n%strlen\n%substr\n%undef\n%xdefine\n%xidefine\n.alpha\n.break\n.code\n.const\n.continue\n.cref\n.data\n.data?\n.dosseg\n.else\n.elseif\n.endif\n.endw\n.err\n.err1\n.err2\n.errb\n.errdef\n.errdif\n.errdifi\n.erre\n.erridn\n.erridni\n.errnb\n.errndef\n.errnz\n.exit\n.fardata\n.fardata?\n.if\n.lall\n.lfcond\n.list\n.listall\n.listif\n.listmacro\n.listmacroall\n.model\n.msfloat\n.no87\n.nocref\n.nolist\n.nolistif\n.nolistmacro\n.radix\n.repeat\n.sall\n.seq\n.sfcond\n.stack\n.startup\n.tfcond\n.type\n.until\n.untilcxz\n.while\n.xall\n.xcref\n.xlist\naaa\naad\naam\naas\nabsolute\nadc\nadd\naddpd\naddps\naddsd\naddss\nah\nal\nalias\nalign\nalignb\nand\nandnpd\nandnps\nandpd\nandps\narpl\nassume\nat\nax\nbh\nbits\nbl\nbound\nbp\nbsf\nbsr\nbswap\nbt\nbtc\nbtr\nbts\nbx\nbyte\ncall\ncatstr\ncbw\ncdq\ncdqe\ncflush\nch\ncl\nclc\ncld\ncli\nclts\ncmc\ncmova\ncmovae\ncmovb\ncmovbe\ncmovc\ncmove\ncmovg\ncmovge\ncmovl\ncmovle\ncmovna\ncmovnae\ncmovnb\ncmovnbe\ncmovnc\ncmovne\ncmovng\ncmovnge\ncmovnl\ncmovnle\ncmovno\ncmovnp\ncmovns\ncmovnz\ncmovo\ncmovp\ncmovpe\ncmovpo\ncmovs\ncmovz\ncmp\ncmpeqpd\ncmpeqps\ncmpeqsd\ncmpeqss\ncmplepd\ncmpleps\ncmplesd\ncmpless\ncmpltpd\ncmpltps\ncmpltsd\ncmpltss\ncmpnepd\ncmpneps\ncmpnesd\ncmpness\ncmpnlepd\ncmpnleps\ncmpnlesd\ncmpnless\ncmpnltpd\ncmpnltps\ncmpnltsd\ncmpnltss\ncmpordpd\ncmpordps\ncmpordsd\ncmpordss\ncmps\ncmpsb\ncmpsd\ncmpsw\ncmpunordpd\ncmpunordps\ncmpunordsd\ncmpunordss\ncmpxchg\ncmpxchg486\ncmpxchg8b\ncomisd\ncomiss\ncomm\ncomment\ncommon\ncpu\ncpuid\ncr0\ncr2\ncr3\ncr4\ncs\ncvtdq2pd\ncvtdq2ps\ncvtpd2dq\ncvtpd2pi\ncvtpd2ps\ncvtpi2pd\ncvtpi2ps\ncvtps2dq\ncvtps2pd\ncvtps2pi\ncvtsd2si\ncvtsd2ss\ncvtsi2sd\ncvtsi2ss\ncvtss2sd\ncvtss2si\ncvttpd2dq\ncvttpd2pi\ncvttps2dq\ncvttps2pi\ncvttsd2si\ncvttss2si\ncwd\ncwde\ncx\ndaa\ndas\ndb\ndd\ndec\ndf\ndh\ndi\ndiv\ndivpd\ndivps\ndivsd\ndivss\ndl\ndosseg\ndq\ndr0\ndr1\ndr2\ndr3\ndr6\ndr7\nds\ndt\ndup\ndw\ndword\ndx\neax\nebp\nebx\necho\necx\nedi\nedx\nelse\nelseif\nelseif1\nelseif2\nelseifb\nelseifdef\nelseifdif\nelseifdifi\nelseife\nelseifidn\nelseifidni\nelseifnb\nelseifndef\nemms\nend\nendif\nendm\nendp\nends\nendstruc\nenter\neq\nequ\nes\nesc\nesi\nesp\neven\nexitm\nexport\nextern\nexterndef\nextrn\nf2xm1\nfabs\nfadd\nfaddp\nfbld\nfbstp\nfchs\nfclex\nfcmovb\nfcmovbe\nfcmove\nfcmovnb\nfcmovnbe\nfcmovne\nfcmovnu\nfcmovu\nfcom\nfcomi\nfcomip\nfcomp\nfcompp\nfcos\nfdecstp\nfdisi\nfdiv\nfdivp\nfdivr\nfdivrp\nfemms\nfeni\nffree\nffreep\nfiadd\nficom\nficomp\nfidiv\nfidivr\nfild\nfimul\nfincstp\nfinit\nfist\nfistp\nfisub\nfisubr\nfld\nfld1\nfldcw\nfldenv\nfldenvd\nfldenvw\nfldl2e\nfldl2t\nfldlg2\nfldln2\nfldpi\nfldz\nfmul\nfmulp\nfnclex\nfndisi\nfneni\nfninit\nfnop\nfnsave\nfnsaved\nfnsavew\nfnstcw\nfnstenv\nfnstenvd\nfnstenvw\nfnstsw\nfor\nforc\nfpatan\nfprem\nfprem1\nfptan\nfrndint\nfrstor\nfrstord\nfrstorw\nfs\nfsave\nfsaved\nfsavew\nfscale\nfsetpm\nfsin\nfsincos\nfsqrt\nfst\nfstcw\nfstenv\nfstenvd\nfstenvw\nfstp\nfstsw\nfsub\nfsubp\nfsubr\nfsubrp\nftst\nfucom\nfucomp\nfucompp\nfwait\nfword\nfxam\nfxch\nfxrstor\nfxsave\nfxtract\nfyl2x\nfyl2xp1\nge\nglobal\ngoto\ngroup\ngs\ngt\nhigh\nhighword\nhlt\nibts\nicebp\nidiv\niend\nif\nif1\nif2\nifb\nifdef\nifdif\nifdifi\nife\nifidn\nifidni\nifnb\nifndef\nimport\nimul\nin\ninc\nincbin\ninclude\nincludelib\nins\ninsb\ninsd\ninstr\ninsw\nint\nint01\nint03\nint1\nint3\ninto\ninvd\ninvlpg\ninvoke\niret\niretd\niretdf\niretf\niretw\nirp\nirpc\nistruc\nja\njae\njb\njbe\njc\njcxz\nje\njecxz\njg\njge\njl\njle\njmp\njna\njnae\njnb\njnbe\njnc\njne\njng\njnge\njnl\njnle\njno\njnp\njns\njnz\njo\njp\njpe\njpo\njs\njz\nlabel\nlahf\nlar\nldmxscr\nlds\nle\nlea\nleave\nlength\nlengthof\nles\nlfence\nlfs\nlgdt\nlgs\nlidt\nlldt\nlmsw\nloadall\nloadall286\nlocal\nlock\nlods\nlodsb\nlodsd\nlodsw\nloop\nloopd\nloope\nlooped\nloopew\nloopne\nloopned\nloopnew\nloopnz\nloopnzd\nloopnzw\nloopw\nloopz\nloopzd\nloopzw\nlow\nlowword\nlroffset\nlsl\nlss\nlt\nltr\nmacro\nmask\nmaskmovdq\nmaskmovdqu\nmaxpd\nmaxps\nmaxss\nmfence\nminpd\nminps\nminsd\nminss\nmm0\nmm1\nmm2\nmm3\nmm4\nmm5\nmm6\nmm7\nmod\nmov\nmovapd\nmovaps\nmovd\nmovdq2q\nmovdqa\nmovdqu\nmovhlps\nmovhpd\nmovhps\nmovlhps\nmovlpd\nmovlps\nmovmskpd\nmovmskps\nmovntdq\nmovnti\nmovntpd\nmovntps\nmovntq\nmovq\nmovq2dq\nmovs\nmovsb\nmovsd\nmovss\nmovsw\nmovsx\nmovsxd\nmovupd\nmovups\nmovzx\nmul\nmulpd\nmulps\nmulsd\nmulss\nname\nne\nneg\nnop\nnot\noffset\nopattr\noption\nor\norg\norpd\norps\nout\nouts\noutsb\noutsd\noutsw\npackssdw\npacksswb\npackuswb\npaddb\npaddd\npaddq\npaddsb\npaddsiw\npaddsw\npaddusb\npaddusw\npaddw\npage\npand\npandn\npause\npaveb\npavgb\npavgusb\npavgw\npaxsd\npcmpeqb\npcmpeqd\npcmpeqw\npcmpgtb\npcmpgtd\npcmpgtw\npdistib\npextrw\npf2id\npf2iw\npfacc\npfadd\npfcmpeq\npfcmpge\npfcmpgt\npfmax\npfmin\npfmul\npfnacc\npfpnacc\npfrcp\npfrcpit1\npfrcpit2\npfrsqit1\npfrsqrt\npfsub\npfsubr\npi2fd\npinsrw\npmachriw\npmaddwd\npmagw\npmaxsw\npmaxub\npminsw\npminub\npmovmskb\npmulhriw\npmulhrwa\npmulhrwc\npmulhuw\npmulhw\npmullw\npmuludq\npmvgezb\npmvlzb\npmvnzb\npmvzb\npop\npopa\npopad\npopaw\npopcontext\npopf\npopfd\npopfw\npor\nprefetch\nprefetchnta\nprefetcht0\nprefetcht1\nprefetcht2\nprefetchw\nproc\nproto\npsadbw\npshufd\npshufhw\npshuflw\npshufw\npslld\npslldq\npsllq\npsllw\npsrad\npsraw\npsrld\npsrldq\npsrlq\npsrlw\npsubb\npsubd\npsubq\npsubsb\npsubsiw\npsubsw\npsubusb\npsubusw\npsubw\npswapd\nptr\npublic\npunpckhbw\npunpckhdq\npunpckhqdq\npunpckhwd\npunpcklbw\npunpckldq\npunpcklqdq\npunpcklwd\npurge\npush\npusha\npushad\npushaw\npushcontext\npushd\npushf\npushfd\npushfw\npushw\npxor\nqword\nrcl\nrcpps\nrcpss\nrcr\nrdmsr\nrdpmc\nrdshr\nrdtsc\nreal10\nreal4\nreal8\nrecord\nrep\nrepe\nrepeat\nrepne\nrepnz\nrept\nrepz\nresb\nresd\nresq\nrest\nresw\nret\nretf\nretn\nrol\nror\nrsdc\nrsldt\nrsm\nrsqrtps\nrsqrtss\nrsts\nsahf\nsal\nsalc\nsar\nsbb\nscas\nscasb\nscasd\nscasw\nsection\nseg\nsegment\nseta\nsetae\nsetb\nsetbe\nsetc\nsete\nsetg\nsetge\nsetl\nsetle\nsetna\nsetnae\nsetnb\nsetnbe\nsetnc\nsetne\nsetng\nsetnge\nsetnl\nsetnle\nsetno\nsetnp\nsetns\nsetnz\nseto\nsetp\nsetpe\nsetpo\nsets\nsetz\nsfence\nsgdt\nshl\nshld\nshort\nshr\nshrd\nshufpd\nshufps\nsi\nsidt\nsize\nsizeof\nsizestr\nsldt\nsmi\nsmint\nsmintold\nsmsw\nsp\nsqrtpd\nsqrtps\nsqrtsd\nsqrtss\nss\nst\nst0\nst1\nst2\nst3\nst4\nst5\nst6\nst7\nstc\nstd\nsti\nstmxcsr\nstos\nstosb\nstosd\nstosw\nstr\nstruc\nstruct\nsub\nsubpd\nsubps\nsubsd\nsubss\nsubstr\nsubtitle\nsubttl\nsvdc\nsvldt\nsvts\nsyscall\nsysenter\nsysexit\nsysret\ntest\ntextequ\nthis\ntimes\ntitle\ntr3\ntr4\ntr5\ntr6\ntr7\ntword\ntype\ntypedef\nucomisd\nucomiss\nud0\nud1\nud2\numov\nunion\nunpckhpd\nunpckhps\nunpcklpd\nunpcklps\nuse16\nuse32\nverr\nverw\nwait\nwbinvd\nwhile\nwidth\nword\nwrmsr\nwrshr\nxadd\nxbts\nxchg\nxlat\nxlatb\nxmm0\nxmm1\nxmm2\nxmm3\nxmm4\nxmm5\nxmm6\nxmm7\nxor\nxorpd\nxorps','_','N','N','N','N','N','N','N','75DA5DB18A5A45CBB63CBA04E3F9EBB1'),(5,'6B1FE0D149D14FABAAD946B61424E6A8','2097B09A8A5A42E3A3B528C4B45A6B72','PHP language','Schema for PHP Markup language','Y','.php\n.php3\n.php4','','','N','N','N','N','N','N','N','97058192A4FB49C4A2233F1B4F672536'),(6,'6D1BB76A898545F59A6864854D132652','','PHP Language Embedded Schema','Schema for embedded PHP Markup','Y','','if\nelse\nwhile\ndo\nfor\ngoto\nswitch\ncase\ndefault\nbreak\ncontinue\nreturn\nstatic\nforeach\nas\nglobal\nfunction\nvar\ndefined\ninclude\nthrow\ntry\ncatch\nfinally\nvoid\nint\nchar\nfloat\ndouble\nboolean\nString\nObject\nthis\nsuper\ntypeof\nclass\ninterface\nabstract\nvirtual\nimplements\nextends\npublic\nprivate\nprotected\npackage\nfinal\nimport\narray\ncount\nprint\nstrlen\nrequire\nrequire_once\nisset\nconst','','N','N','N','N','N','N','Y','2097B09A8A5A42E3A3B528C4B45A6B72'),(7,'','','Verilog language','Schema for Verilog language','Y','.v\n.verilog','always\nand\nassign\nbegin\nbuf\nbufif0\nbufif1\ncase\ncasex\ncasez\ncmos\ndeassign\ndefault\ndefparam\ndisable\nedge\nelse\nend\nendcase\nendmodule\nendfunction\nendprimitive\nendspecify\nendtable\nendtask\nevent\nfor\nforce\nforever\nfor\nfunction\nhighz0\nhighz1\nif\nifnone\ninitial\ninout\ninput\ninteger\njoin\nlarge\nmacromodule\nmedium\nmodule\nnand\nnegedge\nnmos\nnor\nnot\nnotif0\nnotif1\nor\noutput\nparameter\npmos\nposedge\nprimitive\npull0\npull1\npullup\npulldown\nrcmos\nreal\nrealtime\nreg\nrelease\nrepeat\nrnmos\nrpmos\nrtran\nrtranif0\nrtranif1\nscalared\nsmall\nspecify\nspecparam\nstrong0\nstrong1\nsupply0\nsupply1\ntable\ntask\ntime\ntran\ntranif0\ntranif1\ntri\ntri0\ntri1\ntriand\ntrior\ntrireg\nvectored\nwait\nwand\nweak0\nweak1\nwhile\nwire\nwor\nxnor\nxor','','N','N','N','N','N','N','N','7A07AD7409714D45BA650FAAFAE4B8C1'),(8,'6D1BB76A898545F59A6864854D132652','','C# language','Schema for Microsoft C# language','Y','.cs','if\nelse\nwhile\ndo\nfor\nforeach\nin\ngoto\nswitch\ncase\ndefault\nbreak\ncontinue\nreturn\nstatic\nthrow\ntry\ncatch\nfinally\nget\nset\nvoid\nsbyte\nint\nchar\nfloat\ndouble\nbool\nString\nObject\nstring\nobject\nenum\nstruct\nthis\nsuper\ntypeof\nis\nclass\ninterface\nabstract\nvirtual\noverride\nnew\npublic\nprivate\nprotected\ninternal\nconst\nsealed\nnamespace\nusing\n#region\n#endregion\n#if\n#ifdef\n#ifndef\n#else\n#elsif\n#define\n#endif','','N','N','N','N','N','N','N','7058952343584ECDBE7AB30466A9F5BD'),(9,'6D1BB76A898545F59A6864854D132652','','Java language','Schema for Java language','Y','.java','if\nelse\nwhile\ndo\nfor\nswitch\ncase\ndefault\nbreak\ncontinue\nreturn\nstatic\nextern\nthrow\ntry\ncatch\nfinally\nvoid\nshort\nbyte\nint\nlong\nchar\nfloat\ndouble\nboolean\nString\nObject\nthis\nsuper\nClass\ninstanceof\nnew\nclass\ninterface\nabstract\nvirtual\nimplements\nextends\nthrows\npublic\nprivate\nprotected\npackage\nfinal\nimport\nsynchronized\nvolatile\ntransient\nnative\nenum\nstrictfp\nassert\nconst\ngoto','','N','N','N','N','N','N','N','D698F058286F40A3A3F035417C06BE6F'),(10,'','','Python language','Schema for Python language','Y','.py','and\ndel\nfrom\nnot\nwhile\nas\nelif\nglobal\nor\nwith\nassert\nelse\nif\npass\nyield\nbreak\nexcept\nimport\nprint\nclass\nexec\nin\nraise\ncontinue\nfinally\nis\nreturn\ndef\nfor\nlambda\ntry\nself','','N','N','N','N','N','N','N','C0CDD39CECA245A7940E78652C4947EB'),(11,'','','Ruby language','Schema for Ruby language','Y','.rb','alias\nand\nBEGIN\nbegin\nbreak\ncase\nclass\ndef\ndefined\ndo\nelse\nelsif\nEND\nend\nensure\nfalse\nfor\nif\nin\nmodule\nnext\nnil\nnot\nor\nredo\nrescue\nretry\nreturn\nself\nlambda\ntry\nself\nsuper\nthen\ntrue\nundef\nunless\nuntil\nwhen\nwhile\nyield','','N','N','N','N','N','N','N','D0D72D9F105F452191F75355A8D16A8A'),(12,'','','Delphi language','Schema for Delphi language','N','.dpk\n.dpr\n.inc\n.lpr\n.p\n.pas\n.pp','and\narray\nas\nasm\nbegin\ncase\nclass\nconst\nconstructor\ndestructor\ndispinterface\ndiv\ndo\ndownto\nelse\nend\nexcept\nexports\nfile\nfinalization\nfinally\nfor\nfunction\ngoto\nif\nimplementation\nin\ninherited\ninitialization\ninterface\nis\nlabel\nmod\nnot\nobject\nof\nor\npacked\nprocedure\nprogram\nproperty\nraise\nrecord\nrepeat\nresourcestring\nset\nshl\nshr\nstring\nthen\nthreadvar\nto\ntry\ntype\nunit\nuntil\nuses\nvar\nwhile\nwith\nxor\nabsolute\nabstract\nassembler\nautomated\ncdecl\ncontains\ndefault\ndelayed\ndeprecated\ndispid\ndynamic\nexperimental\nexport\nexternal\nfar\nfinal\nforward\nhelper\nimplements\nindex\ninline\nlibrary\nlocal\nmessage\nname\nnear\nnodefault\noperator\nout\noverload\noverride\npackage\npascal\nplatform\nprivate\nprotected\npublic\npublished\nread\nreadonly\nreference\nregister\nreintroduce\nrequires\nresident\nsafecall\nsealed\nstatic\nstdcall\nstored\nstrict\nunsafe\nvarargs\nvirtual\nwinapi\nwrite\nwriteln\nwriteonly\nansichar\nansistring\nboolean\nbyte\nbytebool\ncardinal\nchar\ncomp\ncurrency\ndouble\nextended\nfixedint\nfixeduint\nint16\nint32\nint64\nint8\ninteger\nlongbool\nreal\nreal48\nshortint\nshortstring\nsingle\nsmallint\nucs2char\nucs4char\nuint16\nuint32\nuint64\nuint8\nunicodestring\nwidechar\nwidestring\nword\nwordbool','','N','N','N','N','N','N','N','F4C60C7389D847EC994DBDD83685D640'),(13,'','','SQL Script language','Schema for SQL Script language','N','.sql\n.ash\n.bash\n.csh\n.makefile\n.mk','ABSOLUTE\nACTION\nADD\nALL\nALLOCATE\nALTER\nAND\nANY\nARE\nAS\nASC\nASSERTION\nAT\nAUTHORIZATION\nAVG\nBEGIN\nBETWEEN\nBIT\nBIT_LENGTH\nBOTH\nBY\nCASCADE\nCASCADED\nCASE\nCAST\nCATALOG\nCHAR\nCHARACTER\nCHAR_LENGTH\nCHARACTER_LENGTH\nCHECK\nCLOSE\nCOALESCE\nCOLLATE\nCOLLATION\nCOLUMN\nCOMMIT\nCONNECT\nCONNECTION\nCONSTRAINT\nCONSTRAINTS\nCONTINUE\nCONVERT\nCORRESPONDING\nCOUNT\nCREATE\nCROSS\nCURRENT\nCURRENT_DATE\nCURRENT_TIME\nCURRENT_TIMESTAMP\nCURRENT_USER\nCURSOR\nDATE\nDAY\nDEALLOCATE\nDEC\nDECIMAL\nDECLARE\nDEFAULT\nDEFERRABLE\nDEFERRED\nDELETE\nDESC\nDESCRIBE\nDESCRIPTOR\nDIAGNOSTICS\nDISCONNECT\nDISTINCT\nDOMAIN\nDOUBLE\nDROP\nELSE\nEND\nEND-EXEC\nESCAPE\nEXCEPT\nEXCEPTION\nEXEC\nEXECUTE\nEXISTS\nEXTERNAL\nEXTRACT\nFETCH\nFIRST\nFLOAT\nFOR\nFOREIGN\nFOUND\nFROM\nFULL\nGET\nGLOBAL\nGO\nGOTO\nGRANT\nGROUP\nHAVING\nHOUR\nIDENTITY\nIMMEDIATE\nIN\nINDICATOR\nINITIALLY\nINNER\nINPUT\nINSENSITIVE\nINSERT\nINT\nINTEGER\nINTERSECT\nINTERVAL\nINTO\nIS\nISOLATION\nJOIN\nKEY\nLANGUAGE\nLAST\nLEADING\nLEFT\nLEVEL\nLIKE\nLOCAL\nLOWER\nMATCH\nMAX\nMIN\nMINUTE\nMODULE\nMONTH\nNAMES\nNATIONAL\nNATURAL\nNCHAR\nNEXT\nNO\nNOT\nNULLIF\nNUMERIC\nOCTET_LENGTH\nOF\nON\nONLY\nOPEN\nOPTION\nOR\nORDER\nOUTER\nOUTPUT\nOVERLAPS\nPAD\nPARTIAL\nPOSITION\nPRECISION\nPREPARE\nPRESERVE\nPRIMARY\nPRIOR\nPRIVILEGES\nPROCEDURE\nPUBLIC\nREAD\nREAL\nREFERENCES\nRELATIVE\nRESTRICT\nREVOKE\nRIGHT\nROLLBACK\nROWS\nSCHEMA\nSCROLL\nSECOND\nSECTION\nSELECT\nSESSION\nSESSION_USER\nSET\nSIZE\nSMALLINT\nSOME\nSPACE\nSQL\nSQLCODE\nSQLERROR\nSQLSTATE\nSUBSTRING\nSUM\nSYSTEM_USER\nTABLE\nTEMPORARY\nTHEN\nTIME\nTIMESTAMP\nTIMEZONE_HOUR\nTIMEZONE_MINUTE\nTO\nTRAILING\nTRANSACTION\nTRANSLATE\nTRANSLATION\nTRIM\nUNION\nUNIQUE\nUNKNOWN\nUPDATE\nUPPER\nUSAGE\nUSER\nUSING\nVALUE\nVALUES\nVARCHAR\nVARYING\nVIEW\nWHEN\nWHENEVER\nWHERE\nWITH\nWORK\nWRITE\nYEAR\nZONE','','N','N','N','N','N','N','N','7C070DB0CF104C9082195DA525A9ECAC'),(14,'','','VHDL','Schema for VHSIC Hardware Description Language','N','.vhd\n.vhdl','abs\naccess\nafter\nalias\nall\nand\narchitecture\narray\nassert\nattribute\nbegin\nblock\nbody\nbuffer\nbus\ncase\ncomponent\nconfiguration\nconstant\ndisconnect\ndownto\nelse\nelsif\nend\nentity\nexit\nfile\nfor\nfunction\ngenerate\ngeneric\ngroup\nguarded\nif\nimpure\nin\ninertial\ninout\nis\nlabel\nlibrary\nlinkage\nliteral\nloop\nmap\nmod\nnand\nnew\nnext\nnor\nnot\nnull\nof\non\nopen\nor\nothers\nout\npackage\nport\npostponed\nprocedure\nprocess\npure\nrange\nrecord\nregister\nreject\nreturn\nrol\nror\nselect\nseverity\nsignal\nshared\nsla\nsli\nsra\nsrl\nsubtype\nthen\nto\ntransport\ntype\nunaffected\nunits\nuntil\nuse\nvariable\nwait\nwhen\nwhile\nwith\nxnor\nxor','','N','N','N','N','N','N','N','106853CD91584A19891E7BE0E3188872'),(15,'','','Cobol language','Schema for GNU Cobol language','N','.cbd\n.cbl\n.cdb\n.cdc\n.cob\n.cpy','ACCEPT\nACCESS\nACTIVE-CLASS\nADD\nADDRESS\nADVANCING\nAFTER\nALIGNED\nALL\nALLOCATE\nALPHABET\nALPHABETIC\nALPHABETIC-LOWER\nALPHABETIC-UPPER\nALPHANUMERIC\nALPHANUMERIC-EDITED\nALSO\nALTER\nALTERNATE\nAND\nANY\nANYCASE\nARE\nAREA\nAREAS\nARGUMENT-NUMBER\nARGUMENT-VALUE\nARITHMETIC\nAS\nASCENDING\nASCII\nASSIGN\nAT\nATTRIBUTE\nAUTHOR\nAUTO\nAUTO-SKIP\nAUTOMATIC\nAUTOTERMINATE\nAWAY-FROM-ZERO\nB-AND\nB-NOT\nB-OR\nB-XOR\nBACKGROUND-COLOR\nBACKGROUND-COLOUR\nBASED\nBEEP\nBEFORE\nBELL\nBINARY\nBINARY-C-LONG\nBINARY-CHAR\nBINARY-DOUBLE\nBINARY-INT\nBINARY-LONG\nBINARY-LONG-LONG\nBINARY-SHORT\nBIT\nBLANK\nBLINK\nBLOCK\nBOOLEAN\nBOTTOM\nBY\nBYTE-LENGTH\nCALL\nCANCEL\nCAPACITY\nCD\nCENTER\nCF\nCH\nCHAIN\nCHAINING\nCHARACTER\nCHARACTERS\nCLASS\nCLASS-ID\nCLASSIFICATION\nCLOSE\nCOB-CRT-STATUS\nCODE\nCODE-SET\nCOL\nCOLLATING\nCOLS\nCOLUMN\nCOLUMNS\nCOMMA\nCOMMAND-LINE\nCOMMIT\nCOMMON\nCOMMUNICATION\nCOMP\nCOMP-1\nCOMP-2\nCOMP-3\nCOMP-4\nCOMP-5\nCOMP-6\nCOMP-X\nCOMPUTATIONAL\nCOMPUTATIONAL-1\nCOMPUTATIONAL-2\nCOMPUTATIONAL-3\nCOMPUTATIONAL-4\nCOMPUTATIONAL-5\nCOMPUTATIONAL-6\nCOMPUTATIONAL-X\nCOMPUTE\nCONDITION\nCONFIGURATION\nCONSTANT\nCONTAINS\nCONTENT\nCONTINUE\nCONTROL\nCONTROLS\nCONVERSION\nCONVERTING\nCOPY\nCORR\nCORRESPONDING\nCOUNT\nCRT\nCRT-UNDER\nCURRENCY\nCURSOR\nCYCLE\nDATA\nDATA-POINTER\nDATE\nDATE-COMPILED\nDATE-MODIFIED\nDATE-WRITTEN\nDAY\nDAY-OF-WEEK\nDE\nDEBUGGING\nDECIMAL-POINT\nDECLARATIVES\nDEFAULT\nDELETE\nDELIMITED\nDELIMITER\nDEPENDING\nDESCENDING\nDESTINATION\nDETAIL\nDISABLE\nDISC\nDISK\nDISPLAY\nDIVIDE\nDIVISION\nDOWN\nDUPLICATES\nDYNAMIC\nEBCDIC\nEC\nEGI\nELSE\nEMI\nEMPTY-CHECK\nENABLE\nEND\nEND-ACCEPT\nEND-ADD\nEND-CALL\nEND-CHAIN\nEND-COMPUTE\nEND-DELETE\nEND-DISPLAY\nEND-DIVIDE\nEND-EVALUATE\nEND-IF\nEND-MULTIPLY\nEND-OF-PAGE\nEND-PERFORM\nEND-READ\nEND-RECEIVE\nEND-RETURN\nEND-REWRITE\nEND-SEARCH\nEND-START\nEND-STRING\nEND-SUBTRACT\nEND-UNSTRING\nEND-WRITE\nENTRY\nENTRY-CONVENTION\nENVIRONMENT\nENVIRONMENT-NAME\nENVIRONMENT-VALUE\nEO\nEOL\nEOP\nEOS\nEQUAL\nEQUALS\nERASE\nERROR\nESCAPE\nESI\nEVALUATE\nEXCEPTION\nEXCEPTION-OBJECT\nEXCLUSIVE\nEXIT\nEXPANDS\nEXTEND\nEXTERNAL\nFACTORY\nFALSE\nFD\nFILE\nFILE-CONTROL\nFILE-ID\nFILLER\nFINAL\nFIRST\nFLOAT-BINARY-128\nFLOAT-BINARY-32\nFLOAT-BINARY-64\nFLOAT-DECIMAL-16\nFLOAT-DECIMAL-34\nFLOAT-EXTENDED\nFLOAT-INFINITY\nFLOAT-LONG\nFLOAT-NOT-A-NUMBER\nFLOAT-SHORT\nFOOTING\nFOR\nFOREGROUND-COLOR\nFOREGROUND-COLOUR\nFOREVER\nFORMAT\nFREE\nFROM\nFULL\nFUNCTION\nFUNCTION-ID\nFUNCTION-POINTER\nGENERATE\nGET\nGIVING\nGLOBAL\nGO\nGOBACK\nGREATER\nGROUP\nGROUP-USAGE\nHEADING\nHIGH-VALUE\nHIGH-VALUES\nHIGHLIGHT\nI-O\nI-O-CONTROL\nID\nIDENTIFICATION\nIF\nIGNORE\nIGNORING\nIMPLEMENTS\nIN\nINDEX\nINDEXED\nINDICATE\nINDIRECT\nINHERITS\nINITIAL\nINITIALISE\nINITIALISED\nINITIALIZE\nINITIALIZED\nINITIATE\nINPUT\nINPUT-OUTPUT\nINSPECT\nINSTALLATION\nINTERFACE\nINTERFACE-ID\nINTERMEDIATE\nINTO\nINTRINSIC\nINVALID\nINVOKE\nIS\nJUST\nJUSTIFIED\nKEPT\nKEY\nKEYBOARD\nLABEL\nLAST\nLC_ALL\nLC_COLLATE\nLC_CTYPE\nLC_MESSAGES\nLC_MONETARY\nLC_NUMERIC\nLC_TIME\nLEADING\nLEFT\nLEFT-JUSTIFY\nLEFTLINE\nLENGTH\nLENGTH-CHECK\nLESS\nLIMIT\nLIMITS\nLINAGE\nLINAGE-COUNTER\nLINE\nLINE-COUNTER\nLINES\nLINKAGE\nLOCAL-STORAGE\nLOCALE\nLOCK\nLOW-VALUE\nLOW-VALUES\nLOWER\nLOWLIGHT\nMANUAL\nMEMORY\nMERGE\nMESSAGE\nMETHOD\nMETHOD-ID\nMINUS\nMODE\nMOVE\nMULTIPLE\nMULTIPLY\nNAME\nNATIONAL\nNATIONAL-EDITED\nNATIVE\nNEAREST-AWAY-FROM-ZERO\nNEAREST-EVEN\nNEAREST-TOWARD-ZERO\nNEGATIVE\nNESTED\nNEXT\nNO\nNO-ECHO\nNONE\nNORMAL\nNOT\nNULL\nNULLS\nNUMBER\nNUMBER-OF-CALL-PARAMETERS\nNUMBERS\nNUMERIC\nNUMERIC-EDITED\nOBJECT\nOBJECT-COMPUTER\nOBJECT-REFERENCE\nOCCURS\nOF\nOFF\nOMITTED\nON\nONLY\nOPEN\nOPTIONAL\nOPTIONS\nOR\nORDER\nORGANISATION\nORGANIZATION\nOTHER\nOUTPUT\nOVERFLOW\nOVERLINE\nOVERRIDE\nPACKED-DECIMAL\nPADDING\nPAGE\nPAGE-COUNTER\nPARAGRAPH\nPERFORM\nPF\nPH\nPIC\nPICTURE\nPLUS\nPOINTER\nPOSITION\nPOSITIVE\nPREFIXED\nPRESENT\nPREVIOUS\nPRINTER\nPRINTING\nPROCEDURE\nPROCEDURE-POINTER\nPROCEDURES\nPROCEED\nPROGRAM\nPROGRAM-ID\nPROGRAM-POINTER\nPROHIBITED\nPROMPT\nPROPERTY\nPROTECTED\nPROTOTYPE\nPURGE\nQUEUE\nQUOTE\nQUOTES\nRAISE\nRAISING\nRANDOM\nRD\nREAD\nREADY\nRECEIVE\nRECORD\nRECORDING\nRECORDS\nRECURSIVE\nREDEFINES\nREEL\nREFERENCE\nREFERENCES\nRELATION\nRELATIVE\nRELEASE\nREMAINDER\nREMARKS\nREMOVAL\nRENAMES\nREPLACE\nREPLACING\nREPORT\nREPORTING\nREPORTS\nREPOSITORY\nREQUIRED\nRESERVE\nRESET\nRESUME\nRETRY\nRETURN\nRETURN-CODE\nRETURNING\nREVERSE-VIDEO\nREVERSED\nREWIND\nREWRITE\nRF\nRH\nRIGHT\nRIGHT-JUSTIFY\nROLLBACK\nROUNDED\nROUNDING\nRUN\nSAME\nSCREEN\nSCROLL\nSD\nSEARCH\nSECONDS\nSECTION\nSECURE\nSECURITY\nSEGMENT\nSEGMENT-LIMIT\nSELECT\nSELF\nSEND\nSENTENCE\nSEPARATE\nSEQUENCE\nSEQUENTIAL\nSET\nSHARING\nSIGN\nSIGNED\nSIGNED-INT\nSIGNED-LONG\nSIGNED-SHORT\nSIZE\nSORT\nSORT-MERGE\nSORT-RETURN\nSOURCE\nSOURCE-COMPUTER\nSOURCES\nSPACE\nSPACES\nSPECIAL-NAMES\nSTANDARD\nSTANDARD-1\nSTANDARD-2\nSTANDARD-BINARY\nSTANDARD-DECIMAL\nSTART\nSTATEMENT\nSTATIC\nSTATUS\nSTDCALL\nSTEP\nSTOP\nSTRING\nSTRONG\nSUB-QUEUE-1\nSUB-QUEUE-2\nSUB-QUEUE-3\nSUBTRACT\nSUM\nSUPER\nSUPPRESS\nSYMBOL\nSYMBOLIC\nSYNC\nSYNCHRONISED\nSYNCHRONIZED\nSYSTEM-DEFAULT\nTAB\nTABLE\nTALLY\nTALLYING\nTAPE\nTERMINAL\nTERMINATE\nTEST\nTEXT\nTHAN\nTHEN\nTHROUGH\nTHRU\nTIME\nTIME-OUT\nTIMEOUT\nTIMES\nTO\nTOP\nTOWARD-GREATER\nTOWARD-LESSER\nTRACE\nTRAILING\nTRAILING-SIGN\nTRANSFORM\nTRUE\nTRUNCATION\nTYPE\nTYPEDEF\nUCS-4\nUNDERLINE\nUNIT\nUNIVERSAL\nUNLOCK\nUNSIGNED\nUNSIGNED-INT\nUNSIGNED-LONG\nUNSIGNED-SHORT\nUNSTRING\nUNTIL\nUP\nUPDATE\nUPON\nUPPER\nUSAGE\nUSE\nUSER\nUSER-DEFAULT\nUSING\nUTF-16\nUTF-8\nVAL-STATUS\nVALID\nVALIDATE\nVALIDATE-STATUS\nVALUE\nVALUES\nVARYING\nWAIT\nWHEN\nWHEN-COMPILED\nWITH\nWORDS\nWORKING-STORAGE\nWRITE\nYYYYDDD\nYYYYMMDD\nZERO\nZERO-FILL\nZEROES\nZEROS','-','N','N','N','N','N','N','N','84F53477561640D1BF351D806A7BA18B'),(16,'33BC9E8CC45F4D4D8C90E50C1416651A','','Objective-C language','Schema for Objective-C language','Y','.m\n.mm','BOOL\nSEL\nbycopy\nbyref\nid\nin\ninout\nnil\noneway\nout\nrelease\nretain\nself\nsuper\n__strong\n__weak\n@catch\n@class\n@defs\n@dynamic\n@encode\n@end\n@finally\n@implementation\n@interface\n@private\n@property\n@protected\n@protocol\n@public\n@selector\n@synthesize\n@throw\n@try','@','N','N','N','N','N','N','N','6162A0FCA6FD424C809E245F5F221985'),(17,'','','Ada language','Schema for Ada language','N','.ada\n.adb\n.ads','abort\nabs\nabstract\naccept\naccess\naliased\nall\nand\narray\nat\nbegin\nbody\ncase\nconstant\ndeclare\ndelay\ndelta\ndigits\ndo\nelse\nelsif\nend\nentry\nexception\nexit\nfor\nfunction\ngeneric\ngoto\nif\nin\ninterface\nis\nlimited\nloop\nmod\nnew\nnot\nof\nor\nothers\nout\noverriding\npackage\npragma\nprivate\nprocedure\nprotected\nraise\nrange\nrecord\nrem\nrenames\nrequeue\nreturn\nreverse\nselect\nseparate\nsome\nsubtype\nsynchronized\ntagged\ntask\nterminate\nthen\ntype\nuntil\nuse\nwhen\nwhile\nwith\nxor\nboolean\ncharacter\nfloat\ninteger\nlong_float\nlong_integer\nlong_long_float\nlong_long_integer\nstring\nwide_character\nwide_wide_character','_','N','N','N','N','N','N','N','41A5E80E567B43E1911CEC922AA611E7'),(18,'','','Perl language','Schema for Perl language','Y','.pl\n.pm','for\nwhile\ndo\nif\nelse\nelsif\neq\nne\nforeach\nand\nor\nabs\naccept\nalarm\natan2\nbind\nbinmode\nbless\ncaller\nchdir\nchmod\nchomp\nchop\nchown\nchr\nchroot\nclose\nclosedir\nconnect\ncontinue\ncos\ncrypt\ndbmclose\ndbmopen\ndefined\ndelete\ndie\ndo\ndump\neach\nendgrent\nendhostent\nendnetent\nendprotoent\nendpwent\nendservent\neof\neval\nexec\nexists\nexit\nexp\nfcntl\nfileno\nflock\nfork\nformat\nformline\ngetc\ngetgrent\ngetgrgid\ngetgrnam\ngethostbyaddr\ngethostbyname\ngethostent\ngetlogin\ngetnetbyaddr\ngetnetbyname\ngetnetent\ngetpeername\ngetpgrp\ngetppid\ngetpriority\ngetprotobyname\ngetprotobynumber\ngetprotoent\ngetpwent\ngetpwnam\ngetpwuid\ngetservbyname\ngetservbyport\ngetservent\ngetsockname\ngetsockopt\nglob\ngmtime\ngoto\ngrep\nhex\nimport\nindex\nint\nioctl\njoin\nkeys\nkill\nlast\nlc\nlcfirst\nlength\nlink\nlisten\nlocal\nlocaltime\nlock\nlog\nlstat\nmap\nmkdir\nmsgctl\nmsgget\nmsgrcv\nmsgsnd\nmy\nnext\nno\noct\nopen\nopendir\nord\npack\npackage\npipe\npop\npos\nprint\nprintf\nprototype\npush\nquotemeta\nrand\nread\nreaddir\nreadline\nreadlink\nrecv\nredo\nref\nrename\nrequire\nreset\nreturn\nreverse\nrewinddir\nrindex\nrmdir\nscalar\nseek\nseekdir\nselect\nsemctl\nsemget\nsemop\nsend\nsetgrent\nsethostent\nsetnetent\nsetpgrp\nsetpriority\nsetprotoent\nsetpwent\nsetservent\nsetsockopt\nshift\nshmctl\nshmget\nshmread\nshmwrite\nshutdown\nsin\nsleep\nsocket\nsocketpair\nsort\nsplice\nsplit\nsprintf\nsqrt\nsrand\nstat\nstudy\nsub\nsubstr\nsymlink\nsyscall\nsysread\nsysseek\nsystem\nsyswrite\ntell\ntelldir\ntie\ntime\ntimes\ntr\ntruncate\nuc\nucfirst\numask\nundef\nunlink\nunpack\nunshift\nuntie\nuse\nutime\nvalues\nvec\nwait\nwaitpid\nwantarray\nwarn\nwrite','_','N','N','N','N','N','N','N','F6E5F247DB8B4C22B81BE52452955BC1'),(19,'6D1BB76A898545F59A6864854D132652','','JavaScript language','Schema for JavaScript language','Y','.js\n.es','if\nelse\nwhile\ndo\nfor\ngoto\nswitch\ncase\ndefault\nbreak\ncontinue\nreturn\nstatic\nfunction\nvar\ndefined\nthrow\ntry\ncatch\nfinally\nvoid\nint\nchar\nfloat\ndouble\nboolean\nString\nObject\nthis\nsuper\nnew\ntypeof\nclass\ninterface\nabstract\nvirtual\nimplements\nextends\npublic\nprivate\nprotected\npackage\nfinal\nimport','','N','N','N','N','N','N','N','BC9081689F96405F9AC21A8069BD8870'),(20,'','','Shell Script language','Schema for Shell Script language','Y','.sh\n.ash\n.bash\n.csh\n.makefile\n.mk','cd\necho\nset\nunset\nexit\ntest\nsh\nshift\nexport\nfor\nwhile\ndo\ndone\nif\nelif\nendif\nfunction','','N','N','N','N','N','N','N','5457FFB8B71943CC9912AE1B3C2C40CA'),(21,'','','Base C-family language','Base schema for C-family languages','Y','','','_ #','N','N','N','N','N','N','N','6D1BB76A898545F59A6864854D132652'),(22,'6D1BB76A898545F59A6864854D132652','','C++ language','Schema for C++ language','Y','.c\n.cp\n.cpp\n.cc\n.cxx\n.h\n.hp\n.hpp\n.hh\n.hss\n.hxx\n.i\n.inc\n.inl\n.rc\n.ss\n.ts','if\nelse\nwhile\ndo\nfor\ngoto\nswitch\ncase\ndefault\nbreak\ncontinue\nreturn\nstatic\nextern\nusing\nthrow\ntry\ncatch\nfinally\nvoid\nint\nlong\nchar\nfloat\ndouble\nboolean\nenum\nstruct\nthis\nbase\nregister\nvolatile\nauto\nunsigned\nsigned\nconst\ntypedef\ntypeof\nsizeof\nclass\ninterface\nabstract\nvirtual\nnew\ndelete\npublic\nprivate\nprotected\nnamespace\n#if\n#ifdef\n#ifndef\n#else\n#elsif\n#endif\n#define\n#include\n#undef\n#error\n#warning\n#import\ndefined','','N','N','N','N','N','N','N','33BC9E8CC45F4D4D8C90E50C1416651A'),(23,'','','TCL-based language','Schema for any TCL-based language','N','.tcl\n.itcl\n.itk\n.tclx\n.tk\n.tkx','append\narray\nauto_mkindex\nconcat\nconsole\neval\nexpr\nformat\nglobal\nset\ntrace\nunset\nupvar\njoin\nlappend\nlindex\nlinsert\nlist\nllength\nlrange\nlreplace\nlsearch\nlsort\nsplit\nscan\nstring\nregexp\nregsub\nif\nelse\nelseif\nswitch\nfor\nforeach\nwhile\nbreak\ncontinue\nproc\nreturn\nsource\nunkown\nuplevel\ncd\nclose\neof\nfile\nflush\ngets\nglob\nopen\nread\nputs\npwd\nseek\ntell\ncatch\nerror\nexec\npid\nafter\ntime\nexit\nhistory\nrename\ninfo\nceil\nfloor\nround\nincr\nhypot\nabs\nacos\ncos\ncosh\nasin\nsin\nsinh\natan\natan2\ntan\ntanh\nlog\nlog10\nfmod\npow\nhypot\nsqrt\ndouble\nint\nbind\nbutton\ncanvas\ncheckbutton\ndestroy\nentry\nfocus\nframe\ngrab\nimage\nlabel\nlistbox\nlower\nmenu\nmenubutton\nmessage\noption\npack\nplacer\nradiobutton\nraise\nscale\nscrollbar\nselection\nsend\ntext\ntk\ntkerror\ntkwait\ntoplevel\nupdate\nwinfo\nwm\n\\a\n\\b\n\\f\n\\n\n\\r\n\\t\n\\v\n\\x\n\\\n$argv0\n$argv\n$argc\n$tk_version\n$tk_library\n$tk_strictMotif\nexact\nall\nindices\nnocase\nnocomplain\nnonewline\ncode\nerrorinfo\nerrorcode\natime\nanymore\nargs\nbody\ncompare\ncmdcount\ncommands\nctime\ncurrent\ndefault\ndev\ndirname\ndonesearch\nerrorinfo\nexecutable\nextension\nfirst\nglobals\ngid\nindex\nino\nisdirectory\nisfile\nkeep\nlast\nlevel\nlength\nlibrary\nlocals\nlstat\nmatch\nmode\nmtime\nnames\nnextelement\nnextid\nnlink\nnone\nprocs\nowned\nrange\nreadable\nreadlink\nredo\nrelease\nrootname\nscript\nshow\nsize\nstartsearch\nstat\nstatus\nsubstitute\ntail\ntclversion\ntolower\ntoupper\ntrim\ntrimleft\ntrimright\ntype\nuid\nvariable\nvars\nvdelete\nvinfo\nvisibility\nwindow\nwritable\naccelerator\nactiveforeground\nactivebackground\nanchor\naspect\nbackground\nbefore\nbg\nborderwidth\nbd\nbitmap\ncommand\ncursor\ndefault\nexpand\nfamily\nfg\nfill\nfont\nforce\nforeground\nfrom\nheight\nicon\nquestion\nwarning\nin\nipadx\nipady\njustify\nleft\ncenter\nright\nlength\npadx\npady\noffvalue\nonvalue\norient\nhorizontal\nvertical\noutline\noversrike\nrelief\nraised\nsunken\nflat\ngroove\nridge\nsolid\nscreen\nselectbackground\nselectforeground\nsetgrid\nside\nsize\nslant\nleft\nright\ntop\nbottom\nspacing1\nspacing2\nspacing3\nstate\nstipple\ntakefocus\ntearoff\ntextvariable\ntitle\nto\ntype\nabortretryignore\nok\nokcancel\nretrycancel\nyesno\nyesnocancel\nunderline\nvalue\nvariable\nweight\nwidth\nxscrollcommand\nyscrollcommand\nactive\nadd\narc\naspect\nbitmap\ncascade\ncget\nchildren\nclass\nclear\nclient\ncreate\ncolormodel\ncommand\nconfigure\ndeiconify\ndelete\ndisabled\nexists\nfocusmodel\nflash\nforget\ngeometry\nget\ngroup\nhandle\niconbitmap\niconify\niconmask\niconname\niconposition\niconwindow\nidletasks\ninsert\ninterps\nitemconfigure\ninvoke\nline\nmark\nmaxsize\nminsize\nmove\nname\nnormal\noverrideredirect\noval\nown\nphoto\npolygon\npositionfrom\npropagate\nprotocol\nranges\nrectangle\nremove\nresizable\nseparator\nslaves\nsizefrom\nstate\ntag\ntitle\ntransient\nwindow\nwithdraw\nxview\nyview\nActivate\nAlt\nAny\nB1\nB2\nB3\nButton1\nButton2\nButton3\nButtonPress\nButtonRelease\nDouble\nCirculate\nColormap\nConfigure\nControl\nDeactivate\nEscape\nExpose\nFocusIn\nFocusOut\nGravity\nKey\nKeyPress\nKeyRelease\nLock\nMeta\nProperty\nReparent\nShift\nUnmap\nVisibility\nButton\nButtonPress\nButtonRelease\nDestroy\nEscape\nEnter\nLeave\nMotion\nMenuSelect\nTriple\nall\nprivate\nconstructor\npublic\nmethod\nobject\nobject-oriented\nnamespace\nmega-widget\nprocedure\nconfigbody\nfind\nclasses\nobjects\ninherit\ndestructor\nheritage\ncommon\nprotected\nisa\nfunction\nprotection\nscope\ncallback\nensemble\npart\nwait\nimport\nsearch\nitcl_class\nprevious\nvirtual\nitcl_info\nitcl::find\nitcl::library\nitcl::patchLevel\nitcl::purist\nitcl::version\nitcl\nvariables\nlocal\nusual\nitk\nArchetype\ncomponent\nWidget\nitk::library\nignore\nitk_component\nitk_initialize\nitk_option\ndefine\nitk_interior\nconfig\ninit\nitclvars\nitkvars\ninterpreter\nitclsh\nshell','','N','N','N','N','N','N','N','5D2406E297B04E0196E20FF84A3F2E4B'),(24,'FC71AA863FE940CFB5E7C63F5E550AB4','','HTML','Schema for HyperText Markup Language (HTML)','Y','.html\n.htm\n.shtml','','','N','N','N','N','N','N','N','6B1FE0D149D14FABAAD946B61424E6A8'),(25,'D698F058286F40A3A3F035417C06BE6F','','Gosu language','Schema for Gosu language','Y','.gr\n.grs\n.gs\n.gsp\n.gst\n.gsx','and\nclasspath\nconstruct\ndelegate\nenhancement\nfunction\nget\nin\nnot\noverride\nparams\nproperty\nprint\nset\ntypeis\ntypeof\nuses\nusing\nvar\nvararg','','N','N','N','N','N','N','N','57492862AFB443429E306401E2F9BF11'),(26,'6D1BB76A898545F59A6864854D132652','','CSS','Schema for Cascading Stylesheet language','Y','.css\n.css2','','','N','N','N','N','N','N','N','0298C1D02E1E4A5EB028D502DCD1AF87'),(27,'6B1FE0D149D14FABAAD946B61424E6A8','D698F058286F40A3A3F035417C06BE6F','JavaServer Pages (JSP) language','Schema for JavaServer Pages language','Y','.jsp\n.jsi','','','N','N','N','N','N','N','N','0394288E03E94C9FAD09F5FF8A606078'),(28,'FC71AA863FE940CFB5E7C63F5E550AB4','','XML','Schema for Extensible Markup Language (XML)','Y','.xml\n.xaml\n.xsl\n.xlt\n.xhtml\n.config\n.resources\n.csproj\n.vsproj\n.aspx\n.resx\n.classpath\n.project\n.dti\n.eix\n.eti\n.etx\n.gx\n.pcf\n.tix\n.tti\n.ttx','','','N','N','N','N','N','N','N','1E89FCDDAB07450BB30DB1E271625D05');
/*!40000 ALTER TABLE `highlightingschema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `internal_sig_count_view`
--

DROP TABLE IF EXISTS `internal_sig_count_view`;
/*!50001 DROP VIEW IF EXISTS `internal_sig_count_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `internal_sig_count_view` AS SELECT 
 1 AS `review_id`,
 1 AS `internal_sig_count_view_num_signed`,
 1 AS `internal_sig_count_view_num_declined`,
 1 AS `internal_sig_count_view_num_unsigned`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `internal_sig_matrix_view`
--

DROP TABLE IF EXISTS `internal_sig_matrix_view`;
/*!50001 DROP VIEW IF EXISTS `internal_sig_matrix_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `internal_sig_matrix_view` AS SELECT 
 1 AS `review_id`,
 1 AS `internal_sig_matrix_view_sig_signed`,
 1 AS `internal_sig_matrix_view_sig_declined`,
 1 AS `internal_sig_matrix_view_sig_unsigned`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jiraassignment`
--

DROP TABLE IF EXISTS `jiraassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiraassignment` (
  `jiraassignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `jiraassignment_reviewid` int(11) NOT NULL,
  `jiraassignment_issueid` int(11) NOT NULL,
  `jiraassignment_issuekey` varchar(255) NOT NULL,
  `jiraassignment_remotesystemid` int(11) NOT NULL,
  `jiraassignment_userid` int(11) NOT NULL,
  PRIMARY KEY (`jiraassignment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiraassignment`
--

LOCK TABLES `jiraassignment` WRITE;
/*!40000 ALTER TABLE `jiraassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiraassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joinreviewchangelist`
--

DROP TABLE IF EXISTS `joinreviewchangelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joinreviewchangelist` (
  `joinreviewchangelist_id` int(11) NOT NULL AUTO_INCREMENT,
  `joinreviewchangelist_changelistid` int(11) NOT NULL,
  `joinreviewchangelist_userid` int(11) NOT NULL,
  `joinreviewchangelist_reviewid` int(11) NOT NULL,
  PRIMARY KEY (`joinreviewchangelist_id`),
  KEY `idx_joinreviewchangelist_changelistId` (`joinreviewchangelist_changelistid`),
  KEY `idx_joinreviewchangelist_userId` (`joinreviewchangelist_userid`),
  KEY `idx_joinreviewchangelist_reviewId` (`joinreviewchangelist_reviewid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joinreviewchangelist`
--

LOCK TABLES `joinreviewchangelist` WRITE;
/*!40000 ALTER TABLE `joinreviewchangelist` DISABLE KEYS */;
INSERT INTO `joinreviewchangelist` VALUES (1,1,1,2),(2,2,1,2),(3,3,1,2);
/*!40000 ALTER TABLE `joinreviewchangelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labeledlocation`
--

DROP TABLE IF EXISTS `labeledlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labeledlocation` (
  `labeledlocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `labeledlocation_label` varchar(100) NOT NULL,
  `labeledlocation_versionid` int(11) NOT NULL,
  PRIMARY KEY (`labeledlocation_id`),
  KEY `idx_labeledlocation_versionId` (`labeledlocation_versionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labeledlocation`
--

LOCK TABLES `labeledlocation` WRITE;
/*!40000 ALTER TABLE `labeledlocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `labeledlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lexemepattern`
--

DROP TABLE IF EXISTS `lexemepattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lexemepattern` (
  `lexemepattern_id` int(11) NOT NULL AUTO_INCREMENT,
  `lexemepattern_isenabled` char(1) NOT NULL,
  `lexemepattern_type` char(1) NOT NULL,
  `lexemepattern_title` varchar(127) NOT NULL,
  `lexemepattern_description` varchar(255) NOT NULL,
  `lexemepattern_regex` text NOT NULL,
  `lexemepattern_regexflags` int(11) NOT NULL,
  `lexemepattern_schemaid` int(11) NOT NULL,
  PRIMARY KEY (`lexemepattern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lexemepattern`
--

LOCK TABLES `lexemepattern` WRITE;
/*!40000 ALTER TABLE `lexemepattern` DISABLE KEYS */;
INSERT INTO `lexemepattern` VALUES (1,'Y','C','Multi-line comment','','<!--.*?-->',40,1),(2,'Y','C','DOCTYPE multi-line tag','','<!DOCTYPE.*?>',40,1),(3,'Y','F','SGML attributes','','\\b([\\w\\.:-]+)\\s*=\\s*\".*?\"[^<>]*>',40,1),(4,'Y','F','SGML attributes','','\\b([\\w\\.:-]+)\\s*=\\s*\'.*?\'[^<>]*>',40,1),(5,'Y','F','SGML attributes','','\\b([\\w\\.:-]+)\\s*=\\s*[\\w-].*?\"[^<>]*>',40,1),(6,'Y','R','SGML string','','\\b[\\w\\.:-]+\\s*=\\s*(\".*?\")[^<>]*>',40,1),(7,'Y','R','SGML string','','\\b[\\w\\.:-]+\\s*=\\s*(\'.*?\')[^<>]*>',40,1),(8,'Y','R','SGML string','','\\b[\\w\\.:-]+\\s*=\\s*([\\w-]+)[^<>]*>',40,1),(9,'Y','K','SGML tags','','<[\\?/]?([\\w\\.:-]+)',0,1),(10,'Y','I','ASP.NET Tags','','<\\%=?(.*?)\\%>',40,2),(11,'Y','C','\' Single line comments','','\'.*',0,3),(12,'Y','C','REM Single line comments','','\\bREM\\b.*',0,3),(13,'Y','N','Constants','','\\b\\d[\\w\\.]*',0,3),(14,'Y','N','Numeric constants','','&H[0-9A-Fa-f]*',0,3),(15,'Y','N','VB boolean constants','','\\b(?:true|false)\\b',2,3),(16,'Y','R','VB strings','','\".*?(?<!\\\\)\"',0,3),(17,'Y','C','/*...*/ Multi-line comments','','/\\*.*?\\*/',40,4),(18,'Y','C','// Single line comments','','//.*',0,4),(19,'Y','C','ASM comments','',';.*',0,4),(20,'Y','N','Assembler numeric constant','','(?:\\b|[-])\\d+(?:[Ee][-+]?\\d+)?(?:\\.\\d+(?:[Ee][+-]?\\d+)?)?\\b',0,4),(21,'Y','N','Assembler numeric constant','','[&][a-fA-F0-9]+\\b',0,4),(22,'Y','N','Assembler numeric constant','','\\b(?:0x|0f|0d)[a-fA-F0-9]+\\b',0,4),(23,'Y','N','Assembler numeric constant','','\\b[2-9]_\\d+\\b',0,4),(24,'Y','N','Assembler numeric constant','','\\b\\d[a-fA-F0-9]*[bhqBHQ]\\b',0,4),(25,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,4),(26,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,4),(27,'Y','I','PHP Balanced Tags','','<\\?(?:php)?=?(?:.*?)\\?>',40,5),(28,'Y','I','PHP Unbalanced Tags','','<\\?(?:php)?=?(?:.*)',40,5),(29,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,6),(30,'Y','N','Boolean values constant','','\\btrue\\b|\\bfalse\\b',2,6),(31,'Y','R','Double quotes multi-line string','','\"(?:[^\"\\\\]*(?:\\\\.[^\"\\\\]*)*)\"',0,6),(32,'Y','R','Single quotes multi-line string','','\'(?:[^\'\\\\]*(?:\\\\.[^\'\\\\]*)*)\'',0,6),(33,'Y','F','PHP variable','','\\$\\w+',0,6),(34,'Y','K','PHP open tag','','<(\\?(?:php)?=?)',0,6),(35,'Y','K','PHP close tag','','(\\?)>',0,6),(36,'Y','C','// Single line comments','','//.*',0,7),(37,'Y','C','/*...*/ Multi-line comments','','/\\*.*?\\*/',40,7),(38,'Y','N','Binary constants','','\'[bB]\\s*[01](?:[01]|(?:_[01]))*',0,7),(39,'Y','N','Octal constants','','\'[oO]\\s*[0-7](?:[0-7]|(?:_[0-7]))*',0,7),(40,'Y','N','Hexadecimal constants','','\'[hH]\\s*\\p{XDigit}(?:\\p{XDigit}|(?:_\\p{XDigit}))*',0,7),(41,'Y','N','Decimal constants','','\'[dD]\\s*\\d(?:\\d|(?:_\\d))*',0,7),(42,'Y','N','Simple decimal constants','','\\b\\d(?:\\d|(?:_\\d))*\\b',0,7),(43,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,7),(44,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,7),(45,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,8),(46,'Y','N','C#-style boolean and null values constant','','\\b(?:true|false|null)\\b',0,8),(47,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,9),(48,'Y','N','Java-style boolean and null values constant','','\\b(?:true|false|null)\\b',0,9),(49,'Y','C','# Single line comments','','#.*',0,10),(50,'Y','R','Python-style double quotes string','','\".*?(?<!\\\\)\"',0,10),(51,'Y','R','Python-style single quotes string','','\'.*?(?<!\\\\)\'',0,10),(52,'Y','R','Python-style double quotes multi-line string','','\"\"\".*?\"\"\"',40,10),(53,'Y','R','Python-style single quotes multi-line string','','\'\'\'.*?\'\'\'',40,10),(54,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,10),(55,'Y','N','Python-style boolean value constant','','\\b(?:True|False|None)\\b',0,10),(56,'Y','K','Python-style keyword','','\\b__\\w+__\\b',0,10),(57,'Y','C','# Single line comments','','#.*',0,11),(58,'Y','C','Ruby-style multi-line comments','','=begin.*=end',40,11),(59,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,11),(60,'Y','R','Ruby-style double quotes string','','\".*?(?<!\\\\)\"',0,11),(61,'Y','R','Ruby-style single quotes string','','\'.*?(?<!\\\\)\'',0,11),(62,'Y','C','// Single line comments','','//.*',0,12),(63,'Y','C','(*...*) Multi-line comments','','\\(\\*[\\s\\S]*?\\*\\)',0,12),(64,'Y','C','{...} Multi-line comments','','\\{[\\s\\S]*?\\}',0,12),(65,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,12),(66,'Y','N','Delphi-style boolean and null values constant','','\\b(?:true|false|nil)\\b',0,12),(67,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,12),(68,'Y','C','SQL-style single line comment','','--.*',0,13),(69,'Y','C','Multi-line comments','','/\\*.*?\\*/',40,13),(70,'Y','C','SQL-style multi-line comment','','\\{.*?\\}',40,13),(71,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,13),(72,'Y','N','SQL boolean and null values constants','','\\b(?:TRUE|FALSE|NULL)\\b',2,13),(73,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,13),(74,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,13),(75,'Y','C','-- Single line comments','','--.*',0,14),(76,'Y','N','Constants','','\\b\\d+\\b',0,14),(77,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,14),(78,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,14),(79,'Y','C','Cobol entry comments','','(?<=^......)\\/.*',8,15),(80,'Y','C','Cobol line comments','','(?<=^......)\\*.*',8,15),(81,'Y','C','Cobol new style comments','','\\*>.*',0,15),(82,'Y','N','Cobol numeric constant','','\\b[-+]?\\d+(?:\\.d+)*\\b',0,15),(83,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,15),(84,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,15),(85,'Y','N','Objective-C style nil and yes-no values constant','','\\b(?:nil|Nil|NIL|NO|YES)\\b',0,16),(86,'Y','C','-- Single line comments','','--.*',0,17),(87,'Y','N','Ada numeric constant','','(?:\\b|\\-|\\+)\\d+(?:(?:_\\d)|\\d)*(?:\\.\\d+(?:(?:_\\d)|\\d)*)*(?:[eE][+-]?\\d+(?:(?:_\\d)|\\d)*)*\\b',0,17),(88,'Y','N','Ada numeric constant with base','','\\b\\d+#[0-9a-fA-F]+(?:_[0-9a-fA-F]|[0-9a-fA-F])*(?:\\.[0-9a-fA-F]+(?:_[0-9a-fA-F]|[0-9a-fA-F])*)?#(?:[Ee][+-]?[0-9a-fA-F]+(?:_[0-9a-fA-F]|[0-9a-fA-F])*)*',0,17),(89,'Y','N','Ada-style boolean and null values constant','','\\b(?:true|false|null)\\b',0,17),(90,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,17),(91,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,17),(92,'Y','C','# Single line comments','','#.*',0,18),(93,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,18),(94,'Y','N','Boolean values constant','','\\btrue\\b|\\bfalse\\b',0,18),(95,'Y','F','Perl-style function','','[\\$\\@\\%]\\{[^}]+\\}',0,18),(96,'Y','F','Perl-style function','','[\\$\\@\\%][\\w#$\\\\*]\\w*',0,18),(97,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,18),(98,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,18),(99,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,19),(100,'Y','N','Java-style boolean and null values constant','','\\b(?:true|false|null)\\b',0,19),(101,'Y','C','# Single line comments','','#.*',0,20),(102,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,20),(103,'Y','N','Boolean values constant','','\\btrue\\b|\\bfalse\\b',0,20),(104,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,20),(105,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,20),(106,'Y','C','/*...*/ Multi-line comments','','/\\*.*?\\*/',40,21),(107,'Y','C','// Single line comments','','//.*',0,21),(108,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,21),(109,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,21),(110,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,22),(111,'Y','N','C-style boolean and null values constant','','\\b(?:true|false|null|NULL)\\b',0,22),(112,'Y','C','# Single line comments','','#.*',0,23),(113,'Y','N','Numeric constant','','\\b\\d[\\w\\.]*',0,23),(114,'Y','N','TCL boolean and null values constants','','\\b(?:TRUE|FALSE|NULL)\\b',2,23),(115,'Y','R','Double quotes string','','\"(?:[^\"\\r\\n\\\\]*(?:\\\\.[^\"\\r\\n\\\\]*)*)\"',0,23),(116,'Y','R','Single quotes string','','\'(?:[^\'\\r\\n\\\\]*(?:\\\\.[^\'\\r\\n\\\\]*)*)\'',0,23),(117,'Y','K','CSS selector','','([#\\w\\.,\\s:-]+)\\{',0,26),(118,'Y','F','CSS declaration','','\\b([\\w-]+)\\s*:\\s*.+?;',0,26),(119,'Y','N','CSS constant','','\\b[\\w-]+\\s*:\\s*(.+?);',0,26),(120,'Y','I','JSP Tags','','<\\%=?(.*?)\\%>',40,27);
/*!40000 ALTER TABLE `lexemepattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licensecountreached`
--

DROP TABLE IF EXISTS `licensecountreached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licensecountreached` (
  `licensecountreached_id` int(11) NOT NULL AUTO_INCREMENT,
  `licensecountreached_actiondate` datetime NOT NULL,
  `licensecountreached_userid` int(11) NOT NULL,
  PRIMARY KEY (`licensecountreached_id`),
  KEY `idx_licensecountreached_actionDate` (`licensecountreached_actiondate`),
  KEY `idx_licensecountreached_userId` (`licensecountreached_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licensecountreached`
--

LOCK TABLES `licensecountreached` WRITE;
/*!40000 ALTER TABLE `licensecountreached` DISABLE KEYS */;
/*!40000 ALTER TABLE `licensecountreached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginticket`
--

DROP TABLE IF EXISTS `loginticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginticket` (
  `loginticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `loginticket_uid` varchar(32) NOT NULL,
  `loginticket_username` varchar(64) NOT NULL,
  `loginticket_timetoliveseconds` int(11) NOT NULL,
  `loginticket_creationinstant` datetime NOT NULL,
  PRIMARY KEY (`loginticket_id`),
  KEY `idx_loginticket_uid` (`loginticket_uid`(8))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginticket`
--

LOCK TABLES `loginticket` WRITE;
/*!40000 ALTER TABLE `loginticket` DISABLE KEYS */;
INSERT INTO `loginticket` VALUES (1,'1ffdb2fe2fda6e94734ce4d547f06ef0','admin',0,'2018-02-15 18:32:13'),(2,'306b80bed4f13bfbda73940ae797b582','user1',0,'2018-03-01 14:38:31');
/*!40000 ALTER TABLE `loginticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadatadescription`
--

DROP TABLE IF EXISTS `metadatadescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatadescription` (
  `metadatadescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `metadatadescription_title` varchar(255) NOT NULL,
  `metadatadescription_description` varchar(255) NOT NULL,
  `metadatadescription_seq` int(6) NOT NULL,
  `metadatadescription_type` char(1) NOT NULL,
  `metadatadescription_min` int(11) NOT NULL,
  `metadatadescription_max` int(11) NOT NULL,
  `metadatadescription_validator` varchar(255) NOT NULL,
  `metadatadescription_targettype` varchar(30) NOT NULL,
  `metadatadescription_peruser` char(1) NOT NULL,
  `metadatadescription_category` varchar(255) NOT NULL,
  PRIMARY KEY (`metadatadescription_id`),
  KEY `idx_metadatadescription_category` (`metadatadescription_category`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatadescription`
--

LOCK TABLES `metadatadescription` WRITE;
/*!40000 ALTER TABLE `metadatadescription` DISABLE KEYS */;
INSERT INTO `metadatadescription` VALUES (1,'data-version','',0,'I',0,2000000000,'','','N','System'),(2,'base-url','',0,'S',0,255,'','','N','System'),(3,'allow-mark-all-read','',0,'C',1,1,'','','N','System'),(4,'allow-sysadmin-reviews','',0,'C',1,1,'','','N','System'),(5,'allow-reopen-reviews','',0,'C',1,1,'','','N','System'),(6,'allow-delete-reviews','',0,'C',1,1,'','','N','System'),(7,'allow-reject-reviews','',0,'C',1,1,'','','N','System'),(8,'allow-participant-comments','',0,'C',1,1,'','','N','System'),(9,'show_issues_in_reviews','',0,'C',1,1,'','','N','System'),(10,'review_fix_defect_restricted','',0,'C',1,1,'','','N','System'),(11,'review_access_restricted','',0,'C',1,1,'','','N','System'),(12,'allow-create-reviews','',0,'C',1,1,'','','N','System'),(13,'review_archive_access_restricted','',0,'C',1,1,'','','N','System'),(14,'review_upload_restricted','',0,'C',1,1,'','','N','System'),(15,'email_invite_enabled','',0,'C',1,1,'','','N','System'),(16,'email_invite_pattern','',0,'S',0,255,'','','N','System'),(17,'review-edit-details-after-complete','',0,'C',1,1,'','','N','System'),(18,'create-review-commit-action-item','',0,'C',1,1,'','','N','System'),(19,'show_create_user_on_home','',0,'C',1,1,'','','N','System'),(20,'show_system_dump_to_users','',0,'C',1,1,'','','N','System'),(21,'SubscriptionsAccess','',0,'S',0,255,'','','N','System'),(22,'disallowed-sub-roles','',0,'S',0,255,'','','N','System'),(23,'SubscriptionsMode','',0,'S',0,255,'','','N','System'),(24,'show-reports-access','',0,'S',0,255,'','','N','System'),(25,'collect-metrics','',0,'C',1,1,'','','N','System'),(26,'fun-fact-auto-enabled','',0,'C',1,1,'','','N','System'),(27,'tab-width','',0,'I',1,80,'','','N','System'),(28,'min-java-client-build','',0,'I',0,100000,'','','N','System'),(29,'login-ticket-ttl-seconds','',0,'I',-1,2000000000,'','','N','System'),(30,'min-dotnet-client-build','',0,'I',0,100000,'','','N','System'),(31,'review-deadline-default','',0,'I',0,365,'','','N','System'),(32,'send-email-from-user','',0,'C',1,1,'','','N','System'),(33,'mail_from','',0,'S',0,255,'','','N','System'),(34,'mail_prefix','',0,'S',0,255,'','','N','System'),(35,'support-email-addr','',0,'S',0,255,'','','N','System'),(36,'use-cal-organizer','',0,'C',1,1,'','','N','System'),(37,'mail-list','',0,'S',0,255,'','','N','System'),(38,'company-name','',0,'S',0,255,'','','N','System'),(39,'e_sigs_enable','',0,'C',1,1,'','','N','System'),(40,'e_sigs_roles','',0,'S',0,255,'','','N','System'),(41,'e_sigs_sign_prompt','',0,'S',0,255,'','','N','System'),(42,'e_sigs_decline_prompt','',0,'S',0,255,'','','N','System'),(43,'bug_create_url','',0,'S',0,255,'','','N','System'),(44,'system-wide-message','',0,'T',0,4000,'','','N','System'),(45,'binary-file-patterns-big','',0,'T',0,4000,'','','N','System'),(46,'image-file-patterns-big','',0,'T',0,4000,'','','N','System'),(47,'restricted-file-patterns-big','',0,'T',0,4000,'','','N','System'),(48,'client-installer-link','',0,'S',0,255,'','','N','System'),(49,'email-enabled','',0,'C',1,1,'','','N','System'),(50,'smtp-host','',0,'S',0,255,'','','N','System'),(51,'smtp-port','',0,'I',1,65535,'','','N','System'),(52,'smtp-user-name','',0,'S',0,255,'','','N','System'),(53,'smtp-password','',0,'S',0,255,'','','N','System'),(54,'license-fixed-users','',0,'I',-2000000000,2000000000,'','','N','System'),(55,'license-floating-users','',0,'I',-2000000000,2000000000,'','','N','System'),(56,'license-fixed-users-grace','',0,'I',-2000000000,2000000000,'','','N','System'),(57,'license-floating-users-grace','',0,'I',-2000000000,2000000000,'','','N','System'),(58,'license-signature','',0,'S',0,255,'','','N','System'),(59,'license-hostname','',0,'S',0,255,'','','N','System'),(60,'license-system','',0,'S',0,255,'','','N','System'),(61,'license-issue-date','',0,'S',0,255,'','','N','System'),(62,'license-company-key','',0,'S',0,255,'','','N','System'),(63,'license-expiration-date','',0,'S',0,255,'','','N','System'),(64,'license-origin','',0,'S',0,255,'','','N','System'),(65,'license-list','',0,'T',0,4000,'','','N','System'),(66,'license-product','',0,'S',0,255,'','','N','System'),(67,'min-refresh-interval','',0,'I',-2000000000,2000000000,'','','N','System'),(68,'min-abbrev-length','',0,'I',0,100,'','','N','System'),(69,'user-login-prompt-text','',0,'S',0,255,'','','N','System'),(70,'stalled-inspection-hours','',0,'I',-2000000000,2000000000,'','','N','System'),(71,'stalled-inspection-repeat-hours','',0,'I',-2000000000,2000000000,'','','N','System'),(72,'stalled-inspection-check-interval','',0,'I',-2000000000,2000000000,'','','N','System'),(73,'deadline-inspection-hours','',0,'I',-2000000000,2000000000,'','','N','System'),(74,'deadline-inspection-repeat-hours','',0,'I',-2000000000,2000000000,'','','N','System'),(75,'deadline-inspection-check-interval','',0,'I',-2000000000,2000000000,'','','N','System'),(76,'diff-charsets','',0,'T',0,4000,'','','N','System'),(77,'review-reject-reason-description','',0,'S',0,255,'','','N','System'),(78,'review-reject-reasons','',0,'T',0,4000,'','','N','System'),(79,'extra-Link-Name','',0,'S',0,255,'','','N','System'),(80,'extra-Dashboard-Links','',0,'T',0,4000,'','','N','System'),(81,'defect-label-singular','',0,'S',0,255,'','','N','System'),(82,'defects-label-plural','',0,'S',0,255,'','','N','System'),(83,'group-label-singular','',0,'S',0,255,'','','N','System'),(84,'groups-label-plural','',0,'S',0,255,'','','N','System'),(85,'compact-view','',0,'C',1,1,'','','N','System'),(86,'allow-moving-comments','',0,'C',1,1,'','','N','System'),(87,'instance-id','',0,'S',0,255,'','','N','System'),(88,'instance-info','',0,'S',0,255,'','','N','System'),(89,'server-guid','',0,'S',0,255,'','','N','System'),(90,'show-web-debug-to-users','',0,'C',1,1,'','','N','System'),(91,'enable-all-search-features','',0,'C',1,1,'','','N','System'),(92,'enable-user-file-activity-log','',0,'C',1,1,'','','N','System'),(93,'enable-jira-integration','',0,'C',1,1,'','','N','System'),(94,'enable-github-polling-integration','',0,'C',1,1,'','','N','System'),(95,'enable-github-integration','',0,'C',1,1,'','','N','System'),(96,'enable-gitlab-integration','',0,'C',1,1,'','','N','System'),(97,'enable-bitbucket-integration','',0,'C',1,1,'','','N','System'),(98,'newsticker-rss-url','',0,'S',0,255,'','','N','System'),(99,'rss-feed','',0,'T',0,4000,'','','N','System'),(100,'rss-last-update-time','',0,'S',0,255,'','','N','System'),(101,'allow-duplicate-group-name','',0,'C',1,1,'','','N','System'),(102,'savings-report-people-per-review','',0,'I',-2000000000,2000000000,'','','N','System'),(103,'savings-report-defects-found-per-review','',0,'I',-2000000000,2000000000,'','','N','System'),(104,'savings-report-hours-spent-per-review-per-person','',0,'S',0,255,'','','N','System'),(105,'savings-report-hourly-labor-cost','',0,'S',0,255,'','','N','System'),(106,'savings-report-reviews-per-month','',0,'I',-2000000000,2000000000,'','','N','System'),(107,'savings-report-dev-defect-cost','',0,'S',0,255,'','','N','System'),(108,'savings-report-qa-defect-cost','',0,'S',0,255,'','','N','System'),(109,'savings-report-customer-defect-cost','',0,'S',0,255,'','','N','System'),(110,'savings-report-defect-discovery-rate-increase','',0,'I',-2000000000,2000000000,'','','N','System'),(111,'hided-files-changes-policy','',0,'C',1,1,'','','N','System'),(112,'HideFilesAllowedRole','',0,'S',0,255,'','','N','System'),(113,'HideFilesAllowedPhase','',0,'S',0,255,'','','N','System'),(114,'show-company-login-logo','',0,'C',1,1,'','','N','System'),(115,'show-company-logo','',0,'C',1,1,'','','N','System'),(116,'notification','',0,'I',0,2000000000,'','User','N','SystemUserPrefs'),(117,'timeZone','',0,'S',0,255,'','User','N','SystemUserPrefs'),(118,'copyAuthor','',0,'I',0,2000000000,'','User','N','SystemUserPrefs'),(119,'defaultVersion','',0,'I',0,2000000000,'','User','N','SystemUserPrefs'),(120,'versionOrder','',0,'C',1,1,'','User','N','SystemUserPrefs'),(121,'scmConsolidationMethod','',0,'C',1,1,'','User','N','SystemUserPrefs'),(122,'compactView','',0,'S',0,255,'','User','N','SystemUserPrefs'),(123,'ChildrenStyle','',0,'S',0,255,'','User','N','SystemUserPrefs'),(124,'jiraDefaultProject','',0,'I',-2000000000,2000000000,'','User','N','SystemUserPrefs'),(125,'Severity','',1,'B',0,2000000000,'','Defect','N','AdminDefectFields'),(126,'Type','',2,'B',0,2000000000,'','Defect','N','AdminDefectFields'),(127,'Overview','',1,'T',0,4000,'','Review','N','AdminReviewFields'),(128,'Consolidated','',0,'C',1,1,'','Review','N','ReviewInternalFields'),(129,'RestrictedUpload','',0,'C',1,1,'','Review','N','ReviewInternalFields'),(130,'ExternalTaskId','',0,'S',0,255,'','Review','N','ReviewInternalFields'),(131,'JiraIssueId','',0,'S',0,255,'','Review','N','ReviewInternalFields'),(132,'ReviewFields','',0,'L',0,0,'','ReviewTemplate','N','TemplateCustomFields'),(133,'ParticipantFields','',0,'L',0,0,'','ReviewTemplate','N','TemplateCustomFields'),(134,'DefectFields','',0,'L',0,0,'','ReviewTemplate','N','TemplateCustomFields'),(135,'DisabledExternalLinks','',0,'L',0,0,'','ReviewTemplate','N','TemplateDisabledExternalLinks'),(136,'Visible Phase','',0,'I',-2000000000,2000000000,'','MetaDataDescription','N','ReviewCustomFieldProperties'),(137,'Due By Phase','',0,'I',-2000000000,2000000000,'','MetaDataDescription','N','ReviewCustomFieldProperties'),(138,'Ordering','',0,'C',1,1,'','MetaDataDescription','N','SelectCustomFieldProperties'),(139,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_subversion'),(140,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_subversion'),(141,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_cvs'),(142,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_cvs'),(143,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_perforce'),(144,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_perforce'),(145,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_clearcase'),(146,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_clearcase'),(147,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_tfs'),(148,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_tfs'),(149,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_vss'),(150,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_vss'),(151,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_cmvc'),(152,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_cmvc'),(153,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_accurev'),(154,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_accurev'),(155,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_starteam'),(156,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_starteam'),(157,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_mercurial'),(158,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_mercurial'),(159,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_git'),(160,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_git'),(161,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_synergy'),(162,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_synergy'),(163,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_rtc'),(164,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_rtc'),(165,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_surround'),(166,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_surround'),(167,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_mks'),(168,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_mks'),(169,'configuration','',0,'S',0,255,'','','N','ScmConfigTemplate_vault'),(170,'enforceAccessPermission','',0,'C',1,1,'','','N','ScmConfigTemplate_vault'),(171,'Review Created','Review created.  No files or participants yet.',1,'T',0,4000,'','','N','AdminTriggerFields'),(172,'Review Phase Changed','Review phase changed, e.g. Planning -> Inspection or Inspection -> Cancelled.',2,'T',0,4000,'','','N','AdminTriggerFields'),(173,'Added Files','Files and/or changelists attached to a review.',3,'T',0,4000,'','','N','AdminTriggerFields'),(174,'Notifications Sent','A notification (email, RSS, etc.) was sent to someone.',4,'T',0,4000,'','','N','AdminTriggerFields'),(175,'Defect Activity','A defect was added, modified, or marked open/fixed.  Use the defect unique ID to determine the difference.',5,'T',0,4000,'','','N','AdminTriggerFields'),(176,'User Created','A new user was created.  This runs whether or not the creation was automated or manual.',6,'T',0,4000,'','','N','AdminTriggerFields'),(177,'Role Changed','A participant was added, modified or removed from a review.',7,'T',0,4000,'','','N','AdminTriggerFields');
/*!40000 ALTER TABLE `metadatadescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadataselectitem`
--

DROP TABLE IF EXISTS `metadataselectitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadataselectitem` (
  `metadataselectitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `metadataselectitem_seq` int(6) NOT NULL,
  `metadataselectitem_enabled` char(1) NOT NULL,
  `metadataselectitem_title` varchar(255) NOT NULL,
  `metadataselectitem_description` text NOT NULL,
  `metadataselectitem_fieldid` int(11) NOT NULL,
  PRIMARY KEY (`metadataselectitem_id`),
  KEY `idx_metadataselectitem_fieldId` (`metadataselectitem_fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadataselectitem`
--

LOCK TABLES `metadataselectitem` WRITE;
/*!40000 ALTER TABLE `metadataselectitem` DISABLE KEYS */;
INSERT INTO `metadataselectitem` VALUES (1,1,'Y','Major','Significant problem, possibly with no work-around',125),(2,2,'Y','Minor','Small problem, work-around available',125),(3,1,'Y','Algorithm','',126),(4,2,'Y','Build','',126),(5,3,'Y','Data Access','',126),(6,4,'Y','Documentation','',126),(7,5,'Y','Error-Handling','',126),(8,6,'Y','Interface','',126),(9,7,'Y','Maintainability','',126),(10,8,'Y','Performance','',126),(11,9,'Y','Robustness','',126),(12,10,'Y','Style','',126),(13,11,'Y','Testing','',126),(14,12,'Y','Text','',126);
/*!40000 ALTER TABLE `metadataselectitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadatavaluecharacter`
--

DROP TABLE IF EXISTS `metadatavaluecharacter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatavaluecharacter` (
  `metadatavaluecharacter_id` int(11) NOT NULL AUTO_INCREMENT,
  `metadatavaluecharacter_targetid` int(11) NOT NULL,
  `metadatavaluecharacter_fieldid` int(11) NOT NULL,
  `metadatavaluecharacter_userid` int(11) NOT NULL,
  `metadatavaluecharacter_value` char(1) NOT NULL,
  PRIMARY KEY (`metadatavaluecharacter_id`),
  KEY `idx_metadatavaluecharacter_targetId` (`metadatavaluecharacter_targetid`),
  KEY `idx_metadatavaluecharacter_fieldId` (`metadatavaluecharacter_fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatavaluecharacter`
--

LOCK TABLES `metadatavaluecharacter` WRITE;
/*!40000 ALTER TABLE `metadatavaluecharacter` DISABLE KEYS */;
INSERT INTO `metadatavaluecharacter` VALUES (1,0,120,0,'A'),(2,0,129,0,'D'),(3,0,128,0,'N'),(4,0,138,0,'N'),(5,1,132,0,'I'),(6,1,134,0,'I'),(7,0,4,0,'Y'),(8,0,3,0,'Y'),(9,0,17,0,'N'),(10,0,18,0,'Y'),(11,0,5,0,'N'),(12,0,6,0,'Y'),(13,0,7,0,'N'),(14,0,25,0,'Y'),(15,0,92,0,'Y'),(16,0,111,0,'Y');
/*!40000 ALTER TABLE `metadatavaluecharacter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadatavaluedate`
--

DROP TABLE IF EXISTS `metadatavaluedate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatavaluedate` (
  `metadatavaluedate_id` int(11) NOT NULL AUTO_INCREMENT,
  `metadatavaluedate_targetid` int(11) NOT NULL,
  `metadatavaluedate_fieldid` int(11) NOT NULL,
  `metadatavaluedate_userid` int(11) NOT NULL,
  `metadatavaluedate_value` datetime NOT NULL,
  PRIMARY KEY (`metadatavaluedate_id`),
  KEY `idx_metadatavaluedate_targetId` (`metadatavaluedate_targetid`),
  KEY `idx_metadatavaluedate_fieldId` (`metadatavaluedate_fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatavaluedate`
--

LOCK TABLES `metadatavaluedate` WRITE;
/*!40000 ALTER TABLE `metadatavaluedate` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadatavaluedate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadatavalueinteger`
--

DROP TABLE IF EXISTS `metadatavalueinteger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatavalueinteger` (
  `metadatavalueinteger_id` int(11) NOT NULL AUTO_INCREMENT,
  `metadatavalueinteger_targetid` int(11) NOT NULL,
  `metadatavalueinteger_fieldid` int(11) NOT NULL,
  `metadatavalueinteger_userid` int(11) NOT NULL,
  `metadatavalueinteger_value` int(11) NOT NULL,
  PRIMARY KEY (`metadatavalueinteger_id`),
  KEY `idx_metadatavalueinteger_targetId` (`metadatavalueinteger_targetid`),
  KEY `idx_metadatavalueinteger_fieldId` (`metadatavalueinteger_fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatavalueinteger`
--

LOCK TABLES `metadatavalueinteger` WRITE;
/*!40000 ALTER TABLE `metadatavalueinteger` DISABLE KEYS */;
INSERT INTO `metadatavalueinteger` VALUES (1,0,102,0,2),(2,0,106,0,40),(3,0,103,0,5),(4,0,110,0,30),(5,0,116,0,1),(6,0,118,0,0),(7,0,119,0,0),(8,0,136,0,-1),(9,0,137,0,0),(10,1,132,0,127),(11,1,134,0,125),(12,1,134,0,126),(13,0,1,0,844),(14,0,54,0,-1),(15,0,55,0,-1),(16,0,56,0,-1),(17,0,57,0,-1),(18,0,70,0,0),(19,0,71,0,24),(20,0,72,0,10),(21,0,73,0,72),(22,0,74,0,24),(23,0,75,0,10),(24,0,31,0,0);
/*!40000 ALTER TABLE `metadatavalueinteger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadatavaluestring`
--

DROP TABLE IF EXISTS `metadatavaluestring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatavaluestring` (
  `metadatavaluestring_id` int(11) NOT NULL AUTO_INCREMENT,
  `metadatavaluestring_targetid` int(11) NOT NULL,
  `metadatavaluestring_fieldid` int(11) NOT NULL,
  `metadatavaluestring_userid` int(11) NOT NULL,
  `metadatavaluestring_value` varchar(255) NOT NULL,
  PRIMARY KEY (`metadatavaluestring_id`),
  KEY `idx_metadatavaluestring_targetId` (`metadatavaluestring_targetid`),
  KEY `idx_metadatavaluestring_fieldId` (`metadatavaluestring_fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatavaluestring`
--

LOCK TABLES `metadatavaluestring` WRITE;
/*!40000 ALTER TABLE `metadatavaluestring` DISABLE KEYS */;
INSERT INTO `metadatavaluestring` VALUES (1,0,89,0,'76ee91f822aa8c93b216a32a4c716df1'),(2,0,98,0,'http://codecollaborator.smartbear.com/news/rss.php'),(3,0,109,0,'3200.0'),(4,0,108,0,'200.0'),(5,0,107,0,'25.0'),(6,0,105,0,'50.0'),(7,0,104,0,'0.75'),(8,0,117,0,'America/New_York'),(9,0,122,0,'D'),(10,0,130,0,''),(11,0,131,0,''),(12,0,87,0,'2dcc304ec2ef35223c81649227a16939'),(13,0,88,0,'Started at: Tue May 08 13:37:27 EDT 2018\nAccessed via: https://localhost:8443\nRunning version: 11.0.11000\nIP Address(es):\n10.0.25.37\nfe80:0:0:0:0:100:7f:fffe%net5\nfe80:0:0:0:2042:ac35:60d2:1745%wlan3\nfe80:0:0:0:b4c8:2335:aff4:1515%eth3\nfe80:0:0:0:c9a5:...'),(14,0,58,0,''),(15,0,61,0,''),(16,0,63,0,'1521244800'),(17,0,62,0,'trial'),(18,0,59,0,''),(19,0,60,0,''),(20,0,64,0,'v4'),(21,0,66,0,'enterprise'),(22,0,2,0,'https://localhost:8443'),(23,0,77,0,'List of reasons to choose from when rejecting a review. Leave this list empty if providing a reason is not required.'),(24,0,112,0,'AUTHORS'),(25,0,113,0,'PLANNING');
/*!40000 ALTER TABLE `metadatavaluestring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadatavaluestringbig`
--

DROP TABLE IF EXISTS `metadatavaluestringbig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadatavaluestringbig` (
  `metadatavaluestringbig_id` int(11) NOT NULL AUTO_INCREMENT,
  `metadatavaluestringbig_targetid` int(11) NOT NULL,
  `metadatavaluestringbig_fieldid` int(11) NOT NULL,
  `metadatavaluestringbig_userid` int(11) NOT NULL,
  `metadatavaluestringbig_value` text NOT NULL,
  PRIMARY KEY (`metadatavaluestringbig_id`),
  KEY `idx_metadatavaluestringbig_targetId` (`metadatavaluestringbig_targetid`),
  KEY `idx_metadatavaluestringbig_fieldId` (`metadatavaluestringbig_fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadatavaluestringbig`
--

LOCK TABLES `metadatavaluestringbig` WRITE;
/*!40000 ALTER TABLE `metadatavaluestringbig` DISABLE KEYS */;
INSERT INTO `metadatavaluestringbig` VALUES (1,0,65,0,'D383-765E-7D1A-0B6D-6A50-8F2F-8DD3-D8DE'),(2,0,45,0,'*.ppt,*.pptx'),(3,0,76,0,'UTF-8\nUTF-16LE\nUTF-16BE\nISO-8859-1\nISO-8859-15\nWindows-1252\nEUC-JP\nEUC-KR'),(4,0,78,0,'');
/*!40000 ALTER TABLE `metadatavaluestringbig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_userid` int(11) NOT NULL,
  `notification_createdon` datetime NOT NULL,
  `notification_reviewid` int(11) NOT NULL,
  `notification_severity` int(3) unsigned NOT NULL,
  `notification_url` varchar(255) NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_textplain` text NOT NULL,
  `notification_texthtml` text NOT NULL,
  `notification_groupid` int(11) NOT NULL,
  `notification_calendar` char(1) NOT NULL,
  `notification_cclist` varchar(255) NOT NULL,
  `notification_creatorid` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `idx_notification_userId` (`notification_userid`),
  KEY `idx_notification_reviewId` (`notification_reviewid`),
  KEY `idx_notification_groupId` (`notification_groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationtemplate`
--

DROP TABLE IF EXISTS `notificationtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationtemplate` (
  `notificationtemplate_id` int(11) NOT NULL AUTO_INCREMENT,
  `notificationtemplate_titletemplate` varchar(255) NOT NULL,
  `notificationtemplate_messagetemplate` text NOT NULL,
  `notificationtemplate_suppressed` char(1) NOT NULL,
  `notificationtemplate_templatecode` int(10) unsigned NOT NULL,
  PRIMARY KEY (`notificationtemplate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationtemplate`
--

LOCK TABLES `notificationtemplate` WRITE;
/*!40000 ALTER TABLE `notificationtemplate` DISABLE KEYS */;
INSERT INTO `notificationtemplate` VALUES (1,'Review #${review.id} complete','Review #${review.id}: \"${review.title}\" is complete.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',1),(2,'Review #${review.id} complete and contains unread messages','Review #${review.id}: \"${review.title}\" is complete and contains unread messages.\nThank you for participating.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',2),(3,'Resume inspection on Review #${review.id}','Review #${review.id}: \"${review.title}\" is back in the ${review.phase} phase.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',3),(4,'Review #${review.id} cancelled','Review #${review.id}: \"${review.title}\" has been cancelled by ${actor.name}.  No further activity can take place.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',4),(5,'New files in Review #${review.id}','New files have been uploaded to Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',5),(6,'New files in Review #${review.id}','New files have been uploaded to Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',6),(7,'Review #${review.id} complete and contains unread messages','Review #${review.id}: \"${review.title}\" is complete and contains unread messages.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',7),(8,'Conversation initiated in Review #${review.id}','${actor.name} has commented in Review #${review.id}: \"${review.title}\".  ${user.name} is invited back to review and respond.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',8),(9,'Review #${review.id} is ready for rework.','Review #${review.id}: \"${review.title}\", completed the inspection phase with defects.  ${review.creator.name} will need to rework the defects.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',9),(10,'Review #${review.id}: \"${review.title}\" needs your attention.','Review #${review.id} is stalled because everyone is waiting for each other or has said they are done, so you are being reactivated to help resolve this issue.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',10),(11,'Review #${review.id} complete and contains unread messages; Awaiting checkin.','Review #${review.id}: \"${review.title}\" is complete and contains unread messages.\n${review.creator.name} needs to commit the changes to version control and take a look at the unread messages.','N',11),(12,'Review #${review.id}: \"${review.title}\" is currently stalled waiting for ${user.name}','Review #${review.id} is awaiting approval from ${user.name} before it can be completed.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',12),(13,'Review #${review.id} complete and contains unread messages','Review #${review.id}: \"${review.title}\" is complete and there are messages that have not been read.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',13),(14,'Start inspection on new Review #${review.id}','You are a ${role.title} for new Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',14),(15,'Review #${review.id} complete; Awaiting checkin.','Review #${review.id}: \"${review.title}\" is complete.\n${review.creator.name} needs to commit the changes to version control.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',15),(16,'Start inspection on Review #${review.id}','${actor.name} has added you as ${role.title} in Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',16),(17,'Respond to new chat in Review #${review.id}','${actor.name} has commented in Review #${review.id}: \"${review.title}\".  You will need to read the comments and respond if appropriate.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',17),(18,'Review #${review.id} is in rework.','The author is reworking defects found in Review #${review.id}: \"${review.title}\".  You will be notified when you need to review the rework.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',18),(19,'Review #${review.id} complete','Review #${review.id}: \"${review.title}\" is complete.\nThank you for participating.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',19),(20,'Resume inspection on Review #${review.id}','Review #${review.id}: \"${review.title}\" is back in the ${review.phase} phase.  Users should begin reviewing the author\'s proposed fixes.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',20),(21,'New Review #${review.id} inspection underway','Review #${review.id}: \"${review.title}\" is beginning the inspection phase.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',21),(22,'No longer a participant in Review #${review.id}','${actor.name} has removed you from Review #${review.id}: \"${review.title}\".\n\nYou are no longer part of this review.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',22),(23,'Review #${review.id} moved to ${review.phase}','Review #${review.id}: \"${review.title}\" has been moved back to the ${review.phase} phase by ${actor.name}.\n${review.creator.name} will need to finish planning the review so the inspection can continue.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',23),(24,'Start inspection on new Review #${review.id}','You are a ${role.title} for new Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',24),(25,'Review Complete and Contains Unread Messages; Submit changes from Review #${review.id}','Review #${review.id}: \"${review.title}\" is complete and contains unread messages.\nYou can now commit these changes to version control.\nYou need to take a look at the unread messages before committing.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',25),(26,'Review Complete; Submit changes from Review #${review.id}','Review #${review.id}: \"${review.title}\" is complete.\nYou can now commit these changes to version control.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',26),(27,'Review #${review.id} complete','Review #${review.id}: \"${review.title}\" is complete.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',27),(28,'All reviewers finished with Review #${review.id}: \"${review.title}\"','All reviewers have marked Review #${review.id} complete.  The review will be complete when the author(s) mark the review complete.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',28),(29,'Review #${review.id}: \"${review.title}\" is currently stalled waiting for ${user.name}','Review #${review.id} has defects that need to be fixed by ${user.name} and verified before the review can complete.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',29),(30,'Review #${review.id}: \"${review.title}\" needs your attention.','Review #${review.id} has defects that you need to fix before the review can complete.  Please fix the issues, upload the fixes back to Review #${review.id}, and move the review to verification phase so it can complete.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',30),(31,'Review #${review.id}: \"${review.title}\" needs your attention','Review #${review.id} has not been completed and needs your attention.  Your role of ${role.title} means your approval is required before the review is complete.\n\nPlease visit Review #${review.id} as soon as you can.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',31),(32,'Review #${review.id} cancelled ','Review #${review.id}: \"${review.title}\" has been cancelled by ${actor.name}.  No further activity can take place.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',32),(33,'Role in Review #${review.id} has changed to ${role.title}','${actor.name} has changed your role to ${role.title} in Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',33),(34,'All reviewers finished with Review #${review.id}: \"${review.title}\"','All reviewers have marked Review #${review.id} complete.  You must also mark the review complete for it to be finished.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',34),(35,'Continue Planning Review #${review.id}','Review #${review.id}: \"${review.title}\" has been moved back to the ${review.phase} phase by ${actor.name}.\nYou need to finish planning the review so the inspection can continue.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',35),(36,'Rework defects in Review #${review.id}','You need to rework defects found in Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',36),(37,'Poke sent by ${actor.name} about Review #${review.id}: \"${review.title}\"','Review #${review.id}: \"${review.title}\" requires your attention - ${actor.name} sent you a poke.','N',37),(38,'Review #${review.id} rejected ','Review #${review.id}: \"${review.title}\" has been rejected by ${actor.name}.  No further activity can take place.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',38),(39,'Review #${review.id} rejected','Review #${review.id}: \"${review.title}\" has been rejected by ${actor.name}.  No further activity can take place.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',39),(40,'Review #${review.id} is open for annotation.','You are a ${role.title} for Review #${review.id}: \"${review.title}\" which is now in the ${review.phase} phase.  You are invited to add comments and materials before the inspection begins.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',40),(41,'Review #${review.id} is open for annotation.','Review #${review.id}: \"${review.title}\" is now in the ${review.phase} phase.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',41),(42,'Review #${review.id}: \"${review.title}\" needs your attention.','Review #${review.id} is currently stalled in the ${review.phase} phase and is waiting for you to begin the inspection.','N',42),(43,'Review #${review.id} complete and needs to be signed','Review #${review.id}: \"${review.title}\" is complete.\nYou are required to sign off on this Review.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',43),(44,'Review #${review.id} complete; Awaiting signatures.','Review #${review.id}: \"${review.title}\" is complete.\nThe Review now needs to be signed for approval.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',44),(45,'Review #${review.id}: Signature has been rejected.','A signer has declined to sign Review #${review.id}.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',45),(46,'Review #${review.id} signed','Review #${review.id}: \"${review.title}\" is now signed.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',46),(47,'Review #${review.id} signed; Awaiting checkin.','Review #${review.id}: \"${review.title}\" is now signed.\nYou can now commit these changes to version control.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',47),(48,'You are a Review Pool candidate for Review #${review.id}.','Review #${review.id}: \"${review.title}\" requires Review Pool participant selection.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',48),(49,'Review #${review.id} has been created and requires your action.','${actor.name} has added you as ${role.title} in Review #${review.id}: \"${review.title}\".\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',49),(50,'Collaborator: User denied access - License count reached','User ${actor.name}\n was denied access because there are no more licenses available.\n To increase your Collaborator license count, contact your SmartBear Account Manager - sales@smartbear.com.','N',50),(51,'Review #${review.id}: \"${review.title}\" is approaching the Deadline: ${review.deadline} and needs your attention.','Review #${review.id} is currently approaching the Deadline: ${review.deadline} in the ${review.phase} phase and is waiting for you to begin the inspection.','N',51),(52,'Review #${review.id}: \"${review.title}\" is approaching the Deadline: ${review.deadline} and needs your attention.','Review #${review.id}: \"${review.title}\" is approaching the Deadline: ${review.deadline} and has defects that need to be addressed before the review can complete. Please fix the issues, upload the fixes back to Review #${review.id}.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',52),(53,'Review #${review.id}: \"${review.title}\" is currently approaching the Deadline: ${review.deadline} for ${user.name}','Review #${review.id}: \"${review.title}\" is currently approaching the Deadline: ${review.deadline} for ${user.name} and verified before the review can complete.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',53),(54,'Review #${review.id}: \"${review.title}\" is approaching the Deadline: ${review.deadline} and needs your attention','Review #${review.id} has not been completed and is approaching the Deadline: ${review.deadline}.  Your role of ${role.title} means your approval is required before the review is complete.\n\nPlease visit Review #${review.id} as soon as you can.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',54),(55,'Review #${review.id}: \"${review.title}\" is currently approaching the Deadline: ${review.deadline} for ${user.name}','Review #${review.id} is awaiting approval from ${user.name} before it can be completed.\nCreated: ${review.datecreated} by ${review.creator.name}\nDeadline: ${review.deadline}\nWorkflow: ${review.workflow}\nDefect Log: ${review.defectlog}\n','N',55),(56,'Review #${review.id}: \"${review.title}\"','Review #${review.id}: \"${review.title}\"\nAuthor: ${review.author.name}\nCreated: ${review.datecreated}\nDeadline: ${review.deadline}\nReview Type: ${review.workflow}\n','N',56);
/*!40000 ALTER TABLE `notificationtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagecoordinate`
--

DROP TABLE IF EXISTS `pagecoordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagecoordinate` (
  `pagecoordinate_id` int(11) NOT NULL AUTO_INCREMENT,
  `pagecoordinate_page` int(10) unsigned NOT NULL,
  `pagecoordinate_xpos` int(10) unsigned NOT NULL,
  `pagecoordinate_ypos` int(10) unsigned NOT NULL,
  `pagecoordinate_pinnumber` int(10) unsigned NOT NULL,
  `pagecoordinate_initialversionid` int(10) unsigned NOT NULL,
  `pagecoordinate_versionid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pagecoordinate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagecoordinate`
--

LOCK TABLES `pagecoordinate` WRITE;
/*!40000 ALTER TABLE `pagecoordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagecoordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `participant_custom_dropdowns`
--

DROP TABLE IF EXISTS `participant_custom_dropdowns`;
/*!50001 DROP VIEW IF EXISTS `participant_custom_dropdowns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `participant_custom_dropdowns` AS SELECT 
 1 AS `dropdownid`,
 1 AS `dropdownoption`,
 1 AS `customfield`,
 1 AS `customfield_enabled`,
 1 AS `dropdownoption_enabled`,
 1 AS `sequence`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `participant_multiline_values`
--

DROP TABLE IF EXISTS `participant_multiline_values`;
/*!50001 DROP VIEW IF EXISTS `participant_multiline_values`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `participant_multiline_values` AS SELECT 
 1 AS `reviewId`,
 1 AS `fieldName`,
 1 AS `userId`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `participant_select_values`
--

DROP TABLE IF EXISTS `participant_select_values`;
/*!50001 DROP VIEW IF EXISTS `participant_select_values`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `participant_select_values` AS SELECT 
 1 AS `reviewId`,
 1 AS `fieldName`,
 1 AS `userId`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `participant_singleline_values`
--

DROP TABLE IF EXISTS `participant_singleline_values`;
/*!50001 DROP VIEW IF EXISTS `participant_singleline_values`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `participant_singleline_values` AS SELECT 
 1 AS `reviewId`,
 1 AS `fieldName`,
 1 AS `userId`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `phase`
--

DROP TABLE IF EXISTS `phase`;
/*!50001 DROP VIEW IF EXISTS `phase`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `phase` AS SELECT 
 1 AS `phase_id`,
 1 AS `phase_help1`,
 1 AS `phase_help2`,
 1 AS `phase_help3`,
 1 AS `phase_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `remotesystem`
--

DROP TABLE IF EXISTS `remotesystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remotesystem` (
  `remotesystem_id` int(11) NOT NULL AUTO_INCREMENT,
  `remotesystem_title` varchar(255) NOT NULL,
  `remotesystem_config` text NOT NULL,
  `remotesystem_repo` varchar(255) NOT NULL,
  `remotesystem_token` varchar(255) NOT NULL,
  PRIMARY KEY (`remotesystem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remotesystem`
--

LOCK TABLES `remotesystem` WRITE;
/*!40000 ALTER TABLE `remotesystem` DISABLE KEYS */;
INSERT INTO `remotesystem` VALUES (1,'GitHub','{\"repoURI\":\"https://github.com/yimyromero/integration.git\",\"apiToken\":\"12be2a68ca9c33c455c8a29ee910091ad23fa273\",\"secretToken\":\"\",\"branch\":\"develop, master\",\"branchToIgnorePushes\":\"develop\",\"autoMerge\":\"Do nothing\",\"autoClose\":\"Do nothing\"}','https://github.com/yimyromero/integration','GITHUB');
/*!40000 ALTER TABLE `remotesystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remotesystemreviewrelation`
--

DROP TABLE IF EXISTS `remotesystemreviewrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remotesystemreviewrelation` (
  `remotesystemreviewrelation_id` int(11) NOT NULL AUTO_INCREMENT,
  `remotesystemreviewrelation_pullrqnumber` int(11) NOT NULL,
  `remotesystemreviewrelation_reviewid` int(11) NOT NULL,
  `remotesystemreviewrelation_ref` varchar(255) NOT NULL,
  `remotesystemreviewrelation_remotesystemid` int(11) NOT NULL,
  PRIMARY KEY (`remotesystemreviewrelation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remotesystemreviewrelation`
--

LOCK TABLES `remotesystemreviewrelation` WRITE;
/*!40000 ALTER TABLE `remotesystemreviewrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `remotesystemreviewrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remoteusermapping`
--

DROP TABLE IF EXISTS `remoteusermapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remoteusermapping` (
  `remoteusermapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `remoteusermapping_remoteusername` varchar(255) NOT NULL,
  `remoteusermapping_userid` int(11) NOT NULL,
  `remoteusermapping_remotesystemid` int(11) NOT NULL,
  PRIMARY KEY (`remoteusermapping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remoteusermapping`
--

LOCK TABLES `remoteusermapping` WRITE;
/*!40000 ALTER TABLE `remoteusermapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `remoteusermapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportcategory`
--

DROP TABLE IF EXISTS `reportcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportcategory` (
  `reportcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `reportcategory_description` varchar(255) NOT NULL,
  `reportcategory_order` int(11) NOT NULL,
  `reportcategory_title` varchar(255) NOT NULL,
  PRIMARY KEY (`reportcategory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportcategory`
--

LOCK TABLES `reportcategory` WRITE;
/*!40000 ALTER TABLE `reportcategory` DISABLE KEYS */;
INSERT INTO `reportcategory` VALUES (1,'Lists of key items',1,'Lists'),(2,'Detailed information about particular reviews',2,'Detailed Reports'),(3,'Reports about defect metrics',3,'Defects'),(4,'Overall review metrics',4,'Metrics');
/*!40000 ALTER TABLE `reportcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportfilter`
--

DROP TABLE IF EXISTS `reportfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportfilter` (
  `reportfilter_id` int(11) NOT NULL AUTO_INCREMENT,
  `reportfilter_title` varchar(255) NOT NULL,
  `reportfilter_classname` varchar(255) NOT NULL,
  `reportfilter_defaultvalue` varchar(255) NOT NULL,
  `reportfilter_parametername` varchar(255) NOT NULL,
  `reportfilter_reporttemplateid` int(11) NOT NULL,
  PRIMARY KEY (`reportfilter_id`),
  KEY `idx_reportfilter_reportTemplateId` (`reportfilter_reporttemplateid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportfilter`
--

LOCK TABLES `reportfilter` WRITE;
/*!40000 ALTER TABLE `reportfilter` DISABLE KEYS */;
INSERT INTO `reportfilter` VALUES (1,'User Login','com.smartbear.ccollab.report.FilterLike','','UserLogin',1),(2,'User Full Name','com.smartbear.ccollab.report.FilterLike','','UserFullname',1),(3,'Change List Author','com.smartbear.ccollab.report.FilterLike','','ChangelistAuthor',2),(4,'Changelist ID','com.smartbear.ccollab.report.FilterInteger','0','ChangelistId',2),(5,'Author','com.smartbear.ccollab.report.FilterLike','','ChangelistAuthor',4),(6,'Changelist ID','com.smartbear.ccollab.report.FilterInteger','0','ChangelistId',4);
/*!40000 ALTER TABLE `reportfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporttemplate`
--

DROP TABLE IF EXISTS `reporttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporttemplate` (
  `reporttemplate_id` int(11) NOT NULL AUTO_INCREMENT,
  `reporttemplate_description` varchar(255) NOT NULL,
  `reporttemplate_categoryid` int(11) NOT NULL,
  `reporttemplate_filename` varchar(255) NOT NULL,
  `reporttemplate_datefiltered` char(1) NOT NULL,
  `reporttemplate_title` varchar(255) NOT NULL,
  PRIMARY KEY (`reporttemplate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporttemplate`
--

LOCK TABLES `reporttemplate` WRITE;
/*!40000 ALTER TABLE `reporttemplate` DISABLE KEYS */;
INSERT INTO `reporttemplate` VALUES (1,'List of users in the system and when they last accessed the server',1,'userlist.jasper','N','User List'),(2,'List of reviews in the system, organized by SCM changelists present in the review',1,'reviewsbychangelist.jasper','Y','Reviews by Changelist'),(3,'List of SCM changes in the system',1,'changeslist.jasper','Y','Changes List'),(4,'List of SCM changes that have been submitted but not yet reviewed',1,'unreviewedchanges.jasper','Y','Changes, Unreviewed');
/*!40000 ALTER TABLE `reporttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `review_creatorid` int(11) NOT NULL,
  `review_creationdate` datetime NOT NULL,
  `review_deadline` datetime NOT NULL,
  `review_phaseid` int(11) NOT NULL,
  `review_ruletemplate` varchar(255) NOT NULL,
  `review_customfieldtemplateid` int(11) NOT NULL,
  `review_privateview` char(1) NOT NULL,
  `review_groupid` int(11) NOT NULL,
  `review_checklistname` varchar(255) NOT NULL,
  `review_title` varchar(255) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `idx_review_creatorId` (`review_creatorid`),
  KEY `idx_review_phaseId` (`review_phaseid`),
  KEY `idx_review_groupId` (`review_groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,2,'2018-03-01 14:38:33','1990-01-01 00:00:00',1,'Standard',1,'N',0,'','Untitled Review'),(2,1,'2018-03-29 21:24:31','1990-01-01 00:00:00',1,'Standard',1,'N',0,'','Upload URL');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `review_activity`
--

DROP TABLE IF EXISTS `review_activity`;
/*!50001 DROP VIEW IF EXISTS `review_activity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_activity` AS SELECT 
 1 AS `reviewid`,
 1 AS `userid`,
 1 AS `roleid`,
 1 AS `person_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_activity_summary`
--

DROP TABLE IF EXISTS `review_activity_summary`;
/*!50001 DROP VIEW IF EXISTS `review_activity_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_activity_summary` AS SELECT 
 1 AS `review_id`,
 1 AS `total_person_hours`,
 1 AS `first_activity_date`,
 1 AS `last_activity_date`,
 1 AS `author_hours`,
 1 AS `author_rework_hours`,
 1 AS `reviewer_hours`,
 1 AS `active_reviewer_hours`,
 1 AS `passive_reviewer_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_comment_summary`
--

DROP TABLE IF EXISTS `review_comment_summary`;
/*!50001 DROP VIEW IF EXISTS `review_comment_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_comment_summary` AS SELECT 
 1 AS `review_id`,
 1 AS `total_comments`,
 1 AS `author_comments`,
 1 AS `reviewer_comments`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_custom_dropdowns`
--

DROP TABLE IF EXISTS `review_custom_dropdowns`;
/*!50001 DROP VIEW IF EXISTS `review_custom_dropdowns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_custom_dropdowns` AS SELECT 
 1 AS `dropdownid`,
 1 AS `dropdownoption`,
 1 AS `customfield`,
 1 AS `customfield_enabled`,
 1 AS `dropdownoption_enabled`,
 1 AS `sequence`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_defect_summary`
--

DROP TABLE IF EXISTS `review_defect_summary`;
/*!50001 DROP VIEW IF EXISTS `review_defect_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_defect_summary` AS SELECT 
 1 AS `review_id`,
 1 AS `total_defects`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_metrics_summary`
--

DROP TABLE IF EXISTS `review_metrics_summary`;
/*!50001 DROP VIEW IF EXISTS `review_metrics_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_metrics_summary` AS SELECT 
 1 AS `review_id`,
 1 AS `kloc_per_hour`,
 1 AS `defects_per_hour`,
 1 AS `defects_per_kloc`,
 1 AS `total_defects`,
 1 AS `reviewer_hours`,
 1 AS `loc_reviewed`,
 1 AS `total_versions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_signatures_view`
--

DROP TABLE IF EXISTS `review_signatures_view`;
/*!50001 DROP VIEW IF EXISTS `review_signatures_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_signatures_view` AS SELECT 
 1 AS `review_signatures_view_reviewid`,
 1 AS `review_signatures_view_signaturestatus`,
 1 AS `review_signatures_view_num_signed`,
 1 AS `review_signatures_view_num_declined`,
 1 AS `review_signatures_view_num_unsigned`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_version_list`
--

DROP TABLE IF EXISTS `review_version_list`;
/*!50001 DROP VIEW IF EXISTS `review_version_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_version_list` AS SELECT 
 1 AS `review_id`,
 1 AS `version_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_version_summary`
--

DROP TABLE IF EXISTS `review_version_summary`;
/*!50001 DROP VIEW IF EXISTS `review_version_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_version_summary` AS SELECT 
 1 AS `review_id`,
 1 AS `total_versions`,
 1 AS `total_loc`,
 1 AS `loc_reviewed`,
 1 AS `loc_added`,
 1 AS `loc_modified`,
 1 AS `loc_removed`,
 1 AS `loc_uncontrolled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `review_view`
--

DROP TABLE IF EXISTS `review_view`;
/*!50001 DROP VIEW IF EXISTS `review_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `review_view` AS SELECT 
 1 AS `id`,
 1 AS `title`,
 1 AS `phase_id`,
 1 AS `creation_date`,
 1 AS `creator_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reviewchecklistevent`
--

DROP TABLE IF EXISTS `reviewchecklistevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewchecklistevent` (
  `reviewchecklistevent_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewchecklistevent_waschecked` char(1) NOT NULL,
  `reviewchecklistevent_datemodified` datetime NOT NULL,
  `reviewchecklistevent_actoruserid` int(11) NOT NULL,
  `reviewchecklistevent_itemname` varchar(255) NOT NULL,
  `reviewchecklistevent_reviewid` int(11) NOT NULL,
  PRIMARY KEY (`reviewchecklistevent_id`),
  KEY `idx_reviewchecklistevent_actorUserId` (`reviewchecklistevent_actoruserid`),
  KEY `idx_reviewchecklistevent_reviewId` (`reviewchecklistevent_reviewid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewchecklistevent`
--

LOCK TABLES `reviewchecklistevent` WRITE;
/*!40000 ALTER TABLE `reviewchecklistevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewchecklistevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewchecklistitem`
--

DROP TABLE IF EXISTS `reviewchecklistitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewchecklistitem` (
  `reviewchecklistitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewchecklistitem_title` varchar(255) NOT NULL,
  `reviewchecklistitem_actorid` int(11) NOT NULL,
  `reviewchecklistitem_lastupdated` datetime NOT NULL,
  `reviewchecklistitem_ischecked` char(1) NOT NULL,
  `reviewchecklistitem_reviewid` int(11) NOT NULL,
  PRIMARY KEY (`reviewchecklistitem_id`),
  KEY `idx_reviewchecklistitem_actorId` (`reviewchecklistitem_actorid`),
  KEY `idx_reviewchecklistitem_reviewId` (`reviewchecklistitem_reviewid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewchecklistitem`
--

LOCK TABLES `reviewchecklistitem` WRITE;
/*!40000 ALTER TABLE `reviewchecklistitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewchecklistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `reviewcustom`
--

DROP TABLE IF EXISTS `reviewcustom`;
/*!50001 DROP VIEW IF EXISTS `reviewcustom`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reviewcustom` AS SELECT 
 1 AS `review_id`,
 1 AS `Overview`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `reviewcustom_compat`
--

DROP TABLE IF EXISTS `reviewcustom_compat`;
/*!50001 DROP VIEW IF EXISTS `reviewcustom_compat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reviewcustom_compat` AS SELECT 
 1 AS `review_id`,
 1 AS `custom_id_127`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reviewevent`
--

DROP TABLE IF EXISTS `reviewevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewevent` (
  `reviewevent_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewevent_reviewid` int(11) NOT NULL,
  `reviewevent_ref1id` int(11) NOT NULL,
  `reviewevent_ref2id` int(11) NOT NULL,
  `reviewevent_occurredat` int(10) unsigned NOT NULL,
  `reviewevent_eventtypeid` int(4) unsigned NOT NULL,
  PRIMARY KEY (`reviewevent_id`),
  KEY `idx_reviewevent_reviewId` (`reviewevent_reviewid`),
  KEY `idx_reviewevent_ref1Id` (`reviewevent_ref1id`),
  KEY `idx_reviewevent_ref2Id` (`reviewevent_ref2id`),
  KEY `idx_reviewevent_occurredAt` (`reviewevent_occurredat`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewevent`
--

LOCK TABLES `reviewevent` WRITE;
/*!40000 ALTER TABLE `reviewevent` DISABLE KEYS */;
INSERT INTO `reviewevent` VALUES (1,2,1,2,1522358682,3),(2,2,2,3,1522358688,3),(3,2,1,1,1522358704,9),(4,2,2,1,1522358741,9),(5,2,3,1,1522359150,9);
/*!40000 ALTER TABLE `reviewevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewtemplate`
--

DROP TABLE IF EXISTS `reviewtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewtemplate` (
  `reviewtemplate_id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewtemplate_description` varchar(255) NOT NULL,
  `reviewtemplate_rejreason` char(1) NOT NULL,
  `reviewtemplate_active` char(1) NOT NULL,
  `reviewtemplate_isdefault` char(1) NOT NULL,
  `reviewtemplate_roleid` int(11) NOT NULL,
  `reviewtemplate_checklistid` int(11) NOT NULL,
  `reviewtemplate_isclmandatory` char(1) NOT NULL,
  `reviewtemplate_name` varchar(255) NOT NULL,
  PRIMARY KEY (`reviewtemplate_id`),
  KEY `idx_reviewtemplate_checklistId` (`reviewtemplate_checklistid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewtemplate`
--

LOCK TABLES `reviewtemplate` WRITE;
/*!40000 ALTER TABLE `reviewtemplate` DISABLE KEYS */;
INSERT INTO `reviewtemplate` VALUES (1,'The default template.','Y','Y','N',1,0,'N','Default');
/*!40000 ALTER TABLE `reviewtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_systemname` varchar(32) NOT NULL,
  `role_displayname` varchar(32) NOT NULL,
  `role_description` varchar(255) NOT NULL,
  `role_minrequiredinreview` int(3) unsigned NOT NULL,
  `role_minnumbertofinishreview` int(3) unsigned NOT NULL,
  `role_maxallowedinreview` int(3) unsigned NOT NULL,
  `role_completingreviews` char(1) NOT NULL,
  `role_owndefectprivileges` char(1) NOT NULL,
  `role_otherdefectprivileges` char(1) NOT NULL,
  `role_forcedtoreadcomments` char(1) NOT NULL,
  `role_allowedtomodifyreviewdata` char(1) NOT NULL,
  `role_requiredelectronicsignature` char(1) NOT NULL,
  `role_redactcommentprivileges` char(1) NOT NULL,
  `role_template` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `idx_role_template` (`role_template`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Moderator','','',0,0,0,'N','D','D','N','Y','N','S','Standard'),(2,'Author','Author','Developer responsible for the content being reviewed.',1,0,99,'N','D','N','Y','Y','N','S','Standard'),(3,'Reviewer','Reviewer','Someone actively involved in reviewing the materials.',1,0,99,'C','D','D','N','Y','N','S','Standard'),(4,'Observer','Observer','Someone participating but not necessarily passing accept/reject judgments.  Will not hold up the review if all other participants are finished.',0,0,99,'F','D','D','N','Y','N','S','Standard'),(5,'Moderator','Moderator','The Moderator controls the flow of the inspection and ensures all are doing their jobs properly.',1,0,1,'C','D','D','Y','Y','N','S','Formal Inspection'),(6,'Author','Author','The Author is the originator of the inspection materials.',1,0,1,'N','D','N','Y','Y','N','S','Formal Inspection'),(7,'Reader','Reader','The Reader paraphrases and interprets the materials and expresses his/her understanding of what has been done.',1,0,1,'N','D','N','Y','Y','N','S','Formal Inspection'),(8,'Tester','Tester','The Tester considers testability, traceability, requirements, standards, and external interactions.',1,0,1,'N','D','N','Y','Y','N','S','Formal Inspection');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `role_view`
--

DROP TABLE IF EXISTS `role_view`;
/*!50001 DROP VIEW IF EXISTS `role_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `role_view` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `template`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `scm`
--

DROP TABLE IF EXISTS `scm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scm` (
  `scm_id` int(11) NOT NULL AUTO_INCREMENT,
  `scm_provider` varchar(255) NOT NULL,
  `scm_cmdlinepath` varchar(255) NOT NULL,
  `scm_configa` varchar(255) NOT NULL,
  `scm_configb` varchar(255) NOT NULL,
  `scm_configc` varchar(255) NOT NULL,
  `scm_configd` varchar(255) NOT NULL,
  `scm_confige` varchar(255) NOT NULL,
  `scm_scmconfigid` int(11) NOT NULL,
  `scm_title` varchar(255) NOT NULL,
  PRIMARY KEY (`scm_id`),
  KEY `idx_scm_scmConfigId` (`scm_scmconfigid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scm`
--

LOCK TABLES `scm` WRITE;
/*!40000 ALTER TABLE `scm` DISABLE KEYS */;
INSERT INTO `scm` VALUES (1,'none','','','','','','',0,'Default'),(2,'perforce','','','','','','',0,'External');
/*!40000 ALTER TABLE `scm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scmconfig`
--

DROP TABLE IF EXISTS `scmconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scmconfig` (
  `scmconfig_id` int(11) NOT NULL AUTO_INCREMENT,
  `scmconfig_provider` varchar(100) NOT NULL,
  `scmconfig_config` text NOT NULL,
  `scmconfig_scmpatterna` varchar(255) NOT NULL,
  `scmconfig_scmpatternb` varchar(255) NOT NULL,
  `scmconfig_scmpatternc` varchar(255) NOT NULL,
  `scmconfig_scmpatternd` varchar(255) NOT NULL,
  `scmconfig_scmpatterne` varchar(255) NOT NULL,
  `scmconfig_enforceaccessperm` char(1) NOT NULL,
  `scmconfig_attachfromserver` char(1) NOT NULL,
  `scmconfig_title` varchar(255) NOT NULL,
  PRIMARY KEY (`scmconfig_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scmconfig`
--

LOCK TABLES `scmconfig` WRITE;
/*!40000 ALTER TABLE `scmconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `scmconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spreadsheetcell`
--

DROP TABLE IF EXISTS `spreadsheetcell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spreadsheetcell` (
  `spreadsheetcell_id` int(11) NOT NULL AUTO_INCREMENT,
  `spreadsheetcell_sheet` text NOT NULL,
  `spreadsheetcell_row` int(10) unsigned NOT NULL,
  `spreadsheetcell_column` int(10) unsigned NOT NULL,
  `spreadsheetcell_versionid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`spreadsheetcell_id`),
  KEY `idx_spreadsheetcell_versionId` (`spreadsheetcell_versionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spreadsheetcell`
--

LOCK TABLES `spreadsheetcell` WRITE;
/*!40000 ALTER TABLE `spreadsheetcell` DISABLE KEYS */;
/*!40000 ALTER TABLE `spreadsheetcell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_roleid` int(5) unsigned NOT NULL,
  `subscription_authorid` int(11) NOT NULL,
  `subscription_filepattern` varchar(255) NOT NULL,
  `subscription_prefixlen` int(11) NOT NULL,
  `subscription_subscriberid` int(11) NOT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `idx_subscription_authorId` (`subscription_authorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `todo_id` int(11) NOT NULL AUTO_INCREMENT,
  `todo_reviewid` int(11) NOT NULL,
  `todo_userid` int(11) NOT NULL,
  `todo_statuscode` char(1) NOT NULL,
  `todo_actioncode` int(10) unsigned NOT NULL,
  `todo_datecreated` datetime NOT NULL,
  PRIMARY KEY (`todo_id`),
  KEY `idx_todo_reviewId` (`todo_reviewid`),
  KEY `idx_todo_userId` (`todo_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(128) NOT NULL,
  `user_initials` varchar(255) NOT NULL,
  `user_guid` varchar(32) NOT NULL,
  `user_lastlogin` datetime NOT NULL,
  `user_lastactivity` datetime NOT NULL,
  `user_lastlogout` datetime NOT NULL,
  `user_admin` char(1) NOT NULL,
  `user_tutorials` char(1) NOT NULL,
  `user_active` char(1) NOT NULL,
  `user_createchildgroups` char(1) NOT NULL,
  `user_edittemplates` char(1) NOT NULL,
  `user_editcustomfields` char(1) NOT NULL,
  `user_editchecklists` char(1) NOT NULL,
  `user_editroles` char(1) NOT NULL,
  `user_editautomaticlinks` char(1) NOT NULL,
  `user_login` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_user_guid` (`user_guid`(8)),
  KEY `idx_user_login` (`user_login`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'21232f297a57a5a743894a0e4a801fc3','Administrator','','','','1a9d34c162a9f336327d3353312c4e0c','2018-05-08 17:37:31','2018-05-09 13:45:18','2018-03-01 14:38:28','Y','Y','Y','Y','Y','Y','Y','Y','Y','admin'),(2,'d41d8cd98f00b204e9800998ecf8427e','user uno','no@email.com','','','5a94d7d6997d0e2f00e9e7a22ea826b9','2018-03-01 14:38:31','2018-03-01 14:38:33','1990-01-01 00:00:00','N','Y','Y','N','N','N','N','N','N','user1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_view`
--

DROP TABLE IF EXISTS `user_view`;
/*!50001 DROP VIEW IF EXISTS `user_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_view` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `login`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `userprefs`
--

DROP TABLE IF EXISTS `userprefs`;
/*!50001 DROP VIEW IF EXISTS `userprefs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `userprefs` AS SELECT 
 1 AS `user_id`,
 1 AS `notification`,
 1 AS `timeZone`,
 1 AS `copyAuthor`,
 1 AS `defaultVersion`,
 1 AS `versionOrder`,
 1 AS `scmConsolidationMethod`,
 1 AS `compactView`,
 1 AS `ChildrenStyle`,
 1 AS `jiraDefaultProject`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `userprefs_compat`
--

DROP TABLE IF EXISTS `userprefs_compat`;
/*!50001 DROP VIEW IF EXISTS `userprefs_compat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `userprefs_compat` AS SELECT 
 1 AS `user_id`,
 1 AS `custom_id_116`,
 1 AS `custom_id_117`,
 1 AS `custom_id_118`,
 1 AS `custom_id_119`,
 1 AS `custom_id_120`,
 1 AS `custom_id_121`,
 1 AS `custom_id_122`,
 1 AS `custom_id_123`,
 1 AS `custom_id_124`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `userversionaction`
--

DROP TABLE IF EXISTS `userversionaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userversionaction` (
  `userversionaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `userversionaction_reviewid` int(11) NOT NULL,
  `userversionaction_versionid` int(11) NOT NULL,
  `userversionaction_actiondate` datetime NOT NULL,
  `userversionaction_userid` int(11) NOT NULL,
  PRIMARY KEY (`userversionaction_id`),
  KEY `idx_userversionaction_versionId` (`userversionaction_versionid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userversionaction`
--

LOCK TABLES `userversionaction` WRITE;
/*!40000 ALTER TABLE `userversionaction` DISABLE KEYS */;
INSERT INTO `userversionaction` VALUES (1,2,1,'2018-03-29 21:25:08',1),(2,2,2,'2018-03-29 21:25:44',1);
/*!40000 ALTER TABLE `userversionaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `version_changelistcommitid` int(11) NOT NULL,
  `version_filepath` text NOT NULL,
  `version_localfilepath` text NOT NULL,
  `version_scmversionname` varchar(255) NOT NULL,
  `version_changetype` char(1) NOT NULL,
  `version_localtype` char(1) NOT NULL,
  `version_prevversionid` int(11) NOT NULL,
  `version_contentmd5` varchar(32) NOT NULL,
  `version_hide` int(11) NOT NULL,
  `version_changelistid` int(11) NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `idx_version_contentMd5` (`version_contentmd5`(8)),
  KEY `idx_version_changelistId` (`version_changelistid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (1,0,'https://smartbear.com','','','U','U',0,'',0,1),(2,0,'https://www.wikipedia.org/','','','U','U',0,'',0,2),(3,0,'testcode.java','','unversioned','U','L',0,'ea79c7974b1052e1764b639caeec2924',0,3);
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `assignment_state`
--

/*!50001 DROP VIEW IF EXISTS `assignment_state`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `assignment_state` AS select 'N' AS `code`,'NEW' AS `name`,'Newly Assigned' AS `description` union select 'A' AS `code`,'ACTIVE' AS `name`,'Active Participant' AS `description` union select 'W' AS `code`,'WAITING_FOR_ANY' AS `name`,'Waiting for any activity' AS `description` union select 'X' AS `code`,'WAITING_FOR_AUTHOR' AS `name`,'Waiting for Author activity' AS `description` union select 'Y' AS `code`,'WAITING_FOR_FILES' AS `name`,'Waiting for file activity' AS `description` union select 'Z' AS `code`,'WAITING_FOR_POKE' AS `name`,'Waiting to be poked' AS `description` union select 'F' AS `code`,'FINISHED_UNTIL_ANY' AS `name`,'Finished unless any activity occurs' AS `description` union select 'G' AS `code`,'FINISHED_UNTIL_AUTHOR' AS `name`,'Finished unless activity by Author occurs' AS `description` union select 'H' AS `code`,'FINISHED_UNTIL_FILES' AS `name`,'Finished unless file activity occurs' AS `description` union select 'I' AS `code`,'FINISHED_UNTIL_POKE' AS `name`,'Finished unless poked' AS `description` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `assignment_view`
--

/*!50001 DROP VIEW IF EXISTS `assignment_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `assignment_view` AS select `assignment`.`assignment_userid` AS `user_id`,`assignment`.`assignment_roleid` AS `role_id`,`assignment`.`assignment_reviewid` AS `review_id` from `assignment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `defect_custom_dropdowns`
--

/*!50001 DROP VIEW IF EXISTS `defect_custom_dropdowns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `defect_custom_dropdowns` AS select `metadataselectitem`.`metadataselectitem_id` AS `dropdownid`,`metadataselectitem`.`metadataselectitem_title` AS `dropdownoption`,`metadatadescription`.`metadatadescription_title` AS `customfield`,if((`metadatadescription`.`metadatadescription_seq` = 99999),'N','Y') AS `customfield_enabled`,`metadataselectitem`.`metadataselectitem_enabled` AS `dropdownoption_enabled`,`metadataselectitem`.`metadataselectitem_seq` AS `sequence` from (`metadatadescription` join `metadataselectitem`) where ((`metadatadescription`.`metadatadescription_id` = `metadataselectitem`.`metadataselectitem_fieldid`) and (`metadatadescription`.`metadatadescription_category` = 'AdminDefectFields')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `defect_state`
--

/*!50001 DROP VIEW IF EXISTS `defect_state`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `defect_state` AS select 'O' AS `code`,'Open' AS `name` union select 'F' AS `code`,'Fixed' AS `name` union select 'X' AS `code`,'External' AS `name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `defect_view`
--

/*!50001 DROP VIEW IF EXISTS `defect_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `defect_view` AS select `defect`.`defect_id` AS `id`,`defect`.`defect_reviewid` AS `review_id`,`defect`.`defect_text` AS `text`,`defect`.`defect_state` AS `state`,`defect`.`defect_userid` AS `user_id`,`defect`.`defect_createdon` AS `created_on` from `defect` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `defectcustom`
--

/*!50001 DROP VIEW IF EXISTS `defectcustom`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `defectcustom` AS select `defect`.`defect_id` AS `defect_id`,(case `meta1`.`metadatavalueinteger_value` when 1 then 'Major' when 2 then 'Minor' else 'N/A' end) AS `Severity`,(case `meta2`.`metadatavalueinteger_value` when 3 then 'Algorithm' when 4 then 'Build' when 5 then 'Data Access' when 6 then 'Documentation' when 7 then 'Error-Handling' when 8 then 'Interface' when 9 then 'Maintainability' when 10 then 'Performance' when 11 then 'Robustness' when 12 then 'Style' when 13 then 'Testing' when 14 then 'Text' else 'N/A' end) AS `Type` from ((`defect` left join `metadatavalueinteger` `meta1` on(((`defect`.`defect_id` = `meta1`.`metadatavalueinteger_targetid`) and (`meta1`.`metadatavalueinteger_fieldid` = 125)))) left join `metadatavalueinteger` `meta2` on(((`defect`.`defect_id` = `meta2`.`metadatavalueinteger_targetid`) and (`meta2`.`metadatavalueinteger_fieldid` = 126)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `defectcustom_compat`
--

/*!50001 DROP VIEW IF EXISTS `defectcustom_compat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `defectcustom_compat` AS select `defect`.`defect_id` AS `defect_id`,(case `meta1`.`metadatavalueinteger_value` when 1 then 'Major' when 2 then 'Minor' else 'N/A' end) AS `custom_id_125`,(case `meta2`.`metadatavalueinteger_value` when 3 then 'Algorithm' when 4 then 'Build' when 5 then 'Data Access' when 6 then 'Documentation' when 7 then 'Error-Handling' when 8 then 'Interface' when 9 then 'Maintainability' when 10 then 'Performance' when 11 then 'Robustness' when 12 then 'Style' when 13 then 'Testing' when 14 then 'Text' else 'N/A' end) AS `custom_id_126` from ((`defect` left join `metadatavalueinteger` `meta1` on(((`defect`.`defect_id` = `meta1`.`metadatavalueinteger_targetid`) and (`meta1`.`metadatavalueinteger_fieldid` = 125)))) left join `metadatavalueinteger` `meta2` on(((`defect`.`defect_id` = `meta2`.`metadatavalueinteger_targetid`) and (`meta2`.`metadatavalueinteger_fieldid` = 126)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `defects_by_path`
--

/*!50001 DROP VIEW IF EXISTS `defects_by_path`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `defects_by_path` AS select `v`.`version_filepath` AS `file_path`,count(`d`.`defect_id`) AS `num_defects`,sum(((`fm`.`filemetrics_linesadded` + `fm`.`filemetrics_linesmodified`) + `fm`.`filemetrics_linesremoved`)) AS `loc_reviewed` from ((`version` `v` join `filemetrics` `fm`) join `defect` `d`) where ((`v`.`version_id` = `fm`.`filemetrics_versionid`) and (`v`.`version_id` = `d`.`defect_versionid`)) group by `v`.`version_filepath` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `internal_sig_count_view`
--

/*!50001 DROP VIEW IF EXISTS `internal_sig_count_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `internal_sig_count_view` AS select `internal_sig_matrix_view`.`review_id` AS `review_id`,count(`internal_sig_matrix_view`.`internal_sig_matrix_view_sig_signed`) AS `internal_sig_count_view_num_signed`,count(`internal_sig_matrix_view`.`internal_sig_matrix_view_sig_declined`) AS `internal_sig_count_view_num_declined`,count(`internal_sig_matrix_view`.`internal_sig_matrix_view_sig_unsigned`) AS `internal_sig_count_view_num_unsigned` from `internal_sig_matrix_view` group by `internal_sig_matrix_view`.`review_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `internal_sig_matrix_view`
--

/*!50001 DROP VIEW IF EXISTS `internal_sig_matrix_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `internal_sig_matrix_view` AS select `review`.`review_id` AS `review_id`,if((`assignment`.`assignment_signaturestatus` = 'S'),'S',NULL) AS `internal_sig_matrix_view_sig_signed`,if((`assignment`.`assignment_signaturestatus` = 'D'),'D',NULL) AS `internal_sig_matrix_view_sig_declined`,if((`assignment`.`assignment_signaturestatus` = 'U'),'U',NULL) AS `internal_sig_matrix_view_sig_unsigned` from (`review` join `assignment` on((`review`.`review_id` = `assignment`.`assignment_reviewid`))) where FALSE */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `participant_custom_dropdowns`
--

/*!50001 DROP VIEW IF EXISTS `participant_custom_dropdowns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `participant_custom_dropdowns` AS select `metadataselectitem`.`metadataselectitem_id` AS `dropdownid`,`metadataselectitem`.`metadataselectitem_title` AS `dropdownoption`,`metadatadescription`.`metadatadescription_title` AS `customfield`,if((`metadatadescription`.`metadatadescription_seq` = 99999),'N','Y') AS `customfield_enabled`,`metadataselectitem`.`metadataselectitem_enabled` AS `dropdownoption_enabled`,`metadataselectitem`.`metadataselectitem_seq` AS `sequence` from (`metadatadescription` join `metadataselectitem`) where ((`metadatadescription`.`metadatadescription_id` = `metadataselectitem`.`metadataselectitem_fieldid`) and (`metadatadescription`.`metadatadescription_category` = 'AdminReviewParticipantFields')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `participant_multiline_values`
--

/*!50001 DROP VIEW IF EXISTS `participant_multiline_values`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `participant_multiline_values` AS select `assignment`.`assignment_reviewid` AS `reviewId`,`metadatadescription`.`metadatadescription_title` AS `fieldName`,`assignment`.`assignment_userid` AS `userId`,`valuetable`.`metadatavaluestringbig_value` AS `value` from ((((`assignment` join `review` on((`review`.`review_id` = `assignment`.`assignment_reviewid`))) join `metadatavalueinteger` `fieldtoreview` on(((`fieldtoreview`.`metadatavalueinteger_fieldid` = 133) and (`fieldtoreview`.`metadatavalueinteger_targetid` = `review`.`review_customfieldtemplateid`)))) join `metadatadescription` on(((`metadatadescription`.`metadatadescription_id` = `fieldtoreview`.`metadatavalueinteger_value`) and (`metadatadescription`.`metadatadescription_type` = 'T')))) left join `metadatavaluestringbig` `valuetable` on(((`valuetable`.`metadatavaluestringbig_fieldid` = `metadatadescription`.`metadatadescription_id`) and (`valuetable`.`metadatavaluestringbig_userid` = `assignment`.`assignment_userid`) and (`valuetable`.`metadatavaluestringbig_targetid` = `assignment`.`assignment_reviewid`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `participant_select_values`
--

/*!50001 DROP VIEW IF EXISTS `participant_select_values`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `participant_select_values` AS select `assignment`.`assignment_reviewid` AS `reviewId`,`metadatadescription`.`metadatadescription_title` AS `fieldName`,`assignment`.`assignment_userid` AS `userId`,`item`.`metadataselectitem_title` AS `value` from (((((`assignment` join `review` on((`review`.`review_id` = `assignment`.`assignment_reviewid`))) join `metadatavalueinteger` `fieldtoreview` on(((`fieldtoreview`.`metadatavalueinteger_fieldid` = 133) and (`fieldtoreview`.`metadatavalueinteger_targetid` = `review`.`review_customfieldtemplateid`)))) join `metadatadescription` on(((`metadatadescription`.`metadatadescription_id` = `fieldtoreview`.`metadatavalueinteger_value`) and (`metadatadescription`.`metadatadescription_type` in ('M','B'))))) left join `metadatavalueinteger` `valuetable` on(((`valuetable`.`metadatavalueinteger_fieldid` = `metadatadescription`.`metadatadescription_id`) and (`valuetable`.`metadatavalueinteger_userid` = `assignment`.`assignment_userid`) and (`valuetable`.`metadatavalueinteger_targetid` = `assignment`.`assignment_reviewid`)))) left join `metadataselectitem` `item` on((`valuetable`.`metadatavalueinteger_value` = `item`.`metadataselectitem_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `participant_singleline_values`
--

/*!50001 DROP VIEW IF EXISTS `participant_singleline_values`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `participant_singleline_values` AS select `assignment`.`assignment_reviewid` AS `reviewId`,`metadatadescription`.`metadatadescription_title` AS `fieldName`,`assignment`.`assignment_userid` AS `userId`,`valuetable`.`metadatavaluestring_value` AS `value` from ((((`assignment` join `review` on((`review`.`review_id` = `assignment`.`assignment_reviewid`))) join `metadatavalueinteger` `fieldtoreview` on(((`fieldtoreview`.`metadatavalueinteger_fieldid` = 133) and (`fieldtoreview`.`metadatavalueinteger_targetid` = `review`.`review_customfieldtemplateid`)))) join `metadatadescription` on(((`metadatadescription`.`metadatadescription_id` = `fieldtoreview`.`metadatavalueinteger_value`) and (`metadatadescription`.`metadatadescription_type` = 'S')))) left join `metadatavaluestring` `valuetable` on(((`valuetable`.`metadatavaluestring_fieldid` = `metadatadescription`.`metadatadescription_id`) and (`valuetable`.`metadatavaluestring_userid` = `assignment`.`assignment_userid`) and (`valuetable`.`metadatavaluestring_targetid` = `assignment`.`assignment_reviewid`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `phase`
--

/*!50001 DROP VIEW IF EXISTS `phase`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `phase` AS select 1 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Planning' AS `phase_title` union select 2 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Inspection' AS `phase_title` union select 3 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Rework' AS `phase_title` union select 4 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Unused' AS `phase_title` union select 5 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Completed' AS `phase_title` union select 6 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Cancelled' AS `phase_title` union select 7 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Rejected' AS `phase_title` union select 8 AS `phase_id`,'' AS `phase_help1`,'' AS `phase_help2`,'' AS `phase_help3`,'Annotating' AS `phase_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_activity`
--

/*!50001 DROP VIEW IF EXISTS `review_activity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_activity` AS select `a`.`activity_reviewid` AS `reviewid`,`a`.`activity_userid` AS `userid`,`s`.`assignment_roleid` AS `roleid`,(sum(`a`.`activity_durationsecs`) / 3600.0) AS `person_hours` from (`assignment` `s` left join `activity` `a` on(((`a`.`activity_reviewid` = `s`.`assignment_reviewid`) and (`a`.`activity_userid` = `s`.`assignment_userid`)))) where (`a`.`activity_code` <> 'F') group by `a`.`activity_reviewid`,`s`.`assignment_roleid`,`a`.`activity_userid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_activity_summary`
--

/*!50001 DROP VIEW IF EXISTS `review_activity_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_activity_summary` AS select `a`.`activity_reviewid` AS `review_id`,(sum(`a`.`activity_durationsecs`) / 3600.0) AS `total_person_hours`,min(`a`.`activity_startdate`) AS `first_activity_date`,max((cast(`a`.`activity_startdate` as datetime) + interval `a`.`activity_durationsecs` second)) AS `last_activity_date`,(sum((case `a`.`activity_code` when 'A' then `a`.`activity_durationsecs` else 0 end)) / 3600.0) AS `author_hours`,(sum((case `a`.`activity_code` when 'F' then `a`.`activity_durationsecs` else 0 end)) / 3600.0) AS `author_rework_hours`,(sum((case `a`.`activity_code` when 'R' then `a`.`activity_durationsecs` when 'P' then `a`.`activity_durationsecs` else 0 end)) / 3600.0) AS `reviewer_hours`,(sum((case `a`.`activity_code` when 'R' then `a`.`activity_durationsecs` else 0 end)) / 3600.0) AS `active_reviewer_hours`,(sum((case `a`.`activity_code` when 'P' then `a`.`activity_durationsecs` else 0 end)) / 3600.0) AS `passive_reviewer_hours` from `activity` `a` group by `a`.`activity_reviewid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_comment_summary`
--

/*!50001 DROP VIEW IF EXISTS `review_comment_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_comment_summary` AS select `r`.`review_id` AS `review_id`,sum(if((`c`.`comment_type` in ('USER','ACPT','CMVD')),1,0)) AS `total_comments`,sum((if((`c`.`comment_type` in ('USER','ACPT','CMVD')),1,0) * if((`role`.`role_systemname` = 'Author'),1,0))) AS `author_comments`,sum((if((`c`.`comment_type` in ('USER','ACPT','CMVD')),1,0) * if((`role`.`role_systemname` = 'Author'),0,1))) AS `reviewer_comments` from (((`review` `r` left join `comment` `c` on((`r`.`review_id` = `c`.`comment_reviewid`))) left join `assignment` `a` on(((`c`.`comment_userid` = `a`.`assignment_userid`) and (`c`.`comment_reviewid` = `a`.`assignment_reviewid`)))) left join `role` on((`a`.`assignment_roleid` = `role`.`role_id`))) group by `r`.`review_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_custom_dropdowns`
--

/*!50001 DROP VIEW IF EXISTS `review_custom_dropdowns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_custom_dropdowns` AS select `metadataselectitem`.`metadataselectitem_id` AS `dropdownid`,`metadataselectitem`.`metadataselectitem_title` AS `dropdownoption`,`metadatadescription`.`metadatadescription_title` AS `customfield`,if((`metadatadescription`.`metadatadescription_seq` = 99999),'N','Y') AS `customfield_enabled`,`metadataselectitem`.`metadataselectitem_enabled` AS `dropdownoption_enabled`,`metadataselectitem`.`metadataselectitem_seq` AS `sequence` from (`metadatadescription` join `metadataselectitem`) where ((`metadatadescription`.`metadatadescription_id` = `metadataselectitem`.`metadataselectitem_fieldid`) and (`metadatadescription`.`metadatadescription_category` = 'AdminReviewFields')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_defect_summary`
--

/*!50001 DROP VIEW IF EXISTS `review_defect_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_defect_summary` AS select `r`.`review_id` AS `review_id`,count(`d`.`defect_id`) AS `total_defects` from (`review` `r` left join `defect` `d` on((`r`.`review_id` = `d`.`defect_reviewid`))) group by `r`.`review_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_metrics_summary`
--

/*!50001 DROP VIEW IF EXISTS `review_metrics_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_metrics_summary` AS select `a`.`review_id` AS `review_id`,if((`a`.`reviewer_hours` = 0),0,((`v`.`loc_reviewed` / 1000.0) / `a`.`reviewer_hours`)) AS `kloc_per_hour`,if((`a`.`reviewer_hours` = 0),0,(`d`.`total_defects` / `a`.`reviewer_hours`)) AS `defects_per_hour`,if(((`v`.`loc_reviewed` / 1000.0) = 0),0,(`d`.`total_defects` / (`v`.`loc_reviewed` / 1000.0))) AS `defects_per_kloc`,`d`.`total_defects` AS `total_defects`,`a`.`reviewer_hours` AS `reviewer_hours`,`v`.`loc_reviewed` AS `loc_reviewed`,`v`.`total_versions` AS `total_versions` from ((`review_activity_summary` `a` join `review_version_summary` `v`) join `review_defect_summary` `d`) where ((`a`.`review_id` = `v`.`review_id`) and (`a`.`review_id` = `d`.`review_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_signatures_view`
--

/*!50001 DROP VIEW IF EXISTS `review_signatures_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_signatures_view` AS select `internal_sig_count_view`.`review_id` AS `review_signatures_view_reviewid`,if((`internal_sig_count_view`.`internal_sig_count_view_num_declined` > 0),'D',if((`internal_sig_count_view`.`internal_sig_count_view_num_unsigned` > 0),'U','S')) AS `review_signatures_view_signaturestatus`,`internal_sig_count_view`.`internal_sig_count_view_num_signed` AS `review_signatures_view_num_signed`,`internal_sig_count_view`.`internal_sig_count_view_num_declined` AS `review_signatures_view_num_declined`,`internal_sig_count_view`.`internal_sig_count_view_num_unsigned` AS `review_signatures_view_num_unsigned` from `internal_sig_count_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_version_list`
--

/*!50001 DROP VIEW IF EXISTS `review_version_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_version_list` AS select `r`.`review_id` AS `review_id`,`v`.`version_id` AS `version_id` from ((`review` `r` join `joinreviewchangelist` `jrc`) join `version` `v`) where ((`r`.`review_id` = `jrc`.`joinreviewchangelist_reviewid`) and (`v`.`version_changelistid` = `jrc`.`joinreviewchangelist_changelistid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_version_summary`
--

/*!50001 DROP VIEW IF EXISTS `review_version_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_version_summary` AS select `rv`.`review_id` AS `review_id`,count(`rv`.`version_id`) AS `total_versions`,sum(`fm`.`filemetrics_lines`) AS `total_loc`,sum(((`fm`.`filemetrics_linesadded` + `fm`.`filemetrics_linesmodified`) + `fm`.`filemetrics_linesremoved`)) AS `loc_reviewed`,sum(`fm`.`filemetrics_linesadded`) AS `loc_added`,sum(`fm`.`filemetrics_linesmodified`) AS `loc_modified`,sum(`fm`.`filemetrics_linesremoved`) AS `loc_removed`,sum(if((`v`.`version_changetype` = 'U'),`fm`.`filemetrics_lines`,0)) AS `loc_uncontrolled` from ((`review_version_list` `rv` join `filemetrics` `fm`) join `version` `v`) where ((`rv`.`version_id` = `fm`.`filemetrics_versionid`) and (`rv`.`version_id` = `v`.`version_id`)) group by `rv`.`review_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `review_view`
--

/*!50001 DROP VIEW IF EXISTS `review_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `review_view` AS select `review`.`review_id` AS `id`,`review`.`review_title` AS `title`,`review`.`review_phaseid` AS `phase_id`,`review`.`review_creationdate` AS `creation_date`,`review`.`review_creatorid` AS `creator_id` from `review` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reviewcustom`
--

/*!50001 DROP VIEW IF EXISTS `reviewcustom`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reviewcustom` AS select `review`.`review_id` AS `review_id`,`meta1`.`metadatavaluestringbig_value` AS `Overview` from (`review` left join `metadatavaluestringbig` `meta1` on(((`review`.`review_id` = `meta1`.`metadatavaluestringbig_targetid`) and (`meta1`.`metadatavaluestringbig_fieldid` = 127)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reviewcustom_compat`
--

/*!50001 DROP VIEW IF EXISTS `reviewcustom_compat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reviewcustom_compat` AS select `review`.`review_id` AS `review_id`,`meta1`.`metadatavaluestringbig_value` AS `custom_id_127` from (`review` left join `metadatavaluestringbig` `meta1` on(((`review`.`review_id` = `meta1`.`metadatavaluestringbig_targetid`) and (`meta1`.`metadatavaluestringbig_fieldid` = 127)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `role_view`
--

/*!50001 DROP VIEW IF EXISTS `role_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `role_view` AS select `role`.`role_id` AS `id`,`role`.`role_displayname` AS `name`,`role`.`role_template` AS `template` from `role` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_view`
--

/*!50001 DROP VIEW IF EXISTS `user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_view` AS select `user`.`user_id` AS `id`,`user`.`user_name` AS `name`,`user`.`user_login` AS `login`,`user`.`user_email` AS `email` from `user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userprefs`
--

/*!50001 DROP VIEW IF EXISTS `userprefs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userprefs` AS select `user`.`user_id` AS `user_id`,`meta1`.`metadatavalueinteger_value` AS `notification`,`meta2`.`metadatavaluestring_value` AS `timeZone`,`meta3`.`metadatavalueinteger_value` AS `copyAuthor`,`meta4`.`metadatavalueinteger_value` AS `defaultVersion`,`meta5`.`metadatavaluecharacter_value` AS `versionOrder`,`meta6`.`metadatavaluecharacter_value` AS `scmConsolidationMethod`,`meta7`.`metadatavaluestring_value` AS `compactView`,`meta8`.`metadatavaluestring_value` AS `ChildrenStyle`,`meta9`.`metadatavalueinteger_value` AS `jiraDefaultProject` from (((((((((`user` left join `metadatavalueinteger` `meta1` on(((`user`.`user_id` = `meta1`.`metadatavalueinteger_targetid`) and (`meta1`.`metadatavalueinteger_fieldid` = 116)))) left join `metadatavaluestring` `meta2` on(((`user`.`user_id` = `meta2`.`metadatavaluestring_targetid`) and (`meta2`.`metadatavaluestring_fieldid` = 117)))) left join `metadatavalueinteger` `meta3` on(((`user`.`user_id` = `meta3`.`metadatavalueinteger_targetid`) and (`meta3`.`metadatavalueinteger_fieldid` = 118)))) left join `metadatavalueinteger` `meta4` on(((`user`.`user_id` = `meta4`.`metadatavalueinteger_targetid`) and (`meta4`.`metadatavalueinteger_fieldid` = 119)))) left join `metadatavaluecharacter` `meta5` on(((`user`.`user_id` = `meta5`.`metadatavaluecharacter_targetid`) and (`meta5`.`metadatavaluecharacter_fieldid` = 120)))) left join `metadatavaluecharacter` `meta6` on(((`user`.`user_id` = `meta6`.`metadatavaluecharacter_targetid`) and (`meta6`.`metadatavaluecharacter_fieldid` = 121)))) left join `metadatavaluestring` `meta7` on(((`user`.`user_id` = `meta7`.`metadatavaluestring_targetid`) and (`meta7`.`metadatavaluestring_fieldid` = 122)))) left join `metadatavaluestring` `meta8` on(((`user`.`user_id` = `meta8`.`metadatavaluestring_targetid`) and (`meta8`.`metadatavaluestring_fieldid` = 123)))) left join `metadatavalueinteger` `meta9` on(((`user`.`user_id` = `meta9`.`metadatavalueinteger_targetid`) and (`meta9`.`metadatavalueinteger_fieldid` = 124)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userprefs_compat`
--

/*!50001 DROP VIEW IF EXISTS `userprefs_compat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `userprefs_compat` AS select `user`.`user_id` AS `user_id`,`meta1`.`metadatavalueinteger_value` AS `custom_id_116`,`meta2`.`metadatavaluestring_value` AS `custom_id_117`,`meta3`.`metadatavalueinteger_value` AS `custom_id_118`,`meta4`.`metadatavalueinteger_value` AS `custom_id_119`,`meta5`.`metadatavaluecharacter_value` AS `custom_id_120`,`meta6`.`metadatavaluecharacter_value` AS `custom_id_121`,`meta7`.`metadatavaluestring_value` AS `custom_id_122`,`meta8`.`metadatavaluestring_value` AS `custom_id_123`,`meta9`.`metadatavalueinteger_value` AS `custom_id_124` from (((((((((`user` left join `metadatavalueinteger` `meta1` on(((`user`.`user_id` = `meta1`.`metadatavalueinteger_targetid`) and (`meta1`.`metadatavalueinteger_fieldid` = 116)))) left join `metadatavaluestring` `meta2` on(((`user`.`user_id` = `meta2`.`metadatavaluestring_targetid`) and (`meta2`.`metadatavaluestring_fieldid` = 117)))) left join `metadatavalueinteger` `meta3` on(((`user`.`user_id` = `meta3`.`metadatavalueinteger_targetid`) and (`meta3`.`metadatavalueinteger_fieldid` = 118)))) left join `metadatavalueinteger` `meta4` on(((`user`.`user_id` = `meta4`.`metadatavalueinteger_targetid`) and (`meta4`.`metadatavalueinteger_fieldid` = 119)))) left join `metadatavaluecharacter` `meta5` on(((`user`.`user_id` = `meta5`.`metadatavaluecharacter_targetid`) and (`meta5`.`metadatavaluecharacter_fieldid` = 120)))) left join `metadatavaluecharacter` `meta6` on(((`user`.`user_id` = `meta6`.`metadatavaluecharacter_targetid`) and (`meta6`.`metadatavaluecharacter_fieldid` = 121)))) left join `metadatavaluestring` `meta7` on(((`user`.`user_id` = `meta7`.`metadatavaluestring_targetid`) and (`meta7`.`metadatavaluestring_fieldid` = 122)))) left join `metadatavaluestring` `meta8` on(((`user`.`user_id` = `meta8`.`metadatavaluestring_targetid`) and (`meta8`.`metadatavaluestring_fieldid` = 123)))) left join `metadatavalueinteger` `meta9` on(((`user`.`user_id` = `meta9`.`metadatavalueinteger_targetid`) and (`meta9`.`metadatavalueinteger_fieldid` = 124)))) */;
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

-- Dump completed on 2018-09-07 16:24:29
-- Yimy