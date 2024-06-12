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
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (14,'pbkdf2_sha256$720000$n7Cm8HSc977z7SdZQSgjaN$xsz7ArQwqlxw9l6YxjXJ2PMkpnfVU2KglMWA8NpLRm4=',NULL,1,'fire','','','aidar.bictimirov2017@yandex.ru',1,1,'2024-03-31 15:53:42.160973'),(24,'pbkdf2_sha256$720000$0wVIsGI4yEvnHiTtu1PHP0$i0XJMNmv6QjrFoSduVVeGFO+mhX5MKpoEgcJ/q+fpk0=',NULL,1,'IgnisFF','','','aidar.bictimirov2014@yandex.ru',1,0,'2024-04-05 16:29:35.254401'),(25,'pbkdf2_sha256$720000$Ncp3ErphhFjjKQOZ5x5Cyw$T7ae3IIPSOP3raDz1B6FyEN6cn7IANfPFaowkX9YIIM=',NULL,1,'water','','','aidar.bictimirov2013@yandex.ru',0,1,'2024-04-07 04:34:54.065733'),(33,'pbkdf2_sha256$720000$AsY7f04yq7Vfn5lC4EHcEi$G/t/6ka64wXCL2Odccoeu3A85LTYFyt5P4wHkSXKLpc=',NULL,1,'гость','','','aidar.bict2000@gmail.com',0,1,'2024-04-12 15:25:42.697024'),(38,'pbkdf2_sha256$720000$0IRGkfVTq4GnF94RoJOOXE$DQpxSl+Zm0nLBJj8qQ/e3GaE7VeJXT0FtGj73sfNr0U=',NULL,1,'earth','','','aidar.bictimirov2000@yandex.ru',0,0,'2024-05-06 19:54:30.956096'),(39,'pbkdf2_sha256$720000$E12OHd4I5GeGtq6KpIqv0l$wjCvI/OfHORboKQ4H2/CDiv1pSK084IFwIzMW57JBTs=',NULL,1,'Амин','','','amin.a@yandex.ru',0,1,'2024-05-09 17:31:04.794187'),(40,'pbkdf2_sha256$720000$RBVMJxFCbr5CraFnUzjM60$Zh9J/fp/AzTACueR1RZ8hs8VUR0HXcAvLUBWAml36uo=',NULL,1,'testUser','','','test.user2020@yandex.ru',0,0,'2024-05-11 08:42:26.147123'),(41,'pbkdf2_sha256$720000$NWa515XijM4ZYnx8ZXjTAo$LAXDSGB4dmf0n+7zp9Qe2uZe6a371ztqjOKX8P08upQ=',NULL,1,'ы','','','aidar.bictimirov2015@yandex.ru',0,1,'2024-05-27 08:55:46.438705'),(42,'pbkdf2_sha256$720000$9i3ErF6GOLnOU7PG0b4x45$Cb1Dt4pjxOsvmw4ahpti5erb5u+FXQpBWAeJRwhtHls=',NULL,1,'air1','','','air.mail@yandex.ru',0,1,'2024-05-29 05:21:34.204283'),(43,'pbkdf2_sha256$720000$RZRwhkTQFQoWS434jFs6zc$UxyIClhlppBUFdHqsLnm0wEbo3G/30t+VIDviMCEec4=',NULL,1,'admin','','','admin.mail@yandex.ru',1,1,'2024-05-29 05:28:46.300913'),(44,'pbkdf2_sha256$720000$rltadrgl3kBfkawKUeqlpM$S/mMrsZoHzYzTwUfCHXkVBvfBUVa++8D/JE3WqFEMZ0=',NULL,1,'user','','','user.mail@yandex.ru',0,0,'2024-05-29 07:50:15.960454'),(45,'pbkdf2_sha256$720000$4EsGY0KhmAACy3tp5LxG8t$NYtssDZGlGlOGfEzrWQ4qJDoMgYZ5NY6MvbqT1SUu5I=',NULL,1,'vodopad','','','aidar.bict200@yandex.ru',0,1,'2024-05-29 09:25:57.211109'),(46,'pbkdf2_sha256$720000$7IaOPhILwlD4AKXyHsV8sr$fGSY4ebHT5fcE2y3Q8YiRQmygaiqfCtsUfuQTXWdqZU=',NULL,1,'Алия','','','alia.s@yandex.ru',1,1,'2024-06-12 05:36:10.400317'),(47,'pbkdf2_sha256$720000$cRAXxFXnCKEEMywwzFb3zX$Uh2Hyg6m4Y/I5wWsFizs8GWrL70jLZlFjwMLzgccYfs=',NULL,1,'Динар','','','dinar.b@tandex.ru',0,1,'2024-06-12 05:51:27.233762');
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

-- Dump completed on 2024-06-12 14:00:46
