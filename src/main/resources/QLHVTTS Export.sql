CREATE DATABASE  IF NOT EXISTS `quanlyhocvientts` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `quanlyhocvientts`;
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
  `MaCaNhan` varchar(20) NOT NULL,
  `HoTenCN` varchar(100) NOT NULL,
  `GioiTinhCN` varchar(4) NOT NULL,
  `NgaySinhCN` date NOT NULL,
  `NguyenQuanCN` varchar(500) NOT NULL,
  `SDTCN` varchar(20) NOT NULL,
  `EmailCN` varchar(50) NOT NULL,
  `FaceBookCN` varchar(100) DEFAULT NULL,
  `TrelloCN` varchar(100) DEFAULT NULL,
  `SlackCN` varchar(100) DEFAULT NULL,
  `ChatWorkCN` varchar(100) DEFAULT NULL,
  `SkypeCN` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaCaNhan`)
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
  `TenDoiTac` varchar(1000) NOT NULL,
  `TruSoDT` varchar(1000) NOT NULL,
  `VanPhongDT` varchar(1000) DEFAULT NULL,
  `SDTDT` varchar(20) NOT NULL,
  `EmailDT` varchar(100) NOT NULL,
  `WebsiteDT` varchar(500) DEFAULT NULL,
  `NgayBDHT` date NOT NULL,
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
  `MaDuAn` varchar(20) NOT NULL,
  `TenDuAn` varchar(100) NOT NULL,
  `TenKhachHang` varchar(100) NOT NULL,
  `NgonNguDA` varchar(100) NOT NULL,
  `NgayBDDA` date NOT NULL,
  `NgayKTDA` date DEFAULT NULL,
  `TenPM` varchar(50) NOT NULL,
  PRIMARY KEY (`MaDuAn`)
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
  `MaGiangDay` varchar(20) NOT NULL,
  `NoiCongTac` varchar(100) NOT NULL,
  `ChucVu` varchar(100) NOT NULL,
  `NgayBDGD` date DEFAULT NULL,
  `NgayKTGD` date DEFAULT NULL,
  `MaCaNhan` varchar(20) NOT NULL,
  PRIMARY KEY (`MaGiangDay`),
  KEY `fk_giangday_MaCaNhan` (`MaCaNhan`),
  CONSTRAINT `fk_giangday_canhan_MaCaNhan` FOREIGN KEY (`MaCaNhan`) REFERENCES `canhan` (`MaCaNhan`) ON UPDATE CASCADE
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
  `MaHocPhi` varchar(20) NOT NULL,
  `HocBong` tinyint(3) unsigned DEFAULT '0',
  `HPPhaiNop` int(10) unsigned NOT NULL,
  `HPNopLan1` int(10) unsigned NOT NULL,
  `NgayNopHPLan1` date NOT NULL,
  `HPNopLan2` int(10) unsigned DEFAULT NULL,
  `NgayNopHPLan2` date DEFAULT NULL,
  `HPNopLan3` int(10) unsigned DEFAULT NULL,
  `NgayNopHPLan3` date DEFAULT NULL,
  `HPNopLan4` int(10) unsigned DEFAULT NULL,
  `NgayNopHPLan4` date DEFAULT NULL,
  `HPConThieu` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaHocPhi`)
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
  `MaHocVien` varchar(20) NOT NULL,
  `THPT` varchar(100) DEFAULT NULL,
  `DaiHoc` varchar(100) DEFAULT NULL,
  `NamTN` date DEFAULT NULL,
  `MaLopHoc` varchar(20) NOT NULL,
  `MaHocPhi` varchar(20) NOT NULL,
  `MaCaNhan` varchar(20) NOT NULL,
  PRIMARY KEY (`MaHocVien`),
  KEY `fk_hocvien_MaLopHoc` (`MaLopHoc`),
  KEY `fk_hocvien_MaHocPhi` (`MaHocPhi`),
  KEY `fk_hocvien_MaCaNhan` (`MaCaNhan`),
  CONSTRAINT `fk_hocvien_canhan_MaCaNhan` FOREIGN KEY (`MaCaNhan`) REFERENCES `canhan` (`MaCaNhan`) ON UPDATE CASCADE,
  CONSTRAINT `fk_hocvien_hocphi_MaHocPhi` FOREIGN KEY (`MaHocPhi`) REFERENCES `hocphi` (`MaHocPhi`) ON UPDATE CASCADE,
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
-- Table structure for table `hocvienthuctapsinh`
--

