-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
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
  `MaCTHD` varchar(10) NOT NULL,
  `MaHoaDon` varchar(10) NOT NULL,
  `MaSach` varchar(10) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `HoaDon_MaHoaDon` varchar(10) NOT NULL,
  `Sach_MaSach` varchar(10) NOT NULL,
  PRIMARY KEY (`MaCTHD`,`HoaDon_MaHoaDon`,`Sach_MaSach`),
  KEY `fk_ChiTietHoaDon_HoaDon_idx` (`HoaDon_MaHoaDon`),
  KEY `fk_ChiTietHoaDon_Sach1_idx` (`Sach_MaSach`),
  CONSTRAINT `fk_ChiTietHoaDon_HoaDon` FOREIGN KEY (`HoaDon_MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ChiTietHoaDon_Sach1` FOREIGN KEY (`Sach_MaSach`) REFERENCES `sach` (`MaSach`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietnhap`
--

DROP TABLE IF EXISTS `chitietnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitietnhap` (
  `MaCTN` varchar(45) NOT NULL,
  `MaPhieuNhap` varchar(10) DEFAULT NULL,
  `MaSach` varchar(10) DEFAULT NULL,
  `SoLuongNhap` int(11) DEFAULT NULL,
  `DonGiaNhap` int(11) DEFAULT NULL,
  `NhaCungCap` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaCTN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietnhap`
--

LOCK TABLES `chitietnhap` WRITE;
/*!40000 ALTER TABLE `chitietnhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietnhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(10) NOT NULL,
  `MaKhachHang` varchar(10) NOT NULL,
  `NgayXuat` date DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `MaNhanVien` varchar(10) NOT NULL,
  PRIMARY KEY (`MaHoaDon`,`MaKhachHang`,`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(10) NOT NULL,
  `TenKhachHang` varchar(45) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `HoaDon_MaHoaDon` varchar(10) NOT NULL,
  PRIMARY KEY (`MaKhachHang`,`HoaDon_MaHoaDon`),
  KEY `fk_KhachHang_HoaDon1_idx` (`HoaDon_MaHoaDon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khuyenmai` (
  `MaKhuyenMai` varchar(10) NOT NULL,
  `MaSach` varchar(10) NOT NULL,
  `MucGiam` varchar(15) DEFAULT NULL,
  `TrangThai` varchar(20) DEFAULT NULL,
  `Sach_MaSach` varchar(10) NOT NULL,
  PRIMARY KEY (`MaKhuyenMai`,`MaSach`,`Sach_MaSach`),
  KEY `fk_KhuyenMai_Sach1_idx` (`Sach_MaSach`),
  CONSTRAINT `fk_KhuyenMai_Sach1` FOREIGN KEY (`Sach_MaSach`) REFERENCES `sach` (`MaSach`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyenmai`
--

LOCK TABLES `khuyenmai` WRITE;
/*!40000 ALTER TABLE `khuyenmai` DISABLE KEYS */;
/*!40000 ALTER TABLE `khuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(10) NOT NULL,
  `TenNhanVien` varchar(45) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `ChucVu` varchar(15) DEFAULT NULL,
  `Luong` int(11) DEFAULT NULL,
  `TrangThai` varchar(20) DEFAULT NULL,
  `HoaDon_MaNhanVien` varchar(10) NOT NULL,
  PRIMARY KEY (`MaNhanVien`,`HoaDon_MaNhanVien`),
  KEY `fk_NhanVien_HoaDon1_idx` (`HoaDon_MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phieunhap` (
  `MaPhieuNhap` varchar(10) NOT NULL,
  `NgayNhap` date DEFAULT NULL,
  `TongTienNhap` int(11) DEFAULT NULL,
  `ChiTietNhap_MaPhieuNhap` varchar(45) NOT NULL,
  PRIMARY KEY (`MaPhieuNhap`,`ChiTietNhap_MaPhieuNhap`),
  KEY `fk_PhieuNhap_ChiTietNhap1_idx` (`ChiTietNhap_MaPhieuNhap`),
  CONSTRAINT `fk_PhieuNhap_ChiTietNhap1` FOREIGN KEY (`ChiTietNhap_MaPhieuNhap`) REFERENCES `chitietnhap` (`MaCTN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sach` (
  `MaSach` varchar(10) NOT NULL,
  `TenSach` varchar(45) DEFAULT NULL,
  `NhaXuatBan` varchar(45) DEFAULT NULL,
  `NamXuatBan` int(11) DEFAULT NULL,
  `GiaTien` int(11) DEFAULT NULL,
  `TacGia` varchar(45) DEFAULT NULL,
  `MaTheLoai` varchar(10) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `ChiTietNhap_MaSach` varchar(45) NOT NULL,
  PRIMARY KEY (`MaSach`,`MaTheLoai`,`ChiTietNhap_MaSach`),
  KEY `fk_Sach_ChiTietNhap1_idx` (`ChiTietNhap_MaSach`),
  CONSTRAINT `fk_Sach_ChiTietNhap1` FOREIGN KEY (`ChiTietNhap_MaSach`) REFERENCES `chitietnhap` (`MaCTN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taikhoan` (
  `idtaikhoan` int(11) NOT NULL AUTO_INCREMENT,
  `tentaikhoan` varchar(45) NOT NULL,
  `matkhau` varchar(45) NOT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idtaikhoan`),
  UNIQUE KEY `idtaikhoan_UNIQUE` (`idtaikhoan`)
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
-- Table structure for table `theloai`
--

DROP TABLE IF EXISTS `theloai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theloai` (
  `MaTheLoai` varchar(10) NOT NULL,
  `TenTheLoai` varchar(45) DEFAULT NULL,
  `Sach_MaSach` varchar(10) NOT NULL,
  PRIMARY KEY (`MaTheLoai`,`Sach_MaSach`),
  KEY `fk_TheLoai_Sach1_idx` (`Sach_MaSach`),
  CONSTRAINT `fk_TheLoai_Sach1` FOREIGN KEY (`Sach_MaSach`) REFERENCES `sach` (`MaSach`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theloai`
--

LOCK TABLES `theloai` WRITE;
/*!40000 ALTER TABLE `theloai` DISABLE KEYS */;
/*!40000 ALTER TABLE `theloai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-20  2:44:21
