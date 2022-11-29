CREATE DATABASE  IF NOT EXISTS `coachdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coachdb`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: coachdb
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
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_plates` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Hyundai Aero Space','52B54422',45,'Hyundai','Xe ngồi',_binary ''),(2,'Universe Haeco','52B54423',45,'Haeco','Xe ngồi',_binary ''),(3,'Samco Universe','52B54444',45,'Samco','Xe ngồi',_binary ''),(4,'Thaco Universe','52B54445',45,'Thaco','Xe ngồi',_binary ''),(5,'Huyndai Aero Class','52B54405',45,'Huyndai','Xe ngồi',_binary ''),(6,'Thaco Mobihome Standard','52B54715',34,'Thaco','Xe giường',_binary ''),(7,'Thaco Mobihome Deluxe','52B54715',34,'Thaco','Xe giường',_binary ''),(8,'Samco Primas Limousine','52B54015',34,'Samco','Xe giường',_binary '\0'),(21,'Samsung Galaxy Note 20 NNT','51B22520',30,'Hyundai','Xe ngồi',_binary ''),(22,'Samsung Galaxy Note 20 NNT','52B11225',45,'Hyundai','Xe ngồi',_binary '');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coachline`
--

DROP TABLE IF EXISTS `coachline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coachline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coachline`
--