DROP TABLE IF EXISTS `hocvienthuctapsinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hocvienthuctapsinh` (
  `HVTTS` varchar(20) NOT NULL,
  `MaHocVien` varchar(20) NOT NULL,
  `MaTTS` varchar(20) NOT NULL,
  PRIMARY KEY (`HVTTS`,`MaHocVien`,`MaTTS`),
  KEY `fk_hocvienthuctapsinh_MaHocVien` (`MaHocVien`),
  KEY `fk_hocvienthuctapsinh_MaTTS` (`MaTTS`),
  CONSTRAINT `fk_hocvienthuctapsinh_hocvien_MaHocVien` FOREIGN KEY (`MaHocVien`) REFERENCES `hocvien` (`MaHocVien`) ON UPDATE CASCADE,
  CONSTRAINT `fk_hocvienthuctapsinh_thuctapsinh_MaTTS` FOREIGN KEY (`MaTTS`) REFERENCES `thuctapsinh` (`MaTTS`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocvienthuctapsinh`
--

LOCK TABLES `hocvienthuctapsinh` WRITE;
/*!40000 ALTER TABLE `hocvienthuctapsinh` DISABLE KEYS */;
/*!40000 ALTER TABLE `hocvienthuctapsinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichhoc`
--

DROP TABLE IF EXISTS `lichhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lichhoc` (
  `MaLichHoc` varchar(20) NOT NULL,
  `Thu` varchar(20) NOT NULL,
  `GioBDH` time NOT NULL,
  `GioKTH` time NOT NULL,
  `DiaDiem` varchar(1000) NOT NULL,
  `MaLopHoc` varchar(20) NOT NULL,
  PRIMARY KEY (`MaLichHoc`),
  KEY `fk_lichhoc_MaLopHoc` (`MaLopHoc`),
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
  `NgonNguLH` varchar(20) NOT NULL,
  `TenLopHoc` varchar(100) NOT NULL,
  `SoLuongHV` tinyint(3) unsigned DEFAULT NULL,
  `NgayBDH` date NOT NULL,
  `NgayKTH` date DEFAULT NULL,
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
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taikhoan` (
  `MaTaiKhoan` varchar(20) NOT NULL,
  `LoaiTK` varchar(50) NOT NULL,
  `TenTK` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `NgayMoTK` date NOT NULL,
  `NgayKhoaTK` date DEFAULT NULL,
  `MaCaNhan` varchar(20) NOT NULL,
  PRIMARY KEY (`MaTaiKhoan`),
  KEY `fk_taikhoan_MaCaNhan` (`MaCaNhan`),
  CONSTRAINT `fk_taikhoan_canhan_MaCaNhan` FOREIGN KEY (`MaCaNhan`) REFERENCES `canhan` (`MaCaNhan`) ON UPDATE CASCADE
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
-- Table structure for table `thongtingd`
--

DROP TABLE IF EXISTS `thongtingd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongtingd` (
  `MaLopHoc` varchar(20) NOT NULL,
  `MaGiangDay` varchar(20) NOT NULL,
  `VịTriGD` varchar(50) NOT NULL,
  PRIMARY KEY (`MaLopHoc`,`MaGiangDay`),
  KEY `fk_thongtingd_MaHocPhi` (`MaLopHoc`),
  KEY `fk_thongtingd_MaCaNhan` (`MaGiangDay`),
  CONSTRAINT `fk_thongtingd_giangday_MaGiangDay` FOREIGN KEY (`MaGiangDay`) REFERENCES `giangday` (`MaGiangDay`) ON UPDATE CASCADE,
  CONSTRAINT `fk_thongtingd_lophoc_MaLopHoc` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtingd`
--

LOCK TABLES `thongtingd` WRITE;
/*!40000 ALTER TABLE `thongtingd` DISABLE KEYS */;
/*!40000 ALTER TABLE `thongtingd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtintt`
--

DROP TABLE IF EXISTS `thongtintt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongtintt` (
  `MaDuAn` varchar(20) NOT NULL,
  `MaTTS` varchar(20) NOT NULL,
  `ViTriDA` varchar(100) DEFAULT NULL,
  `NoiDungTT` varchar(1000) DEFAULT NULL,
  `NguoiQuanLy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaDuAn`,`MaTTS`),
  KEY `fk_thongtintt_MaHocPhi` (`MaDuAn`),
  KEY `fk_thongtintt_MaCaNhan` (`MaTTS`),
  CONSTRAINT `fk_thongtintt_duan_MaDuAn` FOREIGN KEY (`MaDuAn`) REFERENCES `duan` (`MaDuAn`) ON UPDATE CASCADE,
  CONSTRAINT `fk_thongtintt_thuctapsinh_MaTTS` FOREIGN KEY (`MaTTS`) REFERENCES `thuctapsinh` (`MaTTS`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtintt`
--

LOCK TABLES `thongtintt` WRITE;
/*!40000 ALTER TABLE `thongtintt` DISABLE KEYS */;
/*!40000 ALTER TABLE `thongtintt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuctapsinh`
--

DROP TABLE IF EXISTS `thuctapsinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thuctapsinh` (
  `MaTTS` varchar(20) NOT NULL,
  `NgonNguTT` varchar(20) NOT NULL,
  `NgayBDTT` date DEFAULT NULL,
  `NgayKTTT` date DEFAULT NULL,
  `ThongTinCV` varchar(500) DEFAULT NULL,
  `MaDoiTac` varchar(20) NOT NULL,
  `MaCaNhan` varchar(20) NOT NULL,
  PRIMARY KEY (`MaTTS`),
  KEY `fk_thuctapsinh_MaDoiTac` (`MaDoiTac`),
  KEY `fk_thuctapsinh_MaCaNhan` (`MaCaNhan`),
  CONSTRAINT `fk_thuctapsinh_canhan_MaCaNhan` FOREIGN KEY (`MaCaNhan`) REFERENCES `canhan` (`MaCaNhan`) ON UPDATE CASCADE,
  CONSTRAINT `fk_thuctapsinh_doitac_MaDoiTac` FOREIGN KEY (`MaDoiTac`) REFERENCES `doitac` (`MaDoiTac`) ON UPDATE CASCADE
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
  `TinTuyenDung` varchar(100) NOT NULL,
  `ViTriTD` varchar(100) NOT NULL,
  `SoLuongTD` tinyint(4) DEFAULT NULL,
  `NgonNguTD` varchar(100) NOT NULL,
  `NgayBDTD` date DEFAULT NULL,
  `NgayKTTD` date DEFAULT NULL,
  `MaDoiTac` varchar(20) NOT NULL,
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
-- Dumping events for database 'quanlyhocvientts'
--

--
-- Dumping routines for database 'quanlyhocvientts'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-02 11:06:42
