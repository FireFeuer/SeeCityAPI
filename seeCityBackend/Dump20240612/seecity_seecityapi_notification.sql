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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_notification`
--

LOCK TABLES `seecityapi_notification` WRITE;
/*!40000 ALTER TABLE `seecityapi_notification` DISABLE KEYS */;
INSERT INTO `seecityapi_notification` VALUES (17,'water',0,'Вашу заявку с номером - 11 удалил администратор',11),(18,'fire',1,'нактуально. Жалоба на заявку',14),(23,'water',0,'Вашу заявку с номером - 10 удалил администратор',10),(24,'water',0,'Вашу заявку с номером - 16 удалил администратор',16),(25,'water',0,'Вашу заявку с номером - 20 удалил администратор',20),(26,'fire',0,'Вашу заявку с номером - 13 удалил администратор',13),(27,'water',0,'Вашу заявку с номером - 23 удалил администратор',23),(28,'vodopad',0,'Вашу заявку с номером - 24 удалил администратор',24),(29,'vodopad',0,'Вашу заявку с номером - 25 удалил администратор',25),(30,'water',0,'Вашу заявку с номером - 14 удалил администратор',14),(31,'fire',0,'Вашу заявку с номером - 12 удалил администратор',12),(32,'water',0,'Вашу заявку с номером - 3 удалил администратор',3),(33,'water',0,'Вашу заявку с номером - 18 удалил администратор',18),(34,'fire',0,'Вашу заявку с номером - 2 удалил администратор',2),(35,'water',0,'Вашу заявку с номером - 27 удалил администратор',27),(36,'water',0,'Вашу заявку с номером - 9 удалил администратор',9),(37,'water',0,'Вашу заявку с номером - 15 удалил администратор',15),(38,'water',0,'Вашу заявку с номером - 8 удалил администратор',8),(39,'fire',0,'Вашу заявку с номером - 1 удалил администратор',1),(40,'water',0,'Вашу заявку с номером - 5 удалил администратор',5),(41,'water',0,'Вашу заявку с номером - 22 удалил администратор',22),(42,'user',0,'Вашу заявку с номером - 17 удалил администратор',17),(43,'water',0,'Вашу заявку с номером - 19 удалил администратор',19),(44,'vodopad',0,'Вашу заявку с номером - 26 удалил администратор',26),(45,'water',0,'Вашу заявку с номером - 21 удалил администратор',21),(46,'fire',1,'Не соответствует действительности . Жалоба на заявку',34),(47,'water',0,'Вашу заявку с номером - 37 удалил администратор',37),(48,'fire',1,'Заявка номер 371 ожидает вашего рассмотрения',38),(49,'fire',1,'Заявка номер 381 ожидает вашего рассмотрения',39),(50,'fire',1,'Заявка номер 40 ожидает вашего рассмотрения',40),(51,'fire',1,'Заявка номер 41 ожидает вашего рассмотрения',41),(52,'fire',1,'неактуально. Жалобы на комментарий',28),(53,'fire',1,'Заявка номер 42 ожидает вашего рассмотрения',42),(54,'water',0,'Вашу заявку с номером - 32 удалил администратор',32),(55,'fire',1,'неактуально. Жалобы на комментарий',32),(56,'fire',1,'неактуально. Жалобы на комментарий',32),(57,'fire',1,'неактуально. Жалобы на комментарий',32),(58,'fire',1,'неактуально. Жалобы на комментарий',32),(59,'fire',1,'Заявка номер 43 ожидает вашего рассмотрения',43),(60,'water',0,'Вашу заявку с номером - 32 удалил администратор',32),(61,'fire',1,'Заявка номер 44 ожидает вашего рассмотрения',44),(62,'fire',1,'Заявка номер 45 ожидает вашего рассмотрения',45),(63,'fire',1,'Заявка номер 46 ожидает вашего рассмотрения',46),(64,'fire',1,'Заявка номер 47 ожидает вашего рассмотрения',47);
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

-- Dump completed on 2024-06-12 14:00:46
