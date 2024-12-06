-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: exercise
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sdate` date NOT NULL,
  `servid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKixy18lfsks4r6t4kwq1kss6y1` (`servid`),
  CONSTRAINT `FKixy18lfsks4r6t4kwq1kss6y1` FOREIGN KEY (`servid`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'2018-01-03',1),(2,'2018-01-03',4),(3,'2018-01-04',5),(4,'2018-01-11',5),(5,'2018-01-17',1),(6,'2018-01-17',4),(7,'2018-01-18',5),(8,'2018-01-18',3),(9,'2018-01-25',5),(10,'2018-01-25',3),(11,'2018-01-31',1),(12,'2018-01-31',4),(13,'2018-02-01',5),(14,'2018-02-08',5),(15,'2018-02-14',1),(16,'2018-02-14',4),(17,'2018-02-15',5),(18,'2018-02-22',5),(19,'2018-02-28',1),(20,'2018-02-28',4),(21,'2018-03-01',5),(22,'2018-03-05',3),(23,'2018-03-08',5),(24,'2018-03-12',3),(25,'2018-03-14',1),(26,'2018-03-14',4),(27,'2018-03-15',5),(28,'2018-03-19',3),(29,'2018-03-22',5),(30,'2018-03-26',3),(31,'2018-03-28',1),(32,'2018-03-28',4),(33,'2018-03-29',5),(34,'2018-04-02',3),(35,'2018-04-05',5),(36,'2018-04-09',3),(37,'2018-04-11',1),(38,'2018-04-11',4),(39,'2018-04-12',5),(40,'2018-04-16',3),(41,'2018-04-19',5),(42,'2018-04-23',3),(43,'2018-04-25',1),(44,'2018-04-25',4),(45,'2018-04-26',5),(46,'2018-04-30',3),(47,'2018-05-03',5),(48,'2018-05-07',3),(49,'2018-05-09',1),(50,'2018-05-09',4),(51,'2018-05-10',5),(52,'2018-05-14',3),(53,'2018-05-17',5),(54,'2018-05-21',3),(55,'2018-05-23',1),(56,'2018-05-23',4),(57,'2018-05-24',5),(58,'2018-05-28',3),(59,'2018-05-31',5),(60,'2018-06-03',5),(61,'2018-06-04',3),(62,'2018-06-06',1),(63,'2018-06-06',4),(64,'2018-06-07',5),(65,'2018-06-10',5),(66,'2018-06-11',3),(67,'2018-06-14',5),(68,'2018-06-17',5),(69,'2018-06-18',3),(70,'2018-06-20',1),(71,'2018-06-20',4),(72,'2018-06-21',5),(73,'2018-06-24',5),(74,'2018-06-25',3),(75,'2018-06-28',5),(76,'2018-07-01',5),(77,'2018-07-02',3),(78,'2018-07-04',1),(79,'2018-07-04',4),(80,'2018-07-05',5),(81,'2018-07-08',5),(82,'2018-07-09',3),(83,'2018-07-12',5),(84,'2018-07-15',5),(85,'2018-07-16',3),(86,'2018-07-18',1),(87,'2018-07-18',4),(88,'2018-07-19',5),(89,'2018-07-22',5),(90,'2018-07-23',3),(91,'2018-07-26',5),(92,'2018-07-29',5),(93,'2018-07-30',3),(94,'2018-08-01',1),(95,'2018-08-01',4),(96,'2018-08-02',5),(97,'2018-08-05',5),(98,'2018-08-06',3),(99,'2018-08-09',5),(100,'2018-08-12',5),(101,'2018-08-13',3),(102,'2018-08-15',1),(103,'2018-08-15',4),(104,'2018-08-16',5),(105,'2018-08-19',5),(106,'2018-08-20',3),(107,'2018-08-23',5),(108,'2018-08-26',5),(109,'2018-08-27',3),(110,'2018-08-29',1),(111,'2018-08-29',4),(112,'2018-08-30',5),(113,'2018-09-03',3),(114,'2018-09-06',5),(115,'2018-09-10',3),(116,'2018-09-12',1),(117,'2018-09-12',4),(118,'2018-09-13',5),(119,'2018-09-17',3),(120,'2018-09-20',5),(121,'2018-09-24',3),(122,'2018-09-26',1),(123,'2018-09-26',4),(124,'2018-09-27',5),(125,'2018-10-01',3),(126,'2018-10-04',5),(127,'2018-10-08',3),(128,'2018-10-10',1),(129,'2018-10-10',4),(130,'2018-10-11',5),(131,'2018-10-15',3),(132,'2018-10-18',5),(133,'2018-10-22',3),(134,'2018-10-24',1),(135,'2018-10-24',4),(136,'2018-10-25',5),(137,'2018-10-29',3),(138,'2018-11-01',5),(139,'2018-11-05',3),(140,'2018-11-07',1),(141,'2018-11-07',4),(142,'2018-11-08',5),(143,'2018-11-12',3),(144,'2018-11-15',5),(145,'2018-11-19',3),(146,'2018-11-21',1),(147,'2018-11-21',4),(148,'2018-11-22',5),(149,'2018-11-26',3),(150,'2018-11-29',5),(151,'2018-12-05',1),(152,'2018-12-05',4),(153,'2018-12-06',5),(154,'2018-12-13',5),(155,'2018-12-19',1),(156,'2018-12-20',5),(157,'2018-12-27',5),(158,'2024-12-06',1),(159,'2024-12-05',4),(160,'2024-12-07',5),(161,'2024-12-13',5),(162,'2024-12-19',1),(163,'2024-12-20',5),(164,'2024-12-27',5);
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` text,
  `sender_name` varchar(255) DEFAULT NULL,
  `sent_at` datetime(6) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Just saying hi,','Guest','2024-12-06 10:15:47.587463','Hello'),(2,'Howdie dodie?','MGV','2024-12-06 11:04:36.037751','Hello');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resdems`
