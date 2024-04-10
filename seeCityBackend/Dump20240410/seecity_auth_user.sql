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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (14,'pbkdf2_sha256$720000$KqZTQZ5eQNCdxQytXnADVz$Fx0eQw/1x3ylbHB2LpJud0WoDkYFiBfdgYlVCaW72FE=',NULL,1,'fire','','','aidar.bictimirov2016@yandex.ru',1,1,'2024-03-31 15:53:42.160973'),(22,'pbkdf2_sha256$720000$UWUE8dL1A2qYWYKuF5EHkP$ljS0AKe1rp06Z/WIBq/hskWdU2Gk77qFq26d0zzi4/U=',NULL,1,'ignis','','','aidar.bictimirov2016@yandex.ru',1,1,'2024-03-31 17:52:38.523405'),(23,'pbkdf2_sha256$720000$r8tCOE9RshCJSZI3jFw5Am$zUZiWKwMxIwc4AK6F/qbBaNWBFnChjO5nl/1YMKLvOM=',NULL,1,'IgnisFeuer','','','aidar.bictimirov2016@yandex.ru',1,1,'2024-04-05 15:08:55.902941'),(24,'pbkdf2_sha256$720000$0wVIsGI4yEvnHiTtu1PHP0$i0XJMNmv6QjrFoSduVVeGFO+mhX5MKpoEgcJ/q+fpk0=',NULL,1,'IgnisFF','','','aidar.bictimirov2014@yandex.ru',1,1,'2024-04-05 16:29:35.254401'),(25,'pbkdf2_sha256$720000$Ncp3ErphhFjjKQOZ5x5Cyw$T7ae3IIPSOP3raDz1B6FyEN6cn7IANfPFaowkX9YIIM=',NULL,1,'water','','','aidar.bictimirov2013@yandex.ru',0,1,'2024-04-07 04:34:54.065733'),(26,'pbkdf2_sha256$720000$NdHXOJ4rry7SfgLDX54sI0$hFXaxs8tj0/JZnugyWKIMVxYM/NexafxeyBG46WhU1w=',NULL,1,'ert','','','aidar.b@yandex.ru',0,1,'2024-04-07 10:53:52.951218'),(28,'pbkdf2_sha256$720000$ZnenMSDSKMn1BVvQCti8T8$TeVWHA7FmsBV72eZFTzX3NSfzagHy6z9a59c2iipwtI=',NULL,1,'ert1','','','aidar.b@yandex.ru',0,1,'2024-04-07 10:54:53.227610'),(29,'pbkdf2_sha256$720000$5lEgIPrYy8eMztv3PhjMFp$th4ULn3vNBLACYg2tAOW5lmSfgaR9IcqOqMy+/p/chw=',NULL,1,'ert1123','','','aidar.b@yandex.ru',0,1,'2024-04-07 10:56:18.392276'),(30,'pbkdf2_sha256$720000$wJRU1CrbijtkfYA0OGplQd$DqOpcjsC/Am8uXR+FMc3QvH2JgpKmuausNkmdF6olsY=',NULL,1,'Aidar','','','aidar.bict2015@yandex.ru',0,1,'2024-04-10 05:28:09.475325'),(31,'pbkdf2_sha256$720000$TlXN0cVq9fQu5jOsGgOhW6$FkWEUUNAqAzBf1z3t1ZwX8QCD/DNBkDDHHXmWLpQg8M=',NULL,1,'asf','','','asf',0,1,'2024-04-10 05:29:49.865736');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
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
