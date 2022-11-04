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
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;

INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', NULL, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2022-06-16 08:07:52', '', NULL, '系统工具目录', 'System Tools', 'Alat Sistem', '系统工具'),(2,'系统监控',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2022-06-16 08:07:52','admin','2022-09-06 08:14:45','系统监控目录','System Monitoring','Pemantauan sistem','系统监控'),('1166', '瓶码', '3', '2', 'gen', NULL, NULL, '1', '0', 'M', '0', '0', '', 'code', 'admin', '2022-11-03 10:50:35', 'admin', '2022-11-03 10:51:20', '', 'code generation', 'code botol', NULL), ('1167', '代码生成 i18n', '1166', '2', 'geni18n', 'tool/gen/geni18n/index', NULL, '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-11-03 11:25:44', 'admin', '2022-11-03 14:14:15', '', 'code generation i18n', 'pembuatan kode i18n', NULL), ('1168', '生成查询 i18n', '1167', '1', '', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-11-03 11:26:40', '', NULL, '', 'Generate query i18n', 'Buat kueri i18n', NULL), ('1169', '生成修改i18n', '1167', '2', '', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-11-03 11:27:14', '', NULL, '', 'Generate modification i18n', 'Hasilkan modifikasi i18n', NULL), ('1170', '生成删除 i18n', '1167', '3', '', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-11-03 11:33:24', '', NULL, '', 'generate delete i18n', 'hasilkan hapus i18n', NULL), ('1171', '导入代码 i18n', '1167', '4', '', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-11-03 11:34:35', '', NULL, '', 'import code i18n', 'kode impor i18n', NULL),('1172', '预览代码 i18n', '1167', '5', '', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-11-03 11:35:05', '', NULL, '', 'preview code i18n', 'kode pratinjau i18n', NULL),('1173', '生成代码 i18n', '1167', '6', '', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-11-03 11:35:39', '', NULL, '', 'generate code i18n', 'menghasilkan kode i18n', NULL)
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 14:24:22
