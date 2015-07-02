-- MySQL dump 10.13  Distrib 5.6.22, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: canchero
-- ------------------------------------------------------
-- Server version	5.6.22-1+deb.sury.org~trusty+1

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
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `equipo_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`equipo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Equipo 1','2015-06-08 02:48:01','2015-06-08 02:48:01'),(2,'Equipo 1','2015-06-08 02:50:09','2015-06-08 02:50:09'),(3,'Equipo 1','2015-06-08 02:50:19','2015-06-08 02:50:19'),(4,'Equipo 1','2015-06-08 02:51:16','2015-06-08 02:51:16'),(5,'Equipo 1','2015-06-08 02:54:57','2015-06-08 02:54:57'),(6,'Equipo 1','2015-06-08 02:56:57','2015-06-08 02:56:57'),(7,'Equipo 1','2015-06-08 02:57:52','2015-06-08 02:57:52'),(8,'Equipo 1','2015-06-08 03:37:22','2015-06-08 03:37:22'),(9,'Equipo 2','2015-06-08 03:37:22','2015-06-08 03:37:22'),(10,'Equipo 1','2015-06-08 03:37:55','2015-06-08 03:37:55'),(11,'Equipo 2','2015-06-08 03:37:55','2015-06-08 03:37:55'),(12,'Equipo 1','2015-06-08 03:38:02','2015-06-08 03:38:02'),(13,'Equipo 2','2015-06-08 03:38:02','2015-06-08 03:38:02'),(14,'Equipo 1','2015-06-08 03:38:09','2015-06-08 03:38:09'),(15,'Equipo 2','2015-06-08 03:38:09','2015-06-08 03:38:09'),(16,'Equipo 1','2015-06-08 03:38:30','2015-06-08 03:38:30'),(17,'Equipo 2','2015-06-08 03:38:30','2015-06-08 03:38:30'),(18,'Equipo 1','2015-06-08 03:38:42','2015-06-08 03:38:42'),(19,'Equipo 2','2015-06-08 03:38:42','2015-06-08 03:38:42'),(20,'Equipo 1','2015-06-08 03:39:51','2015-06-08 03:39:51'),(21,'Equipo 2','2015-06-08 03:39:51','2015-06-08 03:39:51'),(22,'Equipo 1','2015-06-08 03:40:37','2015-06-08 03:40:37'),(23,'Equipo 2','2015-06-08 03:40:37','2015-06-08 03:40:37'),(24,'Equipo 1','2015-06-08 03:42:02','2015-06-08 03:42:02'),(25,'Equipo 2','2015-06-08 03:42:02','2015-06-08 03:42:02'),(26,'Equipo 1','2015-06-08 03:42:51','2015-06-08 03:42:51'),(27,'Equipo 2','2015-06-08 03:42:51','2015-06-08 03:42:51'),(28,'Equipo 1','2015-06-08 03:43:18','2015-06-08 03:43:18'),(29,'Equipo 2','2015-06-08 03:43:18','2015-06-08 03:43:18'),(30,'Equipo 1','2015-06-08 03:43:32','2015-06-08 03:43:32'),(31,'Equipo 2','2015-06-08 03:43:32','2015-06-08 03:43:32'),(32,'Equipo 1','2015-06-08 03:44:12','2015-06-08 03:44:12'),(33,'Equipo 2','2015-06-08 03:44:12','2015-06-08 03:44:12'),(34,'Equipo 1','2015-06-08 03:46:27','2015-06-08 03:46:27'),(35,'Equipo 2','2015-06-08 03:46:27','2015-06-08 03:46:27'),(36,'Equipo 1','2015-06-08 03:46:53','2015-06-08 03:46:53'),(37,'Equipo 2','2015-06-08 03:46:53','2015-06-08 03:46:53'),(38,'Equipo 1','2015-06-08 13:25:18','2015-06-08 13:25:18'),(39,'Equipo 2','2015-06-08 13:25:18','2015-06-08 13:25:18'),(40,'Equipo 1','2015-06-12 01:53:09','2015-06-12 01:53:09'),(41,'Equipo 2','2015-06-12 01:53:09','2015-06-12 01:53:09'),(42,'Equipo 1','2015-06-12 03:35:14','2015-06-12 03:35:14'),(43,'Equipo 1','2015-06-26 00:21:35','2015-06-26 00:21:35'),(44,'Equipo 1','2015-06-26 00:54:42','2015-06-26 00:54:42'),(45,'Equipo 2','2015-06-26 00:54:42','2015-06-26 00:54:42'),(46,'Equipo 1','2015-06-26 02:12:04','2015-06-26 02:12:04'),(47,'Equipo 2','2015-06-26 02:12:04','2015-06-26 02:12:04'),(48,'Equipo 1','2015-07-02 04:26:26','2015-07-02 04:26:26'),(49,'Equipo 2','2015-07-02 04:26:26','2015-07-02 04:26:26'),(50,'Dragones','2015-07-02 04:29:09','2015-07-02 04:29:09'),(51,'Leones','2015-07-02 04:29:10','2015-07-02 04:29:10'),(52,'Dragones','2015-07-02 04:35:05','2015-07-02 04:35:05'),(53,'Dragones','2015-07-02 04:36:13','2015-07-02 04:36:13'),(54,'Dragones','2015-07-02 04:39:29','2015-07-02 04:39:29'),(55,'Leones','2015-07-02 04:39:29','2015-07-02 04:39:29'),(56,'Dragones','2015-07-02 04:39:49','2015-07-02 04:39:49'),(57,'Leones','2015-07-02 04:39:49','2015-07-02 04:39:49'),(58,'Equipo 1','2015-07-02 04:41:06','2015-07-02 04:41:06'),(59,'Equipo 2','2015-07-02 04:41:06','2015-07-02 04:41:06'),(60,'Equipo 1','2015-07-02 05:02:37','2015-07-02 05:02:37'),(61,'Equipo 2','2015-07-02 05:02:37','2015-07-02 05:02:37'),(62,'Los dragones de Wilde','2015-07-02 05:57:13','2015-07-02 05:57:13'),(63,'Leones','2015-07-02 05:57:13','2015-07-02 05:57:13'),(64,'Equipo 1','2015-07-02 06:14:13','2015-07-02 06:14:13'),(65,'Equipo 2','2015-07-02 06:14:13','2015-07-02 06:14:13'),(66,'lala','2015-07-02 06:20:35','2015-07-02 06:20:35'),(67,'lalo','2015-07-02 06:20:35','2015-07-02 06:20:35'),(68,'Equipo 1','2015-07-02 06:21:53','2015-07-02 06:21:53'),(69,'Equipo 2','2015-07-02 06:21:53','2015-07-02 06:21:53'),(70,'Equipo 1','2015-07-02 06:23:23','2015-07-02 06:23:23'),(71,'Equipo 2','2015-07-02 06:23:23','2015-07-02 06:23:23'),(72,'Equipo 1','2015-07-02 15:46:06','2015-07-02 15:46:06'),(73,'Equipo 2','2015-07-02 15:46:06','2015-07-02 15:46:06'),(74,'Equipo 1','2015-07-02 15:51:44','2015-07-02 15:51:44'),(75,'Equipo 2','2015-07-02 15:51:44','2015-07-02 15:51:44');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos_jugadores`
--

