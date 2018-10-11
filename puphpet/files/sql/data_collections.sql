-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: oopla
-- ------------------------------------------------------
-- Server version	5.6.32-78.1-log

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
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'Homepage','all','homepage','icons_sprite_180x60_Homepage.png','image/png',2621,'2017-08-20 09:34:43',1,1,NULL),(2,'Skill','skill','collection',NULL,NULL,NULL,NULL,4,0,NULL),(3,'Puzzle','puzzle','collection','puzzle_1.png','image/png',2448,'2015-12-10 13:22:08',20,1,NULL),(5,'Action','action-arcade','collection','strategy_1_(1).png','image/png',5532,'2015-12-10 13:27:42',19,1,NULL),(6,'Strategy','strategy','collection','action_1.png','image/png',4001,'2015-12-10 13:22:37',18,1,NULL),(12,'Dress up','dress-up','collection','dressup_1.png','image/png',4961,'2015-12-10 13:22:51',6,1,NULL),(17,'Management','management','collection','managment_1.png','image/png',3410,'2015-12-10 13:23:04',3,0,NULL),(25,'Racing','racing','collection','race_1.png','image/png',4830,'2015-12-10 13:23:13',8,1,NULL),(100,'Featured','featured','homepage',NULL,NULL,NULL,NULL,9,1,NULL),(101,'Russia and Ukraine','ru','homepage',NULL,NULL,NULL,NULL,10,1,NULL),(104,'South America','south-america','homepage',NULL,NULL,NULL,NULL,11,1,NULL),(105,'Western Europe','western-europe','homepage',NULL,NULL,NULL,NULL,12,1,NULL),(110,'Eastern Europe','eastern-europe','homepage',NULL,NULL,NULL,NULL,13,1,NULL),(111,'English Speaking','english-speaking','homepage',NULL,NULL,NULL,NULL,14,1,NULL),(112,'Arab/Muslim','arabmuslim','homepage',NULL,NULL,NULL,NULL,15,1,NULL),(113,'Food','Food','collection','icons180x60xx.png','image/png',3171,'2015-12-10 13:23:32',2,1,'Always wanted to play as a professional chef or baker? We have hundreds of cooking and food games to choose from! '),(114,'Disney','disney','','disney.png','image/png',1955,'2015-12-03 13:08:56',21,1,NULL),(115,'Zombie','zombie','',NULL,NULL,NULL,NULL,16,1,NULL),(116,'Alien','alien','collection','icons180x60f_(2).png','image/png',3836,'2015-12-10 13:27:27',17,1,NULL),(118,'Bubble Shooter','bubble-shooter','collection','icons_sprite_180x60_bubbles.png','image/png',2969,'2016-12-18 09:32:27',7,1,NULL),(119,'Multiplayer','Multiplayer-Games','collection',NULL,NULL,NULL,NULL,22,0,NULL),(120,'HTML5','html5','homepage',NULL,NULL,NULL,NULL,23,0,NULL),(122,'Bejeweled','bejeweled','collection',NULL,NULL,NULL,NULL,24,0,NULL),(123,'Mahjong','mahjong','collection',NULL,NULL,NULL,NULL,25,0,NULL),(124,'Parking','parking','collection',NULL,NULL,NULL,NULL,26,0,NULL),(125,'Seasonal','seasonal','collection',NULL,NULL,NULL,NULL,27,0,NULL),(126,'Card Games','card-games','collection',NULL,NULL,NULL,NULL,27,0,NULL),(128,'Cooking','cooking','collection',NULL,NULL,NULL,NULL,28,0,NULL),(129,'Sports','sports','collection',NULL,NULL,NULL,NULL,29,0,NULL),(130,'Animal','animal','collection',NULL,NULL,NULL,NULL,30,0,NULL),(131,'Adventure','adventure','collection',NULL,NULL,NULL,NULL,31,0,NULL),(132,'Misc','misc','collection',NULL,NULL,NULL,NULL,32,0,NULL),(133,'Make Over','make-over','collection',NULL,NULL,NULL,NULL,33,0,NULL),(134,'Tower Defense','tower-defense','collection',NULL,NULL,NULL,NULL,34,0,NULL),(135,'Girls','girls','collection',NULL,NULL,NULL,NULL,35,0,NULL),(136,'Money Movers','money-movers','collection',NULL,NULL,NULL,NULL,36,0,NULL),(137,'Moto X3M','moto-x3m','collection',NULL,NULL,NULL,NULL,37,0,NULL),(138,'Dynamons','dynamons','collection',NULL,NULL,NULL,NULL,38,0,NULL),(139,'Wheely','wheely','collection',NULL,NULL,NULL,NULL,39,0,NULL),(140,'Fireboy and Watergirl','fireboy-and-watergirl','collection',NULL,NULL,NULL,NULL,40,0,NULL),(141,'Bomb It','bomb-it','collection',NULL,NULL,NULL,NULL,41,0,NULL),(142,'Princess Juliet','princess-juliet','collection',NULL,NULL,NULL,NULL,42,0,NULL),(143,'Kizi','kizi','collection',NULL,NULL,NULL,NULL,43,0,NULL),(144,'Papa','papa','collection',NULL,NULL,NULL,NULL,44,0,NULL),(145,'Fancy Pants','fancy-pants','collection',NULL,NULL,NULL,NULL,45,0,NULL),(146,'3 Pandas','3-pandas','collection',NULL,NULL,NULL,NULL,46,0,NULL),(147,'Strikeforce Kitty','strikeforce-kitty','collection',NULL,NULL,NULL,NULL,47,0,NULL),(148,'Bob The Robber','bob-the-robber','collection',NULL,NULL,NULL,NULL,48,0,NULL),(149,'Test2','test','',NULL,NULL,NULL,NULL,49,0,'');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-05 11:01:26
