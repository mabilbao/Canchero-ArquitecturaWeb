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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Equipo 1','2015-06-08 02:48:01','2015-06-08 02:48:01'),(2,'Equipo 1','2015-06-08 02:50:09','2015-06-08 02:50:09'),(3,'Equipo 1','2015-06-08 02:50:19','2015-06-08 02:50:19'),(4,'Equipo 1','2015-06-08 02:51:16','2015-06-08 02:51:16'),(5,'Equipo 1','2015-06-08 02:54:57','2015-06-08 02:54:57'),(6,'Equipo 1','2015-06-08 02:56:57','2015-06-08 02:56:57'),(7,'Equipo 1','2015-06-08 02:57:52','2015-06-08 02:57:52'),(8,'Equipo 1','2015-06-08 03:37:22','2015-06-08 03:37:22'),(9,'Equipo 2','2015-06-08 03:37:22','2015-06-08 03:37:22'),(10,'Equipo 1','2015-06-08 03:37:55','2015-06-08 03:37:55'),(11,'Equipo 2','2015-06-08 03:37:55','2015-06-08 03:37:55'),(12,'Equipo 1','2015-06-08 03:38:02','2015-06-08 03:38:02'),(13,'Equipo 2','2015-06-08 03:38:02','2015-06-08 03:38:02'),(14,'Equipo 1','2015-06-08 03:38:09','2015-06-08 03:38:09'),(15,'Equipo 2','2015-06-08 03:38:09','2015-06-08 03:38:09'),(16,'Equipo 1','2015-06-08 03:38:30','2015-06-08 03:38:30'),(17,'Equipo 2','2015-06-08 03:38:30','2015-06-08 03:38:30'),(18,'Equipo 1','2015-06-08 03:38:42','2015-06-08 03:38:42'),(19,'Equipo 2','2015-06-08 03:38:42','2015-06-08 03:38:42'),(20,'Equipo 1','2015-06-08 03:39:51','2015-06-08 03:39:51'),(21,'Equipo 2','2015-06-08 03:39:51','2015-06-08 03:39:51'),(22,'Equipo 1','2015-06-08 03:40:37','2015-06-08 03:40:37'),(23,'Equipo 2','2015-06-08 03:40:37','2015-06-08 03:40:37'),(24,'Equipo 1','2015-06-08 03:42:02','2015-06-08 03:42:02'),(25,'Equipo 2','2015-06-08 03:42:02','2015-06-08 03:42:02'),(26,'Equipo 1','2015-06-08 03:42:51','2015-06-08 03:42:51'),(27,'Equipo 2','2015-06-08 03:42:51','2015-06-08 03:42:51'),(28,'Equipo 1','2015-06-08 03:43:18','2015-06-08 03:43:18'),(29,'Equipo 2','2015-06-08 03:43:18','2015-06-08 03:43:18'),(30,'Equipo 1','2015-06-08 03:43:32','2015-06-08 03:43:32'),(31,'Equipo 2','2015-06-08 03:43:32','2015-06-08 03:43:32'),(32,'Equipo 1','2015-06-08 03:44:12','2015-06-08 03:44:12'),(33,'Equipo 2','2015-06-08 03:44:12','2015-06-08 03:44:12'),(34,'Equipo 1','2015-06-08 03:46:27','2015-06-08 03:46:27'),(35,'Equipo 2','2015-06-08 03:46:27','2015-06-08 03:46:27'),(36,'Equipo 1','2015-06-08 03:46:53','2015-06-08 03:46:53'),(37,'Equipo 2','2015-06-08 03:46:53','2015-06-08 03:46:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_jugadores`
--

LOCK TABLES `equipos_jugadores` WRITE;
/*!40000 ALTER TABLE `equipos_jugadores` DISABLE KEYS */;
INSERT INTO `equipos_jugadores` VALUES (1,8,1),(2,8,2),(3,8,3),(4,8,4),(5,8,5),(6,9,6),(7,9,7),(8,9,8),(9,9,9),(10,9,10),(11,10,1),(12,10,2),(13,10,3),(14,10,4),(15,10,5),(16,11,6),(17,11,7),(18,11,8),(19,11,9),(20,11,10),(21,12,1),(22,12,2),(23,12,3),(24,12,4),(25,12,5),(26,13,6),(27,13,7),(28,13,8),(29,13,9),(30,13,10),(31,14,1),(32,14,2),(33,14,3),(34,14,4),(35,14,5),(36,15,6),(37,15,7),(38,15,8),(39,15,9),(40,15,10),(41,16,1),(42,16,2),(43,16,3),(44,16,4),(45,16,5),(46,17,6),(47,17,7),(48,17,8),(49,17,9),(50,17,10),(51,18,1),(52,18,2),(53,18,3),(54,18,4),(55,18,5),(56,19,6),(57,19,7),(58,19,8),(59,19,9),(60,19,10),(61,20,1),(62,20,2),(63,20,3),(64,20,4),(65,20,5),(66,21,6),(67,21,7),(68,21,8),(69,21,9),(70,21,10),(71,22,1),(72,22,2),(73,22,3),(74,22,4),(75,22,5),(76,23,6),(77,23,7),(78,23,8),(79,23,9),(80,23,10),(81,24,1),(82,24,2),(83,24,3),(84,24,4),(85,24,5),(86,25,6),(87,25,7),(88,25,8),(89,25,9),(90,25,10),(91,26,1),(92,26,2),(93,26,3),(94,26,4),(95,26,5),(96,27,6),(97,27,7),(98,27,8),(99,27,9),(100,27,10),(101,28,1),(102,28,2),(103,28,3),(104,28,4),(105,28,5),(106,29,6),(107,29,7),(108,29,8),(109,29,9),(110,29,10),(111,30,1),(112,30,2),(113,30,3),(114,30,4),(115,30,5),(116,31,6),(117,31,7),(118,31,8),(119,31,9),(120,31,10),(121,32,1),(122,32,2),(123,32,3),(124,32,4),(125,32,5),(126,33,6),(127,33,7),(128,33,8),(129,33,9),(130,33,10),(131,34,1),(132,34,2),(133,34,3),(134,34,4),(135,34,5),(136,35,6),(137,35,7),(138,35,8),(139,35,9),(140,35,10),(141,36,1),(142,36,2),(143,36,3),(144,36,4),(145,36,5),(146,37,6),(147,37,7),(148,37,8),(149,37,9),(150,37,10);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,1,NULL,20,21,'2015-06-08 03:39:51','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:39:51','2015-06-08 03:39:51'),(2,1,NULL,22,23,'2015-06-08 03:40:37','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:40:37','2015-06-08 03:40:37'),(3,1,NULL,24,25,'2015-06-08 03:42:02','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:42:02','2015-06-08 03:42:02'),(4,1,NULL,26,27,'2015-06-08 03:42:51','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:42:51','2015-06-08 03:42:51'),(5,1,NULL,28,29,'2015-06-08 03:43:18','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:43:18','2015-06-08 03:43:18'),(6,1,NULL,30,31,'2015-06-08 03:43:32','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:43:32','2015-06-08 03:43:32'),(7,1,NULL,32,33,'2015-06-08 03:44:12','Av Callao, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:44:12','2015-06-08 03:44:12'),(8,1,NULL,34,35,'2015-06-08 03:46:27','Lavalleja, Buenos Aires, Buenos Aires, Argentina',NULL,NULL,'2015-06-08 03:46:27','2015-06-08 03:46:27'),(9,1,NULL,36,37,'2015-06-08 03:46:53','',NULL,NULL,'2015-06-08 03:46:53','2015-06-08 03:46:53');
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
INSERT INTO `users` VALUES (1,'Martin','martin.bilbao.mb@gmail.com','$2y$10$N2wzVMfjU3A7fdPIz4CAKeuLNijxGk5GuPD9TaE67fWeZWWCs54Lm','arlsds75HiAAHJCy5gdF4Qm66pei8KQserd7MZFvWiOC9UKQWMjq0icECZpx','2015-04-25 17:08:21','2015-06-08 05:37:21'),(2,'Martin','marton_03@hotmail.com','$2y$10$lwkLwGGwvriK7HeatpCWWuVl1LdOMWcUSTAMEkJDg9o6QwrnQ/17u',NULL,'2015-06-07 16:25:50','2015-06-07 16:25:50'),(3,'marton09','martin.bilbao.mb@hotmail.com','$2y$10$/PUaXusfk9IvKKC1sJTUO.1PONYV4vTt8RdvdrCTsH/ax4ZTx85eq','1lCIlqvWqLh4krC0F4qA42c6uSN1DRHAD3HlkgVfUeGUQUL6vCkxIjuuX4lJ','2015-06-08 05:12:20','2015-06-08 05:12:28');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_jugadores`
--

LOCK TABLES `users_jugadores` WRITE;
/*!40000 ALTER TABLE `users_jugadores` DISABLE KEYS */;
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

-- Dump completed on 2015-06-08  0:47:56