DROP TABLE IF EXISTS `equipos_jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos_jugadores` (
  `equipo_jugador_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipo_id` int(11) NOT NULL,
  `jugador_id` int(11) NOT NULL,
  PRIMARY KEY (`equipo_jugador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_jugadores`
--

LOCK TABLES `equipos_jugadores` WRITE;
/*!40000 ALTER TABLE `equipos_jugadores` DISABLE KEYS */;
INSERT INTO `equipos_jugadores` VALUES (1,8,1),(2,8,2),(3,8,3),(4,8,4),(5,8,5),(6,9,6),(7,9,7),(8,9,8),(9,9,9),(10,9,10),(11,10,1),(12,10,2),(13,10,3),(14,10,4),(15,10,5),(16,11,6),(17,11,7),(18,11,8),(19,11,9),(20,11,10),(21,12,1),(22,12,2),(23,12,3),(24,12,4),(25,12,5),(26,13,6),(27,13,7),(28,13,8),(29,13,9),(30,13,10),(31,14,1),(32,14,2),(33,14,3),(34,14,4),(35,14,5),(36,15,6),(37,15,7),(38,15,8),(39,15,9),(40,15,10),(41,16,1),(42,16,2),(43,16,3),(44,16,4),(45,16,5),(46,17,6),(47,17,7),(48,17,8),(49,17,9),(50,17,10),(51,18,1),(52,18,2),(53,18,3),(54,18,4),(55,18,5),(56,19,6),(57,19,7),(58,19,8),(59,19,9),(60,19,10),(61,20,1),(62,20,2),(63,20,3),(64,20,4),(65,20,5),(66,21,6),(67,21,7),(68,21,8),(69,21,9),(70,21,10),(71,22,1),(72,22,2),(73,22,3),(74,22,4),(75,22,5),(76,23,6),(77,23,7),(78,23,8),(79,23,9),(80,23,10),(81,24,1),(82,24,2),(83,24,3),(84,24,4),(85,24,5),(86,25,6),(87,25,7),(88,25,8),(89,25,9),(90,25,10),(91,26,1),(92,26,2),(93,26,3),(94,26,4),(95,26,5),(96,27,6),(97,27,7),(98,27,8),(99,27,9),(100,27,10),(101,28,1),(102,28,2),(103,28,3),(104,28,4),(105,28,5),(106,29,6),(107,29,7),(108,29,8),(109,29,9),(110,29,10),(111,30,1),(112,30,2),(113,30,3),(114,30,4),(115,30,5),(116,31,6),(117,31,7),(118,31,8),(119,31,9),(120,31,10),(121,32,1),(122,32,2),(123,32,3),(124,32,4),(125,32,5),(126,33,6),(127,33,7),(128,33,8),(129,33,9),(130,33,10),(131,34,1),(132,34,2),(133,34,3),(134,34,4),(135,34,5),(136,35,6),(137,35,7),(138,35,8),(139,35,9),(140,35,10),(141,36,1),(142,36,2),(143,36,3),(144,36,4),(145,36,5),(146,37,6),(147,37,7),(148,37,8),(149,37,9),(150,37,10),(151,38,1),(152,38,2),(153,38,3),(154,38,4),(155,38,5),(156,39,6),(157,39,7),(158,39,8),(159,39,9),(160,39,10),(161,40,1),(162,40,2),(163,40,3),(164,40,4),(165,40,5),(166,41,6),(167,41,7),(168,41,8),(169,41,9),(170,41,10),(171,44,6),(172,44,7),(173,44,8),(174,44,9),(175,44,10),(176,45,6),(177,45,7),(178,45,8),(179,45,9),(180,45,10),(181,46,6),(182,46,7),(183,46,8),(184,46,9),(185,46,10),(186,47,6),(187,47,7),(188,47,8),(189,47,9),(190,47,1),(191,48,6),(192,48,7),(193,48,8),(194,48,9),(195,48,10),(196,49,6),(197,49,7),(198,49,8),(199,49,9),(200,49,13),(201,50,14),(202,50,15),(203,50,16),(204,50,17),(205,50,18),(206,51,19),(207,51,20),(208,51,21),(209,51,22),(210,51,23),(211,54,6),(212,54,7),(213,54,8),(214,54,9),(215,54,10),(216,55,6),(217,55,7),(218,55,8),(219,55,9),(220,55,25),(221,56,6),(222,56,7),(223,56,8),(224,56,9),(225,56,10),(226,57,6),(227,57,7),(228,57,8),(229,57,9),(230,57,25),(231,58,1),(232,58,2),(233,58,3),(234,58,4),(235,58,5),(236,59,6),(237,59,7),(238,59,8),(239,59,9),(240,59,26),(241,60,1),(242,60,2),(243,60,3),(244,60,4),(245,60,5),(246,61,6),(247,61,7),(248,61,8),(249,61,9),(250,61,27),(251,62,1),(252,62,2),(253,62,3),(254,62,4),(255,62,5),(256,63,6),(257,63,7),(258,63,8),(259,63,9),(260,63,28),(261,64,1),(262,64,2),(263,64,3),(264,64,4),(265,64,5),(266,65,6),(267,65,7),(268,65,8),(269,65,9),(270,65,29),(271,66,1),(272,66,2),(273,66,3),(274,66,4),(275,66,5),(276,67,6),(277,67,7),(278,67,8),(279,67,9),(280,67,30),(281,68,1),(282,68,2),(283,68,3),(284,68,4),(285,68,5),(286,69,6),(287,69,7),(288,69,8),(289,69,9),(290,69,31),(291,70,1),(292,70,2),(293,70,3),(294,70,4),(295,70,5),(296,71,6),(297,71,7),(298,71,8),(299,71,9),(300,71,32),(301,72,1),(302,72,2),(303,72,3),(304,72,4),(305,72,5),(306,73,6),(307,73,7),(308,73,8),(309,73,9),(310,73,33),(311,74,1),(312,74,2),(313,74,3),(314,74,4),(315,74,5),(316,75,6),(317,75,7),(318,75,8),(319,75,9),(320,75,34);
/*!40000 ALTER TABLE `equipos_jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jugadores` (
  `jugador_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apodo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `foto_url` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`jugador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Cacho','Carisma','Cacho@cachorritas.com','1435287306_848800','2015-06-26 02:55:06','2015-06-26 02:55:06'),(2,'hola','M','','1435291757_924322','2015-06-26 04:09:17','2015-06-26 04:09:17'),(3,'nnono','','','1435292199_66321','2015-06-26 04:16:39','2015-06-26 04:16:39'),(4,'Martin','Bilbao','marton_03@yopmail.com',NULL,'2015-07-01 15:40:36','2015-07-01 15:40:36'),(5,'Martin','Bilbao','','1435765261_319368','2015-07-01 15:41:01','2015-07-01 15:41:01'),(6,'Martin','Bilbao','asdfasdf@yopmail.com',NULL,'2015-07-01 15:41:14','2015-07-01 15:41:14'),(7,'Hola','Martoin','','1435802964_464084','2015-07-02 02:09:24','2015-07-02 02:09:24'),(8,'aonsdo','','',NULL,'2015-07-02 02:31:35','2015-07-02 02:31:35'),(9,'Martin','','',NULL,'2015-07-02 02:52:40','2015-07-02 02:52:40'),(10,'Juan Carlos','','','1435807196_189814','2015-07-02 03:19:56','2015-07-02 03:19:56'),(11,'Martin','','','1435808764_31759','2015-07-02 03:46:04','2015-07-02 03:46:04'),(12,'Martin','','','1435809990_38557','2015-07-02 04:06:30','2015-07-02 04:06:30'),(13,'Martin','Tincho','','1435811166_746309','2015-07-02 04:26:06','2015-07-02 04:26:06'),(14,'juan','','',NULL,'2015-07-02 04:28:12','2015-07-02 04:28:12'),(15,'roberto','','',NULL,'2015-07-02 04:28:16','2015-07-02 04:28:16'),(16,'ricardo','','',NULL,'2015-07-02 04:28:21','2015-07-02 04:28:21'),(17,'rodolfo','','',NULL,'2015-07-02 04:28:27','2015-07-02 04:28:27'),(18,'gutierrez','','',NULL,'2015-07-02 04:28:33','2015-07-02 04:28:33'),(19,'Marton','','',NULL,'2015-07-02 04:28:38','2015-07-02 04:28:38'),(20,'Marton','','',NULL,'2015-07-02 04:28:45','2015-07-02 04:28:45'),(21,'merton','','',NULL,'2015-07-02 04:28:50','2015-07-02 04:28:50'),(22,'morton','','',NULL,'2015-07-02 04:28:56','2015-07-02 04:28:56'),(23,'murton','','',NULL,'2015-07-02 04:29:02','2015-07-02 04:29:02'),(24,'marton','','',NULL,'2015-07-02 04:29:48','2015-07-02 04:29:48'),(25,'','juan','',NULL,'2015-07-02 04:34:53','2015-07-02 04:34:53'),(26,'','Juan','',NULL,'2015-07-02 04:41:05','2015-07-02 04:41:05'),(27,'Marton','','',NULL,'2015-07-02 05:02:31','2015-07-02 05:02:31'),(28,'Martin Bilbao','Marton','martin.bilbao.mb@gmail.com','1435816600_546239','2015-07-02 05:56:40','2015-07-02 05:56:40'),(29,'Rodri','','',NULL,'2015-07-02 06:14:09','2015-07-02 06:14:09'),(30,'','Marton','','1435818024_285200','2015-07-02 06:20:24','2015-07-02 06:20:24'),(31,'','marton','',NULL,'2015-07-02 06:21:52','2015-07-02 06:21:52'),(32,'','marton','',NULL,'2015-07-02 06:23:21','2015-07-02 06:23:21'),(33,'lala','','',NULL,'2015-07-02 15:46:05','2015-07-02 15:46:05'),(34,'lala','','',NULL,'2015-07-02 15:51:41','2015-07-02 15:51:41');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partidos` (
  `partido_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cancha_id` int(11) DEFAULT NULL,
  `equipo_1_id` int(11) NOT NULL,
  `equipo_2_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `resultado_equipo_1` int(11) DEFAULT NULL,
  `resultado_equipo_2` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`partido_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,1,NULL,20,21,'2015-06-08 03:39:51','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:39:51','2015-06-08 03:39:51'),(2,1,NULL,22,23,'2015-06-08 03:40:37','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:40:37','2015-06-08 03:40:37'),(3,1,NULL,24,25,'2015-06-08 03:42:02','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:42:02','2015-06-08 03:42:02'),(4,1,NULL,26,27,'2015-06-08 03:42:51','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:42:51','2015-06-08 03:42:51'),(5,1,NULL,28,29,'2015-06-08 03:43:18','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:43:18','2015-06-08 03:43:18'),(6,1,NULL,30,31,'2015-06-08 03:43:32','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:43:32','2015-06-08 03:43:32'),(7,1,NULL,32,33,'2015-06-08 03:44:12','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:44:12','2015-06-08 03:44:12'),(8,1,NULL,34,35,'2015-06-08 03:46:27','Lavalleja, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:46:27','2015-06-08 03:46:27'),(9,1,NULL,36,37,'2015-06-08 03:46:53','',NULL,NULL,'2015-06-08 03:46:53','2015-06-08 03:46:53'),(10,1,NULL,38,39,'2015-06-08 13:25:18','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 13:25:18','2015-06-08 13:25:18'),(11,1,NULL,40,41,'2015-06-12 01:53:09','Callao, Lanús Oeste, Buenos Aires, Argentina',NULL,NULL,'2015-06-12 01:53:09','2015-06-12 01:53:09'),(12,1,NULL,44,45,'2015-06-26 00:54:42','Buenos Aires, CABA, Argentina',NULL,NULL,'2015-06-26 00:54:42','2015-06-26 00:54:42'),(13,1,NULL,46,47,'2015-06-26 02:12:04','',NULL,NULL,'2015-06-26 02:12:04','2015-06-26 02:12:04'),(14,1,NULL,48,49,'2015-07-02 04:26:26','Av Callao, Ciudad Autonoma de Buenos Aires, Argentina',NULL,NULL,'2015-07-02 04:26:26','2015-07-02 04:26:26'),(15,1,NULL,50,51,'2015-07-02 04:29:10','San Telmo, CABA, Argentina',NULL,NULL,'2015-07-02 04:29:10','2015-07-02 04:29:10'),(16,1,NULL,54,55,'2015-07-02 04:39:29','Av Callao, Ciudad Autonoma de Buenos Aires, Argentina',NULL,NULL,'2015-07-02 04:39:29','2015-07-02 04:39:29'),(17,1,NULL,56,57,'2015-07-02 04:39:49','Av Callao, Ciudad Autonoma de Buenos Aires, Argentina',NULL,NULL,'2015-07-02 04:39:49','2015-07-02 04:39:49'),(18,1,NULL,58,59,'2015-07-02 04:41:06','Av Callao, Ciudad Autonoma de Buenos Aires, Argentina',NULL,NULL,'2015-07-02 04:41:06','2015-07-02 04:41:06'),(19,1,NULL,60,61,'2015-07-02 05:02:38','Calabria, Buenos Aires, Argentina',NULL,NULL,'2015-07-02 05:02:38','2015-07-02 05:02:38'),(20,1,NULL,62,63,'2015-07-02 05:57:13','Billinghurst 922, Buenos Aires, Argentina',NULL,NULL,'2015-07-02 05:57:13','2015-07-02 05:57:13'),(21,1,NULL,64,65,'2015-07-02 03:03:00','Callao, La Tablada, Buenos Aires, Argentina',NULL,NULL,'2015-07-02 06:14:13','2015-07-02 06:14:13'),(22,1,NULL,66,67,'1966-02-26 21:00:00','',NULL,NULL,'2015-07-02 06:20:35','2015-07-02 06:20:35'),(23,1,NULL,68,69,'1919-02-26 22:58:00','Cotagaita 1587, B1875DTE Wilde, Buenos Aires, Argentina',NULL,NULL,'2015-07-02 06:21:53','2015-07-02 06:21:53'),(24,1,NULL,70,71,'1991-02-23 22:00:00','Av Callao, Ciudad Autonoma de Buenos Aires, Argentina',NULL,NULL,'2015-07-02 06:23:23','2015-07-02 06:23:23'),(25,1,NULL,72,73,'2015-07-09 21:00:00','Av Callao, Ciudad Autonoma de Buenos Aires, Argentina',NULL,NULL,'2015-07-02 15:46:06','2015-07-02 15:46:06'),(26,1,NULL,74,75,'1991-02-26 22:58:00','Calabria, Buenos Aires, Argentina',NULL,NULL,'2015-07-02 15:51:44','2015-07-02 15:51:44');
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamano_canchas`
--

DROP TABLE IF EXISTS `tamano_canchas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tamano_canchas` (
  `tamano_cancha_id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tamano` int(11) DEFAULT NULL,
  PRIMARY KEY (`tamano_cancha_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamano_canchas`
--

LOCK TABLES `tamano_canchas` WRITE;
/*!40000 ALTER TABLE `tamano_canchas` DISABLE KEYS */;
INSERT INTO `tamano_canchas` VALUES (1,'Cancha de 5',5),(2,'Cancha de 6',6),(3,'Cancha de 7',7),(4,'Cancha de 9',9),(5,'Cancha de 11',11);
/*!40000 ALTER TABLE `tamano_canchas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Martin','martin.bilbao.mb@gmail.com','$2y$10$N2wzVMfjU3A7fdPIz4CAKeuLNijxGk5GuPD9TaE67fWeZWWCs54Lm','Uvvbi86K3Q96oyeNJtvhCvQRWJ6fwwWagpu5dowsYElUcIUML2ghXnWfIM0v','2015-04-25 17:08:21','2015-07-02 09:14:49'),(2,'Martin','marton_03@hotmail.com','$2y$10$lwkLwGGwvriK7HeatpCWWuVl1LdOMWcUSTAMEkJDg9o6QwrnQ/17u','KNHhAP8q9aSWAnj9CfkTfi61RoY8OTVgTteaMGexrkhF9nvCApoecGOGGITd','2015-06-07 16:25:50','2015-07-02 08:53:43'),(3,'marton09','martin.bilbao.mb@hotmail.com','$2y$10$/PUaXusfk9IvKKC1sJTUO.1PONYV4vTt8RdvdrCTsH/ax4ZTx85eq','1lCIlqvWqLh4krC0F4qA42c6uSN1DRHAD3HlkgVfUeGUQUL6vCkxIjuuX4lJ','2015-06-08 05:12:20','2015-06-08 05:12:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_jugadores`
--

DROP TABLE IF EXISTS `users_jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_jugadores` (
  `user_jugador_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `jugador_id` int(11) NOT NULL,
  PRIMARY KEY (`user_jugador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_jugadores`
--

LOCK TABLES `users_jugadores` WRITE;
/*!40000 ALTER TABLE `users_jugadores` DISABLE KEYS */;
INSERT INTO `users_jugadores` VALUES (51,1,6),(52,1,7),(53,1,8),(54,1,9),(55,1,32),(56,1,1),(57,1,2),(58,1,3),(59,1,4),(60,1,5),(61,1,6),(62,1,7),(63,1,8),(64,1,9),(65,1,33),(66,1,1),(67,1,2),(68,1,3),(69,1,4),(70,1,5),(71,1,6),(72,1,7),(73,1,8),(74,1,9),(75,1,34);
/*!40000 ALTER TABLE `users_jugadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-02 12:53:14
