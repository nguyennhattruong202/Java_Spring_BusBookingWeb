-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: busdb
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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_plates` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,'Hyundai Aero Space','52B-544.22',45,'Hyundai','Xe ngồi'),(2,'Universe Haeco','52B-544.23',45,'Haeco','Xe ngồi'),(3,'Samco Universe','52B-544.44',45,'Samco','Xe ngồi'),(4,'Thaco Universe','52B-544.45',45,'Thaco','Xe ngồi'),(5,'Huyndai Aero Class','52B-544.05',45,'Huyndai','Xe ngồi'),(6,'Thaco Mobihome Standard','52B-547.15',34,'Thaco','Xe giường'),(7,'Thaco Mobihome Deluxe','52B-547.15',34,'Thaco','Xe giường'),(8,'Samco Primas Limousine','52B-540.15',34,'Samco','Xe giường');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_trip`
--

DROP TABLE IF EXISTS `bus_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_trip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `bus_id` int NOT NULL,
  `line_bus_id` int NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bus_trip_bus` (`bus_id`),
  KEY `fk_bus_trip_line_bus` (`line_bus_id`),
  KEY `fk_bus_trip_employee` (`employee_id`),
  CONSTRAINT `fk_bus_trip_bus` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`),
  CONSTRAINT `fk_bus_trip_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee_user` (`id`),
  CONSTRAINT `fk_bus_trip_line_bus` FOREIGN KEY (`line_bus_id`) REFERENCES `line_bus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_trip`
--

LOCK TABLES `bus_trip` WRITE;
/*!40000 ALTER TABLE `bus_trip` DISABLE KEYS */;
INSERT INTO `bus_trip` VALUES (1,'Chuyến số 1','2022-07-29 00:00:00',200000,1,1,3),(2,'Chuyến số 2','2022-07-30 00:00:00',300000,2,2,4),(3,'Chuyến số 3','2022-07-31 00:00:00',250000,3,3,7),(4,'Chuyến số 4','2022-08-01 00:00:00',300000,4,4,8),(5,'Chuyến số 5','2022-08-02 00:00:00',350000,5,5,3);
/*!40000 ALTER TABLE `bus_trip` ENABLE KEYS */;
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
  `date_of_birth` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Nguyễn Hồng','Ngọc','2003-11-12','Nữ','Quận 2, Tp Hồ Chí Minh','107423879536','08908794432','107423879536ngoc@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107423879536ngoc@gmail.com','P@ssW0rd'),(2,'Nguyễn Tân','Phúc','2003-07-07','Nam','Quận 12, Tp Hồ Chí Minh','107424612545','0935440166','107424612545phuc@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107424612545phuc@gmail.com','P@ssW0rd'),(3,'Nguyễn Hoàng','Khang','2002-06-26','Nam','Quận 4, Tp Hồ Chí Minh','109621341892','0707860066','109621341892khang@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','109621341892khang@gmail.com','P@ssW0rd'),(4,'Lê Thiên','Ân','2003-07-28','Nam','Quận 10, Tp Hồ Chí Minh','107928561138','0907863077','107928561138an@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107928561138an@gmail.com','P@ssW0rd'),(5,'Phan Ngọc Phương','Toàn','2003-04-04','Nam','Gò Dầu, Tây Ninh','107939208383','0387552103','107939208383toan@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107939208383toan@gmail.com','P@ssW0rd'),(6,'Vũ Thành','Đạt','2003-06-24','Nam','Tp Cam Ranh, Khánh Hòa','107939226359','0352943547','107939226359dat@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107939226359dat@gmail.com','P@ssW0rd'),(7,'Nguyễn Ngọc Bảo','Quyên','2003-10-29','Nữ','Quận Liên Chiểu, Tp Đà Nẵng','108022482814','0834176515','108022482814quyen@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','108022482814quyen@gmail.com','P@ssW0rd'),(8,'Bùi Xuân','Tiến','2003-07-06','Nam','Diên Khánh, Khánh Hòa','107931412447','0968193444','107931412447tien@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','108022482814quyen@gmail.com','P@ssW0rd'),(9,'Huỳnh Khả','Tú','2003-02-13','Nữ','Nha Trang, Khánh Hòa','107933431900','0336400978','107933431900tu@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107933431900tu@gmail.com','P@ssW0rd'),(10,'Lê Tấn','Phát','2002-06-08','Nam','Châu Thành, Hậu Giang','107933418774','0909752629','107933418774phat@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107933418774phat@gmail.com','P@ssW0rd');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_user`
--

