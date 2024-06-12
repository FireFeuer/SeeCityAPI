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
-- Table structure for table `seecityapi_comment`
--

DROP TABLE IF EXISTS `seecityapi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seecityapi_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `id_proposal` int DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `availability` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_user_idx` (`login`),
  KEY `comment_proposal_idx` (`id_proposal`),
  CONSTRAINT `comment_proposal` FOREIGN KEY (`id_proposal`) REFERENCES `seecityapi_proposal` (`id`),
  CONSTRAINT `comment_user` FOREIGN KEY (`login`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_comment`
--

LOCK TABLES `seecityapi_comment` WRITE;
/*!40000 ALTER TABLE `seecityapi_comment` DISABLE KEYS */;
INSERT INTO `seecityapi_comment` VALUES (246,'fire',1,'t','2024-05-29',0),(247,'fire',2,'test','2024-05-29',0),(248,'water',6,'d','2024-05-29',1),(249,'fire',6,'test','2024-05-29',0),(250,'fire',6,'te4s','2024-05-29',0),(251,'fire',6,'tes','2024-05-29',0),(252,'fire',17,'asdf','2024-05-29',1),(253,'fire',17,'asfd','2024-05-29',1),(254,'water',14,'test','2024-05-29',0),(255,'гость',14,'asfa','2024-05-29',0),(256,'water',12,'asfd','2024-05-29',1),(257,'water',27,'saf','2024-05-29',0),(258,'fire',12,'asdf','2024-05-29',1),(259,'fire',16,'sadf','2024-05-29',1),(260,'Алия',28,'а раньше оно было','2024-05-29',0),(261,'fire',34,'Яма слишком небольшая','2024-05-29',0),(262,'fire',34,'еуые','2024-05-29',1),(263,'fire',32,'f','2024-05-30',1),(264,'гость',32,'Вчера только работал','2024-06-01',1),(265,'гость',32,'Вчера только работал','2024-06-01',1),(266,'гость',32,'Вчера только работал','2024-06-01',1),(267,'гость',32,'Раньше работал','2024-06-01',1),(268,'гость',32,'Раньше два дня назад работал ещё','2024-06-01',1),(269,'гость',32,'Два дня назад работал ещё','2024-06-01',1),(270,'гость',32,'Два дня назад ещё работал','2024-06-01',1),(271,'гость',32,'Два дня назад работал','2024-06-01',1),(272,'гость',32,'Два дня назад работал','2024-06-01',1),(273,'гость',32,'Два дня назад работал','2024-06-01',1),(274,'гость',32,'Вчера вроде работал ещё','2024-06-01',1),(275,'гость',32,'Вчера работал ещё','2024-06-01',1),(276,'гость',32,'Вчера работал ещё','2024-06-01',1),(277,'water',46,'Раньше вроде зелени больше было','2024-06-02',0),(278,'fire',46,'Территория не претендует на озеленение','2024-06-12',0),(279,'fire',31,'Разве что только во дворах они есть, и то поломанные все','2024-06-12',0);
/*!40000 ALTER TABLE `seecityapi_comment` ENABLE KEYS */;
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
