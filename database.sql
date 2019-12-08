-- MySQL dump 10.13  Distrib 5.6.43, for Win32 (AMD64)
--
-- Host: localhost    Database: laba2
-- ------------------------------------------------------
-- Server version	5.6.43

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
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplines` (
  `id_disciplines` int(11) NOT NULL AUTO_INCREMENT,
  `name_disciplines` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_disciplines`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Owerwatch'),(2,'League of legends'),(3,'Dota 2'),(4,'Counter-Strike Global Offensive'),(5,'Fortnite');
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investors`
--

DROP TABLE IF EXISTS `investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investors` (
  `id_invest` int(11) NOT NULL AUTO_INCREMENT,
  `name_invest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_invest`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investors`
--

LOCK TABLES `investors` WRITE;
/*!40000 ALTER TABLE `investors` DISABLE KEYS */;
INSERT INTO `investors` VALUES (1,'G2A'),(2,'1xbet'),(3,'Betway '),(4,'Monster'),(5,'Mercedes');
/*!40000 ALTER TABLE `investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organisation` (
  `id_organis` int(11) NOT NULL AUTO_INCREMENT,
  `name_organis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_invest` int(11) NOT NULL,
  PRIMARY KEY (`id_organis`),
  KEY `id_invest` (`id_invest`),
  CONSTRAINT `organisation_ibfk_1` FOREIGN KEY (`id_invest`) REFERENCES `investors` (`id_invest`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisation`
--

LOCK TABLES `organisation` WRITE;
/*!40000 ALTER TABLE `organisation` DISABLE KEYS */;
INSERT INTO `organisation` VALUES (1,'G7',1),(2,'WESA',4),(3,'National Electronic Sports Commission (NeSC)',5),(4,'International e-Sports Federation',3);
/*!40000 ALTER TABLE `organisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `id_res` int(11) NOT NULL AUTO_INCREMENT,
  `name_res` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_teams` int(11) NOT NULL,
  PRIMARY KEY (`id_res`),
  KEY `id_teams` (`id_teams`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`id_teams`) REFERENCES `teams` (`id_teams`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,'First place',1),(2,'Second place',2),(3,'Third place',3),(4,'First place',4),(5,'Second place',5);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id_teams` int(11) NOT NULL AUTO_INCREMENT,
  `name_teams` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_organis` int(11) NOT NULL,
  `id_disciplines` int(11) NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_teams`),
  KEY `id_organis` (`id_organis`),
  KEY `id_disciplines` (`id_disciplines`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`id_organis`) REFERENCES `organisation` (`id_organis`),
  CONSTRAINT `teams_ibfk_2` FOREIGN KEY (`id_disciplines`) REFERENCES `disciplines` (`id_disciplines`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Virtus.pro',4,5,' — $10,081,211.15 призовых. Количество турниров 366.\r\n              Команда из России была основана в 2003 году. С осени 2009 по апрель 2011 команда приостанавливала свою работу, однако благодаря внушительным инвестициям вернулась в строй с октября 2015 года. Охват игр: Dota 2, Counter-Strike: Global Offensive, Quake Champions, Paladins.'),(2,'Fnatic',1,1,'— $10,936,028.77 призовых. Количество турниров 744.\r\n              Команда из Швеции берёт начало своего существования в 2004 году. Команда известна благодаря достижениям в CS: GO. Охват игр:  League of Legends, Halo 3, StarCraft II, Dota 2, Counter-Strike, Overwatch, Hearthstone, Heroes of the Storm, Vainglory.\r\n'),(3,'Newbee',2,3,'— $12,672,785.72 призовых. Количество турниров 125.\r\n              Подбираемся к верхушке ТОП 10 киберспортивных команд. На 3 месте у нас команда из Китая, снова таки достаточно молодая, основана в 2014 году. Команда специализируется исключительно на Dota 2.\r\n'),(4,'Evil Geniuses',4,4,'— $17,228,472.41 призовых. Количество турниров 705.\r\n              Команда из США, берёт начало своего существование ещё в далёком 1999 году. В основном они известны своими выступлениями по Dota 2, Counter-Strike 1.6 и StarCraft II, кроме этих дисциплин они также охватывают World of Warcraft, Quake Live, Super Street Fighter IV, Marvel Vs. Capcom 3, Mortal Kombat 9.\r\n'),(5,'Team Liquid',3,2,'— $20,435,509.67 призовых. Количество турниров 1235.\r\n              Ну и наконец мы добрались до 1 места в рейтинге ТОП 10 киберспортивных команд. Первое место занимает команда из Нидерландов, достаточно немолодая, основана в 2000 году. Имеет широкий охват киберспортивных дисциплин: Dota 2, Counter-Strike: Global Offensive, League of Legends, Hearthstone, Quake Champions, Rainbow Six Siege, StarCraft II, Street Fighter, Super Smash Bros. Организация провела рекордное количество турниров (более 1235).\r\n');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament` (
  `id_tour` int(11) NOT NULL AUTO_INCREMENT,
  `name_tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_disciplines` int(11) NOT NULL,
  PRIMARY KEY (`id_tour`),
  KEY `id_disciplines` (`id_disciplines`),
  CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`id_disciplines`) REFERENCES `disciplines` (`id_disciplines`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,'The International',3),(2,'CS:GO Global Invitational 2018',4),(3,'World Championship 2018',5),(4,'Overwatch World League Championship 2018',1),(5,'Blast Pro Series: Lisabon',2);
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-09  0:13:45
