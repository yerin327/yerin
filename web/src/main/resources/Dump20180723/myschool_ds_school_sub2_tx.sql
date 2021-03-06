-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: myschool
-- ------------------------------------------------------
-- Server version	5.1.46-community

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
-- Table structure for table `ds_school_sub2_tx`
--

DROP TABLE IF EXISTS `ds_school_sub2_tx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_school_sub2_tx` (
  `IDX` int(11) NOT NULL AUTO_INCREMENT,
  `SCHOOL_ID` varchar(15) NOT NULL,
  `CHR_FNAME` varchar(50) DEFAULT NULL,
  `CHR_LNAME` varchar(50) DEFAULT NULL,
  `CHR_DEPT` varchar(200) DEFAULT NULL,
  `CHR_TEL` varchar(50) DEFAULT NULL,
  `CHR_FAX` varchar(30) DEFAULT NULL,
  `CHR_FB` varchar(100) DEFAULT NULL,
  `CHR_TW` varchar(100) DEFAULT NULL,
  `INS_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPD_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPD_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SCHOOL_ID`),
  UNIQUE KEY `IDX` (`IDX`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_school_sub2_tx`
--

LOCK TABLES `ds_school_sub2_tx` WRITE;
/*!40000 ALTER TABLE `ds_school_sub2_tx` DISABLE KEYS */;
INSERT INTO `ds_school_sub2_tx` VALUES (1,'SCH0000004','도원','이','교육','0123-1231','','','','2018-06-23 07:57:13','0000-00-00 00:00:00',NULL),(2,'SCH0000001',NULL,NULL,'진학상담과','011-811-1919','',NULL,NULL,'2018-06-23 09:07:53','0000-00-00 00:00:00',NULL),(3,'SCH0000002','길동','홍','진학상담과','011-611-4401','팩스없음','없음FB','없음TW','2018-07-16 16:16:48','2018-07-16 16:16:48',NULL),(4,'SCH0000003',NULL,NULL,'진학상담과','0964-56-0007','',NULL,NULL,'2018-06-23 09:07:53','0000-00-00 00:00:00',NULL),(5,'SCH0000005','WLDUS1','RLA','','21','2121','212','12121','2018-07-16 20:04:58','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `ds_school_sub2_tx` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-23 23:34:33
