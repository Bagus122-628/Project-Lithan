-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: test_springmvc
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `test_springmvc`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test_springmvc` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `test_springmvc`;

--
-- Table structure for table `tb_message`
--

DROP TABLE IF EXISTS `tb_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `send_on` datetime DEFAULT NULL,
  `from_user_id` bigint(20) DEFAULT NULL,
  `to_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrpovfdjewmts193h5hpa8phwl` (`from_user_id`),
  KEY `FK96ag0ucawv8wv1k3k1c21nki` (`to_user_id`),
  CONSTRAINT `FK96ag0ucawv8wv1k3k1c21nki` FOREIGN KEY (`to_user_id`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FKrpovfdjewmts193h5hpa8phwl` FOREIGN KEY (`from_user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_message`
--

LOCK TABLES `tb_message` WRITE;
/*!40000 ALTER TABLE `tb_message` DISABLE KEYS */;
INSERT INTO `tb_message` VALUES (1,'good morning bagus','2022-10-20 16:00:01',2,1),(2,'good morning nanda','2022-10-20 17:00:01',1,2),(3,'woii kont','2022-10-21 16:54:29',1,2),(4,'melali yuk','2022-10-21 16:54:50',1,2),(5,'skip','2022-10-21 16:58:48',2,1),(6,'yeah','2022-10-21 17:08:29',1,2),(7,'helo my friend','2022-10-21 17:13:58',2,1),(8,'whats app bro','2022-10-22 13:53:54',1,2),(9,'hey, im good, hwat about u? ','2022-10-22 13:53:54',2,1);
/*!40000 ALTER TABLE `tb_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_thread`
--

DROP TABLE IF EXISTS `tb_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_thread` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `like_count` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `thread_content` varchar(255) DEFAULT NULL,
  `thread_description` varchar(255) DEFAULT NULL,
  `thread_title` varchar(255) DEFAULT NULL,
  `publisher_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK99pqnsk1dxeidia74ua5evlef` (`publisher_id`),
  CONSTRAINT `FK99pqnsk1dxeidia74ua5evlef` FOREIGN KEY (`publisher_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_thread`
--

LOCK TABLES `tb_thread` WRITE;
/*!40000 ALTER TABLE `tb_thread` DISABLE KEYS */;
INSERT INTO `tb_thread` VALUES (1,10,'2022-10-20 15:56:33','hero.jpg','java is programing language make by sunmicrosystem and buy by oracle','java history',1),(2,15,'2022-10-20 16:56:39','hero.jpg','java is programing that have quote write onece run evryware','java quote',1),(3,0,'2022-10-20 19:26:05','hero.jpg','this is thre time i upload','some titile',2),(8,0,'2022-10-20 22:48:03','hero.jpg','more desc','more title',3),(9,0,'2022-10-21 13:02:55','hero.jpg','desc','some other',2),(10,100,'2022-10-22 13:53:52','hero.jpg','now java 19 is publish see waht is new','java news weekly',2);
/*!40000 ALTER TABLE `tb_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `photo_profile` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'bagus@email.com','qwerty','indonesia','bagus','nanda','user1.svg','administrator ','admin',NULL),(2,'nanda@email.com','qwerty','indonesia','nanda','widnyana','user1.svg','ui / ux desginer ','user','yzSeJKrc'),(3,'made@email.com','qwerty','singapore','made ','yoga','user1.svg','dev ops','user',NULL),(7,'test33@email.com','qwerty','indo','putu','bagus',NULL,NULL,'user',NULL),(8,'test94@email.com','qwerty','indo','putu','bagus',NULL,NULL,'user',NULL),(9,'test61@email.com','qwerty','indo','putu','bagus',NULL,NULL,'user',NULL),(10,'test88@email.com','qwerty','indo','putu','bagus',NULL,NULL,'user',NULL);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-22 17:09:26
