-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: seecity
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `seecityapi_notification`
--

DROP TABLE IF EXISTS `seecityapi_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seecityapi_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `familiarity` int DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `link` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_user_idx` (`login`),
  KEY `notification_proposal_idx` (`link`),
  CONSTRAINT `notification_proposal` FOREIGN KEY (`link`) REFERENCES `seecityapi_proposal` (`id`),
  CONSTRAINT `notification_user` FOREIGN KEY (`login`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_notification`
--

LOCK TABLES `seecityapi_notification` WRITE;
/*!40000 ALTER TABLE `seecityapi_notification` DISABLE KEYS */;
INSERT INTO `seecityapi_notification` VALUES (17,'water',0,'Вашу заявку с номером - 11 удалил администратор',11),(18,'fire',1,'нактуально. Жалоба на заявку',14),(23,'water',0,'Вашу заявку с номером - 10 удалил администратор',10),(24,'water',0,'Вашу заявку с номером - 16 удалил администратор',16),(25,'water',0,'Вашу заявку с номером - 20 удалил администратор',20),(26,'fire',0,'Вашу заявку с номером - 13 удалил администратор',13),(27,'water',0,'Вашу заявку с номером - 23 удалил администратор',23),(28,'vodopad',0,'Вашу заявку с номером - 24 удалил администратор',24),(29,'vodopad',0,'Вашу заявку с номером - 25 удалил администратор',25),(30,'water',0,'Вашу заявку с номером - 14 удалил администратор',14),(31,'fire',0,'Вашу заявку с номером - 12 удалил администратор',12),(32,'water',0,'Вашу заявку с номером - 3 удалил администратор',3),(33,'water',0,'Вашу заявку с номером - 18 удалил администратор',18),(34,'fire',0,'Вашу заявку с номером - 2 удалил администратор',2),(35,'water',0,'Вашу заявку с номером - 27 удалил администратор',27),(36,'water',0,'Вашу заявку с номером - 9 удалил администратор',9),(37,'water',0,'Вашу заявку с номером - 15 удалил администратор',15),(38,'water',0,'Вашу заявку с номером - 8 удалил администратор',8),(39,'fire',0,'Вашу заявку с номером - 1 удалил администратор',1),(40,'water',0,'Вашу заявку с номером - 5 удалил администратор',5),(41,'water',0,'Вашу заявку с номером - 22 удалил администратор',22),(42,'user',0,'Вашу заявку с номером - 17 удалил администратор',17),(43,'water',0,'Вашу заявку с номером - 19 удалил администратор',19),(44,'vodopad',0,'Вашу заявку с номером - 26 удалил администратор',26),(45,'water',0,'Вашу заявку с номером - 21 удалил администратор',21),(46,'fire',1,'Не соответствует действительности . Жалоба на заявку',34);
/*!40000 ALTER TABLE `seecityapi_notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30  9:30:06
