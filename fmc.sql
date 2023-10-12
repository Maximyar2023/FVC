-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: fmc
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `valutes`
--

DROP TABLE IF EXISTS `valutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valutes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_valutes` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `NumCode` int DEFAULT NULL,
  `CharCode` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `Nominal` int DEFAULT NULL,
  `Name` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `Value` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `VunitRate` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valutes`
--

LOCK TABLES `valutes` WRITE;
/*!40000 ALTER TABLE `valutes` DISABLE KEYS */;
INSERT INTO `valutes` VALUES (1,'R01010',36,'AUD',1,'Австралийский доллар','62.2998','62.2998'),(2,'R01020A',944,'AZN',1,'Азербайджанский манат','57.0558','57.0558'),(3,'R01035',826,'GBP',1,'Фунт стерлингов Соединенного королевства','119.4200','119.42'),(4,'R01060',51,'AMD',100,'Армянских драмов','24.3883','0.243883'),(5,'R01090B',933,'BYN',1,'Белорусский рубль','29.4808','29.4808'),(6,'R01100',975,'BGN',1,'Болгарский лев','52.5888','52.5888'),(7,'R01115',986,'BRL',1,'Бразильский реал','19.2096','19.2096'),(8,'R01135',348,'HUF',100,'Венгерских форинтов','26.6902','0.266902'),(9,'R01150',704,'VND',10000,'Вьетнамских донгов','40.3020','0.0040302'),(10,'R01200',344,'HKD',1,'Гонконгский доллар','12.4225','12.4225'),(11,'R01210',981,'GEL',1,'Грузинский лари','35.9773','35.9773'),(12,'R01215',208,'DKK',1,'Датская крона','13.7933','13.7933'),(13,'R01230',784,'AED',1,'Дирхам ОАЭ','26.4075','26.4075'),(14,'R01235',840,'USD',1,'Доллар США','96.9948','96.9948'),(15,'R01239',978,'EUR',1,'Евро','103.0350','103.035'),(16,'R01240',818,'EGP',10,'Египетских фунтов','31.3955','3.13955'),(17,'R01270',356,'INR',10,'Индийских рупий','11.6522','1.16522'),(18,'R01280',360,'IDR',10000,'Индонезийских рупий','61.7408','0.00617408'),(19,'R01335',398,'KZT',100,'Казахстанских тенге','20.3437','0.203437'),(20,'R01350',124,'CAD',1,'Канадский доллар','71.3040','71.304'),(21,'R01355',634,'QAR',1,'Катарский риал','26.6469','26.6469'),(22,'R01370',417,'KGS',10,'Киргизских сомов','10.8775','1.08775'),(23,'R01375',156,'CNY',1,'Китайский юань','13.2840','13.284'),(24,'R01500',498,'MDL',10,'Молдавских леев','53.3340','5.3334'),(25,'R01530',554,'NZD',1,'Новозеландский доллар','58.3812','58.3812'),(26,'R01535',578,'NOK',10,'Норвежских крон','89.4258','8.94258'),(27,'R01565',985,'PLN',1,'Польский злотый','22.7415','22.7415'),(28,'R01585F',946,'RON',1,'Румынский лей','20.7524','20.7524'),(29,'R01589',960,'XDR',1,'СДР (специальные права заимствования)','127.5365','127.5365'),(30,'R01625',702,'SGD',1,'Сингапурский доллар','71.1888','71.1888'),(31,'R01670',972,'TJS',10,'Таджикских сомони','88.4957','8.84957'),(32,'R01675',764,'THB',10,'Таиландских батов','26.8023','2.68023'),(33,'R01700J',949,'TRY',10,'Турецких лир','34.9980','3.4998'),(34,'R01710A',934,'TMT',1,'Новый туркменский манат','27.7128','27.7128'),(35,'R01717',860,'UZS',10000,'Узбекских сумов','79.3992','0.00793992'),(36,'R01720',980,'UAH',10,'Украинских гривен','26.5853','2.65853'),(37,'R01760',203,'CZK',10,'Чешских крон','41.9002','4.19002'),(38,'R01770',752,'SEK',10,'Шведских крон','89.0106','8.90106'),(39,'R01775',756,'CHF',1,'Швейцарский франк','107.7600','107.76'),(40,'R01805F',941,'RSD',100,'Сербских динаров','88.0171','0.880171'),(41,'R01810',710,'ZAR',10,'Южноафриканских рэндов','51.5236','5.15236'),(42,'R01815',410,'KRW',1000,'Вон Республики Корея','72.4653','0.0724653'),(43,'R01820',392,'JPY',100,'Японских иен','65.0361','0.650361');
/*!40000 ALTER TABLE `valutes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13  1:41:44
