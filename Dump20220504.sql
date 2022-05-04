-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: addweb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `advertisments`
--

DROP TABLE IF EXISTS `advertisments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `description` text,
  `image` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `advertisments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisments`
--

LOCK TABLES `advertisments` WRITE;
/*!40000 ALTER TABLE `advertisments` DISABLE KEYS */;
INSERT INTO `advertisments` VALUES (3,'iphone se','mobile',40000,'nuwaraeliya','good product','images\\1651645794890--download.jpg','2022-05-03 15:56:26','2022-05-04 06:29:54',2),(5,'samsung j','mobile',40000,'matale','good product','images\\1651613185375.jpg','2022-05-03 21:26:25','2022-05-03 21:26:25',2),(6,'samsung j32','mobile',40000,'matale','good product','images\\1651613694245.jpg','2022-05-03 21:34:54','2022-05-03 21:34:54',2),(7,'samsung j32','mobile',40000,'matale','good product','images\\1651639465750.jpg','2022-05-04 04:44:25','2022-05-04 04:44:25',2),(8,'samsung j1','mobile',50000,'matale','good product','images\\1651639520674.jpg','2022-05-04 04:45:20','2022-05-04 04:45:20',2),(10,'huwawei','mobile',50000,'kandy','good product','images\\1651645462993--5.jpg','2022-05-04 06:24:23','2022-05-04 06:24:23',2);
/*!40000 ALTER TABLE `advertisments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phonenum` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'heshan103','heshan','12345','Male','kandy','0776496733',NULL,'2022-05-03 12:36:21','2022-05-03 13:05:45'),(2,'heshan101','heshan','$2b$10$H4fz0EGG5Vk4yEyFYJ48G.O0m8BxUT9ah8znRFc8NWDIztYojLloe','Male','kandy','0776496733',NULL,'2022-05-03 14:17:15','2022-05-03 14:17:15'),(3,'heshan101','heshan','$2b$10$GFGYXeKQ9AZRaqmECgbb.OV5uL7PcWf0VVGSSVHXKfYvrLJ9azE7a','Male','kandy','0776496733',NULL,'2022-05-04 04:35:32','2022-05-04 04:35:32'),(4,'heshan101','heshan','$2b$10$hZKjiYOPr/9iW0dbY828yuCfkhdDhjQdIvqRupRJtSKsd4D7Pgv/y','Male','kandy','0776496733',NULL,'2022-05-04 05:47:06','2022-05-04 05:47:06'),(5,'heshan101','heshan','$2b$10$6/5lNC1AeVIR9gFDLYsZPOFcbEacjI2ntpBpGrkTRoyA0Tyt1bdMq','Male','kandy','0776496733',NULL,'2022-05-04 06:22:29','2022-05-04 06:22:29'),(6,'yasas101','heshan','$2b$10$ZR2Js1a82ehFkTzMzkFFuOTs8Kd.TFfrPDC0bZP9oBmTlHPPMQiGG','Male','kandy','0776496733',NULL,'2022-05-04 07:00:19','2022-05-04 07:00:19');
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

-- Dump completed on 2022-05-04 12:54:16
