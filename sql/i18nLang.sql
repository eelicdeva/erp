-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: erp
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `sys_lang`
--

DROP TABLE IF EXISTS `sys_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_lang` (
  `lang_id` char(32) NOT NULL,
  `zh_cn` varchar(255) DEFAULT NULL,
  `en_us` varchar(255) DEFAULT NULL,
  `id_id` varchar(255) DEFAULT NULL,
  `lang_idx` char(32) DEFAULT NULL,
  `lang_key` varchar(255) DEFAULT NULL,
  `lang_tb` varchar(50) DEFAULT NULL,
  `lang_fn` varchar(30) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lang`
--

LOCK TABLES `sys_lang` WRITE;
/*!40000 ALTER TABLE `sys_lang` DISABLE KEYS */;
INSERT INTO `sys_lang` VALUES ('1ad536ad76d011edab22047c1606d5fc','使用JAVA编程逻辑','PROGRAMMING LOGIC USING JAVA','LOGIKA PEMROGRAMAN MENGGUNAKAN JAVA','1805dcab3d6c11ed99fc047c1606d5fc','使用JAVA编程逻辑1','sys_book','book_title','0',NULL,NULL,NULL,NULL,NULL),('889c086f769f11ed8742047c1606d5fc','使用JAVA编程逻辑','PROGRAMMING LOGIC USING JAVA','LOGIKA PEMROGRAMAN MENGGUNAKAN JAVA','1805dcab3d6c11ed99fc047c1606d5fc','使用JAVA编程逻辑1','sys_book','book_title','0',NULL,NULL,NULL,NULL,NULL),('b82739c976cf11edab22047c1606d5fc','使用JAVA编程逻辑1','PROGRAMMING LOGIC USING JAVA','LOGIKA PEMROGRAMAN MENGGUNAKAN JAVA','1805dcab3d6c11ed99fc047c1606d5fc','使用JAVA编程逻辑','sys_book','book_title','0',NULL,NULL,NULL,NULL,NULL),('ed16cc37769e11ed8742047c1606d5fc','使用JAVA编程逻辑1','PROGRAMMING LOGIC USING JAVA','LOGIKA PEMROGRAMAN MENGGUNAKAN JAVA','1805dcab3d6c11ed99fc047c1606d5fc','使用JAVA编程逻辑','sys_book','book_title','0',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_lang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-09  9:21:13