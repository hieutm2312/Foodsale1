-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: websales
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `adminproduct`
--

DROP TABLE IF EXISTS `adminproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminproduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `date_edit` varchar(255) NOT NULL,
  `info_edit` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_adminproduct` (`product_id`),
  KEY `FK_user_adminproduct` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminproduct`
--

LOCK TABLES `adminproduct` WRITE;
/*!40000 ALTER TABLE `adminproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `date_payment` varchar(255) NOT NULL,
  `info_payment` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_bill` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,1,'17:3:40 25/7/2023','online'),(2,2,'17:10:3 25/7/2023','offline'),(3,1,'18:57:48 2/8/2023','online'),(4,3,'21:19:22 11/8/2023','offline'),(5,4,'6:50:54 12/8/2023','online'),(6,4,'21:46:46 13/8/2023','offline'),(7,3,'21:56:26 13/8/2023','offline'),(8,3,'9:59:25 15/8/2023','offline');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billproduct`
--

DROP TABLE IF EXISTS `billproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billproduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quatity` int NOT NULL,
  `unit_price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bill_billproduct` (`bill_id`),
  KEY `FK_product_billproduct` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billproduct`
--

LOCK TABLES `billproduct` WRITE;
/*!40000 ALTER TABLE `billproduct` DISABLE KEYS */;
INSERT INTO `billproduct` VALUES (3,3,2,2,2000),(6,6,11,5,75000),(7,7,12,10,250000),(8,7,7,10,360000),(9,8,14,5,175000),(10,8,11,6,90000);
/*!40000 ALTER TABLE `billproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `extra_date` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `quatity` int NOT NULL,
  `size_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_cart` (`product_id`),
  KEY `FK_size_cart` (`size_id`),
  KEY `FK_user_cart` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `star` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_comment` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (5,'ngon','Nguyen Thi Thanh Binh',11,5),(6,'ngon, giòn','Tran Minh ',12,5),(7,'ngon, ngọt','Tran Minh ',7,5),(8,'ngon','Tran Minh ',14,5),(9,'ngon qua','Tran Minh ',11,5);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(255) NOT NULL,
  `describes` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'pink','Trà làm từ đào','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/tra-dao.jpg?alt=media&token=19e925b8-8cfa-4c14-b8eb-9850f8129c66','Đồ uống','Trà đào',35000),(2,'green','Trà làm từ táo tây','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/tra-tao.jpeg?alt=media&token=2026ed5e-e67b-454e-a8eb-f2ccd837bfb1','Đồ uống','Trà táo',30000),(3,'pink','Trà làm từ bưởi diễn','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/tra-buoi.jpg?alt=media&token=4f2f8c76-26ec-4047-a340-5e474d8f3527','Đồ uống','Trà bưởi',26000),(4,'brown','Trà làm từ bí đao ','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/tra-bi-dao.jpg?alt=media&token=8433b43b-6f48-4515-86f3-d620635e7c9e','Đồ uống','Trà bí đao',32000),(5,'green','Trà làm từ sữa, thạch','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/tra-sua-matcha.jpg?alt=media&token=08906d15-f86c-4ee3-a177-12e6fec5b3bc','Đồ uống','Trà sữa matcha',45000),(6,'red','Trà làm từ dâu tây','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/tra-dau.jpg?alt=media&token=28ff8f84-c830-4f77-aa7f-553c655116d9','Đồ uống','Trà dâu',35000),(7,'orange','Trà làm từ quất','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/tra-quat.jpg?alt=media&token=4ebe123f-4b28-4d89-a827-2d6d5ca74191','Đồ uống','Trà quất',36000),(8,'yellow','Pizza mix đủ vị','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/cach-lam-pizza-thap-cam-2.jpg?alt=media&token=7743de63-53da-42fb-94ad-69b4f7e0dd8d','Đồ ăn nhanh','Pizza thập cẩm',65000),(9,'yellow','Cá viên chiên giòn ','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/cavien-1631341014-2350-1631341072.jpg?alt=media&token=8ecf4ce1-9dba-47bb-9f26-2b889fd57536','Đồ ăn nhanh','Cá viên chiên',35000),(10,'red','Tôm chiên bột giòn','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/banh-tom-ho-tay-mon-dac-san-cua-ha-noi-ai-cung-yeu-thich.jpg?alt=media&token=9f5ab4a9-995c-402d-948c-eb8dd670bc76','Đồ ăn nhanh','Bánh tôm chiên',47000),(11,'red','Xúc xích rán','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/xuc-xich-bao-nhieu-calo.jpg?alt=media&token=75824098-5d67-4137-979e-bb3a5a90e22d','Đồ ăn nhanh','Xúc xích',15000),(12,'yellow','Làm từ khoai tây','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/image-10.png.webp?alt=media&token=87f64439-fb7c-43c4-9e98-205b53821ad4','Đồ ăn nhanh','Khoai tây chiên',25000),(13,'yellow','Bánh tráng mix đủ vị','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/maxresdefault.jpg?alt=media&token=9ad662d1-89e6-481e-8786-90e52df69806','Đồ ăn nhanh','Bánh tráng trộn',33000),(14,'yellow','Cơm rang mix nhiều vị','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/rang-com-vang-uom-5.webp?alt=media&token=5b088b80-dded-4a15-940b-f84e0c2d7f38','Món ăn','Cơm rang thập cẩm',35000),(15,'brown','Cơm rang thịt bò hảo hạng','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/cach-lam-com-rang-dua-bo-tai-nha-ngon-nhu-ngoai-hang-202201061628031278.jpg?alt=media&token=47ab0dc9-3983-40a9-8882-db4851f9fd01','Món ăn','Cơm rang dưa bò',45000),(16,'yellow','Cơm rang + đùi gà sốt','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/com-chien-ga-xoi-mo-thumbnail.jpg?alt=media&token=6e8e1a32-5820-47c2-8293-23a721ef9269','Món ăn','Cơm rang đùi gà',50000),(17,'yellow','Mỳ dành cho người ăn chay','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/Screenshot-2021-10-06-101702-1200x675.png?alt=media&token=e3600745-39bc-43a2-b48d-f74d46fe7c88','Món ăn','Mỳ xào chay',43000),(18,'red','Mỳ mix tôm, cua, thịt, ...','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/Screenshot-2021-10-06-101702-1200x675.png?alt=media&token=5360a976-f619-47c9-8271-488ebe2affc9','Món ăn','Mỳ sào hải sản',55000),(19,'red','Mỳ mix đủ vị','https://firebasestorage.googleapis.com/v0/b/test-62604.appspot.com/o/9-1200x676-1.jpg?alt=media&token=8a5e2064-e806-42a6-a86c-e3d6f2b37a34','Món ăn','Mỳ sào thập cẩm',47000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productsize`
