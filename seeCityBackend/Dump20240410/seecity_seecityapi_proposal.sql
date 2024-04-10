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
  `availability` int DEFAULT NULL,
  `login` varchar(150) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL,
  `coordinates` varchar(1000) DEFAULT NULL,
  `relevance` int DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_non_relevance` datetime DEFAULT NULL,
  `is_delete` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_proposal_idx` (`login`),
  CONSTRAINT `proposal_user` FOREIGN KEY (`login`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_proposal`
--

LOCK TABLES `seecityapi_proposal` WRITE;
/*!40000 ALTER TABLE `seecityapi_proposal` DISABLE KEYS */;
INSERT INTO `seecityapi_proposal` VALUES (0,NULL,'water','асфальт потрескался','','','55.720048163380866,37.607674076047154',2,NULL,NULL,1),(1,NULL,'water','неправильная разметка','','','55.75878595314329,37.7038044471409',1,NULL,NULL,1),(2,NULL,'water','скамейка сломана','','','55.86831827231949,37.558827953139975',3,NULL,NULL,1),(3,NULL,'water','test','','','55.90691463854628,37.6963427734375',1,NULL,NULL,1),(4,NULL,'water','test2','','','55.85133292820541,37.94353515625001',1,NULL,NULL,1),(5,NULL,'water','test43','','','55.98397895475435,37.96276123046875',1,NULL,NULL,1),(6,NULL,'water','test3','','','55.923882003062104,37.35302001953125',3,NULL,NULL,1),(7,NULL,'water','test4','','','56.08239670517832,37.57274658203125',1,NULL,NULL,1),(8,NULL,'water','test5','','','55.99937334227887,37.50682861328126',1,NULL,NULL,1),(9,NULL,'water','test6','','','56.11156598223166,37.45739013671876',1,NULL,NULL,1),(10,NULL,'fire','test8','','','56.11043777653589,37.284120612582925',1,NULL,NULL,1),(11,NULL,'water','test10','','','55.800312799932726,37.11681396484376',1,NULL,NULL,1),(12,NULL,'water','test--','','','55.95625354130172,37.0591357421875',1,NULL,NULL,1),(13,NULL,'water','test12312','','','55.94084191144078,36.917686767578125',1,NULL,NULL,1),(14,NULL,'water','vvvv','','','56.00706822769385,38.09047729492187',1,NULL,NULL,1),(17,NULL,'water','грязь','грязь на тротуаре','','55.78638655453218,37.36949951171875',3,NULL,NULL,1),(18,NULL,'water','test','test123','','55.83587937933098,37.61669189453126',2,NULL,NULL,0),(19,NULL,'water','test','test','','55.87450168595345,37.87212402343749',1,NULL,NULL,1),(20,NULL,'water','testwasr','testasf','','55.928508171994736,37.22255737304689',1,NULL,NULL,1),(21,NULL,'water','saf','saf','','55.84978785092429,37.87349731445314',1,NULL,NULL,1),(22,NULL,'water','te','estaf','','55.74147907200421,38.25527221679688',1,NULL,NULL,1),(23,NULL,'water','test','testwet','','56.04090744645612,38.36238891601563',1,NULL,NULL,1),(24,NULL,'fire','слезла краска с забора','прям совсем вся','','54.74574616662962,55.98780154664184',3,NULL,NULL,0),(25,NULL,'water','ветка упала на дорогу','опасно для людей','','54.746470236490715,55.98496659178196',1,NULL,NULL,0),(26,NULL,'fire','saf','asf','','-89.51582883317447,-157.4923626338282',1,NULL,NULL,0),(27,NULL,'water','water','asd','','56.00245148109612,36.82567626953125',1,NULL,NULL,1),(28,NULL,'fire','кан-й люк открыт','уже давно','','55.8095941856093,37.67986328125',2,NULL,NULL,1),(29,NULL,'fire','asf','saf','','55.735280859622705,37.218437500000014',1,NULL,NULL,1);
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

-- Dump completed on 2024-04-10 16:00:30
