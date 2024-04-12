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
-- Table structure for table `seecityapi_evaluationproposal`
--

DROP TABLE IF EXISTS `seecityapi_evaluationproposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seecityapi_evaluationproposal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evaluation` int DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `id_proposal` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluationProposal_proposal_idx` (`id_proposal`),
  KEY `evaluationProposal_user_idx` (`login`),
  CONSTRAINT `evaluationProposal_proposal` FOREIGN KEY (`id_proposal`) REFERENCES `seecityapi_proposal` (`id`),
  CONSTRAINT `evaluationProposal_user` FOREIGN KEY (`login`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_evaluationproposal`
--

LOCK TABLES `seecityapi_evaluationproposal` WRITE;
/*!40000 ALTER TABLE `seecityapi_evaluationproposal` DISABLE KEYS */;
INSERT INTO `seecityapi_evaluationproposal` VALUES (5,2,'water',1),(8,2,'fire',2),(9,1,'fire',1),(10,1,'fire',0),(12,1,'water',0),(13,2,'water',2),(14,1,'water',3),(16,1,'water',6),(19,1,'fire',9),(21,1,'water',14),(23,1,'fire',17),(25,1,'water',23),(26,1,'fire',24),(27,2,'water',24),(28,1,'water',25),(29,2,'fire',18),(30,2,'fire',21),(39,2,'water',21),(40,1,'water',17),(41,1,'water',22),(42,2,'water',27),(43,1,'fire',28),(44,2,'fire',29),(45,2,'water',28),(46,2,'water',30),(47,1,'water',39),(48,2,'water',41),(49,2,'water',45),(50,2,'fire',43),(51,2,'fire',44),(52,2,'fire',46),(53,2,'water',47),(54,2,'fire',48),(55,2,'water',49),(56,2,'water',48),(57,1,'fire',49);
/*!40000 ALTER TABLE `seecityapi_evaluationproposal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 23:44:24
