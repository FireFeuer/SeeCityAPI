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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_evaluationproposal`
--

LOCK TABLES `seecityapi_evaluationproposal` WRITE;
/*!40000 ALTER TABLE `seecityapi_evaluationproposal` DISABLE KEYS */;
INSERT INTO `seecityapi_evaluationproposal` VALUES (111,1,'fire',2),(112,1,'water',1),(113,1,'water',6),(114,1,'fire',17),(115,2,'water',14),(116,2,'water',23),(117,1,'fire',13),(118,2,'vodopad',25),(119,1,'water',27),(120,2,'fire',8),(121,1,'fire',15),(122,1,'fire',0),(123,2,'water',28),(124,2,'water',29),(125,2,'water',30),(126,1,'water',34),(127,1,'fire',34),(128,2,'fire',32),(129,2,'water',32),(130,2,'water',46),(131,2,'fire',39),(132,2,'fire',40),(133,2,'Алия',29);
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

-- Dump completed on 2024-06-12 14:00:47
