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
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_proposal_idx` (`login`),
  CONSTRAINT `proposal_user` FOREIGN KEY (`login`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seecityapi_proposal`
--

LOCK TABLES `seecityapi_proposal` WRITE;
/*!40000 ALTER TABLE `seecityapi_proposal` DISABLE KEYS */;
INSERT INTO `seecityapi_proposal` VALUES (0,'fire','плохая дорога','t','54.74102028836802,56.017439575195326',4,'2024-05-29',1,0),(1,'fire','яма на дороге','test','54.74539004649201,55.975554199218756',4,'2024-05-28',1,0),(2,'fire','трещина на дороге','test1','54.708033207500264,56.02293273925782',4,'2024-05-29',1,0),(3,'water','мешает лежачий полицейский','test12','54.72105648464645,55.97184811770755',4,'2024-05-29',1,0),(4,'fire','мэра долой','test122','54.730594611243525,55.94300900637943',4,'2024-05-29',1,0),(5,'water','о чём думает гор. совет?','test1222','54.72105648464645,55.99107419192632',4,'2024-05-29',1,0),(6,'water','вернуть старого мэра','wwww','54.73357074542457,55.97830078125',4,'2024-05-29',1,0),(7,'water','лужи','test','54.73789364288605,55.99992053380508',4,'2024-05-29',1,0),(8,'water','мэра в отставку!','test12','54.762467284835765,56.00748321533202',3,'2024-05-29',1,0),(9,'water','на дороге гололёд','bar','54.750951182757305,55.9871025236011',4,'2024-05-29',1,0),(10,'water','зебра стёрлась','har','54.74717753832806,56.016237945556654',4,'2024-05-29',1,0),(11,'water','где пандус?','afds','54.76177242218509,56.031515808105446',4,'2024-05-29',1,0),(12,'fire','мэра в отставку','afdssadf','54.76147462023805,56.02224609374998',4,'2024-05-29',1,0),(13,'fire','зебра стёрлась','r','54.70564755395779,56.36007568359374',4,'2024-05-29',1,0),(14,'water','на дороге гололёд','rr','54.88338897807312,56.255705566406256',3,'2024-05-29',1,0),(15,'water','мешает лежачий полицейский','test','54.76276444182954,56.016291589736916',2,'2024-05-29',1,0),(16,'water','трещина на дороге','s','54.73787191536386,56.00002513995662',4,'2024-05-29',1,0),(17,'user','плохая дорога','fa','54.68816113478502,55.930578918457044',4,'2024-05-29',1,0),(18,'user','tes','tte','54.740172185512805,55.97310957855031',3,'2024-05-29',1,0),(19,'user','test','test','54.656312481707694,56.12661621093751',4,'2024-05-29',1,0),(20,'user','test','test','54.65312750551176,56.329863281249985',4,'2024-05-29',1,2),(21,'user','test','test','54.84378259184587,55.739348144531235',4,'2024-05-29',1,1),(22,'user','saf','saf','54.65153492337822,55.90963623046876',4,'2024-05-29',1,1),(23,'user','f','f','54.64197811399944,56.62100097656252',4,'2024-05-29',1,5),(24,'vodopad','far','far','54.804137119377465,56.18154785156253',4,'2024-05-29',1,0),(25,'vodopad','far','far','54.905551488962836,56.18978759765626',4,'2024-05-29',1,2),(26,'vodopad','far','far','55.00513127464389,55.74484130859378',4,'2024-05-29',1,2),(27,'user','saf','saf','54.759200635582246,55.95693430423738',4,'2024-05-29',1,4),(28,'water','Нет мусрного ведра','Поблизости нигде нет мусорного ведра','54.767887464072246,56.030050885401764',2,'2024-05-29',0,0),(29,'water','Ветка упала','На пешеходную дорогу упала ветка','54.77500820784874,56.0295943550702',2,'2024-05-29',0,4),(30,'water','Стёрся пешеходный переход','Все жёлтые полосы стёрлись','54.77690601987661,56.037533693754256',4,'2024-05-29',0,1),(31,'water','Нет скамеек','По всей улице нет скамеек','54.77843164705304,56.021869593107304',2,'2024-05-29',0,1),(32,'water','Не работает светофор','Уже два дня не работает светофор','54.76551939876652,56.04957144781312',4,'2024-05-29',0,5),(33,'water','Нет фонаря','поблизости нигде нет фонаря, темно','54.767488971101045,56.06346901948996',1,'2024-05-29',0,3),(34,'water','Яма на дороге','Уже два года здесь эта яма','54.7726994095552,56.06578644807878',3,'2024-05-29',0,5),(35,'fire','Нет фонаря','Темно на улице','54.76351866084972,56.06839087303226',4,'2024-05-29',0,3);
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

-- Dump completed on 2024-05-30  9:30:06
