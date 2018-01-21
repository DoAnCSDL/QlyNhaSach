-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: trungvhb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitiethoadon` (
  `MAHOADON` int(11) NOT NULL DEFAULT '0',
  `MASACH` char(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SOLUONG` int(11) NOT NULL,
  `MUCGIAMGIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAHOADON`,`MASACH`),
  KEY `FK_CHITIETHOADON_MASACH` (`MASACH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (2,'CN1',8,0),(2,'ST1',7,0);
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoadon` (
  `MAHOADON` int(11) NOT NULL DEFAULT '0',
  `TENKHACHHANG` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NGAYLAP` date DEFAULT NULL,
  `TONGTIEN` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`MAHOADON`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (2,'Trung','2018-01-21',118000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kho`
--

DROP TABLE IF EXISTS `kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kho` (
  `MASACH` char(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TONGSOLUONG` int(11) DEFAULT '0',
  `SOLUONGCON` int(11) DEFAULT '0',
  PRIMARY KEY (`MASACH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kho`
--

LOCK TABLES `kho` WRITE;
/*!40000 ALTER TABLE `kho` DISABLE KEYS */;
INSERT INTO `kho` VALUES ('CN1',10,2),('ST1',10,3);
/*!40000 ALTER TABLE `kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linhvuc`
--

DROP TABLE IF EXISTS `linhvuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linhvuc` (
  `MALINHVUC` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TENLINHVUC` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MALINHVUC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linhvuc`
--

LOCK TABLES `linhvuc` WRITE;
/*!40000 ALTER TABLE `linhvuc` DISABLE KEYS */;
/*!40000 ALTER TABLE `linhvuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisach`
--

DROP TABLE IF EXISTS `loaisach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaisach` (
  `MALOAISACH` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TENLOAISACH` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MALOAISACH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisach`
--

LOCK TABLES `loaisach` WRITE;
/*!40000 ALTER TABLE `loaisach` DISABLE KEYS */;
/*!40000 ALTER TABLE `loaisach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhatkinhapsach`
--

DROP TABLE IF EXISTS `nhatkinhapsach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhatkinhapsach` (
  `STT` int(11) NOT NULL AUTO_INCREMENT,
  `MASACH` char(13) COLLATE utf8_unicode_ci NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `NGAYNHAP` date DEFAULT NULL,
  PRIMARY KEY (`STT`),
  KEY `FK_NHATKINHAPSACH_MASACH` (`MASACH`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhatkinhapsach`
--

LOCK TABLES `nhatkinhapsach` WRITE;
/*!40000 ALTER TABLE `nhatkinhapsach` DISABLE KEYS */;
INSERT INTO `nhatkinhapsach` VALUES (1,'CN1',10,'2018-01-21'),(2,'ST1',10,'2018-01-21');
/*!40000 ALTER TABLE `nhatkinhapsach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sach` (
  `MASACH` char(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TENSACH` varchar(100) CHARACTER SET utf8 NOT NULL,
  `MATACGIA` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `MALOAISACH` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MALINHVUC` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `GIAMUA` int(11) NOT NULL,
  PRIMARY KEY (`MASACH`),
  KEY `FK_SACH_MATACGIA` (`MATACGIA`),
  KEY `FK_SACH_MALOAISACH` (`MALOAISACH`),
  KEY `FK_SACH_MALINHVUC` (`MALINHVUC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
INSERT INTO `sach` VALUES ('CN1','CONAN','','','',4000),('ST1','SÁCH TEST 1','','','',5000);
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sachkhuyenmai`
--

DROP TABLE IF EXISTS `sachkhuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sachkhuyenmai` (
  `MASACH` char(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `MUCGIAMGIA` int(11) NOT NULL,
  PRIMARY KEY (`MASACH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sachkhuyenmai`
--

LOCK TABLES `sachkhuyenmai` WRITE;
/*!40000 ALTER TABLE `sachkhuyenmai` DISABLE KEYS */;
/*!40000 ALTER TABLE `sachkhuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tacgia`
--

DROP TABLE IF EXISTS `tacgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tacgia` (
  `MATACGIA` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TENTACGIA` varchar(40) CHARACTER SET utf8 NOT NULL,
  `NAMSINH` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAMMAT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QUEQUAN` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MATACGIA`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tacgia`
--

LOCK TABLES `tacgia` WRITE;
/*!40000 ALTER TABLE `tacgia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tacgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taikhoan` (
  `USERNAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PASSWORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TEN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ID` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `NGAYLAMVIEC` date DEFAULT NULL,
  `CHUCVU` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('admin','admin','asdad','123213','2013-12-19','aaa');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtinxuatban`
--

DROP TABLE IF EXISTS `thongtinxuatban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongtinxuatban` (
  `MASACH` char(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LANTAIBAN` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAMXUATBAN` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NHAXUATBAN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GIABIA` int(11) NOT NULL,
  PRIMARY KEY (`MASACH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtinxuatban`
--

LOCK TABLES `thongtinxuatban` WRITE;
/*!40000 ALTER TABLE `thongtinxuatban` DISABLE KEYS */;
INSERT INTO `thongtinxuatban` VALUES ('CN1','1','2018','KIM ĐỒNG',6000),('ST1','1','2018','KIM ĐỒNG',10000);
/*!40000 ALTER TABLE `thongtinxuatban` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-21 22:47:00