DROP TABLE IF EXISTS `employee_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `type_emp_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empl_user_type_empl` (`type_emp_id`),
  CONSTRAINT `fk_empl_user_type_empl` FOREIGN KEY (`type_emp_id`) REFERENCES `type_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_user`
--

LOCK TABLES `employee_user` WRITE;
/*!40000 ALTER TABLE `employee_user` DISABLE KEYS */;
INSERT INTO `employee_user` VALUES (1,'Trần Phương','Anh','1999-01-24','Nữ','Quận 5, Tp Hồ Chí Minh','107936578401','0909123564','107936578401anh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107936578401anh@gmail.com','P@ssW0rd',_binary '',3),(2,'Nguyễn Phương','Linh','1999-11-28','Nữ','Quận 2, Tp Hồ Chí Minh','107422175693','0961687266','107422175693linh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107422175693linh@gmail.com','P@ssW0rd',_binary '',3),(3,'Nguyễn Đăng Quốc','Anh','2000-07-07','Nam','Quận 1, Tp Hồ Chí Minh','104520019506','0902902019','104520019506anh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','104520019506anh@gmail.com','P@ssW0rd',_binary '',2),(4,'Nguyễn Hữu','Minh','2000-10-01','Nam','Quận Gò Vấp, Tp Hồ Chí Minh','106822059551','0392620393','106822059551minh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','106822059551minh@gmail.com','P@ssW0rd',_binary '',2),(5,'Nguyễn Thiện Minh','Tâm','1997-06-14','Nam','Quận Bình Thạnh, Tp Hồ Chí Minh','106822980298','0347311331','106822980298tam@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','106822980298tam@gmail.com','P@ssW0rd',_binary '',1),(6,'Vương Gia','Thanh','2000-10-18','Nữ','Quận Hóc Môn, Tp Hồ Chí Minh','107423466831','0357070746','107423466831thanh@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107423466831thanh@gmail.com','P@ssW0rd',_binary '',3),(7,'Lê Đức Anh','Tuấn','1999-04-19','Nam','Quận 7, Tp Hồ Chí Minh','106822126899','0342461880','106822126899tuan@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','106822126899tuan@gmail.com','P@ssW0rd',_binary '',2),(8,'Phạm Văn','Nam','1999-04-19','Nam','Quận 8, Tp Hồ Chí Minh','107022201304','0339559721','107022201304nam@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107022201304nam@gmail.com','P@ssW0rd',_binary '',2),(9,'Lê Trần Phương','Nhi','2001-01-11','Nữ','Quận 9, Tp Hồ Chí Minh','107423804325','0339559723','107423804325nhi@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','107423804325nhi@gmail.com','P@ssW0rd',_binary '',1),(10,'Trần Lê Quang','Chiến','2001-04-25','Nam','Nhà Bè, Tp Hồ Chí Minh','106822261393','0372405209','106822261393chien@gmail.com','https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','106822261393chien@gmail.com','P@ssW0rd',_binary '',1);
/*!40000 ALTER TABLE `employee_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_bus`
--

DROP TABLE IF EXISTS `line_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_bus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_bus`
--

LOCK TABLES `line_bus` WRITE;
/*!40000 ALTER TABLE `line_bus` DISABLE KEYS */;
INSERT INTO `line_bus` VALUES (1,'Tuyến số 1','Bạc Liêu','Tp Hồ Chí Minh'),(2,'Tuyến số 2','Bảo Lộc','Huế'),(3,'Tuyến số 3','Bảo Lộc','Đà Nẵng'),(4,'Tuyến số 4','Bảo Lộc','Quãng Ngãi'),(5,'Tuyến số 5','Bến Tre','Tp Hồ Chí Minh'),(6,'Tuyến số 6','Buôn Ma Thuộc','Tp Hồ Chí Minh'),(7,'Tuyến số 7','Buôn Ma Thuộc','Nha Trang'),(8,'Tuyến số 8','An Sương','Quãng Ngãi'),(9,'Tuyến số 9','An Sương','Đà Nẵng'),(10,'Tuyến số 10','Cà Mau','Tp Hồ Chí Minh'),(11,'Tuyến số 11','Cà Mau','Cần Thơ'),(12,'Tuyến số 12','Cà Mau','Châu Đốc'),(13,'Tuyến số 13','Cam Ranh','Đà Nẵng'),(14,'Tuyến số 14','Cam Ranh','Tp Hồ Chí Minh'),(15,'Tuyến số 15','Cần Thơ','Cà Mau');
/*!40000 ALTER TABLE `line_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_order`
--

DROP TABLE IF EXISTS `sale_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `num` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `bus_trip_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sale_order_customer` (`customer_id`),
  KEY `fk_sale_order_bus_trip` (`bus_trip_id`),
  CONSTRAINT `fk_sale_order_bus_trip` FOREIGN KEY (`bus_trip_id`) REFERENCES `bus_trip` (`id`),
  CONSTRAINT `fk_sale_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_order`
--

LOCK TABLES `sale_order` WRITE;
/*!40000 ALTER TABLE `sale_order` DISABLE KEYS */;
INSERT INTO `sale_order` VALUES (1,'2022-07-28 00:00:00',2,1,1),(2,'2022-07-27 00:00:00',1,2,1),(3,'2022-07-26 00:00:00',1,3,1),(4,'2022-07-25 00:00:00',1,4,1),(5,'2022-07-24 00:00:00',2,5,2);
/*!40000 ALTER TABLE `sale_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_employee`
--

DROP TABLE IF EXISTS `type_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_level` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_employee`
--

LOCK TABLES `type_employee` WRITE;
/*!40000 ALTER TABLE `type_employee` DISABLE KEYS */;
INSERT INTO `type_employee` VALUES (1,'Admin',15000000),(2,'Driver',12000000),(3,'Staff',8000000);
/*!40000 ALTER TABLE `type_employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 15:41:54
