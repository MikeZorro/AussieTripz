-- MySQL dump 10.13  Distrib 8.0.28, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: AussieTripz
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `attractions`
--

DROP TABLE IF EXISTS `attractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attractions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `state_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh4ku237kp86euq6c38kb7v3p0` (`state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attractions`
--

LOCK TABLES `attractions` WRITE;
/*!40000 ALTER TABLE `attractions` DISABLE KEYS */;
INSERT INTO `attractions` VALUES (1,'Amazing National Park','Kangaroo Island',1),(2,'Prestine coral reef','Ningaloo Reef',2),(3,'Architectural wonder','Syney Opera House',3),(4,'Ancient rain forest, watch out for Crocks!','Daintree Rainforest',4),(5,'Marvelous white sand beach','Wineglass Bay',5),(6,'Unique sandstone formations','12 Apostles',6),(7,'Diverse bio reserve on ancient aboriginal land','Kakadu National Park',7),(8,'Oz capital','Canberra',8),(25,'States amazing capital','Adelaide',1),(26,'Mining town, where people live in houses digged out in rock','Coober Pedy',1),(27,'Amazing natural georges and canyons','Karijini National Park',2),(28,'Come around to swim with sea lions!','Jurien Bay',2),(29,'Amazing mangrove forests and pristine beaches','Broome',2),(30,'See amazing cliffs and amazing canyons','Kalbarri National Park',2),(31,'Have fun playing with dolphins!','Monkey Mia',2),(32,'Worlds famous surfing town','Bayron Bay',3),(33,'Australia\'s tallest waterfall','Wallaman Falls',4),(34,'World\'s largest coral reef','Great Barrier Reef',4),(35,'Jaw-dropping islands on Great Barrier Reef','Whitsunday Islands',4),(36,'Come hike Mt Kosciuszko!','Australian Alps',6),(37,'Nature reserve with lots of Wallabies, Emus and Wombats!','Willsons Promotory',6),(38,'Australia\'s answer to Grand Canyon','Kings Canyon',7),(39,'Famous rock monolith','Uluru',7),(40,'Have a break on long roadtrip and take a dip in hot pools','Mataranka Hot Springs',7);
/*!40000 ALTER TABLE `attractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attractions_plans`
--

DROP TABLE IF EXISTS `attractions_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attractions_plans` (
  `attraction_id` bigint NOT NULL,
  `plans_id` bigint NOT NULL,
  KEY `FKfbm9150n9e2y7x6vae5qt5egw` (`plans_id`),
  KEY `FK2x6tvsvgxc53hf1x8m1uotku8` (`attraction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attractions_plans`
--

LOCK TABLES `attractions_plans` WRITE;
/*!40000 ALTER TABLE `attractions_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `attractions_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbybv5po44ssyv6svnv062dwrf` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,NULL,NULL,NULL),(2,NULL,NULL,NULL),(3,NULL,NULL,NULL),(4,NULL,NULL,NULL),(5,'Super Plan','Mikes Plan',1),(6,'Super Plan','Mikes Plan',NULL),(7,'Plan b. Wrazie gdyby cos nie pooszlo','Second plan',1),(8,'sprawdzam czy dziala','sesja',12),(9,'eureka to dziala','sesja 2',12),(10,'super ksiega','mike',NULL),(11,'szmpan z wiadra','plan na dzis',NULL),(12,'opis','mike',14),(13,'super przetestowane','testujemy plan',18);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans_attractions`
--

DROP TABLE IF EXISTS `plans_attractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans_attractions` (
  `plan_id` bigint NOT NULL,
  `attractions_id` bigint NOT NULL,
  KEY `FKje0l0dghoda8vt6cc6ccajkt5` (`attractions_id`),
  KEY `FKaccwvjppv1eutw2fr0c4nugev` (`plan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans_attractions`
--

LOCK TABLES `plans_attractions` WRITE;
/*!40000 ALTER TABLE `plans_attractions` DISABLE KEYS */;
INSERT INTO `plans_attractions` VALUES (5,8),(5,6),(5,5),(5,4),(5,3),(5,1),(6,4),(6,2),(6,5),(6,4),(6,6),(6,4),(6,3),(6,3),(6,1),(6,3),(5,2),(11,1),(11,2),(11,3),(11,5),(11,6),(10,4),(10,3),(10,2),(10,1),(10,7),(10,5),(12,1),(12,2),(12,3),(12,4),(13,6),(13,5),(13,4),(13,3),(13,2),(13,1),(13,7),(13,8),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6);
/*!40000 ALTER TABLE `plans_attractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rated_attractions`
--

DROP TABLE IF EXISTS `rated_attractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rated_attractions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rating` double NOT NULL,
  `attraction_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKotu9s05rbo2r355iodjxn5tcy` (`attraction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rated_attractions`
--

LOCK TABLES `rated_attractions` WRITE;
/*!40000 ALTER TABLE `rated_attractions` DISABLE KEYS */;
INSERT INTO `rated_attractions` VALUES (1,6,1),(2,8,3),(3,9,3),(4,6,4),(5,7,2),(6,8,5),(7,9,NULL),(8,0,NULL),(9,8,NULL),(10,8,NULL),(11,8,NULL),(12,8,NULL),(13,8,1),(14,8,1),(15,8,1),(16,8,1),(17,0,1),(18,0,1),(19,0,1),(20,8,1),(21,6,6),(22,7,7),(23,8,8),(24,4,1),(25,7.4,7);
/*!40000 ALTER TABLE `rated_attractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `capital` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Adelaide','South Australia'),(2,'Perth','Western Australia '),(3,'Sydney','New South Wales'),(4,'Brisbane','Queensland'),(5,'Hobart','Tasmania'),(6,'Melbourne','Victoria'),(7,'Darwin','Northern Territory'),(8,'Canberra','Australian Capital Territory');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'email@onet.pl','Umpalumpa',NULL),(7,'test@wp.pl','MagicMike','eloelo'),(8,'test@wp.pl','MagicMike','eloelo'),(9,'soroslaw@gmail.com','MagicMike','aaaa'),(11,'soroczynski.m@gmail.com','Proba 3','aaaa'),(12,'soroczynski.m@gmail.com','Proba kolejna','srynn'),(13,'soroslaw@gmail.com','MagicMike','$2a$10$vfpJ3ZeaQTnYsLrgCMJxbeJsgplDFYq72G9i8R25VdS64xGJ8Je/O'),(14,'soroczynski.m@gmail.com','MagicMike','$2a$10$W.8JyxLfYi3nlHn3Ue2keu8wPYrjNozTw.1Ld1zz59DIdZUVZ6H0i'),(15,'soroczynski.m@gmail.com','Szalony','$2a$10$/vYsBtbUuSooMi5oMhT7n.pH38owRh0wnAMo7CKGn.3lAAFuAKjye'),(16,'soroczynski.m@gmail.com','ogowanie',NULL),(17,'soroslaw@gmail.com','test ostat','$2a$10$Zc74ncoK.S7./AAXJsueU.kIHSFkhNAUbRFzhHO7f51vt5RMojJG2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-14  9:06:10
