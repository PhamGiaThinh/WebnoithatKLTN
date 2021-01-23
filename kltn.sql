-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: furniturewebdemo6
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `quantity` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `totalprice` double NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKdebwvad6pp1ekiqy5jtixqbaj` (`customer_id`),
  KEY `FK3d704slv66tw6x5hmbm6p2x3u` (`product_id`),
  CONSTRAINT `FK3d704slv66tw6x5hmbm6p2x3u` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKdebwvad6pp1ekiqy5jtixqbaj` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (9,1716000,'Maguire Dining Chair - White',5,1,8580000,1,21),(10,11560000,'Bayham Chenille Chair - Grey',2,1,23120000,1,20),(11,11560000,'Bayham Chenille Chair - Grey',2,1,23120000,2,20),(13,20809000,'Pacific Sofa - Blue',1,1,20809000,2,19),(22,13878000,'The Parra Sofa - Navy',3,1,41634000,1,15),(26,11560000,'Ellis Sofa - Charcoal',1,1,11560000,1,17),(27,13878000,'The Parra Sofa - Navy',4,1,55512000,1,15),(29,18497000,'Maree Sofa - Silver Grey',2,1,36994000,1,18),(33,3400000,'Daytona - I, 5\' x 8\' - Blue Area Rug',4,1,13600000,1,45),(37,3750000,'Argyle Round Dining Table',4,1,15000000,24,27),(38,13878000,'The Parra Sofa - Navy',2,1,27756000,24,15),(41,5880000,'Mila - II, 7\'10\" x 9\'10\" - Multi Area Rug',3,1,17640000,21,46),(42,11560000,'Bayham Chenille Chair - Grey',1,1,11560000,21,20),(43,11560000,'Kavanaugh Sofa - Dark Grey',1,1,11560000,21,16),(44,2300000,'Avenue Eight 47\" TV Stand - Wind Oak',3,1,6900000,1,31),(45,13878000,'The Parra Sofa - Navy',2,1,27756000,1,15),(46,11560000,'Kavanaugh Sofa - Dark Grey',2,1,23120000,21,16),(47,13878000,'The Parra Sofa - Navy',2,1,27756000,21,15),(48,13878000,'The Parra Sofa - Navy',2,0,27756000,21,15),(50,11560000,'Bayham Chenille Chair - Grey',2,1,23120000,35,20),(51,5880000,'Mila - xII, 7\'10\" x 9\'10\" - Multi Area Rug',3,1,17640000,35,48),(53,1803000,'Argyle Fabric Dining Chair – Aqua',2,1,3606000,35,25),(54,5880000,'Mila - II, 7\'10\" x 9\'10\" - Multi Area Rug',4,1,23520000,35,46),(55,11560000,'Kavanaugh Sofa - Dark Grey',1,1,11560000,35,16);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sofa'),(29,'Bàn thấp'),(30,'Ghế'),(31,'Tủ tivi'),(32,'Bàn ăn'),(33,'Tủ bếp'),(34,'Giường'),(35,'Bàn đầu giường'),(36,'Bàn trang điểm'),(37,'Tủ áo'),(38,'Nệm'),(39,'Chăn - gối - ga'),(40,'Gương'),(41,'Thảm'),(42,'Gối tựa sofa'),(43,'Bình trang trí'),(44,'Tượng trang trí'),(45,'Đèn trang trí'),(46,'Khung tranh'),(47,'Ghế ngoài trời'),(48,'Bàn ngoài trời'),(50,'Gối đệm'),(51,'Đệm ngoài trời'),(52,'Dụng cụ bể bơi');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_categorytype`
--