LOCK TABLES `coachline` WRITE;
/*!40000 ALTER TABLE `coachline` DISABLE KEYS */;
INSERT INTO `coachline` VALUES (1,'Thành phố Hồ Chí Minh','Vĩnh Long',240,180000,_binary ''),(2,'Thành phố Hồ Chí Minh','Vũng Tàu',122,130000,_binary ''),(3,'Thành phố Hồ Chí Minh','Bình Thuận',220,160000,_binary ''),(4,'Thành phố Hồ Chí Minh','Đồng Tháp',153,130000,_binary ''),(5,'Thành phố Hồ Chí Minh','Hậu Giang',150,200000,_binary ''),(6,'Thành phố Hồ Chí Minh','Đà Lạt',293,300000,_binary ''),(7,'Thành phố Hồ Chí Minh','Đà Nẵng',970,395000,_binary ''),(8,'Thành phố Hồ Chí Minh','Cần Thơ',160,165000,_binary ''),(9,'Thành phố Hồ Chí Minh','An Giang',240,210000,_binary ''),(10,'Thành phố Hồ Chí Minh','Cà Mau',347,230000,_binary '');
/*!40000 ALTER TABLE `coachline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coachtrip`
--

DROP TABLE IF EXISTS `coachtrip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coachtrip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `coach_id` int DEFAULT NULL,
  `coachline_id` int DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_coachtrip_employee` (`employee_id`),
  KEY `fk_coachtrip_coach` (`coach_id`),
  KEY `fk_coachtrip_coachline` (`coachline_id`),
  CONSTRAINT `fk_coachtrip_coach` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`id`),
  CONSTRAINT `fk_coachtrip_coachline` FOREIGN KEY (`coachline_id`) REFERENCES `coachline` (`id`),
  CONSTRAINT `fk_coachtrip_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coachtrip`
--

LOCK TABLES `coachtrip` WRITE;
/*!40000 ALTER TABLE `coachtrip` DISABLE KEYS */;
INSERT INTO `coachtrip` VALUES (1,3,1,1,400000,_binary ''),(2,4,2,2,350000,_binary ''),(3,7,3,3,500000,_binary ''),(4,8,4,4,450000,_binary '');
/*!40000 ALTER TABLE `coachtrip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `identity_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Nguyễn Hồng','Ngọc','Nữ','2003-11-12','107423879536','Quận 2, Tp Hồ Chí Minh','08908794432','ngoc1211@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','ngoc1211@gmail.com','P@ssW0rd',_binary '\0'),(2,'Nguyễn Tân','Phúc','Nam','2002-06-26','109621341892','Quận 4, Tp Hồ Chí Minh','0935440166','phuc0707@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','khang2606@gmail.com','P@ssW0rd',_binary '\0'),(3,'Nguyễn Hoàng','Khang','Nam','2002-06-26','109621341892','Quận 4, Tp Hồ Chí Minh','0707860066','khang2606@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1662860735/photo-1570295999919-56ceb5ecca61_ycwzdy.jpg','khang2606@gmail.com','P@ssW0rd',_binary ''),(4,'Lê Thiên','Ân','Nam','2003-07-28','107928561138','Quận 10, Tp Hồ Chí Minh','0907863077','an2807@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','an2807@gmail.com','P@ssW0rd',_binary '\0'),(5,'Phan Ngọc Phương','Toàn','Nam','2003-04-04','107939208383','Gò Dầu, Tây Ninh','0387552103','toan0404@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','toan0404@gmail.com','P@ssW0rd',_binary ''),(6,'Vũ Thành','Đạt','Nam','2003-06-24','107939226359','Tp Cam Ranh, Khánh Hòa','0352943547','dat2406@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','dat2406@gmail.com','P@ssW0rd',_binary ''),(7,'Nguyễn Ngọc Bảo','Quyên','Nữ','2003-10-29','108022482814','Quận Liên Chiểu, Tp Đà Nẵng','0834176515','quyen2910@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','quyen2910@gmail.com','P@ssW0rd',_binary ''),(8,'Bùi Xuân','Tiến','Nam','2003-07-06','107931412447','Diên Khánh, Khánh Hòa','0968193444','tien0607@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','tien0607@gmail.com','P@ssW0rd',_binary ''),(9,'Huỳnh Khả','Tú','Nữ','2003-02-13','107933431900','Nha Trang, Khánh Hòa','0336400978','tu1302@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','tu1302@gmail.com','P@ssW0rd',_binary ''),(10,'Lê Tấn','Phát','Nam','2002-06-08','107933418774','Châu Thành, Hậu Giang','0909752629','phat0806@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','phat0806@gmail.com','P@ssW0rd',_binary '');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_coachtrip`
--

DROP TABLE IF EXISTS `detail_coachtrip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_coachtrip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `station_id` int DEFAULT NULL,
  `coachtrip_id` int DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `destination_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detailcoachtrip_station` (`station_id`),
  KEY `fk_detailcoachtrip_coachtrip` (`coachtrip_id`),
  CONSTRAINT `fk_detailcoachtrip_coachtrip` FOREIGN KEY (`coachtrip_id`) REFERENCES `coachtrip` (`id`),
  CONSTRAINT `fk_detailcoachtrip_station` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_coachtrip`
--

LOCK TABLES `detail_coachtrip` WRITE;
/*!40000 ALTER TABLE `detail_coachtrip` DISABLE KEYS */;
INSERT INTO `detail_coachtrip` VALUES (1,1,1,'2022-08-17 00:00:00','2022-08-17 08:00:00'),(2,2,2,'2022-08-18 00:00:00','2022-08-18 07:00:00'),(3,3,3,'2022-08-19 00:00:00','2022-08-19 05:00:00'),(4,4,4,'2022-08-20 00:00:00','2022-08-20 08:00:00');
/*!40000 ALTER TABLE `detail_coachtrip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Trần Phương','Anh','1999-01-24','Nữ','Quận 5, Tp Hồ Chí Minh','107936578401','0909123564','107936578401anh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1662860612/photo-1438761681033-6461ffad8d80_vkpkbo.jpg','107936578401anh@gmail.com','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',_binary ''),(2,'Nguyễn Phương','Linh','1999-11-28','Nữ','Quận 2, Tp Hồ Chí Minh','107422175693','0961687266','107422175693linh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107422175693linh@gmail.com','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',_binary ''),(3,'Nguyễn Đăng Quốc','Anh','2000-07-07','Nam','Quận 1, Tp Hồ Chí Minh','104520019506','0902902019','104520019506anh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','104520019506anh@gmail.com','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_DRIVER',_binary ''),(4,'Nguyễn Hữu','Minh','2000-10-01','Nam','Quận Gò Vấp, Tp Hồ Chí Minh','106822059551','0392620393','106822059551minh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1662860529/photo-1633332755192-727a05c4013d_iwfpkd.jpg','106822059551minh@gmail.com','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_DRIVER',_binary ''),(5,'Nguyễn Thiện Minh','Tâm','1997-06-14','Nam','Quận Bình Thạnh, Tp Hồ Chí Minh','106822980298','0347311331','106822980298tam@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1662860984/photo-1557862921-37829c790f19_oqd0w4.jpg','106822980298tam@gmail.com','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',_binary ''),(6,'Vương Gia','Thanh','2000-10-18','Nữ','Quận Hóc Môn, Tp Hồ Chí Minh','107423466831','0357070746','107423466831thanh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107423466831thanh@gmail.com','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',_binary ''),(7,'Lê Đức Anh','Tuấn','1999-04-19','Nam','Quận 7, Tp Hồ Chí Minh','106822126899','0342461880','106822126899tuan@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','106822126899tuan@gmail.com','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_DRIVER',_binary ''),(8,'Phạm Văn','Nam','1999-04-19','Nam','Quận 8, Tp Hồ Chí Minh','107022201304','0339559721','107022201304nam@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107022201304nam@gmail.com','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_DRIVER',_binary ''),(9,'Lê Trần Phương','Nhi','2001-01-11','Nữ','Quận 9, Tp Hồ Chí Minh','107423804325','0339559723','107423804325nhi@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1662860902/photo-1619895862022-09114b41f16f_jyuw1s.jpg','107423804325nhi@gmail.com','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',_binary ''),(10,'Trần Lê Quang','Chiến','2001-04-25','Nam','Nhà Bè, Tp Hồ Chí Minh','106822261393','0372405209','106822261393chien@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','106822261393chien@gmail.com','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',_binary '');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rate` int DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `coachtrip_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_feedback_customer` (`customer_id`),
  KEY `fk_feedback_bustrip` (`coachtrip_id`),
  CONSTRAINT `fk_feedback_bustrip` FOREIGN KEY (`coachtrip_id`) REFERENCES `coachtrip` (`id`),
  CONSTRAINT `fk_feedback_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,5,'Good trip','2022-08-16 10:00:00',1,1),(2,4,'Delay','2022-08-16 11:00:00',2,2),(3,5,'Good bus','2022-08-15 10:00:00',3,3),(4,5,'Safety','2022-08-16 09:00:00',4,4);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'ZaloPay','Thanh toán bằng ví ZaloPay',_binary ''),(2,'Momo','Thanh toán bằng ví Momo',_binary ''),(3,'Internet banking','Thanh toán bằng thẻ ngân hàng',_binary ''),(4,'Thanh toán trực tiếp','Thanh toán trực tiếp',_binary '');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_order`
--

DROP TABLE IF EXISTS `sale_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `coachtrip_id` int DEFAULT NULL,
  `craeted_date` datetime DEFAULT NULL,
  `num` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_saleorder_customer` (`customer_id`),
  KEY `fk_saleorder_payment` (`payment_id`),
  KEY `fk_saleorder_coachtrip` (`coachtrip_id`),
  CONSTRAINT `fk_saleorder_coachtrip` FOREIGN KEY (`coachtrip_id`) REFERENCES `coachtrip` (`id`),
  CONSTRAINT `fk_saleorder_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_saleorder_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_order`
--

LOCK TABLES `sale_order` WRITE;
/*!40000 ALTER TABLE `sale_order` DISABLE KEYS */;
INSERT INTO `sale_order` VALUES (1,1,4,1,'2022-08-16 07:00:00',1),(2,2,4,2,'2022-08-16 08:00:00',1),(3,3,4,3,'2022-08-16 09:00:00',1),(4,4,4,4,'2022-08-16 10:00:00',1);
/*!40000 ALTER TABLE `sale_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Trạm Chợ Rẫy','19007676','20 Phạm Hữu Chí','Phường 11','Quận 5','Thành phố Hồ Chí Minh',_binary ''),(2,'Trạm Lai Vung','19007689','137A QL80','Hòa Long','Lai Vung','Đồng Tháp',_binary ''),(3,'Trạm Đặng Thái Thân','19007684','09 Đặng Thái Thân','Phường 11','Quận 5','Thành phố Hồ Chí Minh',_binary ''),(4,'Trạm Nơ Trang Long','19006784','68 Nơ Trang Long','Phường 14','Quận Bình Thạnh','Thành phố Hồ Chí Minh',_binary ''),(5,'Trạm Bến xe miền Tây','19006284','395-397 Kinh Dương Vương','Phường An Lạc','Quận Bình Tân','Thành phố Hồ Chí Minh',_binary ''),(6,'Trạm Cao Văn Lầu','19006584','94 Cao Văn Lầu','Phường 10','Quận 6','Thành phố Hồ Chí Minh',_binary ''),(7,'Trạm Lê Hồng Phong','19006514','231-233 Lê Hồng Phong','Phường 4','Quận 5','Thành phố Hồ Chí Minh',_binary ''),(8,'Trạm Vị Thanh','19004514','Trần Hưng Đạo','Phường 5','Vị Thanh','Hậu Giang',_binary ''),(9,'Trạm Vĩnh Long','19004014','1E Đinh Tiên Hoàng','Phường 8','Thành phố Vĩnh Long','Vĩnh Long',_binary ''),(10,'Trạm Bến xe Vũng Tàu','19001014','192 Nam Kỳ Khởi Nghĩa','Phường 3','Thành phố Vũng Tàu','Bà Rịa - Vũng Tàu',_binary ''),(11,'Trạm Phan Thiết','19001114','121 Tôn Đức Thắng','Phường 3','Phan Thiết','Bình Thuận',_binary ''),(12,'Trạm Đà Lạt','19001254','01 Tô Hiến Thành','Phường 6','Thành phố Đà Lạt','Đà Lạt',_binary ''),(13,'Trạm Bến xe Đà Nẵng','19001564','37 Nam Trân','Phường Hòa Minh','Quận Liên Chiểu','Đà Nẵng',_binary ''),(14,'Trạm 91B Nguyễn Văn Linh','19005561','91B Nguyễn Văn Linh','Phường Hưng Lợi','Quận Ninh Kiều','Cần Thơ',_binary ''),(15,'Trạm Châu Đốc','19005544','89 Phan Văn Vàng','Phường Châu Phú','Thành phố Châu Đốc','An Giang',_binary ''),(16,'Trạm Cà Mau','19007844','309 Lý Thường Kiệt','Phường 6','Thành phố Cà Mau','Cà Mau',_binary '');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 18:52:20
