-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Reservation_System
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Classroom`
--

DROP TABLE IF EXISTS `Classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Classroom` (
  `classroom_name` char(20) NOT NULL,
  `capacity` int DEFAULT NULL,
  `fare` int DEFAULT NULL,
  `location` char(10) DEFAULT NULL,
  `light` int DEFAULT NULL,
  `air` int DEFAULT NULL,
  `telephone_number` char(20) DEFAULT NULL,
  PRIMARY KEY (`classroom_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classroom`
--

LOCK TABLES `Classroom` WRITE;
/*!40000 ALTER TABLE `Classroom` DISABLE KEYS */;
INSERT INTO `Classroom` VALUES ('﻿2101',100,400,'大宮',1,1,'476832020'),('2202',70,200,'田町',1,0,'367222600'),('2203',100,300,'大宮',1,1,'476832020'),('2301',100,300,'豊洲',0,1,'358597000'),('3101',70,100,'豊洲',0,0,'358597000'),('斎藤記念館',400,800,'大宮',1,1,'476832020');
/*!40000 ALTER TABLE `Classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external`
--

DROP TABLE IF EXISTS `external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external` (
  `telephone_number` char(20) NOT NULL,
  `profession` char(30) DEFAULT NULL,
  PRIMARY KEY (`telephone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external`
--

LOCK TABLES `external` WRITE;
/*!40000 ALTER TABLE `external` DISABLE KEYS */;
INSERT INTO `external` VALUES ('435468409','会社員'),('﻿578689523','デザイナー');
/*!40000 ALTER TABLE `external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservation` (
  `classroom_name` char(20) NOT NULL,
  `telephone_number` char(20) NOT NULL,
  `content` char(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `time` int DEFAULT NULL,
  `lighting_time` int DEFAULT NULL,
  `usage_fee` int DEFAULT NULL,
  `carry` int DEFAULT NULL,
  `car` int DEFAULT NULL,
  `approval` int DEFAULT NULL,
  `contact` int DEFAULT NULL,
  PRIMARY KEY (`classroom_name`,`telephone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES ('2101','0801111111','','2012-08-09 00:00:00',100,0,0,0,0,1,0),('2101','0801112222','サークル','2020-07-22 09:00:12',20,0,0,0,0,0,0),('﻿2101','801112222','基礎力学','2020-07-20 09:00:00',100,100,0,0,0,1,1),('2101','802223333','微分積分','2020-07-20 09:00:00',100,100,0,0,0,2,0),('2202','903334444','線形代数','2020-07-21 10:50:00',100,100,0,0,0,0,0),('2203','904445555','地域活動','2020-07-25 10:00:00',60,60,800,1,1,0,0),('2301','905556666','英語購読','2020-07-21 10:50:00',100,100,0,0,0,0,0),('2301','906667777','中国語','2020-07-22 13:10:00',100,100,0,0,0,0,0),('3101','907778888','部活','2020-07-20 18:40:00',120,120,0,1,1,2,0),('斉藤記念館','435468409','講演会','2020-07-26 13:00:00',180,180,10000,1,1,0,0),('斉藤記念館','578689523','リハーサル','2020-07-27 15:00:00',180,180,0,1,1,0,0),('斉藤記念館','908889999','基礎表現演習','2020-07-22 15:00:00',100,100,0,1,0,0,0);
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `telephone_number` char(20) NOT NULL,
  `studentID` char(20) DEFAULT NULL,
  PRIMARY KEY (`telephone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('801112222','cy18301'),('802223333','cy18302'),('903334444','cy18203'),('904445555','cy18204');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student_Section`
--

DROP TABLE IF EXISTS `Student_Section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Section` (
  `telephone_number` char(20) NOT NULL,
  `place` char(30) DEFAULT NULL,
  `campus` char(10) DEFAULT NULL,
  `person` char(20) DEFAULT NULL,
  PRIMARY KEY (`telephone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_Section`
--

LOCK TABLES `Student_Section` WRITE;
/*!40000 ALTER TABLE `Student_Section` DISABLE KEYS */;
INSERT INTO `Student_Section` VALUES (' 03-5859-7000','〒135-8548 東京都江東区豊洲３丁目７−５','豊洲','遠藤'),(' 03-6722-2600','〒108-8548　東京都港区芝浦3-9-14','芝浦','石田'),('﻿ 048-683-2020','〒337-8570　埼玉県さいたま市見沼区大字深作307番地','大宮','伊藤');
/*!40000 ALTER TABLE `Student_Section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `telephone_number` char(20) NOT NULL,
  `teacherID` char(20) DEFAULT NULL,
  PRIMARY KEY (`telephone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('﻿905556666','t001'),('906667777','t002'),('907778888','t003'),('908889999','t004');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `telephone_number` char(20) NOT NULL,
  `name` char(20) DEFAULT NULL,
  PRIMARY KEY (`telephone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('435468409','松田恵美'),('578689523','斎藤佳代子'),('﻿801112222','野田真由美'),('802223333','芥川敦'),('903334444','松本清'),('904445555','内久保綾子'),('905556666','青木太輔'),('906667777','佐々木洋子'),('907778888','倉持剛'),('908889999','山崎和義');
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

-- Dump completed on 2020-08-08 16:50:41