--

DROP TABLE IF EXISTS `resdems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resdems` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `demand` date NOT NULL,
  `quantity` int NOT NULL,
  `servid` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2te4naga8h8dqvhnm7e8nibcm` (`servid`),
  KEY `FKd8whwsqrytvqwjmufnl78tk78` (`user_id`),
  CONSTRAINT `FK2te4naga8h8dqvhnm7e8nibcm` FOREIGN KEY (`servid`) REFERENCES `services` (`id`),
  CONSTRAINT `FKd8whwsqrytvqwjmufnl78tk78` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resdems`
--

LOCK TABLES `resdems` WRITE;
/*!40000 ALTER TABLE `resdems` DISABLE KEYS */;
INSERT INTO `resdems` VALUES (1,'2018-01-04',5,1,1),(2,'2018-01-11',5,1,1),(3,'2018-01-18',4,2,1),(42,'2018-01-18',5,1,1),(43,'2018-01-17',3,1,1),(44,'2018-01-24',5,1,1),(45,'2018-01-30',1,3,1),(46,'2018-01-31',4,1,1),(47,'2018-02-01',5,1,1),(48,'2018-02-08',5,1,1),(49,'2018-02-13',4,1,1),(50,'2018-02-15',5,1,1),(51,'2018-02-22',5,1,1),(52,'2018-02-27',1,2,1),(79,'2018-03-02',4,1,1),(80,'2018-03-01',5,1,1),(81,'2018-03-04',3,2,1),(82,'2018-03-08',5,1,1),(83,'2018-03-15',5,1,1),(84,'2018-03-21',5,1,1),(85,'2018-03-29',5,1,1),(94,'2018-04-03',6,3,1),(95,'2018-04-05',1,5,1),(96,'2018-04-11',19,3,1),(97,'2018-04-09',1,4,1),(98,'2018-04-10',1,5,1),(99,'2018-04-19',1,5,1),(100,'2018-04-26',1,5,1),(101,'2018-04-29',5,3,1),(102,'2018-05-03',1,5,1),(103,'2018-05-06',4,3,1),(104,'2018-05-10',1,5,1),(105,'2018-05-16',3,3,1),(106,'2018-05-17',1,5,1),(107,'2018-05-21',3,3,1),(108,'2018-05-22',1,1,1),(109,'2018-05-24',1,4,1),(110,'2018-05-24',1,5,1),(111,'2018-05-27',3,3,1),(112,'2018-05-31',1,5,1),(113,'2018-06-03',1,5,1),(114,'2018-06-04',5,3,1),(115,'2018-06-04',3,1,1),(116,'2018-06-06',3,4,1),(117,'2018-06-07',1,5,1),(118,'2018-06-10',1,5,1),(119,'2018-06-10',2,3,1),(120,'2018-06-14',1,5,1),(121,'2018-06-17',1,5,1),(122,'2018-06-20',2,3,1),(123,'2018-06-20',1,4,1),(124,'2018-06-21',1,5,1),(125,'2018-06-24',1,5,1),(126,'2018-06-25',2,3,1),(127,'2018-06-27',1,5,1),(128,'2018-07-01',1,5,1),(129,'2018-07-02',1,3,1),(130,'2018-07-02',3,4,1),(131,'2018-07-05',1,5,1),(132,'2018-07-08',1,5,1),(133,'2018-07-08',3,3,1),(134,'2018-07-12',1,5,1),(135,'2018-07-15',1,5,1),(136,'2018-07-16',1,3,1),(137,'2018-07-18',1,1,1),(138,'2018-07-19',2,4,1),(139,'2018-07-19',1,5,1),(140,'2018-07-22',1,5,1),(141,'2018-07-22',1,3,1),(142,'2018-07-26',1,5,1),(143,'2018-07-29',1,5,1),(144,'2018-07-31',2,3,1),(145,'2018-08-26',1,5,1),(146,'2018-08-29',3,3,1),(147,'2018-08-27',1,1,1),(148,'2018-08-29',1,4,1),(149,'2018-08-30',1,5,1),(150,'2018-09-01',4,3,1),(151,'2018-09-06',1,5,1),(152,'2018-09-09',3,3,1),(153,'2018-09-10',3,1,1),(154,'2018-09-13',1,5,1),(155,'2018-09-18',2,3,1),(156,'2018-09-20',1,5,1),(157,'2018-09-23',1,3,1),(158,'2018-09-24',2,4,1),(159,'2018-09-27',1,5,1),(160,'2018-09-29',1,3,1),(161,'2018-10-04',1,5,1),(162,'2018-10-10',2,3,1),(163,'2018-10-10',1,5,1),(164,'2018-10-15',2,3,1),(165,'2018-10-18',1,5,1),(166,'2018-10-22',6,3,1),(167,'2018-10-25',1,5,1),(168,'2018-10-31',3,3,1),(169,'2018-11-01',1,5,1),(170,'2018-11-04',13,3,1),(171,'2018-11-05',2,1,1),(172,'2018-11-07',1,4,1),(173,'2018-11-15',1,5,1),(174,'2018-11-17',7,3,1),(175,'2018-11-22',1,5,1),(176,'2018-11-26',3,3,1),(177,'2018-11-29',1,5,1),(178,'2018-12-06',1,5,1),(179,'2018-12-13',1,5,1),(180,'2018-12-19',2,4,1),(181,'2018-12-20',1,5,1),(182,'2018-12-26',1,5,1);
/*!40000 ALTER TABLE `resdems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` enum('ROLE_ADMIN','ROLE_USER','ROLE_VISITOR') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN'),(3,'ROLE_VISITOR');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `wtype` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Plastic waste: PET bottle, cosmetic flasks (PP+HDPE), bags.','pla'),(2,'Glass waste: coloured and white glass.','gla'),(3,'Green waste: compostable garden waste.','green'),(4,'Paper waste: newspapers, books, cardboard boxes.','pap'),(5,'Communal waste: solid, residential, non-degradable, non-hazardous waste.','com');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,1),(1,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'majorvidosa@gmail.com','Major','Vidosa','$2a$10$aGXmJHR0Mw8w/GDdalAJJOcSwIkPBEyeJ73FOTUPjrjV1Z8.7Q.Yq','MGV'),(2,'major@gmail.com','Major','Vidosa','$2a$10$mcD9CLlbpZHrBZlyq4Iejuyaf4.4c6frgWSo0C9X4HZXHh5.L0Ld6','thespine');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-06 11:16:21