DROP TABLE IF EXISTS `category_categorytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category_categorytype` (
  `category_id` bigint(20) NOT NULL,
  `categorytype_id` bigint(20) NOT NULL,
  PRIMARY KEY (`category_id`,`categorytype_id`),
  KEY `FK3sybbfdp9n6qr13x24s3vjbph` (`categorytype_id`),
  CONSTRAINT `FK3sybbfdp9n6qr13x24s3vjbph` FOREIGN KEY (`categorytype_id`) REFERENCES `categorytype` (`categorytype_id`),
  CONSTRAINT `FKfr73ptvvaieih4j8p91bqpag1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_categorytype`
--

LOCK TABLES `category_categorytype` WRITE;
/*!40000 ALTER TABLE `category_categorytype` DISABLE KEYS */;
INSERT INTO `category_categorytype` VALUES (1,1),(29,1),(30,1),(31,1),(50,1),(29,2),(30,2),(32,2),(33,2),(30,3),(31,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(50,3),(40,4),(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,9),(48,9),(51,9),(52,9);
/*!40000 ALTER TABLE `category_categorytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorytype`
--

DROP TABLE IF EXISTS `categorytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorytype` (
  `categorytype_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categorytype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorytype`
--

LOCK TABLES `categorytype` WRITE;
/*!40000 ALTER TABLE `categorytype` DISABLE KEYS */;
INSERT INTO `categorytype` VALUES (1,'Phòng khách'),(2,'Phòng ăn'),(3,'Phòng ngủ'),(4,'Trang trí  - Gia dụng'),(9,'Ngoài trời');
/*!40000 ALTER TABLE `categorytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `customertype_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `FK3l2b60felys1kurl1sabbkjjg` (`customertype_id`),
  KEY `FKj8dlm21j202cadsbfkoem0s58` (`user_id`),
  CONSTRAINT `FK3l2b60felys1kurl1sabbkjjg` FOREIGN KEY (`customertype_id`) REFERENCES `customertype` (`customertype_id`),
  CONSTRAINT `FKj8dlm21j202cadsbfkoem0s58` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,0,2,1),(2,0,2,2),(21,0,1,21),(22,0,1,24),(23,0,1,25),(24,0,1,26),(26,0,1,28),(27,0,1,29),(28,0,1,30),(30,0,1,32),(34,0,1,37),(35,0,1,38),(36,0,1,39),(37,0,1,40),(38,0,1,41),(39,0,1,42);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customertype`
--

DROP TABLE IF EXISTS `customertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customertype` (
  `customertype_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customertype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customertype`
--

LOCK TABLES `customertype` WRITE;
/*!40000 ALTER TABLE `customertype` DISABLE KEYS */;
INSERT INTO `customertype` VALUES (1,'Normal'),(2,'Silver'),(3,'Gold'),(4,'Platinum');
/*!40000 ALTER TABLE `customertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bonus` double DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `FK6lk0xml9r7okjdq0onka4ytju` (`user_id`),
  CONSTRAINT `FK6lk0xml9r7okjdq0onka4ytju` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,0,'Leader',12000000,3),(2,0,'Leader',10000000,4),(3,0,'CEO',32000000,5),(4,5000000,'CEO',40000000,6),(5,0,'Bảo vệ',7000000,22),(6,0,'CEO',29000000,23),(7,0,'Leader',23000000,33);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceproduct`
--

DROP TABLE IF EXISTS `invoiceproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoiceproduct` (
  `invoiceproduct_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `total` double DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`invoiceproduct_id`),
  KEY `FK5i0glfpns73874i80hj26imj1` (`customer_id`),
  KEY `FK9gmsigy8xyoiucha7me1ckv1i` (`employee_id`),
  CONSTRAINT `FK5i0glfpns73874i80hj26imj1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `FK9gmsigy8xyoiucha7me1ckv1i` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceproduct`
--

LOCK TABLES `invoiceproduct` WRITE;
/*!40000 ALTER TABLE `invoiceproduct` DISABLE KEYS */;
INSERT INTO `invoiceproduct` VALUES (8,'2019-12-25 13:04:59',NULL,43929000,2,2),(9,'2019-12-25 13:10:30',NULL,84894000,1,2),(10,'2019-12-25 17:40:07',NULL,92506000,1,2),(11,'2019-12-27 12:32:36',NULL,13600000,1,2),(12,'2019-12-27 12:41:41',NULL,42756000,24,2),(13,'2019-12-31 00:14:14',NULL,29200000,21,2),(14,'2019-12-31 00:17:16',NULL,11560000,21,2),(15,'2020-01-01 19:08:43',NULL,34656000,1,2),(16,'2020-01-06 10:33:15',NULL,50876000,21,2),(17,'2020-07-23 09:40:02',NULL,23120000,35,2),(18,'2020-07-31 04:24:23',NULL,21246000,35,2),(19,'2020-07-31 04:33:59',NULL,35080000,35,2);
/*!40000 ALTER TABLE `invoiceproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceproduct_product`
--

DROP TABLE IF EXISTS `invoiceproduct_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoiceproduct_product` (
  `invoiceproduct_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `totalprice` double NOT NULL,
  PRIMARY KEY (`invoiceproduct_id`,`product_id`),
  KEY `FK7ujt4166hju52khq0odddgivx` (`product_id`),
  CONSTRAINT `FK7ujt4166hju52khq0odddgivx` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKmyci71ywhwkirfsoigbvcvcfb` FOREIGN KEY (`invoiceproduct_id`) REFERENCES `invoiceproduct` (`invoiceproduct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceproduct_product`
--

LOCK TABLES `invoiceproduct_product` WRITE;
/*!40000 ALTER TABLE `invoiceproduct_product` DISABLE KEYS */;
INSERT INTO `invoiceproduct_product` VALUES (8,19,20809000,1,20809000),(8,20,11560000,2,23120000),(9,15,13878000,3,41634000),(9,17,11560000,1,11560000),(9,20,11560000,2,23120000),(9,21,1716000,5,8580000),(10,15,13878000,4,55512000),(10,18,18497000,2,36994000),(11,45,3400000,4,13600000),(12,15,13878000,2,27756000),(12,27,3750000,4,15000000),(13,20,11560000,1,11560000),(13,46,5880000,3,17640000),(14,16,11560000,1,11560000),(15,15,13878000,2,27756000),(15,31,2300000,3,6900000),(16,15,13878000,2,27756000),(16,16,11560000,2,23120000),(17,20,11560000,2,23120000),(18,25,1803000,2,3606000),(18,48,5880000,3,17640000),(19,16,11560000,1,11560000),(19,46,5880000,4,23520000);
/*!40000 ALTER TABLE `invoiceproduct_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_reset_token` (
  `id` bigint(20) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`),
  CONSTRAINT `FK5lwtbncug84d4ero33v3cfxvl` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `discount_price` double DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FK2kxvbr72tmtscjvyp9yqb12by` (`supplier_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FK2kxvbr72tmtscjvyp9yqb12by` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (15,'Xanh navy','Thoải mái cổ điển. Sofa Parra là một cổ điển hiện đại và lý tưởng cho các ngôi nhà hiện đại, nơi cần sự thoải mái. Tự hào với mật độ cao, chỗ ngồi đầy bọt với đệm lưng và ghế hộp gắn liền, Parra được đóng khung bởi cánh tay theo dõi kiểu dáng đẹp cho một cái nhìn hiện đại trong phòng khách của bạn. Màu sắc hải quân phong phú cung cấp cho ngôi nhà của bạn một màu sắc linh hoạt để trang trí chống lại, trong khi vải polyester mềm mại dễ chăm sóc. Gối tạo điểm nhấn sang trọng mang đến sự thích thú và hình ảnh nổi bật cho vẻ ngoài chắc chắn sẽ gây ấn tượng. Sản xuất tại Canada.',13878000,'Polyester','The Parra Sofa - Navy',13878000,16,'80\" w x 35\" h x 35\" d (203cm-90cm-90cm)',1,1),(16,'Xám đen','Các đường khâu may được may ở cả lưng và ghế tạo nên nét hiện đại. Chất liệu vải dễ chăm sóc với màu xám đậm với những đường nét đơn giản nhưng thanh lịch làm cho chiếc ghế này trở nên hoàn hảo phù hợp với trang trí hiện có của bạn.Sản xuất tại Trung Quốc',11560000,'Polyester','Kavanaugh Sofa - Dark Grey',11560000,96,'74\" w x 32\" h x 32\" d (188-81-81)',1,2),(17,'Than củi','Những đường nét sang trọng, tinh xảo của ghế sofa Ellis giữ cho phòng khách của bạn trên một đường đua đầy phong cách. Ghế bọc than dễ chăm sóc phản ánh trung tính phổ biến nhất hiện nay, do đó, nó hoạt động với hầu hết các trang trí hiện có và bất kỳ phần nhấn nào bạn thêm vào. Cánh tay thon dài, đệm lưng và chân nêm màu merlot kết thúc với sự duyên dáng dứt khoát. Sản xuất tại Canada.',11560000,'Polyester','Ellis Sofa - Charcoal',11560000,102,'75\" w x 35\" h x 35\" d (190-90-90)',1,3),(18,'Xám bạc','Sofa màu xám bạc Maree có phong cách và sự thoải mái trong các thẻ với đệm và vải sang trọng cũng như khâu thiết kế. Đệm lưng có đệm, cánh tay gối và chân đế xếp chồng lên nhau hỗ trợ cho những chiếc ghế thoải mái. Khâu bóng chày tông màu cùng với viền trang trí mang đến một thẩm mỹ mạnh mẽ, sang trọng. Với tất cả sự hỗ trợ và ngoại hình đẹp, bạn sẽ tự hào về nội thất phòng khách của mình.',18497000,'Vải Microsuede','Maree Sofa - Silver Grey',18497000,98,'83\" w x 36\" h x 37\" d (210-91-94)',1,7),(19,'Xanh biển','Pha trộn với các mảnh hiện đại hoặc được bao quanh bởi các kho báu cổ điển khác, các đường nét sạch sẽ và thiết kế không vô nghĩa cũng truyền cảm hứng và bắt mắt không kém. Ghế bọc màu xanh, đặc biệt, đặt nó như một mảnh phòng khách xác định không gian. Gối Accent cung cấp một mô hình vượt thời gian và màu sắc phù hợp. Sản xuất tại Canada.',20809000,'Polyester','Pacific Sofa - Blue',20809000,94,'78\" w x 34\" h x 34\" d (198-86-86)',1,9),(20,'Xám','Được bọc trong vải chenille ấm cúng, chiếc ghế này là một mảnh hoàn hảo để đặt trong trung tâm của không gian sống của bạn. Nếu bạn muốn phối hợp món đồ này với các phụ kiện nhà yêu thích của bạn, tông màu xám lạnh của vải bọc sẽ là một sự phù hợp hoàn hảo.',11560000,'Gỗ Alder, gỗ thông, ván OSB','Bayham Chenille Chair - Grey',11560000,98,'36.5\" w x 37\" h x 36\" d (93-94-91)',30,11),(21,'Trắng','Cung cấp cho phòng ăn của bạn một bản nâng cấp tương lai với ghế ăn Maguire. Ghế xốp dày được bọc da giả màu xám thanh lịch, trong khi khâu tạo ra các sọc tinh tế trên đệm. Chân tròn hơn nữa thiết kế hiện đại và phản chiếu ánh sáng, lung linh bên cạnh da giả mờ cho kết hợp tuyệt đẹp của kết cấu.',1716000,'Kim loại, da giả','Maguire Dining Chair - White',1716000,495,'17.25\" w x 31.5\" h x 18.25\" d (43.8-80- 46.4)',30,26),(22,'Walnut','Đẹp từ mọi góc nhìn. Bàn cà phê gỗ óc chó phong phú với chân hỗ trợ nghiêng này là điểm nhấn hoàn hảo được đặt trước ghế sofa của bạn. Bề mặt rộng rãi của nó sẽ chứa điều khiển từ xa, tạp chí hoặc các đối tượng yêu thích của bạn.',7000000,'Mini Veneer,MDF,Rubber Wood','Coffee Table - Walnut',7000000,200,'50\" w x 18.3\" h x 25.8\" d',29,14),(23,'Đen','Thiết kế đường cong. Bàn cà phê Antonia ngay lập tức hiện đại và sang trọng cổ điển. Các vật liệu theo xu hướng, như mặt bàn bằng kính dày, chân kim loại mạ crôm và tấm đế đen bóng cao cấp, tạo cảm giác bóng bẩy, hiện đại, trong khi chân cong hào phóng thêm phong cách xa hoa. Chiếc bàn này sẽ mang đến sự sang trọng hiện đại cho hầu hết mọi kiểu trang trí phòng khách. Yêu cầu lắp ráp khách hàng.',6500000,'Kim loại','Coffee Table - Chrome and Black',6500000,300,'18\" h x 28\" d x 50\" l',29,12),(24,'Trắng','Được bọc trong da giả sang trọng và chứa đầy bọt mật độ cao, chiếc ghế bành không tay này đã sẵn sàng để nâng niu bạn. Chân mỏng màu đen, sơn tĩnh điện giúp bạn ổn định, cho dù bữa tiệc có sôi động đến đâu. Khâu zigzag trang trí đường viền cạnh của ghế trong một màu tương phản để thêm một phong cách giật gân. Thêm sự lấp lánh tinh tế của chiếc ghế Doiron để làm sáng không gian ăn uống của bạn, và để bữa tối gia đình lớn tiếp theo của bạn tỏa sáng.',4000000,'Kim loại, da giả, sơn tĩnh điện','Doiron Dining Chair - Brown',4000000,90,'20.2\" w x 31.1\" h x 20.6\" d (51.3 - 79 - 51.3)',30,10),(25,'Xanh biển','Ngồi trong sự thoải mái với chiếc ghế ăn Argyle này. Được bọc trong vải màu be mềm mại, chiếc ghế bền này trông giống như một chiếc bàn ăn giống như trong phòng khách hoặc phòng ngủ. Phần lưng cao được búi cao, thêm họa tiết bắt mắt cho bản phối.',1803000,'Gỗ cao su (gỗ cứng châu Á), gỗ veneer','Argyle Fabric Dining Chair – Aqua',1803000,198,'38.98\" w x 23.62\" h x 20.47\" d (99 - 60 - 52)',30,12),(26,'Nâu','Thưởng thức bữa tối tiếp theo của bạn tại nhà của bạn trên phạm vi với bàn ăn Allen. Veneers ấm áp trên khung gỗ cao su rắn thêm phong cách hiện đại sang trọng, kết hợp tốt nhất của sự quyến rũ mộc mạc với mát mẻ đô thị. X đánh dấu vị trí cho một đế kim loại rắn giữ cho tất cả các món ăn của bạn cân bằng an toàn. Cần thêm không gian cho toàn bộ tư thế? Mở rộng chiều dài của bàn thêm 18 inch bằng cách thêm vào chiếc lá có thể tháo rời. Cho dù bạn đang thưởng thức bữa nửa buổi thịnh soạn vào buổi trưa cao hay đồ uống sau bữa tối dưới ánh trăng, Allen vẫn sẵn sàng đạp xe.',12350000,'Rubberwood','Allen Dining Table',12350000,200,'48.03\" w x 30.12\" h x 48.03\" d',32,16),(27,'Walnut','Biến một bữa ăn hàng ngày thành một kỷ niệm lâu dài với bàn ăn tròn Argyle này. Đơn giản và chắc chắn, chiếc bàn tròn này có tới bốn chiếc đồng thời hỗ trợ cấu trúc mà bạn cần từ những món đồ nội thất quan trọng của mình. Bàn gỗ cao su được phủ bằng Mindi veneers, được biết đến với các mẫu hạt tinh xảo và khả năng giữ vết bẩn tốt. Trong trường hợp này, vẻ đẹp tự nhiên đó được nhấn mạnh bởi một kết thúc bằng gỗ óc chó. Cuối cùng, chân đế bắt chéo cung cấp một tính năng hấp dẫn trong khi cung cấp cho mỗi cư dân với chỗ để chân riêng.',3750000,'Rubberwood','Argyle Round Dining Table',3750000,196,'48.03\" w x 30.12\" h x 48.03\" d',32,13),(28,'Nâu','Hãy để những người tạo ra xu hướng trong bạn thăng hoa với chiếc bàn ăn Clarita bóng bẩy và nổi bật này. Với thiết kế cơ sở X hiện đại và mặt trên bằng đá cẩm thạch giả tuyệt đẹp, bàn ăn này cũng sang trọng như chức năng. Thêm vào đó, khung kim loại đưa chiếc bàn này tiến thêm một bước từ phong cách, bền bỉ và lâu dài. Thêm mảnh nhỏ này vào không gian ăn uống của bạn cho sự tinh tế, bền bỉ.',760000,'Kim loại','Clarita Dining Table',760000,250,'59\" w x 30\" h x 36\" d',32,14),(29,'Than phong','Mang một bầu không khí mộc mạc, mộc mạc cho phòng ăn của bạn với tủ đồ cổ Chippenham này. Đằng sau cánh cửa kính của nó là ba kệ kính khung gỗ với đèn LED. Điều này có nghĩa là bốn cấp độ rộng rãi được thắp sáng rực rỡ để giới thiệu những báu vật gia đình yêu thích của bạn. Các phần cứng sắt lâu năm và kết thúc than thời tiết làm việc cùng nhau để thêm sự khác biệt cho đơn vị đẹp trai này. Thưởng thức tác phẩm này một mình hoặc với các mặt hàng khác từ bộ sưu tập Chippenham.',3400000,'Gỗ: Gỗ thông','Chippenham Curio',3400000,90,'36\" w x 78\" h x 18\" d',33,10),(30,'Trắng','Có một số thiết kế hoạt động theo nhiều cách nhưng chiếc tủ kính này trông đẹp nhất khi nó được sử dụng như dự định - để hiển thị. Với các tính năng truyền thống, từ các giác mạc và các mặt bên cho đến việc tạo khuôn cho khung tranh bằng kính, nó thực sự là một mảnh lấy cảm hứng từ quá khứ. Trong một khu vực sinh hoạt, lưu trữ các phụ kiện trang trí, khung ảnh và bộ sưu tập sách nhỏ, hoặc đồ sành sứ, cốc và đồ thủy tinh để tạo ra một tủ quần áo mỏng trong nhà bếp. Mẹo về phong cách: giới thiệu ánh sáng phía sau cánh cửa đóng kín bằng cách hiển thị một chiếc bình trong suốt chứa đầy chuỗi ánh sáng thần tiên và đặt nó lên một trong hai kệ giữa.',9800000,'Gỗ gụ đặc, gỗ tổng hợp','Palermo Glass Etagere',9800000,106,'27.56\" w x 74.8\" h x 17.72\" d',33,12),(31,'Đen','Nâng cấp giải trí gia đình của bạn với giá đỡ TV 47 inch Avenue này. Cửa bảng điều khiển khung, cột đầy đủ và một cơ sở đường viền mang lại cái nhìn sang trọng thủ công. Kết hợp với kệ mở và tủ kín để lưu trữ các phụ kiện phương tiện gia đình của bạn, trung tâm giải trí này thêm phong cách cũng như chức năng cho phòng khách của bạn. TV này là sự hợp nhất giữa đương đại và truyền thống mang đến một thiết kế thanh lịch và đẳng cấp.',2300000,'Gỗ','Avenue Eight 47\" TV Stand - Wind Oak',2300000,87,'47\" w x 24.38\" h x 18.88\" d',31,9),(32,'Đen','Đưa ra tuyên bố với kim loại. Mặt bàn của kệ TV Collin này mang đến vẻ ngoài của thép thời gian cho một cái nhìn công nghiệp. Chân kim loại được trang bị ở đầu bàn và được hỗ trợ với xà ngang cho chân đế vững chắc. Đầu móng tay màu đồng thau thêm chi tiết hấp dẫn và một chút màu tương phản cho trang phục gồ ghề này. Thực hiện - giá đỡ TV Collin brawny này mang lại rất nhiều nhân vật.',5600000,'Tấm sợi mật độ trung bình (MDF), kim loại','Collin 68\" TV Stand',5600000,20,'68\" w x 18\" h x 18\" d',31,7),(33,'Xám','Bạn có cảm thấy những ký ức ấm áp khi chỉ nghĩ về một trang trại nông thôn \"Yêu cầu cảm giác này cho ngôi nhà của bạn với kệ tivi Farmington này. Khung hình cây thông có cảm giác chắc chắn, với cửa chuồng trượt cho phép bạn che giấu bộ sưu tập phim và hộp điện tử của mình. Cuối cùng, toàn bộ phần được phủ một lớp màu xanh phong hóa, cho mượn một chiếc patin đầy màu sắc cho tác phẩm thời trang này.',23480000,'Gỗ : cây thông','Farmington 62\" TV Stand',23480000,40,'62\" w x 36\" h x 18\" d',31,6),(34,'Nâu','Chào mừng bạn đến ốc đảo phòng ngủ cá nhân của riêng bạn với giường vua Carlsen. Ván gỗ theo phong cách được khai hoang được hoàn thiện trong cả hai màu sáng và tối của màu nâu để thêm một phong cách thời tiết cho phòng ngủ của bạn. Một đầu bảng điều khiển cao cho bạn một vị trí thoải mái để ngả lưng, thư giãn và xem chỉ một tập nữa trước khi đi ngủ. Bốn chân hỗ trợ thêm được giấu bên dưới giúp đảm bảo bạn nghỉ ngơi thoải mái suốt đêm. Chìm xuống giường Carlsen tối nay và để những lo lắng của thế giới biến mất.',6700000,'Ván dăm','Carlsen King Bed',6700000,80,'78.82\" w x 55.91\" h x 85.59\" d',34,5),(35,'Màu xanh da trời','Thức khuya với một cuốn sách hay trong sự thoải mái của chiếc giường vua nhung Chiasson này. Đầu giường cao mượt mà với các kênh búi dọc che giấu bọt sang trọng được giấu bên trong, sẵn sàng giúp bạn vượt qua chỉ một chương nữa. Một khung bọc bằng gỗ cứng châu Á là cây sậy ban đêm của bạn, và 10 chân hỗ trợ mang lại sự ổn định suốt đêm. Màu xanh đậm mời bạn thể hiện màu sắc thật của mình bằng cách kết hợp tốt với bộ đồ giường với tông màu sáng và hoa văn. Trôi đi ngủ trên chiếc giường Chiasson này, và có thể giấc mơ của bạn sẽ tràn đầy hạnh phúc.',23400000,'Gỗ cứng châu Á','Chiasson Velvet King Bed - Blue',23400000,70,'78.82\" w x 55.91\" h x 85.59\" d',34,4),(36,'Xám','Thức khuya với một cuốn sách hay trong sự thoải mái của chiếc giường vua nhung Chiasson này. Đầu giường cao mượt mà với các kênh búi dọc che giấu bọt sang trọng được giấu bên trong, sẵn sàng giúp bạn vượt qua chỉ một chương nữa. Một khung bọc bằng gỗ cứng châu Á là cây sậy ban đêm của bạn, và 10 chân hỗ trợ mang lại sự ổn định suốt đêm. Màu xanh đậm mời bạn thể hiện màu sắc thật của mình bằng cách kết hợp tốt với bộ đồ giường với tông màu sáng và hoa văn. Trôi đi ngủ trên chiếc giường Chiasson này, và có thể giấc mơ của bạn sẽ tràn đầy hạnh phúc.',23400000,'Gỗ cứng châu Á','Chiasson Velvet King Bed - Grey',23400000,100,'78.82\" w x 55.91\" h x 85.59\" d',34,4),(37,'Trắng cổ','Nắm bắt cảm giác có một bí mật, nơi ẩn dật ở nông thôn trong chính ngôi nhà của bạn với chiếc gương Aurelia tuyệt đẹp này. Đường cong dốc và khung vòm cao của nó là một tấm gương rộng có nhiều chỗ để kiểm tra từng chút trang phục của bạn. Với màu trắng cổ mang lại cảm giác của một cổ điển hiện đại, chiếc gương này sẽ giúp biến phòng ngủ của bạn thành ngôi nhà thư giãn trong giấc mơ của bạn.',4600000,'Gỗ: Cây dương','Aurelia Mirror – Antique White',4600000,140,'46\" w x 41\" h x 3\" d',40,27),(38,'Xám','Ai nói truyền thống có nghĩa là buồn tẻ \"Thêm một điểm nhấn mê hoặc vào phòng ngủ của bạn với chiếc gương Bettina này. Từ kết thúc khói cho đến khung có dấu của nó, tác phẩm đẹp trai này tạo ra một giai điệu sành điệu cho phần còn lại của căn phòng của bạn để theo dõi. mặt trên của gương, làm cho gương vuông dường như chỉ là bình thường. Hãy tự mình tận hưởng chiếc gương này hoặc gắn nó vào tủ quần áo phù hợp (được bán riêng) cho sự trang điểm phòng ngủ hoàn hảo.',2600000,'Gỗ: Cây dương','Mirror - Grey',2600000,120,'42.00\" w x 39.00\" h x 2.00\" d',40,27),(39,'Xám phong','Tìm nơi nghỉ ngơi bí mật trên đảo với đầu giường trưởng này. Ac keo nghệ thuật đau khổ trong một kết thúc màu xám thô trang trí khung để cung cấp cho đầu giường một cái nhìn phong hóa. Gỗ cứng châu Á tạo ra một nền tảng vững chắc để giữ mọi thứ an toàn tại chỗ. Hai ngăn kéo rộng rãi với tay cầm màu bạc cổ kính đảm bảo kho báu bên giường của bạn được bảo vệ tốt. Thêm đầu giường này vào phòng ngủ của bạn và bắt đầu mơ về lối thoát nhiệt đới tiếp theo của bạn.',4650000,'Gỗ cứng châu Á, MDF, Acacia ','Chief Nightstand',4650000,120,'23.75\" w x 23\" h x 16\" d',35,32),(40,'Xám','Tận hưởng cảm giác ngoài trời đó từ sự thoải mái trong nhà của bạn khi bạn thêm chiếc đầu giường Henry này vào phòng ngủ của bạn. Các mảnh melamine giả được kết hợp với nhau để tạo ra một mô hình khối thịt trên khắp bề mặt trên cùng, với mỗi bảng màu xám có thiết kế vân gỗ tự nhiên. Ngăn kéo kim loại kiểu dáng đẹp cho phép bạn mở trơn tru từng trong hai ngăn kéo và bạn có thể cắm điện thoại thông minh hoặc công nghệ có thể đeo vào một trong hai cổng USB để sạc. Cho dù cho ngôi nhà hoặc gác xép, đầu giường này là một bổ sung duyên dáng cho không gian của bạn.',5200000,'Gỗ thiết kế, MDF ','Henry Nightstand',5200000,120,'21.69\" w x 24.37\" h x 15.35\" d',35,32),(41,'Bạc','Thêm sự hào nhoáng và quyến rũ của Hollywood cổ điển vào phòng ngủ của bạn với tủ quần áo Cabot này. Gỗ cao su đặc thể thao kết thúc bằng rượu sâm banh bạc thanh lịch để mang đến một giai điệu sang trọng. Tay cầm Bejeweled làm bằng vương miện mạ crôm hình kim cương một hoa văn hình tam giác ở mặt trước của tủ quần áo. Tám ngăn kéo sâu cung cấp nhiều lưu trữ cho tất cả quần áo của bạn, thêm chăn và các nhu yếu phẩm phòng ngủ khác. Mang Cabot về nhà, và làm cho lưu trữ phòng ngủ của bạn rực rỡ.',11230000,'Rubberwood','Cabot Dresser',11230000,60,'16.73\" w x 41.14\" h x 58.46\" d',37,28),(42,'Màu nâu tự nhiên','Thêm một luồng không khí trong lành vào phòng ngủ của bạn với chiếc rương Carlsen. Bốn ngăn kéo sâu với ngăn kéo kim loại chắc chắn đã sẵn sàng để giữ quần áo, chăn hoặc các nhu yếu phẩm phòng ngủ khác của bạn. Ván gỗ theo phong cách được khai hoang được hoàn thành trong cả hai màu sáng và tối của màu nâu để thêm một phong cách thời tiết. Thêm Carlsen vào phòng ngủ của bạn và để phong cách mộc mạc của nó giúp bạn tạo ra ốc đảo phòng ngủ cá nhân của riêng bạn.',5770000,'Ván dăm','Carlsen Chest',5770000,200,'31.4\" w x 47.3\" h x 16.3\" d',37,28),(43,'Trắng','Bàn làm việc Bianca Vanity sẽ mang đến cho bất kỳ căn phòng nào sự quyến rũ. Sử dụng bàn trang điểm độc đáo này cho ứng dụng trang điểm, đồ trang sức hoặc làm bàn viết nhỏ. Hai ngăn kéo lớn cung cấp lưu trữ rộng rãi và thuận tiện cho cọ trang điểm, đồ trang sức, v.v.',19800000,'Gương, thủy tinh, gỗ MDF, acrylic Faux','Bianca Vanity Desk',19800000,20,'47\" w x 32\" h x 16\" d',36,14),(44,'Trắng xanh','Elevate The Look Of Your Space With Portee. The Portee Collection Of Table Lamps Is As Beautiful As It Is Versatile. They Feature Tapered, Clear Reeded And Seeded Glass Columns With Polished Chrome Accents And Off-White Shantung Shades.',4500000,'Thép, Kính, Vải','Portee - III Table Lamp - Polished Chrome',4500000,200,'14\" w x 29\" h x 14\" d',45,26),(45,'Màu xanh da trời','Miêu tả mát mẻ và màu sắc mát mẻ, đại dương kết hợp trong Daytona. Cây cọ, vỏ sò, và cá nhiệt đới làm cho cái móc tay này trở thành một bãi biển bắt buộc phải có.',3400000,'100% Cotton','Daytona - I, 5\' x 8\' - Blue Area Rug',3400000,246,'96\" w x 0.25\" h x 60\" l',41,29),(46,'Nhiều màu','Một cách giải thích đương đại của các thiết kế cổ điển của Ikat, tấm thảm khu vực hiện đại này là một bổ sung bắt mắt cho các phòng bên trong có tính thẩm mỹ toàn cầu. Mỗi phong cách trang trí công phu đang theo xu hướng nhưng hoàn toàn vượt thời gian, như các sắc thái sống động của các mẫu đồ họa màu hồng, xanh, cam và vàng bao gồm chevron, sọc, hình vuông và splatters. Máy được làm từ sợi polypropylen mềm nhất, loại trải sàn chuyển tiếp này được thiết kế để mang lại sự thoải mái dưới chân.',5880000,'100% Polypropylene','Mila - II, 7\'10\" x 9\'10\" - Multi Area Rug',5880000,253,'118\" w x 0.43\" h x 94\" l',41,28),(48,'Nhiều màu','Một cách giải thích đương đại của các thiết kế cổ điển của Ikat, tấm thảm khu vực hiện đại này là một bổ sung bắt mắt cho các phòng bên trong có tính thẩm mỹ toàn cầu. Mỗi phong cách trang trí công phu đang theo xu hướng nhưng hoàn toàn vượt thời gian, như các sắc thái sống động của các mẫu đồ họa màu hồng, xanh, cam và vàng bao gồm chevron, sọc, hình vuông và splatters. Máy được làm từ sợi polypropylen mềm nhất, loại trải sàn chuyển tiếp này được thiết kế để mang lại sự thoải mái dưới chân.',5880000,'100% Polypropylene','Mila - xII, 7\'10\" x 9\'10\" - Multi Area Rug',5880000,242,'118\" w x 0.43\" h x 94\" l',41,28),(49,'Xám','Mở cửa phòng ngủ của bạn đến một thế giới sang trọng hiện đại với chiếc giường Danske tuyệt đẹp này. Với lớp vỏ màu xám antraxit nổi bật và đầu giường được bọc thông minh, tác phẩm này mang đến một bầu không khí chào đón sự thư giãn và yên tĩnh vào bất kỳ phòng ngủ nào. Sự quyến rũ đương đại toát ra từ tác phẩm này, khiến nó trở thành một sự kết hợp dễ dàng vào hầu hết các ngôi nhà. Hoàn thành ốc đảo phòng ngủ của bạn với các mảnh lưu trữ phù hợp và gương (được bán riêng).',14660000,'Gỗ','Danske Queen Bed',14660000,100,'78.82\" w x 55.91\" h x 85.59\" d',34,33),(50,'Xám','iến đổi bất kỳ căn phòng nào trong nhà bạn thành nơi nghỉ ngơi ấm cúng, ấm cúng với giá đỡ TV Yela 64 \". Thiết kế hiện đại, tối giản giữa thế kỷ này có kho lưu trữ mở cho bàn điều khiển phương tiện của bạn, cửa chia với chèn kính và chân màu đen, góc cạnh Kệ mở có thể điều chỉnh để phù hợp với sách, trò chơi hoặc đồ lặt vặt ở mọi kích cỡ, trong khi quản lý dây Front-and-Center ™ cung cấp tất cả các dây cáp thông qua một lỗ trung tâm duy nhất để thu hút thẩm mỹ có tổ chức.\n',6749500,'MDF','Yela 64\" TV Stand',6749800,8,'64\" w x 34\" h x 20\" d',31,34);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_image` (
  `id_image` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  KEY `FK6oo0cvcdtb6qmwsga468uuukk` (`product_id`),
  CONSTRAINT `FK6oo0cvcdtb6qmwsga468uuukk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (46,'ParraSofaNavi1.jpg',15),(47,'ParraSofaNavi2.jpg',15),(48,'ParraSofaNavi3.jpg',15),(49,'ParraSofaNavi4.jpg',15),(50,'KavanaughSofa_Dark Grey2.jpg',16),(51,'KavanaughSofa_Dark Grey1.jpg',16),(52,'KavanaughSofa_Dark Grey4.jpg',16),(53,'KavanaughSofa_Dark Grey3.jpg',16),(54,'EllisSofa_Charcoal2.jpg',17),(55,'EllisSofa_Charcoal1.jpg',17),(56,'EllisSofa_Charcoal3.jpg',17),(57,'EllisSofa_Charcoal4.jpg',17),(58,'MareeSofa_SilverGrey_3.jpg',18),(59,'MareeSofa_SilverGrey_1.jpg',18),(60,'MareeSofa_SilverGrey_2.jpg',18),(61,'MareeSofa_SilverGrey_4.jpg',18),(62,'PacificSofa_Blue_3.jpg',19),(63,'PacificSofa_Blue_1.jpg',19),(64,'PacificSofa_Blue_2.jpg',19),(65,'PacificSofa_Blue_4.jpg',19),(66,'BayhamChenilleChair_Grey_2.jpg',20),(67,'BayhamChenilleChair_Grey_3.jpg',20),(68,'BayhamChenilleChair_Grey_1.jpg',20),(69,'BayhamChenilleChair_Grey_4.jpg',20),(70,'MaguireDiningChair_White_1.jpg',21),(71,'MaguireDiningChair_White_2.jpg',21),(72,'MaguireDiningChair_White_3.jpg',21),(73,'MaguireDiningChair_White_4.jpg',21),(74,'Abingdon_1.jpg',22),(75,'Abingdon_2.jpg',22),(76,'Abingdon_3.jpg',22),(77,'Abingdon_4.jpg',22),(78,'Antonia_2.jpg',23),(79,'Antonia_1.jpg',23),(80,'Antonia_4.jpg',23),(81,'Antonia_3.jpg',23),(82,'DoironDiningChair_Brown_4.jpg',24),(83,'DoironDiningChair_Brown_1.jpg',24),(84,'DoironDiningChair_Brown_2.jpg',24),(85,'DoironDiningChair_Brown_3.jpg',24),(86,'ArgyleFabricDiningChair_Aqua_1.jpg',25),(87,'ArgyleFabricDiningChair_Aqua_2.jpg',25),(88,'ArgyleFabricDiningChair_Aqua_4.jpg',25),(89,'ArgyleFabricDiningChair_Aqua_3.jpg',25),(90,'Allen_3.jpg',26),(91,'Allen_4.jpg',26),(92,'Allen_1.jpg',26),(93,'Allen_2.jpg',26),(94,'Argyle_1.jpg',27),(95,'Argyle_2.jpg',27),(96,'Argyle_4.jpg',27),(97,'Argyle_3.jpg',27),(98,'Clarita_1.jpg',28),(99,'Clarita_3.jpg',28),(100,'Clarita_4.jpg',28),(101,'Clarita_2.jpg',28),(102,'Chippenham_2.jpg',29),(103,'Chippenham_3.jpg',29),(104,'Chippenham_1.jpg',29),(105,'Chippenham_4.jpg',29),(106,'Palermo_3.jpg',30),(107,'Palermo_1.jpg',30),(108,'Palermo_4.jpg',30),(109,'Palermo_2.jpg',30),(110,'Avenue Eight_47_1.jpg',31),(111,'Avenue Eight_47_4.jpg',31),(112,'Avenue Eight_47_3.jpg',31),(113,'Avenue Eight_47_2.jpg',31),(114,'Collin_68_1.jpg',32),(115,'Collin_68_2.jpg',32),(116,'Collin_68_3.jpg',32),(117,'Collin_68_4.jpg',32),(118,'Farmington_62_1.jpg',33),(119,'Farmington_62_3.jpg',33),(120,'Farmington_62_2.jpg',33),(121,'Farmington_62_4.jpg',33),(122,'Carlsen_KingBed_3.jpg',34),(123,'Carlsen_KingBed_4.jpg',34),(124,'Carlsen_KingBed_2.jpg',34),(125,'Carlsen_KingBed_1.jpg',34),(126,'Chiasson_Velvet_KingBed_Blue_1.jpg',35),(127,'Chiasson_Velvet_KingBed_Blue_4.jpg',35),(128,'Chiasson_Velvet_KingBed_Blue_2.jpg',35),(129,'Chiasson_Velvet_KingBed_Blue_3.jpg',35),(130,'Chiasson_Velvet_KingBed_Grey_4.jpg',36),(131,'Chiasson_Velvet_KingBed_Grey_3.jpg',36),(132,'Chiasson_Velvet_KingBed_Grey_1.jpg',36),(133,'Chiasson_Velvet_KingBed_Grey_2.jpg',36),(134,'Aurelia_4.jpg',37),(135,'Aurelia_3.jpg',37),(136,'Aurelia_1.jpg',37),(137,'Aurelia_2.jpg',37),(138,'Bettina_2.jpg',38),(139,'Bettina_3.jpg',38),(140,'Bettina_4.jpg',38),(141,'Bettina_1.jpg',38),(142,'Chief_H_4.jpg',39),(143,'Chief_H_1.jpg',39),(144,'Chief_H_2.jpg',39),(145,'Chief_H_3.jpg',39),(146,'Henry_Table_4.jpg',40),(147,'Henry_Table_1.jpg',40),(148,'Henry_Table_3.jpg',40),(149,'Henry_Table_2.jpg',40),(150,'Lamarchant_Table_1.jpg',41),(151,'Lamarchant_Table_4.jpg',41),(152,'Lamarchant_Table_3.jpg',41),(153,'Lamarchant_Table_2.jpg',41),(154,'Carlsen_1.jpg',42),(155,'Carlsen_2.jpg',42),(156,'Carlsen_4.jpg',42),(157,'Carlsen_3.jpg',42),(158,'Bianca_4.jpg',43),(159,'Bianca_3.jpg',43),(160,'Bianca_2.jpg',43),(161,'Bianca_1.jpg',43),(162,'Portee_1.jpg',44),(163,'Portee_2.jpg',44),(164,'Portee_3.jpg',44),(165,'Daytona_1.jpg',45),(166,'Daytona_2.jpg',45),(167,'Daytona_4.jpg',45),(168,'Daytona_3.jpg',45),(169,'Mila_3.jpg',46),(170,'Mila_2.jpg',46),(171,'Mila_4.jpg',46),(172,'Mila_1.jpg',46),(177,'MilaII_4.jpg',48),(178,'MilaII_1.jpg',48),(179,'MilaII_3.jpg',48),(180,'MilaII_2.jpg',48),(181,'Danske_QueenBed_1.jpg',49),(182,'Danske_QueenBed_3.jpg',49),(183,'Danske_QueenBed_4.jpg',49),(184,'Danske_QueenBed_2.jpg',49),(185,'Yela_64_1.jpg',50),(186,'Yela_64_3.jpg',50),(187,'Yela_64_2.jpg',50),(188,'Yela_64_4.jpg',50);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `receipt` (
  `receipt_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `state_delivered` bit(1) DEFAULT NULL,
  `state_delivering` bit(1) DEFAULT NULL,
  `state_paid` bit(1) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `invoiceproduct_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`receipt_id`),
  KEY `FKniyenjjqfhfpa7gc13wwk233f` (`employee_id`),
  KEY `FKgsbpwpfy8fwc2xalb7ou61svi` (`invoiceproduct_id`),
  CONSTRAINT `FKgsbpwpfy8fwc2xalb7ou61svi` FOREIGN KEY (`invoiceproduct_id`) REFERENCES `invoiceproduct` (`invoiceproduct_id`),
  CONSTRAINT `FKniyenjjqfhfpa7gc13wwk233f` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,'2019-12-25 17:40:07',NULL,92506000,0,_binary '',_binary '',_binary '',92506000,2,10),(2,'2019-12-27 12:32:36',NULL,13600000,0,_binary '',_binary '',_binary '',13600000,2,11),(3,'2019-12-27 12:41:41',NULL,42756000,0,_binary '\0',_binary '',_binary '\0',42756000,2,12),(4,'2019-12-31 00:14:14',NULL,29200000,0,_binary '\0',_binary '\0',_binary '\0',29200000,2,13),(5,'2019-12-31 00:17:16',NULL,11560000,0,_binary '\0',_binary '\0',_binary '\0',11560000,2,14),(6,'2020-01-01 19:08:43',NULL,34656000,0,_binary '\0',_binary '\0',_binary '\0',34656000,2,15),(7,'2020-01-06 10:33:15',NULL,50876000,0,_binary '\0',_binary '\0',_binary '\0',50876000,2,16),(8,'2020-07-23 09:40:02',NULL,23120000,0,_binary '\0',_binary '\0',_binary '\0',23120000,2,17),(9,'2020-07-31 04:24:23',NULL,21246000,0,_binary '\0',_binary '\0',_binary '\0',21246000,2,18),(10,'2020-07-31 04:33:59',NULL,35080000,0,_binary '\0',_binary '\0',_binary '\0',35080000,2,19);
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `UK_epk9im9l9q67xmwi4hbed25do` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (3,'ROLE_ADMIN'),(2,'ROLE_EMPLOYEE'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'quan 1','parra@gmail.com','Parra Furniture','0909191900'),(2,'q9','kavanaugh@gmail.com','Kavanaugh','0909191901'),(3,'quan Tan Phu','ellis@gmail.com','Ellis Furniture','0909191902'),(4,'quan Nha Be','ryo@gmail.com','Ryo Home','0909191903'),(5,'quan Binh Thanh','zion@gmail.com','Zion','0909191904'),(6,'q8','langston@gmail.com','Langston','0909191905'),(7,'q1','maree@gmail.com','Maree','0909191906'),(8,'q8','woods@gmail.com','Woods Furniture','0909191907'),(9,'q3','pacific@gmail.com','Pacific Furniture','0909191908'),(10,'q2','orson@gmail.com','Orson ','0909191909'),(11,'q4','bayham@gmail.com','Bayham','0909191910'),(12,'q5','stella@gmail.com','Stella','0909191911'),(13,'q6','kuryakin@gmail.com','Kuryakin','0909191912'),(14,'q7','pisces@gmail.com','Pisces','0909191913'),(15,'q10','coas@gmail.com','Coastal furniture','0909191914'),(16,'q11','nevoso@gmail.com','Nevoso','0909191915'),(17,'q12','amiens@gmail.com','Amiens','0909191916'),(18,'q1','edin@gmail.com','Edinburgh','0909191917'),(26,'q12','ma@gmail.com','Maguire','0987654321'),(27,'q12','aurelia@gmail.com','Aurelia','0987654321'),(28,'q9','mila@gmail.com','Mila','0987654325'),(29,'q1 tphcm','daytona@gmail.com','Daytona','0987644321'),(30,'q3','portee@gmail.com','Portee','0127654321'),(31,'q12','demoiselle@gmail.com','Demoiselle','0975654321'),(32,'q4','chief@gmail.com','Chief','0987653321'),(33,'q1','dan@gmail.com','Danske','0987654321'),(34,'q5','lizzzy@gmail.com','lizzzy','0987654321'),(35,'q8','bari@gmail.com','Bari','0987654377');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified` bit(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `instatus` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2019-12-25 17:06:25','2020-01-01 19:07:09','484 Le Van Viet q9','xin@gmail.com',_binary '\0','tranthanh.png',1,'Tran Thanh','$2a$10$T949ZjT6Gl5qmqb3BLlw.e8anCC53.8ZKXHAZUdQDLliZRwom7Hui','0123939337','local',NULL),(2,'2019-12-25 17:09:37',NULL,'q2','Khach@gmail.com',_binary '\0','Gin - 1.jpg',1,'Tran Van Khach','$2a$10$OGDL.OmR3AhdHZl8Kd46vuJADlVzKpRNMEO1q5ygUZm5nFvMNnCeG','0987654321','local',NULL),(3,'2019-12-25 17:16:43','2020-07-31 05:01:21','q9','A@gmail.com',_binary '\0','codidich.jpg',1,'Co Di Dich','$2a$10$Dcj4wgFdW1dRmm10K3yRJeEs/50gDjYwROrIGupe9QMBa1hRf.Fpe','0129999947','local',NULL),(4,'2019-12-25 17:19:10',NULL,NULL,'nv@gmail.com',_binary '\0','giangthan.jpg',1,'Giang Than','$2a$10$fP1M5WJmo2FniAj4sdhnpuDFr4x8b0XnD3HP4WurTcz3vRTm7.wSG','0129999946','local',NULL),(5,'2019-12-26 00:08:08','2020-07-31 05:02:10','484 Le Van Viet q9','anh@gmail.com',_binary '\0','boss.jpg',1,'Pham The Ky','$2a$10$Q7GByNUHMNW2Gi4Eo5eazeP5dNBfbtrxR02mT2xTS0xqm5zHsfeu6','0129997776','local',NULL),(6,'2019-12-26 01:28:34',NULL,'1 Vo Van Ngan, Thu Duc','fkun@gmail.com',_binary '\0','thgioi.jpg',1,'Ngon Mac','$2a$10$eIZMiZcmpu8xej61dIqyUew..0lKhWTXVrgeY23pJhhG/31GCU5Hq','0128374445','local',NULL),(21,'2019-12-27 05:07:59','2020-07-16 17:16:58','484 Le Van Viet q9','16110543@student.hcmute.edu.vn',_binary '\0','https://lh3.googleusercontent.com/-dUmGGEZgG7I/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckA07OassUNOdfbND6YESdMjyuRHA/photo.jpg',1,'Tran Thi Ngoc Tram',NULL,'0129995533','google','104458828981470390085'),(22,'2019-12-27 11:23:53',NULL,'q9 TPHCM','noo@gmail.com',_binary '\0','noo.jpg',1,'Phuoc Thinh','$2a$10$iE9jmUsOMmP/zi.UtXP49us5nouwW6zkwTyXetwDS1cafpiV8VxCW','0987653433','local',NULL),(23,'2019-12-27 11:25:27',NULL,'484 Le Van Viet q9','poo@gmail.com',_binary '\0','anhhai.jpg',1,'Dai Boss','$2a$10$ZqKD.LZQhbReKgKknaBix.TeuNx1esQseZj.BFQqGRW3ijGrhBTCS','0987654322','local',NULL),(24,'2019-12-27 12:27:43',NULL,NULL,'aCC@gmail.com',_binary '\0',NULL,1,'ahihi','$2a$10$nBkJHbWveEqub/TP3U9kpeQ1FWQdxYipQ1P7AT1LtG7oGZ/zBp11K',NULL,'local',NULL),(25,'2019-12-27 12:29:12',NULL,NULL,'thythy@gmail.com',_binary '\0',NULL,1,'Ly Nha Ky','$2a$10$8/zBmOR.YcidhmM0/Q4XhOccWwno1NdbQc/wLkIdY1smqxpr0huky',NULL,'local',NULL),(26,'2019-12-27 12:37:05','2019-12-27 12:38:19','484 Le Van Viet q9','dung@gmail.com',_binary '\0','anhhai.jpg',1,'Mai Tien Dung','$2a$10$2M81Q1qHw3duUiu0kw/uE.f3tTeYHpxI5e6ohCpqNVR/7YL4TnYJi','0129997678','local',NULL),(28,'2019-12-30 23:02:33','2019-12-30 23:40:11',NULL,'gil@gmail.com',_binary '\0',NULL,1,'Gil Le','$2a$10$fnGNFykxVey2kgy7iVd9AOqtAHdqaBR8.R35Uo9FGNG6zcLMWVdrm',NULL,'local',NULL),(29,'2019-12-31 00:02:09',NULL,NULL,'gigi@gmail.com',_binary '\0',NULL,1,'Lee Gi','$2a$10$8yS45ukni6W5P7UmnGN9Ouo67irC2Izu.a5dAJWXKi7FNcu6SXEHC',NULL,'local',NULL),(30,'2019-12-31 00:10:59','2019-12-31 00:11:34',NULL,'ho@gmail.com',_binary '\0',NULL,1,'Lee Min Ho','$2a$10$h4owbdFtdH.Zfo.HBjH6Cu1uNxo7weUmbruh.yJhisxM4CvOc7Tjy',NULL,'local',NULL),(32,'2020-01-01 19:02:18','2020-01-01 19:02:45',NULL,'natra@gmail.com',_binary '\0',NULL,1,'Ly Na Tra','$2a$10$GB7PZ2a8.JrapX25165ywOpBtms5zfx/qbxMmdke7Ef7BunAIgyn6',NULL,'local',NULL),(33,'2020-01-01 19:41:06',NULL,'q1','lytinh3@gmail.com',_binary '\0','saiki.jpg',1,'Ly Tinh','$2a$10$8wl0Li6LY6P20QPlI5vUauV.k4fsFVaIUkonSNdd0BxYKAcXvBJ2e','0987654321','local',NULL),(37,'2020-07-16 18:10:07','2020-07-16 18:10:07',NULL,'tramtran01299577036@gmail.com',_binary '\0','https://lh3.googleusercontent.com/a-/AOh14Gib-sIrgNUcoyXDO8_swqNaQLtf9FujcD9bvEu4',1,'tram tran',NULL,NULL,'google','114471024271270766885'),(38,'2020-07-17 17:28:07','2020-07-31 04:32:11','q9','tram01299577036@gmail.com',_binary '\0','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1330503490488802&height=250&width=250&ext=1598736731&hash=AeSNCDQ_2XRxAKM7',1,'Trần Thị Ngọc Trâm',NULL,'0987654321','facebook','1330503490488802'),(39,'2020-07-18 17:24:58','2020-07-18 17:24:58',NULL,'giathinh_pham98@yahoo.com',_binary '\0','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2926658437566085&height=250&width=250&ext=1597659898&hash=AeQjhwBexNZP6JOp',1,'Phạm Gia Thịnh',NULL,NULL,'facebook','2926658437566085'),(40,'2020-07-21 16:23:53','2020-07-21 16:25:53',NULL,'thamka@gmail.com',_binary '\0','haditham.jpg',1,'Hà Dĩ Thâm','$2a$10$S8ts3Bp0dW0jhRHVck9yaOoIpvmXAD6JhzCmGF10xhCfwuqi//T1y',NULL,'local',NULL),(41,'2020-07-31 04:18:38','2020-07-31 04:20:30','q9','duong@gmail.com',_binary '\0','dd.jpg',1,'Lý Dương Dương','$2a$10$GaryJ/oNqESqGgPK8YXzRewdm1Gc3fKD5jJMxusehyijC.jXbFugK','0987654362','local',NULL),(42,'2020-07-31 04:30:41','2020-07-31 04:31:43','q12','hoo@gmail.com',_binary '\0','hoo.jpg',1,'hoozaki nguyễn','$2a$10$LsihQ66yuqubiwH9psAgouWFs6l/TmV4lh5bQlFnzPdWH32PHvbh2','0987654375','local',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKrhfovtciq1l558cw6udg0h0d3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(2,1),(21,1),(24,1),(25,1),(26,1),(28,1),(29,1),(30,1),(32,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(3,2),(4,2),(22,2),(5,3),(6,3),(23,3),(33,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'furniturewebdemo6'
--

--
-- Dumping routines for database 'furniturewebdemo6'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-31  5:15:52
