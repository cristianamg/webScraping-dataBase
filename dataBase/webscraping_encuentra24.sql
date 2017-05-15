CREATE DATABASE  IF NOT EXISTS `webscraping` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webscraping`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: webscraping
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `encuentra24`
--

DROP TABLE IF EXISTS `encuentra24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuentra24` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localizacion` varchar(25) DEFAULT NULL,
  `marca` varchar(25) DEFAULT NULL,
  `modelo` varchar(25) DEFAULT NULL,
  `Enviado` varchar(25) DEFAULT NULL,
  `precio` varchar(25) DEFAULT NULL,
  `ano` varchar(25) DEFAULT NULL,
  `kilometros` varchar(25) DEFAULT NULL,
  `motor` varchar(25) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuentra24`
--

LOCK TABLES `encuentra24` WRITE;
/*!40000 ALTER TABLE `encuentra24` DISABLE KEYS */;
INSERT INTO `encuentra24` VALUES (171,'Pavas','BMW','R 1200 GS Adv','17.04.2017','39,500.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/56/8769567_4bc81f.jpg'),(172,'Ciudad Curridabat','KTM','Adventure','02.05.2017','29,500.00','2017','ND','1290 cc','https://files.encuentra24.com/large/cr/88/76/64/8876649_2fa6cb.jpg'),(173,'San Joaquín','Others','150','21.04.2017','1,700,000','2009','500','150 C.C','https://files.encuentra24.com/large/cr/80/51/17/8051170_200ade.jpg'),(174,'Pavas','BMW','F 800 R','02.05.2017','16,900.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/46/8769464_a68f1a.jpg'),(175,'Pavas','BMW','F 800 GS Adv','02.05.2017','24,500.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/50/8769505_408399.jpg'),(176,'Pavas','BMW','G 310 R ','17.04.2017','7,990.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/58/8769582_d6123c.jpg'),(177,'Ciudad Curridabat','Kawasaki','Ninja','02.05.2017','19,900.00','2017','ND','600','https://files.encuentra24.com/large/cr/88/11/47/8811472_128b02.jpg'),(178,'Santa Ana','KTM','Enduro ','02.05.2017','14,500.00','2017','ND','690cc','https://files.encuentra24.com/large/cr/88/77/54/8877543_e0e145.jpg'),(179,'San Joaquín','Others','150','21.04.2017','1,700,000','2009','500','150 C.C','https://files.encuentra24.com/large/cr/80/51/17/8051170_200ade.jpg'),(180,'Ciudad Curridabat','Kawasaki','Ninja','02.05.2017','19,900.00','2017','ND','600','https://files.encuentra24.com/large/cr/88/11/47/8811472_128b02.jpg'),(181,'Santa Ana','KTM','Enduro ','02.05.2017','14,500.00','2017','ND','690cc','https://files.encuentra24.com/large/cr/88/77/54/8877543_e0e145.jpg'),(182,'Pavas','BMW','R 1200 GS Adv','17.04.2017','39,500.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/56/8769567_4bc81f.jpg'),(183,'Pavas','BMW','F 800 R','02.05.2017','16,900.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/46/8769464_a68f1a.jpg'),(184,'Ciudad Curridabat','KTM','Adventure','02.05.2017','29,500.00','2017','ND','1290 cc','https://files.encuentra24.com/large/cr/88/76/64/8876649_2fa6cb.jpg'),(185,'Pavas','BMW','F 800 GS Adv','02.05.2017','24,500.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/50/8769505_408399.jpg'),(186,'Pavas','BMW','G 310 R ','17.04.2017','7,990.00','2017','ND','ND','https://files.encuentra24.com/large/cr/87/69/58/8769582_d6123c.jpg');
/*!40000 ALTER TABLE `encuentra24` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 14:51:07
