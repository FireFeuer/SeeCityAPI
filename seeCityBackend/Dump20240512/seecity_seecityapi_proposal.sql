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
-- Table structure for table `seecityapi_proposal`
--

DROP TABLE IF EXISTS `seecityapi_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seecityapi_proposal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(150) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `coordinates` varchar(1000) DEFAULT NULL,
  `relevance` int DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `is_delete` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_proposal_idx` (`login`),
  CONSTRAINT `proposal_user` FOREIGN KEY (`login`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_proposal`
--

LOCK TABLES `seecityapi_proposal` WRITE;
/*!40000 ALTER TABLE `seecityapi_proposal` DISABLE KEYS */;
INSERT INTO `seecityapi_proposal` VALUES (0,'water','Стёрся пешеходный переход','Жёлтые полосы почти не видно','54.74120535992514,55.99113507414785',1,'2024-05-12',0),(1,'water','Нет мусорного ведра','Поблизости нигде нет мусорного ведра','54.73970648167907,55.97162061205416',4,'2024-05-12',0),(2,'water','Нет мусорного ведра','Где бросать мусор?','54.757377695735904,55.99447710658038',1,'2024-05-12',0);
/*!40000 ALTER TABLE `seecityapi_proposal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 18:45:35
