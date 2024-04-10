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
  `date` datetime DEFAULT NULL,
  `availability` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_user_idx` (`login`),
  CONSTRAINT `comment_user` FOREIGN KEY (`login`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_comment`
--

LOCK TABLES `seecityapi_comment` WRITE;
/*!40000 ALTER TABLE `seecityapi_comment` DISABLE KEYS */;
INSERT INTO `seecityapi_comment` VALUES (11,'fire',0,'да он давно уже так',NULL,NULL),(12,'fire',0,'не так уж и сильно',NULL,NULL),(14,'water',2,'её сюда и не надо',NULL,NULL),(15,'water',3,'saf',NULL,NULL),(16,'water',17,'правда',NULL,NULL),(17,'water',0,'тест',NULL,NULL),(18,'water',8,'тест',NULL,NULL),(19,'water',19,'тест',NULL,NULL),(20,'fire',21,'asd',NULL,NULL),(21,'water',14,'комментарий',NULL,NULL),(22,'water',3,'asfas',NULL,NULL),(23,'fire',16,'asd',NULL,NULL),(24,'water',0,'test',NULL,NULL),(25,'fire',24,'не красиво выглядит',NULL,NULL),(27,'water',24,'а так забору даже лучше',NULL,NULL),(28,'fire',0,'test',NULL,NULL),(29,'fire',0,'test',NULL,NULL),(30,'fire',0,'test',NULL,NULL),(31,'fire',0,'test',NULL,NULL),(32,'fire',0,'test',NULL,NULL),(33,'fire',28,'да',NULL,NULL),(34,'fire',28,'да1',NULL,NULL),(35,'fire',28,'да1',NULL,NULL),(36,'fire',28,'да1',NULL,NULL),(37,'fire',28,'да1',NULL,NULL),(38,'fire',28,'да1',NULL,NULL),(39,'water',28,'f',NULL,NULL),(40,'water',28,'f',NULL,NULL),(41,'fire',28,'dfg',NULL,NULL),(42,'fire',28,'dfg',NULL,NULL),(43,'fire',28,'dfg',NULL,NULL);
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

-- Dump completed on 2024-04-10 16:00:29
