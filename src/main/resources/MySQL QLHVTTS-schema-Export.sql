-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlyhocvientts
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
-- Table structure for table `canhan`
--

DROP TABLE IF EXISTS `canhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canhan` (
  `MaCN` varchar(20) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `GioiTinh` varchar(4) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `NguyenQuan` varchar(500) DEFAULT NULL,
  `SDT` int(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `FaceBook` varchar(100) DEFAULT NULL,
  `Trello` varchar(100) DEFAULT NULL,
  `Slack` varchar(100) DEFAULT NULL,
  `ChatWork` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaCN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canhan`
--

LOCK TABLES `canhan` WRITE;
/*!40000 ALTER TABLE `canhan` DISABLE KEYS */;
/*!40000 ALTER TABLE `canhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doitac`
--

DROP TABLE IF EXISTS `doitac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doitac` (
  `MaDoiTac` varchar(20) NOT NULL,
  `TenDoiTac` varchar(1000) DEFAULT NULL,
  `TruSo` varchar(1000) DEFAULT NULL,
  `SDTDT` int(15) DEFAULT NULL,
  `EmailDT` varchar(100) DEFAULT NULL,
  `WebsiteDT` varchar(500) DEFAULT NULL,
  `NgayBDHT` date DEFAULT NULL,
  `NgayKTHT` date DEFAULT NULL,
  PRIMARY KEY (`MaDoiTac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doitac`
--

LOCK TABLES `doitac` WRITE;
/*!40000 ALTER TABLE `doitac` DISABLE KEYS */;
/*!40000 ALTER TABLE `doitac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duan`
--

DROP TABLE IF EXISTS `duan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duan` (
  `MaDA` varchar(20) NOT NULL,
  `TenDA` varchar(100) DEFAULT NULL,
  `TenKH` varchar(100) DEFAULT NULL,
  `NgayBDDA` date DEFAULT NULL,
  `NgayKTDA` date DEFAULT NULL,
  `TenPM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duan`
--

LOCK TABLES `duan` WRITE;
/*!40000 ALTER TABLE `duan` DISABLE KEYS */;
/*!40000 ALTER TABLE `duan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giangday`
--

DROP TABLE IF EXISTS `giangday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giangday` (
  `MaGD` varchar(20) NOT NULL,
  `ViTriGD` varchar(50) DEFAULT NULL,
  `NoiCongTac` varchar(100) DEFAULT NULL,
  `ChucVu` varchar(100) DEFAULT NULL,
  `NgayBDGD` date DEFAULT NULL,
  `NgayKTGD` date DEFAULT NULL,
  `MaLopHoc` varchar(20) DEFAULT NULL,
  `MaCN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaGD`),
  KEY `fk_giangday_MaLopHoc` (`MaLopHoc`),
  KEY `fk_giangday_MaCN` (`MaCN`),
  CONSTRAINT `fk_giangday_canhan_MaCN` FOREIGN KEY (`MaCN`) REFERENCES `canhan` (`MaCN`) ON UPDATE CASCADE,
  CONSTRAINT `fk_giangday_lophoc_MaLopHoc` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giangday`
--

LOCK TABLES `giangday` WRITE;
/*!40000 ALTER TABLE `giangday` DISABLE KEYS */;
/*!40000 ALTER TABLE `giangday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocphi`
--

DROP TABLE IF EXISTS `hocphi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hocphi` (
  `MaHP` varchar(20) NOT NULL,
  `HocBong` varchar(50) DEFAULT NULL,
  `LanNopHP` tinyint(4) DEFAULT NULL,
  `HPNop` int(11) DEFAULT NULL,
  `NgayNopHP` date DEFAULT NULL,
  `HPConThieu` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaHP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocphi`
--

LOCK TABLES `hocphi` WRITE;
/*!40000 ALTER TABLE `hocphi` DISABLE KEYS */;
/*!40000 ALTER TABLE `hocphi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocvien`
--

DROP TABLE IF EXISTS `hocvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hocvien` (
  `MaHV` varchar(20) NOT NULL,
  `THPT` varchar(100) DEFAULT NULL,
  `DaiHoc` varchar(100) DEFAULT NULL,
  `NamTN` date DEFAULT NULL,
  `MaLopHoc` varchar(20) DEFAULT NULL,
  `MaHP` varchar(20) DEFAULT NULL,
  `MaCN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaHV`),
  KEY `fk_hocvien_MaLopHoc` (`MaLopHoc`),
  KEY `fk_hocvien_MaHP` (`MaHP`),
  KEY `fk_hocvien_MaCN` (`MaCN`),
  CONSTRAINT `fk_hocvien_canhan_MaCN` FOREIGN KEY (`MaCN`) REFERENCES `canhan` (`MaCN`) ON UPDATE CASCADE,
  CONSTRAINT `fk_hocvien_hocphi_MaHP` FOREIGN KEY (`MaHP`) REFERENCES `hocphi` (`MaHP`) ON UPDATE CASCADE,
  CONSTRAINT `fk_hocvien_lophoc_MaLopHoc` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocvien`
--

LOCK TABLES `hocvien` WRITE;
/*!40000 ALTER TABLE `hocvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `hocvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichhoc`
--

DROP TABLE IF EXISTS `lichhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lichhoc` (
  `MaLichHoc` varchar(20) NOT NULL,
  `Thu` varchar(20) DEFAULT NULL,
  `ThoiGian` time DEFAULT NULL,
  `DiaDiem` varchar(1000) DEFAULT NULL,
  `MaLopHoc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaLichHoc`),
  KEY `fk_lichhoc_MaCN` (`MaLopHoc`),
  CONSTRAINT `fk_lichhoc_lophoc_MaLopHoc` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichhoc`
--

LOCK TABLES `lichhoc` WRITE;
/*!40000 ALTER TABLE `lichhoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `lichhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lophoc`
--

DROP TABLE IF EXISTS `lophoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lophoc` (
  `MaLopHoc` varchar(20) NOT NULL,
  `NgayBDH` date DEFAULT NULL,
  `NgayKTH` date DEFAULT NULL,
  `TenLopHoc` varchar(100) DEFAULT NULL,
  `SoLuongHV` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`MaLopHoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lophoc`
--

LOCK TABLES `lophoc` WRITE;
/*!40000 ALTER TABLE `lophoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `lophoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngonngu`
--

DROP TABLE IF EXISTS `ngonngu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngonngu` (
  `MaNN` varchar(20) NOT NULL,
  `HPPhaiNop` int(11) DEFAULT NULL,
  `MaLopHoc` varchar(20) DEFAULT NULL,
  `MaTuyenDung` varchar(20) DEFAULT NULL,
  `MaDA` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaNN`),
  KEY `fk_ngonngu_MaLopHoc` (`MaLopHoc`),
  KEY `fk_ngonngu_MaTuyenDung` (`MaTuyenDung`),
  KEY `fk_ngonngu_MaDA` (`MaDA`),
  CONSTRAINT `fk_ngonngu_duan_MaDA` FOREIGN KEY (`MaDA`) REFERENCES `duan` (`MaDA`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ngonngu_lophoc_MaLopHoc` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`) ON UPDATE CASCADE,
  CONSTRAINT `fk_ngonngu_tuyendung_MaTuyenDung` FOREIGN KEY (`MaTuyenDung`) REFERENCES `tuyendung` (`MaTuyenDung`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngonngu`
--

LOCK TABLES `ngonngu` WRITE;
/*!40000 ALTER TABLE `ngonngu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ngonngu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taikhoan` (
  `MaTK` varchar(20) NOT NULL,
  `LoaiTK` varchar(50) DEFAULT NULL,
  `TenTK` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(50) DEFAULT NULL,
  `NgayMoTK` date DEFAULT NULL,
  `NgayKhoaTK` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MaCN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaTK`),
  KEY `fk_taikhoan_MaCN` (`MaCN`),
  CONSTRAINT `fk_taikhoan_canhan_MaCN` FOREIGN KEY (`MaCN`) REFERENCES `canhan` (`MaCN`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuctapsinh`
--

DROP TABLE IF EXISTS `thuctapsinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thuctapsinh` (
  `MaTTS` varchar(20) NOT NULL,
  `ViTriDA` varchar(100) DEFAULT NULL,
  `NgayBDTT` date DEFAULT NULL,
  `NgayKTTT` date DEFAULT NULL,
  `ThongTinCV` varchar(500) DEFAULT NULL,
  `TenNguoiQL` varchar(500) DEFAULT NULL,
  `MaDA` varchar(20) DEFAULT NULL,
  `MaDoiTac` varchar(20) DEFAULT NULL,
  `MaHV` varchar(20) DEFAULT NULL,
  `MaCN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaTTS`),
  KEY `fk_thuctapsinh_MaDA` (`MaDA`),
  KEY `fk_thuctapsinh_MaDoiTac` (`MaDoiTac`),
  KEY `fk_thuctapsinh_MaHV` (`MaHV`),
  KEY `fk_thuctapsinh_MaCN` (`MaCN`),
  CONSTRAINT `fk_thuctapsinh_canhan_MaCN` FOREIGN KEY (`MaCN`) REFERENCES `canhan` (`MaCN`) ON UPDATE CASCADE,
  CONSTRAINT `fk_thuctapsinh_doitac_MaDoiTac` FOREIGN KEY (`MaDoiTac`) REFERENCES `doitac` (`MaDoiTac`) ON UPDATE CASCADE,
  CONSTRAINT `fk_thuctapsinh_duan_MaDA` FOREIGN KEY (`MaDA`) REFERENCES `duan` (`MaDA`) ON UPDATE CASCADE,
  CONSTRAINT `fk_thuctapsinh_hocvien_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuctapsinh`
--

LOCK TABLES `thuctapsinh` WRITE;
/*!40000 ALTER TABLE `thuctapsinh` DISABLE KEYS */;
/*!40000 ALTER TABLE `thuctapsinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuyendung`
--

DROP TABLE IF EXISTS `tuyendung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuyendung` (
  `MaTuyenDung` varchar(20) NOT NULL,
  `TinTuyenDung` varchar(100) DEFAULT NULL,
  `ViTriTD` varchar(100) DEFAULT NULL,
  `SoLuongTD` tinyint(4) DEFAULT NULL,
  `NgayBDTD` date DEFAULT NULL,
  `NgayKTTD` date DEFAULT NULL,
  `MaDoiTac` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaTuyenDung`),
  KEY `fk_tuyendung_MaDoiTac` (`MaDoiTac`),
  CONSTRAINT `fk_tuyendung_doitac_MaDoiTac` FOREIGN KEY (`MaDoiTac`) REFERENCES `doitac` (`MaDoiTac`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuyendung`
--

LOCK TABLES `tuyendung` WRITE;
/*!40000 ALTER TABLE `tuyendung` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuyendung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vgiangday`
--

DROP TABLE IF EXISTS `vgiangday`;
/*!50001 DROP VIEW IF EXISTS `vgiangday`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vgiangday` AS SELECT 
 1 AS `MaGD`,
 1 AS `ViTriGD`,
 1 AS `HoTen`,
 1 AS `MaNN`,
 1 AS `MaLopHoc`,
 1 AS `NgayBDGD`,
 1 AS `NgayKTGD`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vhocphi`
--

DROP TABLE IF EXISTS `vhocphi`;
/*!50001 DROP VIEW IF EXISTS `vhocphi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vhocphi` AS SELECT 
 1 AS `MaHV`,
 1 AS `HoTen`,
 1 AS `MaNN`,
 1 AS `MaLopHoc`,
 1 AS `HocBong`,
 1 AS `HPPhaiNop`,
 1 AS `LanNopHP`,
 1 AS `HPNop`,
 1 AS `NgayNopHP`,
 1 AS `HPConThieu`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vhocvien`
--

DROP TABLE IF EXISTS `vhocvien`;
/*!50001 DROP VIEW IF EXISTS `vhocvien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vhocvien` AS SELECT 
 1 AS `MaHV`,
 1 AS `HoTen`,
 1 AS `NgaySinh`,
 1 AS `MaLopHoc`,
 1 AS `TenLopHoc`,
 1 AS `MaNN`,
 1 AS `SoLuongHV`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vlichhoc`
--

DROP TABLE IF EXISTS `vlichhoc`;
/*!50001 DROP VIEW IF EXISTS `vlichhoc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vlichhoc` AS SELECT 
 1 AS `MaLichHoc`,
 1 AS `MaLopHoc`,
 1 AS `MaNN`,
 1 AS `NgayBDH`,
 1 AS `NgayKTH`,
 1 AS `Thu`,
 1 AS `ThoiGian`,
 1 AS `DiaDiem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vtaikhoan`
--

DROP TABLE IF EXISTS `vtaikhoan`;
/*!50001 DROP VIEW IF EXISTS `vtaikhoan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vtaikhoan` AS SELECT 
 1 AS `MaTK`,
 1 AS `LoaiTK`,
 1 AS `TenTK`,
 1 AS `MatKhau`,
 1 AS `HoTen`,
 1 AS `NgaySinh`,
 1 AS `SDT`,
 1 AS `NgayMoTK`,
 1 AS `NgayKhoaTK`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vthuctapsinh`
--

DROP TABLE IF EXISTS `vthuctapsinh`;
/*!50001 DROP VIEW IF EXISTS `vthuctapsinh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vthuctapsinh` AS SELECT 
 1 AS `MaTTS`,
 1 AS `HoTen`,
 1 AS `NgaySinh`,
 1 AS `ViTriDA`,
 1 AS `NgayBDTT`,
 1 AS `NgayKTTT`,
 1 AS `ThongTinCV`,
 1 AS `TenNguoiQL`,
 1 AS `MaNN`,
 1 AS `MaDA`,
 1 AS `MaDoiTac`,
 1 AS `MaHV`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'quanlyhocvientts'
--

--
-- Final view structure for view `vgiangday`
--

/*!50001 DROP VIEW IF EXISTS `vgiangday`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vgiangday` AS select `gd`.`MaGD` AS `MaGD`,`gd`.`ViTriGD` AS `ViTriGD`,`cn`.`HoTen` AS `HoTen`,`nn`.`MaNN` AS `MaNN`,`loph`.`MaLopHoc` AS `MaLopHoc`,`gd`.`NgayBDGD` AS `NgayBDGD`,`gd`.`NgayKTGD` AS `NgayKTGD` from (((`giangday` `gd` join `lophoc` `loph` on((`gd`.`MaLopHoc` = `loph`.`MaLopHoc`))) join `ngonngu` `nn` on((`loph`.`MaLopHoc` = `nn`.`MaLopHoc`))) join `canhan` `cn` on((`gd`.`MaCN` = `cn`.`MaCN`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vhocphi`
--

/*!50001 DROP VIEW IF EXISTS `vhocphi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vhocphi` AS select `hv`.`MaHV` AS `MaHV`,`cn`.`HoTen` AS `HoTen`,`nn`.`MaNN` AS `MaNN`,`loph`.`MaLopHoc` AS `MaLopHoc`,`hp`.`HocBong` AS `HocBong`,`nn`.`HPPhaiNop` AS `HPPhaiNop`,`hp`.`LanNopHP` AS `LanNopHP`,`hp`.`HPNop` AS `HPNop`,`hp`.`NgayNopHP` AS `NgayNopHP`,`hp`.`HPConThieu` AS `HPConThieu` from ((((`hocphi` `hp` join `hocvien` `hv` on((`hp`.`MaHP` = `hv`.`MaHP`))) join `lophoc` `loph` on((`hv`.`MaLopHoc` = `loph`.`MaLopHoc`))) join `ngonngu` `nn` on((`loph`.`MaLopHoc` = `nn`.`MaLopHoc`))) join `canhan` `cn` on((`hv`.`MaCN` = `cn`.`MaCN`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vhocvien`
--

/*!50001 DROP VIEW IF EXISTS `vhocvien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vhocvien` AS select `hv`.`MaHV` AS `MaHV`,`cn`.`HoTen` AS `HoTen`,`cn`.`NgaySinh` AS `NgaySinh`,`loph`.`MaLopHoc` AS `MaLopHoc`,`loph`.`TenLopHoc` AS `TenLopHoc`,`nn`.`MaNN` AS `MaNN`,`loph`.`SoLuongHV` AS `SoLuongHV` from (((`hocvien` `hv` join `lophoc` `loph` on((`hv`.`MaLopHoc` = `loph`.`MaLopHoc`))) join `ngonngu` `nn` on((`loph`.`MaLopHoc` = `nn`.`MaLopHoc`))) join `canhan` `cn` on((`hv`.`MaCN` = `cn`.`MaCN`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vlichhoc`
--

/*!50001 DROP VIEW IF EXISTS `vlichhoc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vlichhoc` AS select `lichh`.`MaLichHoc` AS `MaLichHoc`,`loph`.`MaLopHoc` AS `MaLopHoc`,`nn`.`MaNN` AS `MaNN`,`loph`.`NgayBDH` AS `NgayBDH`,`loph`.`NgayKTH` AS `NgayKTH`,`lichh`.`Thu` AS `Thu`,`lichh`.`ThoiGian` AS `ThoiGian`,`lichh`.`DiaDiem` AS `DiaDiem` from ((`lichhoc` `lichh` join `lophoc` `loph` on((`lichh`.`MaLopHoc` = `loph`.`MaLopHoc`))) join `ngonngu` `nn` on((`loph`.`MaLopHoc` = `nn`.`MaLopHoc`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vtaikhoan`
--

/*!50001 DROP VIEW IF EXISTS `vtaikhoan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vtaikhoan` AS select `tk`.`MaTK` AS `MaTK`,`tk`.`LoaiTK` AS `LoaiTK`,`tk`.`TenTK` AS `TenTK`,`tk`.`MatKhau` AS `MatKhau`,`cn`.`HoTen` AS `HoTen`,`cn`.`NgaySinh` AS `NgaySinh`,`cn`.`SDT` AS `SDT`,`tk`.`NgayMoTK` AS `NgayMoTK`,`tk`.`NgayKhoaTK` AS `NgayKhoaTK` from (`taikhoan` `tk` join `canhan` `cn` on((`tk`.`MaCN` = `cn`.`MaCN`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vthuctapsinh`
--

/*!50001 DROP VIEW IF EXISTS `vthuctapsinh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vthuctapsinh` AS select `tts`.`MaTTS` AS `MaTTS`,`cn`.`HoTen` AS `HoTen`,`cn`.`NgaySinh` AS `NgaySinh`,`tts`.`ViTriDA` AS `ViTriDA`,`tts`.`NgayBDTT` AS `NgayBDTT`,`tts`.`NgayKTTT` AS `NgayKTTT`,`tts`.`ThongTinCV` AS `ThongTinCV`,`tts`.`TenNguoiQL` AS `TenNguoiQL`,`nn`.`MaNN` AS `MaNN`,`da`.`MaDA` AS `MaDA`,`dt`.`MaDoiTac` AS `MaDoiTac`,`hv`.`MaHV` AS `MaHV` from (((((`thuctapsinh` `tts` join `doitac` `dt` on((`tts`.`MaDoiTac` = `dt`.`MaDoiTac`))) join `duan` `da` on((`tts`.`MaDA` = `da`.`MaDA`))) join `ngonngu` `nn` on((`da`.`MaDA` = `nn`.`MaDA`))) join `canhan` `cn` on((`tts`.`MaCN` = `cn`.`MaCN`))) join `hocvien` `hv` on((`tts`.`MaHV` = `hv`.`MaHV`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-20 17:11:38
