-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: college
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `yemets_classroom`
--

DROP TABLE IF EXISTS `yemets_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_classroom` (
  `classroom_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`classroom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_classroom`
--

LOCK TABLES `yemets_classroom` WRITE;
/*!40000 ALTER TABLE `yemets_classroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `yemets_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_course`
--

DROP TABLE IF EXISTS `yemets_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `special_id` int NOT NULL,
  `hours` smallint NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `special_idx` (`special_id`),
  KEY `spec_idx` (`special_id`),
  CONSTRAINT `spec` FOREIGN KEY (`special_id`) REFERENCES `yemets_special` (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_course`
--

LOCK TABLES `yemets_course` WRITE;
/*!40000 ALTER TABLE `yemets_course` DISABLE KEYS */;
INSERT INTO `yemets_course` VALUES (1,'Основы алгоритмизации',1,90),(2,'Электротехника',3,106),(3,'Основы программирования',5,52),(4,'Мультимедиа технологии',1,36),(5,'Техническая механика',6,96),(6,'Промышленная электротехника',4,108),(7,'АИС',1,86);
/*!40000 ALTER TABLE `yemets_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_day`
--

DROP TABLE IF EXISTS `yemets_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_day` (
  `day_id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_day`
--

LOCK TABLES `yemets_day` WRITE;
/*!40000 ALTER TABLE `yemets_day` DISABLE KEYS */;
INSERT INTO `yemets_day` VALUES (1,'Понед.'),(2,'Вторник'),(3,'Среда'),(4,'Четверг'),(5,'Пятница'),(6,'Суббота'),(7,'Воскр.');
/*!40000 ALTER TABLE `yemets_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_gender`
--

DROP TABLE IF EXISTS `yemets_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_gender` (
  `gender_id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_gender`
--

LOCK TABLES `yemets_gender` WRITE;
/*!40000 ALTER TABLE `yemets_gender` DISABLE KEYS */;
INSERT INTO `yemets_gender` VALUES (1,'Мужской'),(2,'Женский');
/*!40000 ALTER TABLE `yemets_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_graduate`
--

DROP TABLE IF EXISTS `yemets_graduate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_graduate` (
  `graduate_id` int NOT NULL AUTO_INCREMENT,
  `gruppa_id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`graduate_id`),
  KEY `gruppa_idx` (`gruppa_id`),
  KEY `teacher_idx` (`user_id`),
  KEY `course_grad_idx` (`course_id`),
  CONSTRAINT `course_grad` FOREIGN KEY (`course_id`) REFERENCES `yemets_course` (`course_id`),
  CONSTRAINT `gruppa_grad` FOREIGN KEY (`gruppa_id`) REFERENCES `yemets_gruppa` (`gruppa_id`),
  CONSTRAINT `teacher_grad` FOREIGN KEY (`user_id`) REFERENCES `yemets_teacher` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_graduate`
--

LOCK TABLES `yemets_graduate` WRITE;
/*!40000 ALTER TABLE `yemets_graduate` DISABLE KEYS */;
/*!40000 ALTER TABLE `yemets_graduate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_graduate_time`
--

DROP TABLE IF EXISTS `yemets_graduate_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_graduate_time` (
  `graduate_time_id` int NOT NULL AUTO_INCREMENT,
  `graduate_id` int NOT NULL,
  `day_id` tinyint NOT NULL,
  `lesson_num_id` int NOT NULL,
  `classroom_id` int NOT NULL,
  PRIMARY KEY (`graduate_time_id`),
  KEY `classroom_idx` (`classroom_id`),
  KEY `day_idx` (`day_id`),
  KEY `lesson_num_idx` (`lesson_num_id`),
  KEY `graduate_idx` (`graduate_id`),
  CONSTRAINT `classroom` FOREIGN KEY (`classroom_id`) REFERENCES `yemets_classroom` (`classroom_id`),
  CONSTRAINT `day` FOREIGN KEY (`day_id`) REFERENCES `yemets_day` (`day_id`),
  CONSTRAINT `graduate` FOREIGN KEY (`graduate_id`) REFERENCES `yemets_graduate` (`graduate_id`),
  CONSTRAINT `lesson_num` FOREIGN KEY (`lesson_num_id`) REFERENCES `yemets_lesson_num` (`lesson_num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_graduate_time`
--

LOCK TABLES `yemets_graduate_time` WRITE;
/*!40000 ALTER TABLE `yemets_graduate_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `yemets_graduate_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_gruppa`
--

DROP TABLE IF EXISTS `yemets_gruppa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_gruppa` (
  `gruppa_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `special_id` int NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`gruppa_id`),
  KEY `special_idx` (`special_id`),
  CONSTRAINT `special` FOREIGN KEY (`special_id`) REFERENCES `yemets_special` (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_gruppa`
--

LOCK TABLES `yemets_gruppa` WRITE;
/*!40000 ALTER TABLE `yemets_gruppa` DISABLE KEYS */;
INSERT INTO `yemets_gruppa` VALUES (1,'101 ИС',1,'2001-09-20','2001-07-20'),(2,'102 АС',3,'2001-09-20','2001-07-20'),(3,'302 ИС',1,'2001-09-20','2001-07-20'),(4,'302 АС',3,'2001-09-20','2001-07-20'),(5,'202 С',6,'2001-09-20','2001-07-20'),(6,'404 П',5,'2001-09-20','2001-07-20'),(7,'303 ЭЛ',4,'2001-09-20','2001-07-20');
/*!40000 ALTER TABLE `yemets_gruppa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_lesson_num`
--

DROP TABLE IF EXISTS `yemets_lesson_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_lesson_num` (
  `lesson_num_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time_lesson` time NOT NULL,
  `year_lesson` year NOT NULL,
  PRIMARY KEY (`lesson_num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_lesson_num`
--

LOCK TABLES `yemets_lesson_num` WRITE;
/*!40000 ALTER TABLE `yemets_lesson_num` DISABLE KEYS */;
/*!40000 ALTER TABLE `yemets_lesson_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_otdel`
--

DROP TABLE IF EXISTS `yemets_otdel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_otdel` (
  `otdel_id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`otdel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_otdel`
--

LOCK TABLES `yemets_otdel` WRITE;
/*!40000 ALTER TABLE `yemets_otdel` DISABLE KEYS */;
INSERT INTO `yemets_otdel` VALUES (1,'Информационные системы'),(2,'Технические специальности'),(3,'Автоматизация и управление');
/*!40000 ALTER TABLE `yemets_otdel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_special`
--

DROP TABLE IF EXISTS `yemets_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_special` (
  `special_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `otdel_id` smallint NOT NULL,
  PRIMARY KEY (`special_id`),
  KEY `otdel_idx` (`otdel_id`),
  CONSTRAINT `otdel_spec` FOREIGN KEY (`otdel_id`) REFERENCES `yemets_otdel` (`otdel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_special`
--

LOCK TABLES `yemets_special` WRITE;
/*!40000 ALTER TABLE `yemets_special` DISABLE KEYS */;
INSERT INTO `yemets_special` VALUES (1,'Информационные системы',1),(2,'Нефтегазовое дело',2),(3,'Автоматизация и управление',3),(4,'Электроснабжение',3),(5,'ВТ и ПО',1),(6,'Строительство и эксплуатация зданий и соружений',2);
/*!40000 ALTER TABLE `yemets_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_student`
--

DROP TABLE IF EXISTS `yemets_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_student` (
  `user_id` bigint NOT NULL,
  `gruppa_id` int NOT NULL,
  `num_zach` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `gruppa_idx` (`gruppa_id`),
  CONSTRAINT `gruppa` FOREIGN KEY (`gruppa_id`) REFERENCES `yemets_gruppa` (`gruppa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_student`
--

LOCK TABLES `yemets_student` WRITE;
/*!40000 ALTER TABLE `yemets_student` DISABLE KEYS */;
INSERT INTO `yemets_student` VALUES (6,1,'К1020'),(7,2,'А5292'),(8,2,'В8578'),(9,5,'Р5285'),(10,4,'Ф5285'),(11,1,'К7485'),(12,3,'А2585');
/*!40000 ALTER TABLE `yemets_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_teacher`
--

DROP TABLE IF EXISTS `yemets_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_teacher` (
  `user_id` bigint NOT NULL,
  `otdel_id` smallint NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `otdel_idx` (`otdel_id`),
  CONSTRAINT `otdel` FOREIGN KEY (`otdel_id`) REFERENCES `yemets_otdel` (`otdel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_teacher`
--

LOCK TABLES `yemets_teacher` WRITE;
/*!40000 ALTER TABLE `yemets_teacher` DISABLE KEYS */;
INSERT INTO `yemets_teacher` VALUES (1,1),(2,1),(3,2),(5,2),(4,3);
/*!40000 ALTER TABLE `yemets_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yemets_user`
--

DROP TABLE IF EXISTS `yemets_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemets_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `patronomic` varchar(50) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `gender_id` tinyint NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `gender_user_idx` (`gender_id`),
  CONSTRAINT `gender_user` FOREIGN KEY (`gender_id`) REFERENCES `yemets_gender` (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemets_user`
--

LOCK TABLES `yemets_user` WRITE;
/*!40000 ALTER TABLE `yemets_user` DISABLE KEYS */;
INSERT INTO `yemets_user` VALUES (1,'Иванов','Иван','Иванович',NULL,NULL,1,'2001-01-20'),(2,'Петров','Петр','Петрович',NULL,NULL,1,'2001-01-20'),(3,'Козлов','Иван','Афанасьевич',NULL,NULL,1,'2001-01-20'),(4,'Чурюмова','Кристина','Федоровна',NULL,NULL,2,'2001-01-20'),(5,'Васильев','Феофан','Александрович',NULL,NULL,1,'2001-01-20'),(6,'Федорова','Милана','Андреевна',NULL,NULL,2,'2001-01-20'),(7,'Нуржанов','Нуржан','Нуржанович',NULL,NULL,1,'2001-01-20'),(8,'Кайратов','Кайрат','Канатович',NULL,NULL,1,'2001-01-20'),(9,'Золотая','Ирина','Кайратовна',NULL,NULL,2,'2001-01-20'),(10,'Серая','Арина','Радионовна',NULL,NULL,2,'2001-01-20'),(11,'Петухов','Виталий','Фадеевич',NULL,NULL,1,'2001-01-20'),(12,'Котова','Аурелия','Ароновна',NULL,NULL,2,'2001-01-20');
/*!40000 ALTER TABLE `yemets_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-19 22:48:22
