-- MySQL dump 10.13  Distrib 5.5.28, for Win32 (x86)
--
-- Host: localhost    Database: aj_translation
-- ------------------------------------------------------
-- Server version	5.5.28-log

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
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sources` (
  `source_id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `key_slug` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`source_id`),
  UNIQUE KEY `i_key_slug` (`key_slug`),
  KEY `i_source` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` VALUES (1,'MS translator','default','7e8f8b3a-4619-4fef-8f60-b5f21541d49b','4Wh/X4PNhjCrIjtC12eyb2wVwbUH/jDInTx+dafA8Is='),(2,'MS translator','bing2','ef2abf75-bc8d-4efb-a20d-a3bc7c677986','kXm2gwVEelyzHh3vleR40wRHBGXpAR36qnOfMHG4t5k='),(3,'MS translator','bing3','cd487f9d-38f5-4876-9f5b-acbbb2fe3a61','lLjWEtWXSDV1+5/5winDWxZ894YpSl7ITdCt9jkaF+8='),(4,'MS translator','bing4','75091b47-3156-4f14-963e-c869fa604201','K2lrSG3r6jWQl5rD+VOCBsT/fA46SMRkmMOWeoONQy0='),(5,'MS translator','bing5','852a2cc0-d0b3-4c00-b2b0-4295cc499cb8','OA0aDy1WZBza5OwIwLtwWxRmvy8/ij9yplr1e9Uz9F8='),(6,'MS translator','bing6','492efe62-0031-4549-a7b9-070addbcc1e5','xHs/ud01pvgkFIMK6wnMvycoc7efBgWoeEf1aiAYnG4='),(7,'MS translator','bing7','b825e19a-e928-4e72-80e6-b244b37d1fec','cyLlfmO9LXvwmmzJFSyiaISpqlcsyzepslAfIxCUh+8='),(8,'MS translator','bing8','7ca0a028-ac8b-4622-90eb-fc0ba51a158b','kr+ggq7GUB1YUQGkRP2SQzOzkqtzc/OTEbAkwjyF28Y='),(9,'MS translator','bing9','6009aa40-9da4-4529-b8b8-144321c6c60a','ycmDg+1bp3VxD1x/XZqQh4951cJj4uu+2A+TRsOI57o='),(10,'MS translator','bing10','ac0202d5-612b-401c-a9d8-b09c89e4a8cd','FUZ5tQpp2tpnoikaTqetctVDDl3YI445y0SA9YX3NwM='),(11,'MS translator','dev_key','dc3da440-888a-4db7-82b9-b62e33f02dc1','J2MsHCEEKebtXXcSCftLksJVFPALA9S3DedYzPL/jpE='),(12,'MS translator','bing11','5cf261d7-2b79-44a3-96ab-50b303c28310','B+PgPI/vq1jyn6Kew6Lf/ThsOU9c2L4fAthxCVODIbg='),(13,'Human','human','human','human'),(14,'HB feed','hbfeed','',NULL),(15,'HB feed google translator','hbfeedgoogle','',NULL),(16,'HB feed Bing Translator','hbfeedbing','',NULL);
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `i_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (35,'custom landmark'),(27,'HB accomodation description'),(24,'HB attraction'),(21,'HB avail error msg'),(32,'HB error description'),(33,'HB error info'),(30,'HB extra info'),(17,'HB feature'),(25,'HB full description'),(38,'HB location info'),(23,'HB property cancellation policy'),(26,'HB property directions'),(19,'HB property extra'),(28,'HB property important info'),(20,'HB property type'),(29,'HB review'),(22,'HB room type'),(37,'HB room type description'),(18,'HB short description'),(31,'HB taxes info'),(13,'HW Booking request message'),(15,'HW charged currency warning'),(11,'HW Error detail'),(12,'HW Error message'),(5,'HW facility'),(2,'HW full description'),(3,'HW property conditions'),(4,'HW property directions'),(6,'HW review'),(16,'HW room type'),(7,'HW room type description'),(1,'HW short description'),(8,'HW term & condition note'),(14,'HW term & condition value'),(9,'HW UserMessage detail'),(10,'HW UserMessage message'),(34,'Misc'),(36,'um district');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_of_translations`
--

DROP TABLE IF EXISTS `tags_of_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_of_translations` (
  `tag_of_translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `translation_id` bigint(20) NOT NULL,
  PRIMARY KEY (`tag_of_translation_id`),
  UNIQUE KEY `i_tag_trans_uni` (`tag_id`,`translation_id`),
  KEY `fk_tag_of_trans` (`tag_id`),
  KEY `fk_trans_of_tag` (`translation_id`),
  CONSTRAINT `fk_tag_of_trans` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trans_of_tag` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`translation_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_of_translations`
--

LOCK TABLES `tags_of_translations` WRITE;
/*!40000 ALTER TABLE `tags_of_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_of_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(5) NOT NULL,
  `ref_hash` blob NOT NULL,
  `translation` text NOT NULL,
  `ref_lang_code` varchar(5) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`translation_id`),
  KEY `i_trans_lang_code` (`lang_code`),
  KEY `i_lang_ref_hash` (`ref_hash`(767),`lang_code`),
  KEY `fk_source_of_trans` (`source_id`),
  CONSTRAINT `fk_source_of_trans` FOREIGN KEY (`source_id`) REFERENCES `sources` (`source_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-13  9:09:57
