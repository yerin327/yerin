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
-- Table structure for table `ds_search_high_tx`
--

DROP TABLE IF EXISTS `ds_search_high_tx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_search_high_tx` (
  `IDX` int(11) NOT NULL AUTO_INCREMENT,
  `SCH_ID` varchar(15) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `SB_TYPE` varchar(2) DEFAULT NULL,
  `OP_TIME` varchar(20) DEFAULT NULL,
  `HIRAGANA` varchar(200) DEFAULT NULL,
  `SCH_FOUNDER_ID` varchar(2) DEFAULT NULL,
  `ZIPCODE` varchar(10) DEFAULT NULL,
  `PREFECTURE_ID` varchar(2) DEFAULT NULL,
  `ADDRESS1` varchar(200) DEFAULT NULL,
  `ADDRESS2` varchar(200) DEFAULT NULL,
  `ADDRESS3` varchar(200) DEFAULT NULL,
  `ADDRESS4` varchar(200) DEFAULT NULL,
  `CHR_DEPT` varchar(200) DEFAULT NULL,
  `CHR_TEL` varchar(100) DEFAULT NULL,
  `CHR_FAX` varchar(100) DEFAULT NULL,
  `MEMO` varchar(2048) DEFAULT NULL,
  `INS_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPD_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DEL_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DEL_FLG` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`IDX`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_search_high_tx`
--

LOCK TABLES `ds_search_high_tx` WRITE;
/*!40000 ALTER TABLE `ds_search_high_tx` DISABLE KEYS */;
INSERT INTO `ds_search_high_tx` VALUES (1,'HSCH0000001','강남고등학교',NULL,'종일','강남고등학교',NULL,'003-0809','10','서울시','강남구','개포동 321',NULL,'진학상담부','011-811-1919','',NULL,'2018-07-18 07:47:57','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(2,'HSCH0000002','강북고등학교',NULL,'종일','강북고등학교',NULL,'064-8624','10','서울시','강북구','길동 123',NULL,'진학상담부','011-611-4401','',NULL,'2018-07-18 07:47:57','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(3,'HSCH0000003','강동고등학교',NULL,'종일','강동고등학교',NULL,'869-3603','10','서울시','강서구','화곡동 23-1',NULL,'진학상담부','0964-56-0007','',NULL,'2018-07-18 07:47:57','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(4,'HSCH0000004','강서고등학교',NULL,'종일','강서고등학교',NULL,'569-1098','10','서울시','강동구','천호동 111',NULL,'진학상담부','072-684-4327','',NULL,'2018-07-18 07:47:57','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(5,'HSCH0000005','중앙고등학교',NULL,'종일','중앙고등학교',NULL,'631-8522','10','서울시','성동구','왕십리 1-2',NULL,'진학상담부','0742-93-5111','',NULL,'2018-07-18 07:47:57','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `ds_search_high_tx` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-23 23:34:34