--

DROP TABLE IF EXISTS `productsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsize` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `size_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_productsize` (`product_id`),
  KEY `FK_size_productsize` (`size_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsize`
--

LOCK TABLES `productsize` WRITE;
/*!40000 ALTER TABLE `productsize` DISABLE KEYS */;
INSERT INTO `productsize` VALUES (1,7,30,1),(2,6,15,1),(3,8,50,1),(4,9,30,1),(5,10,50,1),(6,11,39,1),(7,12,40,1),(8,13,70,1),(9,14,45,1),(10,15,50,1),(11,16,200,1),(12,17,500,1),(13,18,100,1),(14,19,70,1),(15,20,50,1),(16,21,60,1),(17,22,50,1),(18,23,60,1),(19,24,50,1);
/*!40000 ALTER TABLE `productsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `sale` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'1'),(2,'1'),(3,'1'),(4,'1'),(5,'1'),(6,'1'),(7,'1'),(8,'1'),(9,'1'),(10,'1'),(11,'1'),(12,'1'),(13,'1'),(14,'1'),(15,'1'),(16,'1'),(17,'1'),(18,'1'),(19,'1');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `is_admin` int NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ipsum aliqua Provi','Neque laboris qui vo','In atque quod in sun','Dicta perferendis en',1,'','123','Similique Nam corpor','abcxyz'),(2,'Nam Dinh','23/12/2001','Tran Minh Hieu','Nam',0,'','hieu761321','0966895615','s2tranminhhieus2@gmail.com'),(3,'Ha Noi','26/06/2001','Tran Minh ','Nam',0,'','hieu2312','098765432','hieu2312@gmail.com'),(4,'Ha Noi','26/06/2001','Nguyen Thi Thanh Binh','Nu',0,'','thanhbinh','098765432','thanhbinh2606@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-15 22:33:21
