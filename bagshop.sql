-- MySQL dump 10.13  Distrib 5.7.17-11, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bagshop
-- ------------------------------------------------------
-- Server version	5.7.17-11

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
-- Table structure for table `accessosary_types`
--

DROP TABLE IF EXISTS `accessosary_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessosary_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessosary_types`
--

LOCK TABLES `accessosary_types` WRITE;
/*!40000 ALTER TABLE `accessosary_types` DISABLE KEYS */;
INSERT INTO `accessosary_types` VALUES (1,'Броши','2017-04-22 12:48:32','2017-04-22 12:48:32'),(2,'Колье, Кулоны, Бусы','2017-04-22 12:48:53','2017-04-22 12:48:53'),(3,'Кольца','2017-04-22 12:49:14','2017-04-22 12:49:14'),(4,'Комплекты','2017-04-22 12:49:27','2017-04-22 12:49:27'),(5,'Серьги','2017-04-22 12:49:57','2017-04-22 12:49:57'),(6,'Браслеты','2017-04-22 12:50:11','2017-04-22 12:50:11'),(7,'Зажимы для платков','2017-04-22 12:50:31','2017-04-22 12:50:31'),(8,'Визитницы','2017-04-22 12:51:25','2017-04-22 12:51:25'),(9,'Обложки','2017-04-22 12:51:44','2017-04-22 12:51:44'),(10,'Кошельки','2017-04-22 12:52:03','2017-04-22 12:52:03'),(11,'Косметички','2017-04-22 12:52:13','2017-04-22 12:52:13'),(12,'Брелоки','2017-04-22 12:52:25','2017-04-22 12:52:25'),(13,'Ремни','2017-04-22 12:52:41','2017-04-22 12:52:41');
/*!40000 ALTER TABLE `accessosary_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Anna Moretti','2017-04-15 16:17:16','2017-04-15 16:17:16'),(2,'Casanave','2017-04-15 16:17:48','2017-04-15 16:17:48'),(3,'Furla','2017-04-15 16:17:57','2017-04-15 16:17:57'),(4,'Maurizio Taiuti','2017-04-15 16:18:33','2017-04-15 16:18:33'),(5,'Kremenetski','2017-04-22 13:15:29','2017-04-22 13:15:29');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Информация','info','2017-04-11 16:59:20','2017-04-22 15:23:48','0','0',0),(2,NULL,2,'Каталог','catalog','2017-04-15 15:17:48','2017-04-22 15:23:39','0','0',0),(3,2,1,'Украшения','ornaments','2017-04-15 16:21:15','2017-04-15 16:21:15',NULL,NULL,1),(4,2,1,'Платки, шарфы, палантины','neck','2017-04-15 16:23:01','2017-04-22 15:30:55',NULL,NULL,1),(5,2,1,'Рюкзаки','backbags','2017-04-15 16:24:12','2017-04-15 16:24:12',NULL,NULL,1),(6,2,1,'Клатчи','clutches','2017-04-15 16:24:36','2017-04-15 18:42:57',NULL,NULL,1),(7,2,1,'Женские сумки','female','2017-04-15 16:25:27','2017-04-15 16:25:27',NULL,NULL,1),(8,2,1,'Мужские сумки','male','2017-04-15 16:25:45','2017-04-15 16:25:45',NULL,NULL,1),(9,2,1,'Дорожные сумки','roadbags','2017-04-15 16:26:14','2017-04-15 16:26:14',NULL,NULL,1),(10,2,1,'Аксессуары','accessory','2017-04-15 16:27:02','2017-04-22 15:23:12','0','0',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL),(2,1,'author_id','text','Author',0,1,1,1,1,1,NULL),(3,1,'category_id','text','Category',0,0,1,1,1,0,NULL),(4,1,'title','text','Title',1,1,1,1,1,1,NULL),(5,1,'excerpt','text_area','excerpt',0,0,1,1,1,1,NULL),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,NULL),(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}'),(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}'),(9,1,'meta_description','text_area','meta_description',0,0,1,1,1,1,NULL),(10,1,'meta_keywords','text_area','meta_keywords',0,0,1,1,1,1,NULL),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}'),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,NULL),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL),(14,2,'id','number','id',1,0,0,0,0,0,''),(15,2,'author_id','text','author_id',1,0,0,0,0,0,''),(16,2,'title','text','title',1,1,1,1,1,1,''),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,''),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,''),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}'),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,''),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,''),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}'),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,''),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,''),(25,2,'image','image','image',0,1,1,1,1,1,''),(26,3,'id','number','id',1,0,0,0,0,0,''),(27,3,'name','text','name',1,1,1,1,1,1,''),(28,3,'email','text','email',1,1,1,1,1,1,''),(29,3,'password','password','password',1,0,0,1,1,0,''),(30,3,'remember_token','text','remember_token',0,0,0,0,0,0,''),(31,3,'created_at','timestamp','created_at',0,1,1,0,0,0,''),(32,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),(33,3,'avatar','image','avatar',0,1,1,1,1,1,''),(34,5,'id','number','id',1,0,0,0,0,0,''),(35,5,'name','text','name',1,1,1,1,1,1,''),(36,5,'created_at','timestamp','created_at',0,0,0,0,0,0,''),(37,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),(38,4,'id','number','id',1,1,0,0,0,0,NULL),(39,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}'),(40,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}'),(41,4,'name','text','name',1,1,1,1,1,1,NULL),(42,4,'slug','text','slug',1,1,1,1,1,1,NULL),(43,4,'created_at','timestamp','created_at',0,0,1,0,0,0,NULL),(44,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL),(45,6,'id','number','id',1,0,0,0,0,0,''),(46,6,'name','text','Name',1,1,1,1,1,1,''),(47,6,'created_at','timestamp','created_at',0,0,0,0,0,0,''),(48,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),(49,6,'display_name','text','Display Name',1,1,1,1,1,1,''),(50,1,'seo_title','text','seo_title',0,1,1,1,1,1,NULL),(51,1,'featured','checkbox','featured',1,1,1,1,1,1,NULL),(52,3,'role_id','text','role_id',1,1,1,1,1,1,''),(53,1,'tags','select_multiple','Tags',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}'),(54,7,'id','number','Id',1,1,0,0,0,0,NULL),(55,7,'name','text','Name',1,1,1,1,1,1,NULL),(56,7,'created_at','timestamp','Created At',1,1,1,1,0,1,NULL),(57,7,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL),(70,9,'id','number','Id',1,1,0,0,0,0,NULL),(71,9,'category_id','select_dropdown','Category',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}'),(72,9,'title','text','Title',1,1,1,1,1,1,NULL),(73,9,'info','text_area','Info',0,0,1,1,1,1,NULL),(74,9,'body','rich_text_box','Body',0,1,1,1,1,1,NULL),(75,9,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}'),(76,9,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}'),(77,9,'price','number','Price',1,1,1,1,1,1,NULL),(78,9,'rel_price','number','Previous Price',1,0,1,1,1,1,NULL),(79,9,'currency_id','select_dropdown','Currency',1,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"RUB\",\"2\":\"EUR\",\"3\":\"USD\"}}'),(80,9,'color','select_dropdown','Color',0,0,1,1,1,1,'{\"default\":\"0\",\"options\":{\"0\":\"none\",\"1\":\"white\",\"2\":\"black\",\"3\":\"red\",\"4\":\"green\",\"5\":\"blue\",\"6\":\"grey\",\"7\":\"purpure\",\"8\":\"lavande\",\"9\":\"yellow\",\"10\":\"brown\",\"11\":\"coral\",\"12\":\"gold\",\"13\":\"pink\",\"14\":\"silver\"}}'),(81,9,'image','multiple_images','Image',0,0,1,1,1,1,'{\"resize\":{\"width\":\"500\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"270\",\"height\":\"270\"}}]}'),(82,10,'id','number','Id',1,0,0,0,0,0,NULL),(83,10,'title','text','Title',1,1,1,1,1,1,NULL),(84,10,'created_at','timestamp','Created At',1,1,1,1,0,1,NULL),(85,10,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL),(86,9,'brand_id','select_dropdown','Brand',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}'),(87,9,'created_at','timestamp','Created At',0,0,1,1,0,1,NULL),(88,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL),(89,9,'code','text','Code',0,1,1,1,1,1,NULL),(90,9,'is_available','radio_btn','Is Available',1,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"0\":\"-- not available --\",\"1\":\"available\"}}'),(91,9,'main_image','image','Main Image',0,0,1,1,1,1,'{\"resize\":{\"width\":\"500\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"270\",\"height\":\"270\"}}]}'),(92,12,'id','number','Id',1,0,0,0,0,0,NULL),(93,12,'title','text','Title',1,1,1,1,1,1,NULL),(94,12,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL),(95,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL),(96,9,'accessory_id','select_dropdown','Accessory Id',0,1,1,1,1,1,'{\"default\":\"0\",\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}'),(97,4,'description','text','Description',0,1,1,1,1,1,NULL),(98,4,'image','image','Image',0,1,1,1,1,1,NULL),(99,4,'type','checkbox','Catalog Type',1,1,1,1,1,1,'{\"default\":1,\"options\":{\"1\":\"Main\",\"2\":\"Catalog\"}}');
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post',NULL,NULL,1,0,'2017-04-11 16:11:59','2017-04-11 17:45:25'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page','','',1,0,'2017-04-11 16:11:59','2017-04-11 16:11:59'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','','',1,0,'2017-04-11 16:11:59','2017-04-11 16:11:59'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,NULL,1,0,'2017-04-11 16:11:59','2017-04-15 16:27:57'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu','','',1,0,'2017-04-11 16:11:59','2017-04-11 16:11:59'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role','','',1,0,'2017-04-11 16:11:59','2017-04-11 16:11:59'),(7,'tags','tags','Tag','Tags',NULL,'App\\Tag',NULL,NULL,1,0,'2017-04-11 17:52:28','2017-04-11 17:52:28'),(9,'products','products','Product','Products','voyager-buy','App\\Product',NULL,NULL,1,1,'2017-04-15 16:03:56','2017-04-15 16:03:56'),(10,'brands','brands','Brand','Brands','voyager-watch','App\\Brand',NULL,NULL,1,0,'2017-04-15 16:09:32','2017-04-15 16:09:32'),(12,'accessosary_types','accessosary-types','Accessosary Type','Accessosary Types',NULL,'App\\AccessosaryType',NULL,NULL,1,1,'2017-04-22 12:34:58','2017-04-22 12:34:58');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','/admin','_self','voyager-boat',NULL,NULL,1,'2017-04-11 16:12:03','2017-04-11 16:12:03',NULL,NULL),(2,1,'Media','/admin/media','_self','voyager-images',NULL,NULL,5,'2017-04-11 16:12:03','2017-04-15 16:15:38',NULL,NULL),(3,1,'Posts','/admin/posts','_self','voyager-news',NULL,NULL,6,'2017-04-11 16:12:03','2017-04-15 16:15:38',NULL,NULL),(4,1,'Users','/admin/users','_self','voyager-person',NULL,NULL,4,'2017-04-11 16:12:03','2017-04-15 16:15:38',NULL,NULL),(5,1,'Categories','/admin/categories','_self','voyager-categories',NULL,NULL,9,'2017-04-11 16:12:03','2017-04-15 16:15:36',NULL,NULL),(6,1,'Pages','/admin/pages','_self','voyager-file-text',NULL,NULL,7,'2017-04-11 16:12:03','2017-04-15 16:15:36',NULL,NULL),(7,1,'Roles','/admin/roles','_self','voyager-lock',NULL,NULL,3,'2017-04-11 16:12:03','2017-04-15 16:15:38',NULL,NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,10,'2017-04-11 16:12:03','2017-04-15 16:15:36',NULL,NULL),(9,1,'Menu Builder','/admin/menus','_self','voyager-list',NULL,8,1,'2017-04-11 16:12:03','2017-04-11 18:03:55',NULL,NULL),(10,1,'Database','/admin/database','_self','voyager-data',NULL,8,2,'2017-04-11 16:12:03','2017-04-11 18:03:55',NULL,NULL),(11,1,'Settings','/admin/settings','_self','voyager-settings',NULL,NULL,11,'2017-04-11 16:12:03','2017-04-15 16:15:36',NULL,NULL),(12,1,'Tags','/admin/tags','_self','voyager-tag','#036048',NULL,8,'2017-04-11 18:02:52','2017-04-15 16:15:36',NULL,''),(13,2,'ИНФОРМАЦИЯ','/info','_self',NULL,'#000000',NULL,1,'2017-04-14 15:31:40','2017-04-14 15:34:38',NULL,''),(14,2,'ПЛАТКИ, ШАРФЫ, ПАЛАНТИНЫ','/catalog/neck','_self',NULL,'#000000',NULL,2,'2017-04-14 15:33:01','2017-04-22 11:29:06',NULL,''),(15,2,'CУМКИ','/catalog/bags','_self',NULL,'#000000',NULL,3,'2017-04-14 15:33:31','2017-04-22 11:29:06',NULL,''),(16,2,'АКСЕССУАРЫ','/catalog/accessory','_self',NULL,'#000000',NULL,4,'2017-04-14 15:34:14','2017-04-22 12:16:46',NULL,''),(17,2,'Рюкзаки','/catalog/backbags','_self',NULL,'#000000',15,1,'2017-04-14 15:35:11','2017-04-14 15:37:01',NULL,''),(18,2,'Клатчи','/catalog/clutches','_self',NULL,'#000000',15,2,'2017-04-14 15:37:32','2017-04-14 15:37:39',NULL,''),(19,2,'Женские','/catalog/female','_self',NULL,'#000000',15,3,'2017-04-14 15:38:14','2017-04-14 15:38:19',NULL,''),(20,2,'Мужские','/catalog/male','_self',NULL,'#000000',15,5,'2017-04-14 15:38:42','2017-04-14 16:24:59',NULL,''),(21,2,'Дорожные','/catalog/roadbags','_self',NULL,'#000000',15,4,'2017-04-14 15:39:04','2017-04-14 15:39:11',NULL,''),(22,2,'Новая коллекция','/info/newcollection','_self',NULL,'#000000',13,1,'2017-04-14 16:32:47','2017-04-14 16:35:58',NULL,''),(23,2,'Контакты','/info/contacts','_self',NULL,'#000000',13,4,'2017-04-14 16:33:53','2017-04-14 16:36:04',NULL,''),(24,2,'Доставка и оплата','/info/delivery','_self',NULL,'#000000',13,3,'2017-04-14 16:34:33','2017-04-14 16:36:04',NULL,''),(25,2,'Оптовые продажи','/info/wholesale','_self',NULL,'#000000',13,2,'2017-04-14 16:35:29','2017-04-14 16:36:01',NULL,''),(26,1,'Brands','admin/brands','_self','voyager-watch','#831212',28,3,'2017-04-15 16:11:48','2017-04-22 12:43:55',NULL,''),(27,1,'Products','admin/products','_self','voyager-dollar','#096822',28,1,'2017-04-15 16:12:57','2017-04-15 16:15:10',NULL,''),(28,1,'Shop','','_self','voyager-shop','#7c0d93',NULL,2,'2017-04-15 16:15:05','2017-04-15 16:15:38',NULL,''),(29,1,'Accessory','admin/accessosary-types','_self','voyager-wand','#000000',28,2,'2017-04-22 12:39:07','2017-04-22 12:43:55',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-04-11 16:12:02','2017-04-11 16:12:02'),(2,'main_menu','2017-04-14 15:30:33','2017-04-14 15:30:33');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2017-04-11 16:12:03','2017-04-11 16:12:03',NULL),(2,'browse_database',NULL,'2017-04-11 16:12:03','2017-04-11 16:12:03',NULL),(3,'browse_media',NULL,'2017-04-11 16:12:03','2017-04-11 16:12:03',NULL),(4,'browse_settings',NULL,'2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(5,'browse_menus','menus','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(6,'read_menus','menus','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(7,'edit_menus','menus','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(8,'add_menus','menus','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(9,'delete_menus','menus','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(10,'browse_pages','pages','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(11,'read_pages','pages','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(12,'edit_pages','pages','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(13,'add_pages','pages','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(14,'delete_pages','pages','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(15,'browse_roles','roles','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(16,'read_roles','roles','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(17,'edit_roles','roles','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(18,'add_roles','roles','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(19,'delete_roles','roles','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(20,'browse_users','users','2017-04-11 16:12:04','2017-04-11 16:12:04',NULL),(21,'read_users','users','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(22,'edit_users','users','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(23,'add_users','users','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(24,'delete_users','users','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(25,'browse_posts','posts','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(26,'read_posts','posts','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(27,'edit_posts','posts','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(28,'add_posts','posts','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(29,'delete_posts','posts','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(30,'browse_categories','categories','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(31,'read_categories','categories','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(32,'edit_categories','categories','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(33,'add_categories','categories','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(34,'delete_categories','categories','2017-04-11 16:12:05','2017-04-11 16:12:05',NULL),(35,'browse_tags','tags','2017-04-11 17:52:28','2017-04-11 17:52:28',NULL),(36,'read_tags','tags','2017-04-11 17:52:28','2017-04-11 17:52:28',NULL),(37,'edit_tags','tags','2017-04-11 17:52:28','2017-04-11 17:52:28',NULL),(38,'add_tags','tags','2017-04-11 17:52:28','2017-04-11 17:52:28',NULL),(39,'delete_tags','tags','2017-04-11 17:52:28','2017-04-11 17:52:28',NULL),(40,'browse_products','products','2017-04-15 16:03:56','2017-04-15 16:03:56',NULL),(41,'read_products','products','2017-04-15 16:03:56','2017-04-15 16:03:56',NULL),(42,'edit_products','products','2017-04-15 16:03:56','2017-04-15 16:03:56',NULL),(43,'add_products','products','2017-04-15 16:03:56','2017-04-15 16:03:56',NULL),(44,'delete_products','products','2017-04-15 16:03:56','2017-04-15 16:03:56',NULL),(45,'browse_brands','brands','2017-04-15 16:09:32','2017-04-15 16:09:32',NULL),(46,'read_brands','brands','2017-04-15 16:09:32','2017-04-15 16:09:32',NULL),(47,'edit_brands','brands','2017-04-15 16:09:32','2017-04-15 16:09:32',NULL),(48,'add_brands','brands','2017-04-15 16:09:32','2017-04-15 16:09:32',NULL),(49,'delete_brands','brands','2017-04-15 16:09:32','2017-04-15 16:09:32',NULL),(50,'browse_accessosary_types','accessosary_types','2017-04-22 12:34:59','2017-04-22 12:34:59',NULL),(51,'read_accessosary_types','accessosary_types','2017-04-22 12:34:59','2017-04-22 12:34:59',NULL),(52,'edit_accessosary_types','accessosary_types','2017-04-22 12:34:59','2017-04-22 12:34:59',NULL),(53,'add_accessosary_types','accessosary_types','2017-04-22 12:34:59','2017-04-22 12:34:59',NULL),(54,'delete_accessosary_types','accessosary_types','2017-04-22 12:34:59','2017-04-22 12:34:59',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `post_id` int(10) unsigned DEFAULT NULL,
  `tag_id` int(10) unsigned DEFAULT NULL,
  KEY `post_tag_post_id_index` (`post_id`),
  KEY `post_tag_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,4),(2,3),(2,4),(3,2),(3,3),(4,3),(5,4),(6,1),(7,1),(8,3),(9,1),(9,3),(10,3),(11,2),(12,3),(13,5),(1,5),(14,4),(15,5);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'Популярные вопросы',NULL,'Краткая информация','<p><strong>Доставка по Москве и Подмосковью.</strong>&nbsp;Для Вашего удобства у нас есть собственная курьерская служба, поэтому Вы можете выбрать удобное для Вас время и место доставки заказа.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Как работают курьеры?&nbsp;</strong>Наши курьеры привезут Вам заказ в удобное для Вас время с 10 до 22 часов. Временной интервал приезда курьера - 2 часа. Напишите в заказе, или скажите менеджеру, когда Вам удобно получить Ваш заказ</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Сколько стоит доставка?</strong>&nbsp;Если Вы покупаете на сумму менее 10000 рублей, то стоимость доставки 200 рублей. Если Вы покупаете на сумму больше 10000 рублей, то доставка бесплатно. Если Вы живете в Подмосковье дальше 5 км за МКАД -стоимость доставки 400 рублей.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Вам удобно получить заказ после 20.00?</strong>&nbsp;У нас есть услуга Вечерняя доставка с 20до 22. Стоит вечерняя доставка 250 р по Москве и 450 по Подмосковью независимо от суммы покупки. Сообщите нашим менеджерам заранее, что Вам нужна вечерняя доставка, чтоб мы выделили дляВас вечернего курьера.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Вам нужно знать точное время приездакурьера?</strong>&nbsp;Услуга\"Звонок за час\" - бесплатна! Сообщите менеджеру, и наш курьер обязательно позвонит Вам за час до приезда.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Заказ привезли, а Вам ничего неподошло?&nbsp;</strong>Нет проблем, Выможете ничего не покупать. В этом случае оплачивается выезд курьера - 200 р дляМосквы и 400 р для Подмосковья (на основании п.3 ст. 497 ГК РФ, если привезенные вещи соответствуют заказу)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Договорились на доставку, но у Вас поменялись планы?</strong>&nbsp;Просто позвоните менеджерам по телефону&nbsp;&nbsp;+7(925)500-70-37 и перенесите визит курьера на удобное для Вас время.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Сколько вещей одновременно можно заказать?</strong>&nbsp;Вы можете сделать заказ на любое количество вещей - мы забронируемих для Вас. За один визит курьер привозит не более 5 товаров (сумки) и&nbsp;до 5&nbsp;из раздела аксессуары (ремни, кошельки, платки, палантины и шарфы).</p>\r\n<p>&nbsp;</p>',NULL,'populyarnye-voprosy',NULL,NULL,'PUBLISHED',0,'2017-04-13 16:48:49','2017-04-22 16:04:16',NULL),(2,1,1,'Как сделать заказ',NULL,NULL,'<p><strong>Доставка:</strong></p>\r\n<p>- по Москве осуществляется на следующий день после заказа - 300 рублей</p>\r\n<p>при заказе от 10.000 рублей доставка БЕСПЛАТНО&nbsp;</p>\r\n<p>в случае отказа от заказа -300 рублей курьеру за выезд</p>\r\n<p>- Московская область, на следующий день после заказа - 400 рублей.</p>\r\n<p>-&nbsp;Доставка в&nbsp;другие города&nbsp;России, Страны бывшего СНГ и Зарубежья:</p>\r\n<p>По России в течении 4-6 рабочих дней- 400 рублей</p>\r\n<p>Страны бывшего СНГ и Зарубежья, 7-9 рабочих дней - 900 рублей</p>\r\n<p>Доставка в страны бывшего СНГ и др. страны производится службой курьерской экспресс - доставки&nbsp;<a href=\"http://www.emspost.ru/\">EMS Почта России</a></p>\r\n<p>Доставка осуществляется только после оплаты&nbsp;100% стоимости заказа и стоимости доставки.&nbsp;</p>\r\n<p>Форма оплаты товара для региональных покупателей:</p>\r\n<p>&nbsp;-&nbsp;виртуальный платеж через систему&nbsp;<a href=\"http://money.yandex.ru/\">Яндекс. Деньги</a>, кошелек &nbsp;№410012110455948.</p>\r\n<p>&nbsp;-&nbsp;виртуальный платеж&nbsp;через систему&nbsp;<a href=\"mailto:%D0%94%D0%B5%D0%BD%D1%8C%D0%B3%D0%B8@Mail.ru\">Деньги@Mail.ru</a>, счет №1012200192975147.</p>\r\n<p>&nbsp;-&nbsp;Банковский платёж&nbsp;(реквизиты для оплаты,&nbsp;Вам будут отправлены после под тверждения заказа)</p>\r\n<p>&nbsp;- Наложенный платеж&nbsp;</p>\r\n<p>Заказ считается успешным только после подтверждения и&nbsp;<strong>согласия покупателя</strong>&nbsp;с условиями доставки и оплаты.</p>\r\n<p>Подтвердить заказ Вы можете ответным письмом или по телефону.</p>\r\n<p><strong>Если заказ не был подтвержден в течении 48 часов - ЗАКАЗ АНУЛИРУЕТСЯ!</strong></p>\r\n<p><a href=\"http://www.emspost.ru/\"><strong>Внимание!</strong></a>&nbsp;Обязательно нужно указать полный почтовый адрес (с индексом) и телефон Получателя заказа.</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сроки доставки: от&nbsp;4 до&nbsp;8 дней.</p>\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сотрудники службы EMS звонят Получателю для согласования времени доставки.<br /> Все отправления вручаются лично адресату под расписку. Очень важно проверить содержимое вложения в момент передачи.</p>\r\n<p>В случае если курьер не смог осуществить доставку с первого раза по независящим от него причинам, вторая попытка доставить отправление будет предпринята через 2 дня без взимания дополнительной платы. После каждой попытки доставить отправление курьер оставляет письменное извещение для клиента.<br /> Сроки хранения экспресс - отправлений EMS в отделениях почтовой связи составляет&nbsp;14&nbsp;суток&nbsp;со дня их поступления. По истечении этого срока заказ будет передан обратно и аннулирован.</p>\r\n<p><strong>Обмен и Возврат товара:</strong></p>\r\n<p>Внимание! Уважаемые клиенты,</p>\r\n<p>При заказе товара обращайте внимание на все&nbsp;его характеристики, размер, цвет, дополнительные карманы и прочее.</p>\r\n<p>На сайте&nbsp;все подробно указано,если у Вас возникают дополнительные вопросы по товару, пожалуйста звоните или пишите&nbsp;оператору и уточняйте, чтобы при доставке не возникло недоразумений: \"какая большая (маленькая) сумка,&nbsp;\"я представляла по другому\" и&nbsp;прочее....</p>\r\n<p>В раздел распродажа сумок -&nbsp;попадают сумки, от прошлых коллекций оставшиеся в единичном экземпляре. Если на сумке присутствует какой либо дефект, это обязательно указывается в описании. Оператор при заказе такой модели, информирует покупателя о дефекте.</p>\r\n<p>СРОК ДОСТАВКИ ТОВАРОВ &laquo;ПОД ЗАКАЗ&raquo; 2-3 недели.&nbsp; Купить сумку под заказ, заказать сумку&nbsp;</p>\r\n<p><strong>Обмен и возврат товара</strong> втечении 7 дней с момента покупки.</p>\r\n<p>Гарантия на все сумки от нашего магазинав течении 14 дней, с момента покупки.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',NULL,'kak-sdelat-zakaz',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:22:47','2017-04-13 19:06:09',NULL),(3,1,1,'Контакты',NULL,NULL,'<p><strong>По вопросам&nbsp;о наличии товара,&nbsp;заказа и&nbsp;доставки&nbsp;по Москве, МО и Регионам обращаться:</strong></p>\r\n<p><strong>Наши контакты:</strong> + 7(925)500-70-37&nbsp;&nbsp; Бесплатная горячая линия <strong>Для приложений: WatsApp, Viber - Пишите нам!</strong> <br /> <strong>E-mail: italianomania@mail.ru</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Заказ Вы можете сделать круглосуточно на сайте или по&nbsp;</strong><strong>e</strong><strong>-</strong><strong>mail.<br /></strong><strong>Заказы по телефону принимаются с 10:00 до 22:00 ежедневно без выходных.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Под заказ возможно купить любую модель сумки или кошелька, браслета или брелока, даже те, которые не представлены на нашем сайте. Напишите на нашу почту номер модели или пришлите скопированное фото с сайта где Вы её видели&nbsp;sale@bag-bag.ru&nbsp;в течениисуток&nbsp;Вы&nbsp;получите ответ о наличии и стоимости. <strong>Срок доставки сумок \"Под заказ\" 2-3 недели,&nbsp;без предоплаты.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<p><a href=\"https://www.facebook.com/italianomaniaofficial\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>ПОЛНЫЙ КАТАЛОГ ТОВАРОВ НА НАШЕЙ СТРАНИЦЕ В FACEBOOK</strong>&nbsp;</a>&nbsp;<strong>&nbsp; &nbsp; &nbsp;&nbsp;</strong></p>',NULL,'kontakty',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:27:34','2017-04-13 19:07:07',NULL),(4,1,1,'О нас',NULL,NULL,'<p><strong>О нас</strong></p>\r\n<p>Компания &laquo;Bag-Bag&raquo; является официальным представителем в России производителей женских сумок. <strong>Мы продаем сумки оптом и в розницу.</strong></p>\r\n<p>Компания &laquo;Bag-Bag&raquo; <strong>реализует сумки оптом&nbsp; и в розницу</strong>. В нашем ассортименте изящные <strong>женские сумки и модные молодежные сумки</strong>.</p>\r\n<p><strong>Женские сумки оптом в Москве:</strong></p>\r\n<p>Мы открыты к сотрудничеству с оптовыми покупателями из любой точки России. Условия работы с каждым из них у нас индивидуальны и зависят от специфики&nbsp; условий - будь то географическое расположение, особенности и способы доставки, способы и формы оплаты и т.д. Мы предлагаем модные женские и молодежные сумки оптом в Москве по весьма привлекательным ценам. Тех, кто хочет покупать <strong>крупным оптом сумки</strong> женские у нашей компании, ждут приятные скидки.</p>\r\n<p>&nbsp;</p>',NULL,'o-nas',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:28:06','2017-04-13 17:28:06',NULL),(5,1,1,'Доставка',NULL,NULL,'<p><strong>Доставка:</strong></p>\r\n<p>Организовать доставку возможно любым удобным для клиента способом:</p>\r\n<p>- железнодорожным транспортом</p>\r\n<p>- авиатранспортом</p>\r\n<p>- автотранспортом</p>\r\n<p>Также Вы можете купить женские сумки оптом в Москве приехав к нам в шоурум.&nbsp;Для тех, кто не может посетить шоурум в Москве, но очень хочет купить, например, летнюю женскую сумку из кожи, мы можем организовать отправку товара в любую точку России и стран бывшего СНГ.</p>',NULL,'dostavka',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:28:40','2017-04-13 18:52:47',NULL),(6,1,1,'Сумки оптом',NULL,NULL,'<p><img src=\"/pics/396116367.jpg\" alt=\"Сумки оптом\" width=\"269\" height=\"153\" align=\"left\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Наш интернет-магазин женских сумок, представляет для Вас ассортимент сумок женских фабрики&nbsp;<strong>Anna Moretti.&nbsp;</strong>Мы являемся эксклюзивными дистрибьюторами на территории России.Надеемся, что регулярное обновление коллекций и низкие цены приятно&nbsp;порадуют&nbsp;Вас.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Если же вы желаете приобрести&nbsp;женские&nbsp;сумки&nbsp;оптом&nbsp;&ndash; то и в этом&nbsp;случае необходимо обращаться именно к нам. Такого высокого качества и&nbsp;многообразия ассортимента по столь доступным расценкам вы не найдете&nbsp;больше нигде.</strong><strong>&nbsp;</strong> <br /> Компания <a class=\"LEtjm7s3\" title=\"Click to Continue &gt; by Advertise\" href=\"#12849815\"> Bag<img src=\"http://cdncache-a.akamaihd.net/items/it/img/arrow-10x10.png\" /></a>-Bag&raquo; является официальным представителем в России производителя женских сумок&nbsp;<strong>Anna Moretti</strong>.&nbsp;<strong>Мы продаем сумки оптом и в розницу.</strong> <br /> <br /><br /> Компания &laquo;Bag-Bag&raquo;&nbsp;<strong>реализует сумки оптом&nbsp; и в розницу</strong>. В нашем ассортименте изящные&nbsp;<strong>женские сумки и модные молодежные сумки</strong>. <br /><br /> <strong>Женские сумки оптом в Москве:</strong> <br /> Мы открыты к сотрудничеству с оптовыми покупателями из любой точки России. Условия работы с каждым из них у нас индивидуальны и зависят от специфики&nbsp; условий - будь то географическое расположение, особенности и способы доставки, способы и формы оплаты и т.д. Мы предлагаем модные женские и молодежные сумки оптом в Москве по весьма привлекательным ценам. Тех, кто хочет покупать<strong>крупным оптом сумки</strong>&nbsp;женские у нашей компании, ждут приятные скидки. <br /><br /><br /> <strong>Посмотреть каталог всех сумок Вы можете в разделе \"Сумки Женские\".</strong> <br /> Будем рады сотрудничать.Приятных покупок. &nbsp; <strong>Сделать заказ вы можете и по телефону:</strong> <br /> <strong>Наши контакты:</strong> &nbsp; <br /> + 7(925)500-70-37&nbsp;&nbsp; Бесплатная горячая линия <br /> <strong>Для приложений: WatsApp, Viber - Пишите нам!</strong> <br /> <strong>E-mail: italianomania@mail.ru</strong> &nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>',NULL,'sumki-optom',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:34:53','2017-04-22 16:11:06',NULL),(7,1,1,'Палантины оптом',NULL,NULL,'<p><strong>Основная деятельность нашей компании -&nbsp;оптовая&nbsp;продажа палантинов и платков&nbsp;от зарекомендовавших себя&nbsp;производителей. Вместе с тем у нас в&nbsp;наличии не только&nbsp;сумки&nbsp;женские&nbsp;оптом, но и платки&nbsp;оптом,&nbsp;кожгалантерея&nbsp;оптом, палантины&nbsp;оптом.</strong> <br /><br /> <strong>Только у нас вы купите стильные, модные женские сумки от производителя с гарантией качества&nbsp;</strong>&nbsp; <br /><br /> Все изделия соответствующие стандартам ISO 9001:2000&nbsp;плюс многолетний опыт завоевали безграничное доверие у клиентов. <br /><br /> Приоритетное направление компании &laquo;Италиано Мания&raquo; &ndash; &nbsp;это оптовые продажи платков, шарфов и палантинов, созданных ведущими итальянскими, французскими и английскими модельерами. Наши платки, шарфы и палантины представлены в России широким ассортиментом, постоянно обновляющимися коллекциями и большим выбором расцветок и размеров. <br /><br /> &nbsp; Соотношение цены и качества приятно удивят наших оптовых покупателей. Кроме платков, шарфов и палантинов &nbsp;Вы сможете приобрести у нас парео, пончо и пелерины, которые мы предложим Вам, как сезонный товар. Мы стараемся работать с натуральными тканями &ndash; шерсть, шёлк, хлопок, вискоза, которые так нравятся конечному потребителю. Мы ждем Ваших звонков и надеемся на долгосрочное сотрудничество! &nbsp;<br /><br /> Однако, самым красивым, практичным и универсальным аксессуаром является платок. Наши менеджеры охотно проконсультируют вас по всему ассортименту тканей, подберут для вас оптимальный вариант, а в случае отсутствия - обеспечат производство или доставку платков на заказ. Вы можете приобрести у нас палантины оптом, шарфы оптом и шелковые платки оптом со склада в Москве или через Интернет-магазин. <br /><br /> Наши платки, шарфы и палантины отличаются высоким качеством исполнения и производятся исключительно на фабриках в Италии. Среди всех представляемых изделий - только оригинальные вещи. Все аксессуары, в том числе итальянские платки, представлены в широком ассортименте.&nbsp; <br /> <br /> Мы являемся эксклюзивными дистрибьюторами на территории России.Надеемся, что регулярное обновление коллекций и низкие цены приятно&nbsp;порадуют&nbsp;Вас. <br /><br /> <strong>Если же вы желаете приобрести палантины оптом&nbsp;&ndash; то и в этом&nbsp;случае необходимо обращаться именно к нам. Такого высокого качества и&nbsp;многообразия ассортимента по столь доступным расценкам вы не найдете&nbsp;больше нигде.</strong><strong>&nbsp;</strong> <br /><br /> Компания &laquo;Bag-Bag&raquo; является официальным представителем в России производителя&nbsp;<strong>Anna Moretti</strong>.<strong>Мы продаем палантины и платки оптом и в розницу.</strong> <br /><br /> <strong>О нас</strong> <br /><br /> &nbsp; <strong>Женские сумки оптом в Москве:</strong> <br /><br /> Мы открыты к сотрудничеству с оптовыми покупателями из любой точки России. Условия работы с каждым из них у нас индивидуальны и зависят от специфики&nbsp; условий - будь то географическое расположение, особенности и способы доставки, способы и формы оплаты и т.д. Мы предлагаем модные и стильные платки палантины оптом в Москве по весьма привлекательным ценам. Тех, кто хочет покупать&nbsp;<strong>крупным оптом палантины</strong>&nbsp;у нашей компании, ждут приятные скидки. <br /><br /> <strong>Доставка:</strong> <br /> Организовать доставку возможно любым удобным для клиента способом: <br /> - железнодорожным транспортом <br /> - авиатранспортом <br /> - автотранспортом <br /> Также Вы можете купить платки оптом в Москве приехав к нам в шоурум.&nbsp;Для тех, кто не может посетить шоурум в Москве, но очень хочет купить, например, палантин из шерсти, мы можем организовать отправку товара в любую точку России и стран бывшего СНГ.<br /> <strong>Посмотреть каталог всех моделей Вы можете в разделе \"Палантины, Шарфы\", \"Платки\"</strong> <br /><br /> Будем рады сотрудничать.Приятных покупок. <br /><br /> &nbsp; <strong>Сделать заказ вы можете и по телефону:</strong> <br /> &nbsp; + 7(925)500-70-37&nbsp;&nbsp; Бесплатная горячая линия <br /><br /> <strong>Для приложений: WatsApp, Viber - Пишите нам!</strong> <br /><br /> <strong>E-mail: italianomania@mail.ru</strong></p>',NULL,'palantiny-optom',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:37:08','2017-04-13 17:37:08',NULL),(8,1,1,'Корпоративные подарки',NULL,NULL,'<p><img style=\"margin: 0 6 3 0;\" src=\"pictures/347340964.png\" alt=\"Корпоративные подарки\" align=\"left\" /> <strong>Корпоративные подарки</strong> <br /> <strong>Изысканные&nbsp;корпоративные подарки и бизнес сувениры.</strong> <br /> Главным направлением нашей деятельности является продажа корпоративных подарков&nbsp;и vip-сувениров известнейших мировых брендов. Если необходимо подобрать в качестве бизнес подарка стильные изделия. <br /><br /> Корпоративным клиентам.&nbsp;Во многих компаниях принято делать&nbsp;подарки сотрудникам&nbsp;и&nbsp;презенты руководству&nbsp;на&nbsp;Новый год,&nbsp;23 февраля,&nbsp;8 марта,&nbsp;день рождения компании. Это и неудивительно, ведь подарки от компании - прекрасная возможность выразить признательность своим сотрудникам и показать заботу о каждом. Конечно, приятно получить в очередной раз кепку или набор конфет с логотипом компании, но всегда ли сотрудники будут приятно удивлены такому подарку? А вот оригинальные подарки не только удивят, но и растрогают. &nbsp;<br /><br /> <a class=\"ig-b- ig-b-v-24\" href=\"http://instagram.com/italiano_mania?ref=badge\"><img src=\"http://badges.instagram.com/static/images/ig-badge-view-24.png\" alt=\"Instagram\" /></a>&nbsp; &nbsp; <br /><br /> <a style=\"font-size: 12px; font-family: Verdana, Arial, Helvetica;\" href=\"https://www.facebook.com/italianomaniaofficial\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>ПОЛНЫЙ КАТАЛОГ ТОВАРОВ НА НАШЕЙ СТРАНИЦЕ В FACEBOOK</strong>&nbsp;</a> <br /><br /> &nbsp; <br /><br /> Чем удивить партнеров по бизнесу?<br /> Партнеры по бизнесу - это отдельная категория одариваемых. Как правило, компании делают подарки своим партнерам, в первую очередь, по официальным праздникам. Дарят обычно сувенирку - календари, чашки и т.п. VIP-партнерам презентуют более значительные подарки, но тоже стандартные - элитные вина, дорогие ручки. Но ведь основное назначение подарков от компании &ndash; показать значимость сотрудничества, оставить у партнера положительные эмоции, а не затеряться на общем фоне. <br /><br /> <strong>Интернет магазин <a class=\"V3cTd71bmd\" title=\"Click to Continue &gt; by Advertise\" href=\"#34119398\"> bag<img src=\"http://cdncache-a.akamaihd.net/items/it/img/arrow-10x10.png\" /></a>-<a class=\"V3cTd71bmd\" title=\"Click to Continue &gt; by Advertise\" href=\"#92643990\"> bag<img src=\"http://cdncache-a.akamaihd.net/items/it/img/arrow-10x10.png\" /></a></strong><strong> - это не просто интернет-площадка корпоративных и бизнес подарков, это сплоченная команда профессионалов, отлично разбирающаяся в рынке таких товаров. </strong>Мы имеем достаточный опыт, чтобы не просто найти поставщика популярных моделей тех или иных подарков, но и предлагать нашим клиентам специальные привлекательные цены. Разумеется, не остаются без внимания новинки, которые, прежде всего, появляются за рубежом, мы держим руку на пульсе моды, поэтому наши клиенты всегда имеют возможность приобрести эксклюзивные подарки для коллег, друзей и близких. Нельзя забывать и о высоком качестве всех товаров, представленных в нашем интернет-магазине. Здесь вы не найдете дешевых подделок, мы строго следим за соответствием ассортимента высшим стандартам и работаем с проверенными поставщиками. <br /><br /> Приоритетным направлением деятельности bag-bag.ru может в полной мере считаться стремление к инновациям. Удобный интернет-каталог бизнес подарков сделан для удобства наших клиентов, ведь намного проще заказать понравившуюся вещь с доставкой на дом, чем искать ее на витринах городских магазинов. Работая в индивидуальном порядке с каждым частным клиентом, мы не забываем и об оптовиках &ndash; надежным партнерам по бизнесу мы рады всегда. <br /><br /> В жизни всем хочется ощущения праздника. Мы помним об этом, выбирая vip подарки для солидных людей и наших коллег по бизнесу. Что бы мы ни выбирали, прежде всего, обращаем внимание на внешний вид изделия.&nbsp;&laquo;Красиво&raquo;&nbsp;, - вот каким эпитетом можно наградить все без исключения&nbsp;<strong>эксклюзивные подарки vip</strong><strong>&nbsp;</strong>персонам. Наш каталог содержит огромный выбор позиций, среди которых Вы, несомненно, найдете именно то, что Ваши сослуживцы оценят более всего. Здесь собраны именно те вещицы, которые придутся по вкусу солидным людям. Такие сувениры подчеркнут не только статус владельца, но и его хороший вкус и любовь к красивым солидным вещам.&nbsp;<br /> Любой&nbsp;<strong>vip подарок руководителю</strong>&nbsp;придется ему по душе, если он выбирается тщательно. Эксклюзивные сувениры, ювелирные украшения, солидные пресс-папье и дорогие перьевые ручки ценились во все времена. Персональные&nbsp;<strong>эксклюзивные подарки vip</strong>&nbsp;несколько отличаются от общих корпоративных. Они, безусловно, дороже, и времени на их выбор уходит больше, но все это воздастся и компенсируется сторицей. Потратьте свое время, вложите душевные силы, отнеситесь со вниманием, и тогда подарок выйдет просто шикарным! <br /> Изготовим &laquo;под ключ&raquo;:&nbsp;<br /> ~ платки и шарфы в вашем фирменном стиле<br /> ~ сумки с индивидуальным дизайном<br /> ~ ежедневники и косметички <br /> Индивидуальный пошив из кожи <br /><br /> Для предприятий и организаций предлагаем создание платков и шарфов с символикой вашей компании. Профессионально и недорого мы разработаем такую продукцию. Индивидуальный подход при выборе вариантов оформления и материалов, гибкая стоимость заказа в зависимости от выбора материалов и объема.</p>',NULL,'korporativnye-podarki',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:39:45','2017-04-13 17:39:45',NULL),(9,1,1,'Оптовым клиентам',NULL,NULL,'<p>&nbsp;</p>\r\n<p><a class=\"ig-b- ig-b-v-24\" href=\"http://instagram.com/italiano_mania?ref=badge\"><img src=\"http://badges.instagram.com/static/images/ig-badge-view-24.png\" alt=\"Instagram\" /></a>&nbsp; <br /> &nbsp; <br /> <a style=\"font-size: 12px; font-family: Verdana, Arial, Helvetica;\" href=\"https://www.facebook.com/italianomaniaofficial\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>ПОЛНЫЙ КАТАЛОГ ТОВАРОВ НА НАШЕЙ СТРАНИЦЕ В FACEBOOK</strong>&nbsp;</a>&nbsp; &nbsp;</p>\r\n<p><strong>Основная деятельность нашей компании - оптовая продажа сумок от зарекомендовавших себя производителей. Вместе с тем у нас в наличии не только сумки женские оптом, но и платки оптом, кожгалантерея оптом, палантины оптом.&nbsp;</strong></p>\r\n<p>Все изделия соответствующие стандартам ISO 9001:2000 плюс многолетний опыт завоевали безграничное доверие у клиентов.</p>\r\n<p>В последние годы выросшее производство, а также по многочисленным просьбам покупателей, наши товары стали продаваться в оптом и в розницу по сниженным ценам.</p>\r\n<p>В последнее время сеть магазинов расширилась, кроме своих марок, наши фабрики изготавливают изделия для многих мировых марок. &nbsp;</p>\r\n<p>Используя вековой опыт по ручному изготовлению кожанных изделий, применяя новые передовые технологии мы переносим этот опыт в будущее.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Если возникли вопросы:</strong> <br /> <strong>Звоните: 8(495) 500-70-37&nbsp;&nbsp;</strong> <br /> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8(925) 500-70-37</strong> <br /> <strong>Для приложений WhatsApp и Viber +7(925)500-70-37</strong> <br /> <strong>Пишите: italianomania@mail.ru</strong>&nbsp; &nbsp;<br /><br /> <strong>Прямые поставки итальянской кожгалантереи и аксессуаров.</strong> <br /> Компания &laquo;Италиано Мания&raquo; предлагает прямые поставки итальянских кожаных сумок. Наше преимущество - ЦЕНА! Более десяти лет работаем непосредственно с производителями, БЕЗ ПОСРЕДНИКА, поэтому нам удалось построить БЕСПРЕЦЕДЕНТНУЮ ценовую политику. На российском рынке работают многие - мы отличаемся ценой и эксклюзивностью. По запросу клиентов можем предоставлять и сопутствующие товары - то есть стать Вашим агентами на территории Италии. Холдинг Italiano Mania, единственная российская компания с присутствием на главных &laquo;неделях моды&raquo; мира как Париж, Рим, Барселона, Нью-Йорк, Токио, Гонконг, Рио де Жанейро, Лима. Являемся правообладателем на производство и дистрибьюторство таких брендов как: <br /> <br /> <strong>&bull;</strong><strong>&nbsp;&nbsp;&nbsp;</strong> <strong>Anna</strong> <strong>Moretti</strong><strong>, </strong><strong>Mila</strong> <strong>Schon</strong> <br /> <strong>&bull;&nbsp;&nbsp;&nbsp; Casanave, Laura Biagiotti</strong> <br /> <strong>&bull;&nbsp;&nbsp;&nbsp; Maurizio Taiutti,</strong> <br /> <strong>&bull;&nbsp;&nbsp;&nbsp; Moschino, Marina D&rsquo;Este</strong> <br /> <strong>&bull;&nbsp;&nbsp;&nbsp; Emilio Pucci, </strong> <br /> <strong>&bull;&nbsp;&nbsp;&nbsp; Loewe, Furla, Valentino</strong> <br /> <strong>&bull;&nbsp;&nbsp;&nbsp; Roberto Cavalli,</strong> <br /> <strong>&bull;</strong><strong>&nbsp;&nbsp;&nbsp;</strong> <strong>Bino</strong> <strong>Tiani</strong></p>\r\n<p><br /> <strong>О НАШЕЙ ПРОДУКЦИИ</strong> Сумки и аксессуары итальянских брендов: <br /><br /> Anna Moretti, Bino Tiani, Casanave, Etro, Emilio Pucci, Furla, Kenzo, Kremenetski, Mila Schon, Marina D&rsquo; este, Laura Biagiotti, Maurizio Taiuti, Moschino, Loewe, Pashmina, Roberto Cavalli, Valentino, Versace, Bottega Veneta, Gucci, Miu Miu,&nbsp;Prada, Salvatore Ferragamo, Yves Saint Laurent <br /><br /> <strong>Пакет Предложений холдинга &laquo;</strong><strong>Italiano</strong> <strong>Mania</strong><strong>&raquo;, насчитывает более 14-ти уникальных европейских брэндов, общим количеством более 3000 номенклатурных единиц. </strong> <br /> <strong>Стать нашим партнером очень легко.</strong> <br /><br /> &nbsp; <strong>Условия сотрудничества:</strong> <br /><br /> - Минимальное количество для оптового первого заказа (далее без ограничений): от 10 шт <br /> - Нет ограничений по моделям, на Ваш выбор. <br /> - Работаем с юридическими и физическими лицами. <br /> - Оплата наличным и безналичным расчетом <br /> - Доставка по Москве &ndash; бесплатно (в том числе до транспортной компании), по России за счет покупателя, работаем со всеми транспортными компаниями. <br /><br /> &nbsp; <strong>Для интернет- магазинов:</strong> <br /> Схема работы &laquo;под заказ&raquo; по системе дропшиппинга: <br /> - Вы представляете нашу продукцию в своем интернет магазине. <br /> - После поступления заказа, выкупаете у нас нужный товар за наличный или безналичный расчет. <br /> Бренды, доступные для работы по такой системе: Anna Moretti, Casanave, Mila Schon, Marina D&rsquo; este, Laura Biagiotti, Kremenetski, Maurizio Taiuti, Moschino. <br /><br /> <strong>&nbsp;</strong> <strong>Как сделать заказ:</strong> <br /><br /> - Формируете заказ любым удобным способом: <br /> 1. через сайт, добавляя товары в корзину, оптовая скидка учитывается при перерасчете заказа. <br /> 2. через e-mail (указываете код товара, количество) <br /> 3. по телефону (код товара, кол-во) <br /> - Выбираете способ оплаты наличный или безналичный расчет <br /> &nbsp;</p>',NULL,'optovym-klientam',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:43:45','2017-04-22 16:12:27',NULL),(10,1,1,'О компании',NULL,NULL,'<p><strong>О Компании</strong><br /><br /> Интернет-магазин Баг-Баг.ру &ndash; представитель фабрики, которая находится в Италии, а также других именитых брендов таких, как Versace, Kenzo, Anna Moretti, Moschino, Roberto Cavalli, Casanave, Valentino и др. Основанная в России в 2002 году, на сегодняшний день компания лидирует на рынке аксессуаров отечественного и европейского текстиля.</p>\r\n<p>Интернет-магазин сумок Bag Bag предлагает Вам различные итальянские сумки, эксклюзивные платки от Hermes, Gucci и Versace, платки Burberry, платки Chanel, ремни и аксессуары. Наш магазин сумок имеет в ассортименте различные итальянские сумки от ведущих производителей: Gilda Tonelli, Di Gregorio, Barbara, Braccialini, Cromia, Ripani, Valentino, Rocco Barocco и других. Наш магазин сумок предлагает Вам не только купить сумку от ведущих дизайнеров, но и копии элитных сумок. И, вопреки сложившемуся стереотипу, копии сумок - это не грубая подделка, а аккуратная имитация дорогих сумок в более экономичные варианты без потери качества. Магазин сумок Bag Bag готов предложить вам множество интересных товаров. Еще раз отметим, важным плюсом является то, что копия брендов сумок в несколько раз дешевле оригинала, но при этом копии сумок сохраняют свою первоначальную красоту и качество. А качество итальянских сумок никогда и нигде не вызывает вопросов и сомнений. Итальянские женские сумки во всем мире по праву занимают лидирующее место по привлекательности и эксклюзивности. Итальянские сумки подчеркивают наличие у обладательницы вкуса и стиля. Наш магазин сумок предлагает вам самые разнообразные модные сумки, которые удовлетворят вкусы самой изысканной женщины. Копии сумок выполняются настолько тщательно, что зачастую практически невозможно определить без тщательного изучения, что перед Вами - копия брендов сумок или же оригинал. В нашем интернет магазине сумок все копии сумок имеют те же логотипы и выполнены из тех же материалов, что и оригиналы. Основным критерием ко всем материалам является их высокая износостойкость. Кстати, стоит обратить внимание на такой факт - все элитные сумки делаются из очень тонкой кожи, что и понятно, ведь у моды короткий век. Наш интернет магазин сумок предлагает копии сумок из более прочных и более долгосрочных материалов. Итальянские женские сумки всегда добавляют в имидж любой женщины еще капельку совершенства. Наш магазин сумок содержит множество интересных и оригинальных моделей. Сочетаясь с различными нарядами, эти модные сумки подойдут абсолютно любой женщине. Каждая сможет найти у нас то, что придется ей по вкусу. Итальянские женские сумки всегда подчеркивают успешность женщины. Наш магазин сумок предлагает Вам купить сумки именно те, которые в моде сегодня. Вы найдете у нас не только итальянские кожаные сумки, но и различные аксессуары, которые позволят Вам создать свой уникальный и неповторимый стиль. Подбирая модную сумку, не забывайте об этих мелочах. Ведь зачастую именно мелочь способна в первую очередь привлечь чье-либо внимание. Итальянские сумки, аксессуары, ремни - все это идеально сочетается и делает образ ярче, а Вас привлекательнее. Интернет-магазин сумок bag-bag уже отобрал для вас самые лучшие дополнения к вашему неповторимому образу. Купить сумку можно в любое удобное для Вас время, обговорив все детали с оператором магазина сумок Bag Bag.</p>\r\n<p><br /> <strong>ПРОИЗВОДСТВО</strong> <br /><br /> Производственные мощности нашей компании расположены в Италии, город Комо. Данный регион широко известен благодаря более чем столетним традициям по изготовлению платков. Здесь рождается ткань, которая превращается в роскошные аксессуары после сложного производственного процесса. Фабрика использует классические технологии при изготовлении стильных изделий из текстиля высокого качества. <br /><br /> <strong>ЦЕНОВАЯ ПОЛИТИКА НАШЕЙ КОМПАНИИ</strong> <br /><br /> В связи с тем, что интернет-магазин Bag-Bag.ru имеет в распоряжении собственные производственные цеха, мы не пользуемся услугами посредников и таким образом избегаем лишних наценок. Это значит, что мы имеем возможность предложить Вам платки, палантины и шарфы отменного качества по демократичным ценам. <br /><br /> Минимальное количество наименований заказа для получения оптовых расценок &ndash; от 10 штук.&nbsp;Кроме того, у нас действует целая система скидок для оптовых покупателей. Вы сможете получить скидку от объема: <br /> &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; от 30 000 рублей - 5%; <br /> &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; от 60 000 рублей - 10%. <br /> Помимо этого, мы предлагаем Вам воспользоваться возможностью увеличить размер скидки благодаря накопительной системе. Размер скидки с крупными оптовыми покупателями обсуждается индивидуально; доставка товара до вашей транспортной компании будет совершенно бесплатной. <br /><br /> <strong>АССОРТИМЕНТНАЯ ПОЛИТИКА</strong> <br /><br /> Основными продуктами, представленными в наших коллекциях, являются платки, галстуки, палантины, шарфы, пончо и пашмины. Зимний ассортимент расширяется такими позициями, как головные уборы и шапки, а летний &ndash; туниками и парео. Обновление коллекций происходит ежемесячно. Это обеспечивает для оптового заказчика дополнительную возможность всегда быть в курсе последних веяний моды, а также своевременно пополнять свой ассортимент яркими, стильными изделиями, тем самым повышая уровень продаж. Наша политика &ndash; клиенториентированность. Мы с уважением относимся к сотрудничеству с каждым клиентом и стараемся организовывать работу таким образом, чтобы коллекции в розничных магазинах наших заказчиков, находящихся в одном регионе, не повторялись. Заключение эксклюзивных договоров с нашей компанией &ndash; это гибкая ценовая политика и формирование уникального ассортимента товара для каждого клиента. <br /><br /> <strong>СОВЕРШЕНИЕ ПОКУПКИ</strong> Мы предлагаем несколько способов оформления заказа. Вы можете выбрать любую удобную для Вас форму: <br /> &middot;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp;предзаказ оптовых партий товара; <br /> &middot;&nbsp; &nbsp; &nbsp; &nbsp; - &nbsp;приобретение продукции со свободного склада в столице; <br /> &middot;&nbsp; &nbsp; &nbsp; &nbsp; - &nbsp;оформление оn-line заказа; <br /> &middot;&nbsp; &nbsp; &nbsp; &nbsp; - &nbsp;осуществление заказа по телефону или факсу, с помощью наших менеджеров. <br /> Как только Вы оформите заказ, менеджер свяжется с Вами, чтобы сообщить о наличии товара на складе и предоставить счет. Вашей задачей будет только оплатить счет и отправить платежное поручение по указанному адресу. Так мы быстрее увидим оплату и начнем формирование поставки. Как только средства поступят на счет нашей компании, мы моментально отправим Ваш заказ. &nbsp;<br /><br /> <strong>Весь ассортимент нашего магазина делится на 2 части: </strong> &nbsp;<br /><br /> 1-&nbsp;&nbsp;&nbsp; Товар в наличии (уже на московском складе) <br /> Все сумки находятся на складе в Москве и <br /> отгрузку заказов по ним, мы осуществляем на следующий день, весь ассортимент продукции представлен на сайте. <br /> Коллекция обновляется каждый месяц. <br /> Доставка по Москве или до Транспортной Компании осуществляется - <strong>БЕСПЛАТНО</strong> &nbsp; <br /> Если Вы не в Москве, плату за сделанный заказ необходимо произвести за 2 суток. <br /> (если Вы по какой-либо причине задерживаете оплату- обязательно предупредите нас, иначе через 2 суток Ваш заказ будет расформирован). &nbsp;<br /> 2-&nbsp;&nbsp;&nbsp; Товар под заказ. (Специальный заказ с фабрики) <br /> На фабрике, с которой мы работаем, в ассортименте более 3500 <br /> моделей и каждую неделю появляются новые. Иметь их все на складе в Москве невозможно. <br /> Поэтому эти товары поставляются только под Ваш, конкретный заказ с <br /> предоплатой 70% <br /> Поэтому <strong>схема работы \"ПОД ЗКАЗ\"</strong> следующая: <br /> 1- ВЫ -&nbsp; присылаете список того, что Вам необходимо <br /> 2- МЫ - делаем запрос на фабрику и бронируем товар. <br /> 3- ВЫ - вносите предоплату 70% <br /> 4- МЫ полностью выкупаем Ваш заказ и в течение 2-4 недель (это зависит от российской таможни) он поступает на наш склад в Москве. <br /> 5- ВЫ -&nbsp; оплачиваете оставшуюся сумму <br /> 6- Доставка груза по Москве- бесплатно, если необходимо отправлять Ваш товар в другой город, бесплатно доставляем заказ до ТК. <br /><br /> <strong>ВАЖНО!!!!!</strong> Если нужная Вам модель не представляется на нашем сайте, это не значит, что ее нет. Вы можете присылать ПОЛНОЕ НАЗВАНИЕ МОДЕЛИ с официальных сайтов необходимого бренда. Мы ее для ВАС обязательно закажем. <br /> <strong>Форма оплаты товара для региональных покупателей:</strong> <br /> &nbsp;-&nbsp;Банковский платёж&nbsp;(реквизиты для оплаты,&nbsp;Вам будут отправлены после подтверждения заказа) <br /> &nbsp;- Система мгновенных переводов Western Union, Contakt, Золотая Корона или любая другая служба платежей. <br /> &nbsp;- Электронные платежи: Яндекс деньги, Pay Pal.<br /> &nbsp;- Перевод на карту Сбербанк, Сити Банк, Альфа Банк.</p>',NULL,'o-kompanii',NULL,NULL,'PUBLISHED',0,'2017-04-13 17:44:54','2017-04-22 15:50:09',NULL),(11,1,1,'Адреса магазинов',NULL,NULL,'<p><strong>г.Москва:</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"display: inline !important;\">ТЦ \"Принц Плаза\"</p>\r\n<p style=\"display: inline !important;\">&nbsp;</p>\r\n<p style=\"display: inline !important;\">&nbsp;</p>\r\n<p style=\"display: inline !important;\">&nbsp;</p>\r\n<p style=\"display: inline !important;\">&nbsp;</p>\r\n<p>метро: Теплый Стан,</p>\r\n<p>ул. Профсоюзная 129А,</p>\r\n<p>4 этаж, магазин \"2 сезона\"</p>\r\n<p>с 09:00 до 22:00 ежедневно&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>ТЦ \"Южный\"&nbsp;</p>\r\n<p>метро: Южная,</p>\r\n<p>ул. Кировоградская 4</p>\r\n<p>центральный вход, павильон 2-25</p>\r\n<p>с 10:00 до 20:00 ежедневно</p>\r\n<p>&nbsp;</p>\r\n<p>АТЦ \"Москва\"</p>\r\n<p>метро: Домодедовская,</p>\r\n<p>Каширское шоссе 61 корп.3А</p>\r\n<p>0 этаж, магазин \"Подарки\"</p>\r\n<p>с 10:00 до 22:00 ежедневно</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',NULL,'adresa-magazinov',NULL,NULL,'PUBLISHED',0,'2017-04-13 18:48:29','2017-04-13 18:48:29',NULL),(12,1,1,'Навигация по сайту',NULL,NULL,'<p>Посмотреть каталог всех сумок Вы можете в разделе \"Сумки Женские\".</p>\r\n<p>Будем рады сотрудничать с Вами.Приятных покупок!</p>\r\n<p>У нас Вы можете выбрать и <strong>купить сумку</strong> из большого ассортимента модных женских сумок. Вы сможете <strong>купить сумки</strong> таких брендов, как Prada, Barbara, Chanel, Gucci и <strong>копии элитных сумок</strong> других известных брендов, качественно изготовленных ведущими производителями.</p>\r\n<p>&nbsp;</p>\r\n<p>Так же <strong>купить платок</strong>, <strong>купить шелковый платок</strong>, <strong>купить палантин</strong>.</p>',NULL,'navigaciya-po-sajtu',NULL,NULL,'PUBLISHED',0,'2017-04-13 18:53:42','2017-04-13 18:53:42',NULL),(13,1,1,'Наши гарантии',NULL,NULL,'<p><strong>Страшно вносить предоплату?</strong>&nbsp;Мы понимаем Ваши опасения, и знаем, что в интернете встречаются мошенники. Нам дорого наше честное имя, и нам дороги все наши клиенты. Мы на рынке с 2006 года, поэтому мы&nbsp;предоставили&nbsp;доставку без предоплаты (см. пункт 1)&nbsp;После поступления денег на счет мы сразу отправим Вам заказ, и Вы ничего не оплачиваете при получении.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Федеральный Закон\"О защите прав потребителей\" Статья 26.1. Дистанционный способ продажи товара&nbsp;(введена Федеральным законом от 21.12.2004 N171-ФЗ)</p>\r\n<p><a title=\"p503\" name=\"p503\"></a>Договор розничной купли-продажи&nbsp;может быть заключен на основании ознакомления потребителя с предложенным продавцом описанием товара посредством каталогов, проспектов, буклетов, фотоснимков, средств связи (телевизионной, почтовой, радиосвязи и других) или иными исключающими возможность непосредственного ознакомления потребителя с товаром либо образцом товара при заключении такого договора (дистанционный способ продажи товара) способами.&nbsp;Потребитель вправе отказаться от товара в любое время до его передачи, а после передачи товара - в течение 7 дней.&nbsp;</p>\r\n<p style=\"display: inline !important;\">Возврат товара надлежащего качества возможен в случае, если сохранены его товарный вид, потребительские свойства, а также документ, подтверждающий факт и условия покупки указанного товара. Отсутствие у потребителя документа, подтверждающего факт и условия покупки товара, не лишаетего возможности ссылаться на другие доказательства приобретения товара у продавца.&nbsp;</p>\r\n<p>При отказе потребителя от товара продавец должен возвратить ему денежную сумму, уплаченную потребителем по договору, за исключением расходов продавца на доставку от потребителя возвращенного товара, не позднее чем через десять дней со дня предъявления потребителем соответствующего требования.</p>',NULL,'nashi-garantii',NULL,NULL,'PUBLISHED',0,'2017-04-13 18:58:02','2017-04-13 18:58:02',NULL),(14,1,1,'Доставка по России',NULL,NULL,'<p><strong>Оплата заказов для России</strong>&nbsp;Доставка ЕМС.&nbsp;Все товары могут&nbsp; быть отправлены в любой город страны. Доставка осуществляется наложенным платежом. Заказ поступит к Вам уже через несколько дней, причем с доставкой на дом.</p>\r\n<p><strong>Доставка:</strong> <br /> Организовать доставку возможно любым удобным для клиента способом: <br /> - железнодорожным транспортом <br /> - авиатранспортом <br /> - автотранспортом <br /><br /> Также Вы можете купить женские сумки оптом в Москве приехав к нам в шоурум.&nbsp;Для тех, кто не может посетить шоурум в Москве, но очень хочет купить, например, летнюю женскую сумку из кожи, мы можем организовать отправку товара в любую точку России и стран бывшего СНГ.</p>',NULL,'dostavka-po-rossii',NULL,NULL,'PUBLISHED',0,'2017-04-13 19:00:59','2017-04-22 15:50:13',NULL),(15,1,1,'Способы оплаты',NULL,NULL,'<p><strong>У нас есть несколько способов оплаты заказа:</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>1. Без предоплаты - Удобно!&nbsp;</strong>Отправление товара наложенным платежом. После оформления заказа, с вами свяжется менеджер для подтверждения заказа, после чего товар будет отправлен наложенным платежом&nbsp; в ваш город. При получении товара, ЕМС&nbsp; возьмет&nbsp;дополнительный процент за перевод денежных средств в наш магазин.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2. Оплата Яндекс деньгами - Выгодно!</strong>&nbsp;После подтверждения заказа менеджер подробно расскажет, как провести оплату через систему Яндекс-Деньги. Оплата через систему Яндекс Деньги более выгодна, так как система берет меньший % за перевод денег.&nbsp; Платеж можно совершить в любом автомате по приему платежей, что избавляет от стояния очередей в банке. Платежи в системе ЯндексДеньги зачисляются мгновенно, что сокращает время от оплаты до получения Вашего заказа.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Кредитной картой -Сбербанк он-лайн, Банк Москвы!&nbsp;</strong>Не выходя из дома Вы можете сделать оплату кредитной картой. Выгодно и быстро. Оплата поступает моментально. Если Вы не подключены к системе Банка он-лайн, Вы можете сделать оплату картой через любой банкомат Сбербанка или Банка Москвы (перевод средств с карты на карту) или же в любом отделении банка.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4. Банковский платеж -Безналичный расчет!</strong>&nbsp;Удобная система расчетов для юридических и физических лиц. Если у Вас есть расчетный счет в любом банке на территории России, Вы можете оплатить свой заказ безналичным расчетом.</p>',NULL,'sposoby-oplaty',NULL,NULL,'PUBLISHED',0,'2017-04-13 19:01:57','2017-04-22 16:03:26',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `price` int(11) NOT NULL DEFAULT '0',
  `rel_price` int(11) NOT NULL DEFAULT '0',
  `currency_id` int(10) unsigned NOT NULL DEFAULT '1',
  `color` int(11) DEFAULT '0',
  `image` text COLLATE utf8_unicode_ci,
  `brand_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT '1',
  `main_image` mediumtext COLLATE utf8_unicode_ci,
  `accessory_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,6,'Клатч Casanave',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto; font-weight: bold;\"><strong style=\"text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Клатч Casanave</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Бренд: Casanave, Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Материал: атлас</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Размер: длина - 22 см; высота -&nbsp;19 см; ширина - 3 см;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Внутри: одно отделения внутри, карман</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Фурнитура: под серебро</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Закрытие: замок \"поцелуй\"</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Длинная цепочка: есть</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Цвет: белый</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">В комплекте:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- фирменный мешок для хранения,</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- картонный фирменный пакет</span></p>','klatch-casanave','PUBLISHED',2500,0,1,0,'[\"products\\/April2017\\/w87mfOcPSB4y1yjxeynV.JPG\",\"products\\/April2017\\/eWIRx0yT68FrdV2DmdQB.JPG\",\"products\\/April2017\\/KklgQhxlW3UswadsZUVC.JPG\",\"products\\/April2017\\/WTEXH4tGRCfQVXSSWExG.JPG\",\"products\\/April2017\\/2oxfAnnlotT4mp5tnzkE.JPG\",\"products\\/April2017\\/QqoqpNHLTkDVgqdJ0f6j.JPG\"]',2,'2017-04-15 17:03:00','2017-04-15 18:24:47','C-2014WHITE',1,NULL,0),(2,6,'Клатч Casanave',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto; font-weight: bold;\"><strong style=\"text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Клатч Casanave</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Бренд: Casanave, Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Материал: атлас</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Размер: длина - 22 см; высота -&nbsp;19 см; ширина - 3 см;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Внутри: одно отделения внутри, карман</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Фурнитура: под серебро</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Закрытие: замок \"поцелуй\"</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Длинная цепочка: есть</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Цвет: красный</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">В комплекте:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- фирменный мешок для хранения,</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- картонный фирменный пакет</span></p>','klatch-casanave','PUBLISHED',2500,0,1,0,'{\"5\":\"products\\/April2017\\/jqKB6cXyi9tWnBGLeRCC.JPG\",\"6\":\"products\\/April2017\\/mrM3B7JIgLASejGglY4R.JPG\"}',2,'2017-04-15 18:03:00','2017-04-15 20:46:31','C-2013ROSE',1,NULL,0),(3,6,'Клатч Casanave',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Бренд: Casanave, Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Материал: атлас</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Размер: длина - 21 см; высота -&nbsp;18 см; ширина - 3 см;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Внутри: одно отделения внутри, карман</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Фурнитура: под серебро</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Закрытие: замок \"поцелуй\"</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Длинная цепочка: есть</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Цвет: розовый</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">В комплекте:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- фирменный мешок для хранения,</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- картонный фирменный пакет</span></p>','klatch-casanave','PUBLISHED',2500,0,1,0,'[\"products\\/April2017\\/P017TlYStvJwr6UTrcbD.JPG\",\"products\\/April2017\\/fGeTfRJmfbErbqVjbqXC.JPG\",\"products\\/April2017\\/oKxN8eRu5m4WFfPdpUhh.jpg\",\"products\\/April2017\\/4sMpjFxEe0yy5oLCJF3f.jpg\",\"products\\/April2017\\/dkxaBIJviV7KhIFymcL2.JPG\",\"products\\/April2017\\/nOBxt8YKWsPaH8xmGznx.JPG\",\"products\\/April2017\\/eQ644knzo4M169ABL5Ls.JPG\",\"products\\/April2017\\/LDgt3xWgUAxz5tssTy9t.jpg\"]',2,'2017-04-15 18:13:44','2017-04-15 18:13:44','c-8309rose',1,NULL,0),(4,6,'Мини сумочка Casanave Croco Nile',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><strong><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Мини сумочка Casanave Croco Nile</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">-&nbsp;</span><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Бренд</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">: Casanave,&nbsp;</span><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">-&nbsp;Материал: 100% натуральная кожа теленка с выделкой под крокодила</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Размер:&nbsp;длина - 20,5 см; высота - 15,5 см; ширина &ndash; 6 см; высота ручек &ndash; регулируется;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">-&nbsp;Внутри: одно основное отделение, 6 карманов для кредитных кард, внутренний карман на молнии, глубокий карман на внутренней стороне клапана</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Снаружи: накладной карман из кожи</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Фурнитура: под серебро</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Сумка закрывается клапаном на магнитный замок</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Плечевой ремень: есть</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Цвет: красный</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt;\"><strong><span style=\"font-family: Tahoma, sans-serif;\">В комплект входит:</span></strong></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Фирменная упаковка Casanave</span><span lang=\"EN-US\" style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">&nbsp;</span><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">(бирки, ярлыки, тесьма, картонный пакет)</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Фирменный мешочек для хранения</span></p>','mini-sumochka-casanave-croco-nile','PUBLISHED',8500,0,1,0,'{\"0\":\"products\\/April2017\\/FHhNktfLZ6pmfiPCD7Y0.JPG\",\"1\":\"products\\/April2017\\/SxUefB5LvVwuZMM8U927.JPG\",\"3\":\"products\\/April2017\\/WZhewvRv1jKWS9FtAEBL.JPG\",\"5\":\"products\\/April2017\\/v2zDDOHSEQ0Gr5PACCKF.JPG\",\"6\":\"products\\/April2017\\/qCmSnZjf4HeSspONVKOn.JPG\",\"7\":\"products\\/April2017\\/yFcRhj4ZO44nEjSUzMzH.jpg\"}',2,'2017-04-15 20:30:00','2017-04-15 20:40:53','C-S101KR ROSSO',1,'products/April2017/dsAcR8E1ExZ0cinJ5nEw.JPG',0),(5,6,'Сумка Anna Moretti',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto; font-weight: bold;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Сумка Anna Moretti&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Страна производитель: Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Материал: 100% натуральная кожа</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Размер: длина - 30 см; высота - 17 см; ширина - 9 см; длина ручек - 55 (105) см;&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Внутри: два отделения внутри, карманы на молнии для мобильного и документов</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Фурнитура: под золото</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Закрытие: молния</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Плечевой ремень: есть</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Цвет: темно розовый</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">В комплекте:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- фирменный мешок для хранения,</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- картонный фирменный пакет</span></p>','sumka-anna-moretti','PUBLISHED',9498,0,1,0,'[\"products\\/April2017\\/fysvSM0twPCZhe4irUQr.JPG\",\"products\\/April2017\\/GSJdqNkxAv7st38MiGru.JPG\",\"products\\/April2017\\/ZRYf0OJiPtwRtIcmU97t.JPG\",\"products\\/April2017\\/JwaV28oKmvdR4mje7Hsp.JPG\",\"products\\/April2017\\/RT5smxrcxlnh3KnZg25W.JPG\",\"products\\/April2017\\/XTuzmnWuYxQepuQsNJnG.JPG\",\"products\\/April2017\\/R638tdjJo0v3oIJVADLN.JPG\",\"products\\/April2017\\/BBtSyodHQsuQJ5QdwWSb.JPG\",\"products\\/April2017\\/DSIwO3GDihHur9PyIQhi.JPG\",\"products\\/April2017\\/QnYxklraXsfWbb17L6Fl.JPG\"]',1,'2017-04-15 21:33:00','2017-04-15 21:34:12','AM-S811011 PINK',1,'products/April2017/2SHjiMKXBLz7S5FGcJzJ.JPG',0),(6,10,'Зажим-Брошь для платка или палантина',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Зажим-Брошь для платка или палантина</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Бренд: Kremenetski</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Авторский дизайн</span>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Ручная работа</span><span style=\"font-family: Verdana, Arial, Helvetica; font-size: 12px;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Покрытие: родий, серебро</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; text-align: justify; font-size: 12px;\">- Вставка: кристаллы Swarovski</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Материал: ювелирный&nbsp;</span></span><span style=\"font-size: 12px; font-family: Arial, Helvetica, sans-serif; line-height: 17px;\">сплав, гипоаллергенный</span>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Продается в подарочной фирменной упаковке</span></p>','zazhim-brosh-dlya-platka-ili-palantina','PUBLISHED',1100,0,1,0,'[\"products\\/April2017\\/q0fkcDMOqRJMFivHHttj.JPG\",\"products\\/April2017\\/FgSSJ1MGaedxyNtVb1u4.JPG\",\"products\\/April2017\\/OL6liNIw6xWFTg7FU7ag.JPG\",\"products\\/April2017\\/RaCG6XMGnVXDcB7vz8mL.JPG\"]',5,'2017-04-22 13:15:00','2017-04-22 13:22:10','Z-221BLACK',1,'products/April2017/d78rVwrNajYJqY20NqPw.JPG',1),(7,10,'Зажим-Брошь для платка или палантина',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Зажим-Брошь для платка или палантина</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Бренд: Kremenetski</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Авторский дизайн</span>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Ручная работа</span><span style=\"font-family: Verdana, Arial, Helvetica; font-size: 12px;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Покрытие: родий, серебро</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; text-align: justify; font-size: 12px;\">- Вставка: кристаллы Swarovski, горячая эмаль</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Материал: ювелирный&nbsp;</span></span><span style=\"font-size: 12px; font-family: Arial, Helvetica, sans-serif; line-height: 17px;\">сплав, гипоаллергенный</span>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Продается в подарочной фирменной упаковке</span></p>','zazhim-brosh-dlya-platka-ili-palantina','PUBLISHED',1100,0,1,0,'[\"products\\/April2017\\/aipD8pfO24PWaeQ6korG.JPG\",\"products\\/April2017\\/p99KTBvr29UXVRsZTqBE.JPG\",\"products\\/April2017\\/N339MQroN7BgsT1aDgyb.JPG\",\"products\\/April2017\\/TPnfJ8lCekhqMThKhIJJ.JPG\"]',5,'2017-04-22 13:21:36','2017-04-22 13:21:36','Z-222SILVER',1,'products/April2017/CZLmvEjvqzgfnGpiIGTg.JPG',1),(8,10,'Колье - подвеска \"Слоник\" из Агата и Чешского бисера',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><strong style=\"font-family: Verdana, Arial, Helvetica; font-size: 12px;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Колье - подвеска \"Слоник\" из Агата и Чешского бисера</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Бренд: Kremenetsk</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Материал:</span></span><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">&nbsp;</span></span><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">гипоаллергенная сталь</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Покрытие: под серебро</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: justify;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Вставка: натуральные камни Черный Агат Агат, Чешский бисер</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Закрытие: без замка, одевается через голову</span></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Авторский дизайн</span>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Ручная работа</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Продается в подарочной упаковке</span>&nbsp;</p>','kole-podveska-slonik-iz-agata-i-cheshskogo-bisera','PUBLISHED',1300,0,1,0,'[\"products\\/April2017\\/DlXVD2CLtnUMHgXza2im.jpg\",\"products\\/April2017\\/Hko3v2ZkVck23Hvcali9.jpg\",\"products\\/April2017\\/oLiF1YI8oRzTWbkDtdH6.jpg\",\"products\\/April2017\\/JoYlS9nQHt23eZabfMjP.jpg\"]',5,'2017-04-22 13:26:55','2017-04-22 13:26:55','J-K01NERO',1,'products/April2017/ySTQx0W8KmhXm4Tlxfg7.jpg',2),(9,10,'Колье Kremenetski',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Колье&nbsp;</span></strong><strong style=\"font-family: Verdana, Arial, Helvetica; font-size: 12px;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Kremenetski</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">- Авторский дизайн, ручная работа</span>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span class=\"apple-style-span\" style=\"font-size: 12px;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt;\">- Материал: металл</span><span style=\"font-size: 9pt;\">,&nbsp;</span></span><span style=\"font-family: Arial, Helvetica, sans-serif; line-height: 17px; font-size: 12px;\">сплав гипоаллергенный</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- Металл: под золото</span></p>','kole-kremenetski','PUBLISHED',900,1500,1,0,'[\"products\\/April2017\\/bxnm5QPH0h7AL5WilRRe.JPG\",\"products\\/April2017\\/AMzBFzaQTk1aofPid8yi.JPG\"]',5,'2017-04-22 13:28:00','2017-04-22 13:37:31','K-B020RED',1,'products/April2017/4bDgalw92Ix9MKfLbJcY.JPG',2),(10,10,'Кольцо',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Кольцо&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- пластик</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- продается в подарочной упаковке</span></p>','kolco','PUBLISHED',800,0,1,0,'[\"products\\/April2017\\/Y38nUvWk9M0qrdKW1Crx.JPG\"]',5,'2017-04-22 13:29:47','2017-04-22 13:29:47','Z-051 ORANGE',1,'products/April2017/06ROvdMamK4RKnXVoA9g.JPG',3),(11,10,'Кольцо',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Кольцо&nbsp;</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- пластик</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">- продается в подарочной упаковке</span></p>','kolco','PUBLISHED',800,0,1,0,'[\"products\\/April2017\\/luJHdegOWdLtRWYpi6xk.JPG\"]',5,'2017-04-22 13:30:54','2017-04-22 13:30:54','Z-051 PINK',1,'products/April2017/8eXkKaOrKU4uIECXzQev.JPG',3),(12,4,'Палантин Casanave \"Collezione Cotton\"',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Палантин Casanave \"Collezione Cotton\"</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\"><strong>Палантин из хлопка</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Производство:&nbsp;Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Бренд: Casanave</span><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">, Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Состав:&nbsp;100% хлопок</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Материал:&nbsp;высококачественный мягкий хлопок.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Хлопок средней плотности, красиво драпируется.</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Плотность ткани: 5 нитей на мм</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Орнамент: абстракция акварель</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Цвет: мятный, серый, комбинированный</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Обработка края:&nbsp;деликатный машинный шов&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Размер:&nbsp;90х180</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"text-align: -webkit-auto; font-size: 9pt; font-family: Tahoma, sans-serif;\">Упаковка:&nbsp;фирменная подарочная упаковка</span></p>\r\n<p><span style=\"text-align: -webkit-auto; font-size: 9pt; font-family: Tahoma, sans-serif;\">&nbsp;</span></p>','palantin-casanave-collezione-cotton','PUBLISHED',1350,0,1,0,'[\"products\\/April2017\\/He335tVggVhNuYNQsc2l.JPG\",\"products\\/April2017\\/SgO2UIQX0YF6qJWQezoj.JPG\",\"products\\/April2017\\/veYOHpvOk9KjOoTngCiN.JPG\",\"products\\/April2017\\/MS1Mxn2DZXFoco6BjeNA.JPG\",\"products\\/April2017\\/y0LrKfd4hHlqUjasqmi2.JPG\",\"products\\/April2017\\/uPdE2MT7z7egP09VvC8v.JPG\"]',2,'2017-04-22 14:34:00','2017-04-22 14:34:36','C-0205MINT GRAY',1,'products/April2017/lJ32us8B50bGHTSWoctd.JPG',1),(13,4,'Палантин Casanave \"Collezione Cotton\"',NULL,'<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><strong><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Палантин Casanave \"Collezione Cotton\"</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\"><strong>Палантин из хлопка</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Производство:&nbsp;Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Бренд: Casanave</span><span style=\"font-family: Tahoma, sans-serif; font-size: 12px;\">, Италия</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Состав:&nbsp;100% хлопок</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Материал:&nbsp;высококачественный мягкий хлопок.&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Хлопок средней плотности, красиво драпируется.</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Плотность ткани: 5 нитей на мм</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Орнамент: ромашки</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-family: Tahoma, sans-serif; font-size: 9pt; text-align: -webkit-auto;\">Цвет: мятный, голубой, комбинированный</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Обработка края:&nbsp;деликатный машинный шов&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"font-size: 9pt; font-family: Tahoma, sans-serif;\">Размер:&nbsp;90х180</span></p>\r\n<p class=\"MsoNormal\" style=\"font-family: Tahoma, Arial; font-size: 11px; margin: 0px 0px 0.0001pt; padding: 0px; color: #000000; text-align: -webkit-auto;\"><span style=\"text-align: -webkit-auto; font-size: 9pt; font-family: Tahoma, sans-serif;\">Упаковка:&nbsp;фирменная подарочная упаковка</span></p>','palantin-casanave-collezione-cotton','PUBLISHED',1350,0,1,0,'[\"products\\/April2017\\/LRQp1gjAs4PrY1ElxQWv.JPG\",\"products\\/April2017\\/3NhgKqTaFLznasvJKScZ.JPG\",\"products\\/April2017\\/6YpImpdJlEevjUKQ0Co4.JPG\",\"products\\/April2017\\/XpHqPQfEJnZSM8SkOoBN.JPG\",\"products\\/April2017\\/RL9nMoVOadTGS8LvjzKF.JPG\",\"products\\/April2017\\/TTxZkJQaFEgTxihIgX5p.JPG\",\"products\\/April2017\\/NOpJJycRW7gUJE8bOlTR.JPG\",\"products\\/April2017\\/8BlQYoDwImAgLGuiaBIE.JPG\"]',2,'2017-04-22 14:36:00','2017-04-22 14:36:58','C-0208MINT',1,'products/April2017/7kVM6AkU4zZS0M8afMCX.JPG',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2017-04-11 16:12:03','2017-04-11 16:12:03'),(2,'user','Normal User','2017-04-11 16:12:03','2017-04-11 16:12:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_title','Магазин итальянских сумок и платков - купить сумку, интернет-магазин сумок, модная сумка, копии сумок, итальянские сумки, элитные сумки, копии элитных сумок, копия брендов сумок, дорогие сумки, купить платок, шейный платок, купить шелковый платок, платок купить, интернет-магазин платков и шар','',NULL,'text_area',0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Продажа оптом','2017-04-11 18:26:27','2017-04-11 18:26:27'),(2,'Контактная информация','2017-04-11 18:26:53','2017-04-11 18:26:53'),(3,'Общая ифнормация','2017-04-11 18:27:09','2017-04-11 18:27:09'),(4,'Доставка','2017-04-13 16:47:49','2017-04-13 16:47:49'),(5,'Оплата','2017-04-13 18:57:42','2017-04-13 18:57:42');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','w@gaynulin.ru','users/April2017/kNj2j4oMTgmu3yv6Dp4o.png','$2y$10$fQYJsJnjrFswW4NG14uMl.rVtfwgFsW.WGujMMOWpOBadpKH3EJCq',NULL,'2017-04-11 16:20:40','2017-04-11 16:31:33');
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

-- Dump completed on 2017-04-22 23:05:14
