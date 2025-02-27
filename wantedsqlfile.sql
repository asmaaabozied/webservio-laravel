-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: homeServices
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(20,17) NOT NULL DEFAULT '0.00000000000000000',
  `longitude` double(20,17) NOT NULL DEFAULT '0.00000000000000000',
  `default` tinyint(1) DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Office','2388 Stoltenberg Roads Apt. 236\nNew Robertchester, CO 63411',51.37995914000000000,11.78365706000000000,0,8,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(2,'Office','3463 Brennan Landing Apt. 152\nRansomville, ID 86653',51.26217998000000000,9.34333561000000000,0,5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(3,'Work','8420 Harris Station\nAlexhaven, WY 85502-8871',50.35498932000000000,11.35090071000000000,0,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(4,'Building','655 Esteban Fall\nJazmynechester, CO 39002-5988',51.53547182000000000,10.92948953000000000,0,5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(5,'Work','15553 Grady Ranch Suite 000\nSouth Elizabethborough, IL 79764-6330',50.08615437000000000,10.99958905000000000,0,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(6,'Building','2838 Keeling Pike\nAbagailfort, WA 51791',51.59899544000000000,11.86117594000000000,0,5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(7,'Building','113 Alessandra Extensions Apt. 216\nAllyville, AK 05392',51.08666922000000000,10.66794661000000000,0,4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(8,'Building','13776 Alexie Dam\nNew Jaedenland, TN 32765-3169',50.23078831000000000,9.54013698000000000,0,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(9,'Home','11781 Ondricka Mount\nEast Lane, IL 16482-9283',51.82035091000000000,10.48326262000000000,0,8,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(10,'Office','965 Koch Brook Apt. 495\nBurniceberg, AZ 71479',51.10544812000000000,11.64595072000000000,0,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(11,'Office','29214 Kristin Wells\nNorth Pabloton, SC 65306-9419',51.67626685000000000,11.87418183000000000,0,4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(12,'Work','279 Xander Shoals Suite 879\nPort Bertburgh, MI 78976-9100',51.56128352000000000,10.98848087000000000,0,6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(13,'Home','353 Savanna Forks\nNew Shirleyville, NJ 14524',51.07774195000000000,11.88446716000000000,0,6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(14,'Office','700 O\'Kon Land\nHeaneyfort, VA 00254',50.27599852000000000,11.92679512000000000,0,6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(15,'Home','5864 Jovany Branch Suite 476\nMajorburgh, NH 76141',51.75926453000000000,10.91868880000000000,0,8,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(16,'Home','63441 Selena Vista Apt. 295\nLake Lewisberg, RI 50010',51.48306487000000000,10.17574961000000000,0,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(17,'Office','9857 Fadel Light Apt. 137\nNew Zita, UT 52845-1811',50.40240283000000000,10.84096169000000000,0,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(18,'Hotel','548 Aurore Junctions Apt. 739\nEast Fermin, FL 21687',50.41315004000000000,11.20283990000000000,0,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(19,'Building','760 Adelia Track\nDemarcusborough, WA 97826-5700',50.30870488000000000,11.54376910000000000,0,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(20,'Office','933 Chance Pine Suite 416\nOctaviachester, MT 47569',50.92500356000000000,10.85409395000000000,0,3,'2022-03-22 16:41:56','2022-03-22 16:41:56');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_settings_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_settings`
--

LOCK TABLES `app_settings` WRITE;
/*!40000 ALTER TABLE `app_settings` DISABLE KEYS */;
INSERT INTO `app_settings` VALUES (7,'date_format','l jS F Y (H:i:s)'),(8,'language','en'),(17,'is_human_date_format','1'),(18,'app_name','Home Services'),(19,'app_short_description','Manage Mobile Application'),(20,'mail_driver','smtp'),(21,'mail_host','smtp.hostinger.com'),(22,'mail_port','587'),(23,'mail_username','test@demo.com'),(24,'mail_password','-'),(25,'mail_encryption','ssl'),(26,'mail_from_address','test@demo.com'),(27,'mail_from_name','Smarter Vision'),(30,'timezone','America/Montserrat'),(32,'theme_contrast','light'),(33,'theme_color','primary'),(34,'app_logo','020a2dd4-4277-425a-b450-426663f52633'),(35,'nav_color','navbar-dark navbar-navy'),(38,'logo_bg_color','text-light  navbar-navy'),(66,'default_role','admin'),(68,'facebook_app_id','518416208939727'),(69,'facebook_app_secret','93649810f78fa9ca0d48972fee2a75cd'),(71,'twitter_app_id','twitter'),(72,'twitter_app_secret','twitter 1'),(74,'google_app_id','527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),(75,'google_app_secret','FpIi8SLgc69ZWodk-xHaOrxn'),(77,'enable_google','1'),(78,'enable_facebook','1'),(93,'enable_stripe','1'),(94,'stripe_key','pk_test_pltzOnX3zsUZMoTTTVUL4O41'),(95,'stripe_secret','sk_test_o98VZx3RKDUytaokX4My3a20'),(101,'custom_field_models.0','App\\Models\\User'),(104,'default_tax','10'),(107,'default_currency','$'),(108,'fixed_header','1'),(109,'fixed_footer','0'),(110,'fcm_key','AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),(111,'enable_notifications','1'),(112,'paypal_username','sb-z3gdq482047_api1.business.example.com'),(113,'paypal_password','-'),(114,'paypal_secret','-'),(115,'enable_paypal','1'),(116,'main_color','#F4841F'),(117,'main_dark_color','#F4841F'),(118,'second_color','#08143A'),(119,'second_dark_color','#CCCCDD'),(120,'accent_color','#8C9DA8'),(121,'accent_dark_color','#9999AA'),(122,'scaffold_dark_color','#2C2C2C'),(123,'scaffold_color','#FAFAFA'),(124,'google_maps_key','-'),(125,'mobile_language','en'),(126,'app_version','1.0.0'),(127,'enable_version','1'),(128,'default_currency_id','1'),(129,'default_currency_code','USD'),(130,'default_currency_decimal_digits','2'),(131,'default_currency_rounding','0'),(132,'currency_right','1'),(133,'distance_unit','km'),(134,'default_theme','light'),(135,'enable_paystack','1'),(136,'paystack_key','pk_test_d754715fa3fa9048c9ab2832c440fb183d7c91f5'),(137,'paystack_secret','sk_test_66f87edaac94f8adcb28fdf7452f12ccc63d068d'),(138,'enable_flutterwave','1'),(139,'flutterwave_key','FLWPUBK_TEST-d465ba7e4f6b86325cb9881835726402-X'),(140,'flutterwave_secret','FLWSECK_TEST-d3f8801da31fc093fb1207ea34e68fbb-X'),(141,'enable_stripe_fpx','1'),(142,'stripe_fpx_key','pk_test_51IQ0zvB0wbAJesyPLo3x4LRgOjM65IkoO5hZLHOMsnO2RaF0NlH7HNOfpCkjuLSohvdAp30U5P1wKeH98KnwXkOD00mMDavaFX'),(143,'stripe_fpx_secret','sk_test_51IQ0zvB0wbAJesyPUtR7yGdyOR7aGbMQAX5Es9P56EDUEsvEQAC0NBj7JPqFuJEYXrvSCm5OPRmGaUQBswjkRxVB00mz8xhkFX'),(144,'enable_paymongo','1'),(145,'paymongo_key','pk_test_iD6aYYm4yFuvkuisyU2PGSYH'),(146,'paymongo_secret','sk_test_oxD79bMKxb8sA47ZNyYPXwf3'),(147,'provider_app_name','Service Provider'),(148,'default_country_code','DE');
/*!40000 ALTER TABLE `app_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability_hours`
--

DROP TABLE IF EXISTS `availability_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability_hours` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monday',
  `start_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `availability_hours_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `availability_hours_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability_hours`
--

LOCK TABLES `availability_hours` WRITE;
/*!40000 ALTER TABLE `availability_hours` DISABLE KEYS */;
INSERT INTO `availability_hours` VALUES (1,'monday','04:00','21:00','{\"en\":\"Voluptatem sunt dolor quia non.\"}',15),(2,'sunday','03:00','23:00','{\"en\":\"Dolor natus recusandae labore nihil fugit et id.\"}',2),(3,'wednesday','12:00','19:00','{\"en\":\"Numquam expedita aperiam et.\"}',2),(4,'wednesday','09:00','15:00','{\"en\":\"Non porro unde ullam sapiente voluptas quos.\"}',8),(5,'friday','10:00','14:00','{\"en\":\"Impedit qui nemo explicabo itaque.\"}',1),(6,'wednesday','11:00','15:00','{\"en\":\"Sint porro asperiores ex et ea voluptatem et.\"}',10),(7,'wednesday','08:00','17:00','{\"en\":\"Voluptatem in modi delectus.\"}',1),(8,'wednesday','03:00','17:00','{\"en\":\"Sapiente consequatur saepe qui ducimus velit.\"}',12),(9,'friday','07:00','22:00','{\"en\":\"Dolorem nisi facere beatae porro labore nemo.\"}',15),(10,'wednesday','12:00','14:00','{\"en\":\"Voluptas perferendis consequatur id voluptas est.\"}',5),(11,'wednesday','04:00','23:00','{\"en\":\"Sunt consequatur quasi qui non.\"}',16),(12,'friday','08:00','17:00','{\"en\":\"Et vel voluptate officiis et dignissimos.\"}',16),(13,'thursday','03:00','16:00','{\"en\":\"Nostrum quo veritatis voluptate et.\"}',11),(14,'monday','07:00','20:00','{\"en\":\"Ratione quia laboriosam labore.\"}',11),(15,'tuesday','12:00','20:00','{\"en\":\"Optio dicta sunt alias ut exercitationem.\"}',12),(16,'wednesday','02:00','19:00','{\"en\":\"Ipsa eveniet voluptas ut est est.\"}',10),(17,'tuesday','03:00','15:00','{\"en\":\"Earum voluptatem maxime a sapiente.\"}',12),(18,'sunday','11:00','23:00','{\"en\":\"Debitis et velit sed autem.\"}',7),(19,'monday','08:00','19:00','{\"en\":\"Perferendis unde animi reiciendis.\"}',3),(20,'saturday','05:00','21:00','{\"en\":\"Laborum eum dolore omnis blanditiis consectetur.\"}',8),(21,'friday','02:00','19:00','{\"en\":\"Recusandae nihil cum vero accusantium sed iste.\"}',3),(22,'tuesday','11:00','13:00','{\"en\":\"Autem ad sint officiis rem eaque.\"}',8),(23,'monday','06:00','22:00','{\"en\":\"Ut et optio ea dolorem aperiam qui incidunt.\"}',10),(24,'friday','04:00','23:00','{\"en\":\"Qui soluta et dolorem dignissimos.\"}',2),(25,'saturday','06:00','13:00','{\"en\":\"Ut esse dicta aut natus.\"}',4),(26,'sunday','08:00','20:00','{\"en\":\"Tempore delectus non in voluptatibus molestiae.\"}',2),(27,'saturday','11:00','13:00','{\"en\":\"Deleniti enim facere quis itaque.\"}',8),(28,'friday','10:00','14:00','{\"en\":\"Sed voluptatibus consequuntur voluptatem.\"}',1),(29,'thursday','08:00','21:00','{\"en\":\"Ea accusantium sed deleniti.\"}',12),(30,'tuesday','06:00','21:00','{\"en\":\"Officiis quasi ut ut at enim nobis omnis.\"}',17),(31,'monday','02:00','23:00','{\"en\":\"Soluta nulla ea occaecati pariatur assumenda.\"}',7),(32,'thursday','03:00','15:00','{\"en\":\"Ea sit dolores quae architecto et.\"}',3),(33,'friday','06:00','23:00','{\"en\":\"Laborum omnis deleniti quis aut.\"}',4),(34,'friday','11:00','17:00','{\"en\":\"Consequuntur asperiores vero modi modi.\"}',3),(35,'tuesday','03:00','21:00','{\"en\":\"Voluptatum voluptatem itaque explicabo.\"}',10),(36,'thursday','05:00','22:00','{\"en\":\"Corporis est sed quisquam magni sed est.\"}',16),(37,'friday','08:00','14:00','{\"en\":\"Veniam est repudiandae quidem corrupti vitae.\"}',14),(38,'friday','11:00','21:00','{\"en\":\"Aspernatur modi sit modi.\"}',17),(39,'friday','12:00','13:00','{\"en\":\"Est perspiciatis deserunt odit sit placeat.\"}',9),(40,'thursday','12:00','23:00','{\"en\":\"Aperiam autem occaecati saepe et vel eligendi.\"}',9),(41,'sunday','08:00','22:00','{\"en\":\"Et et ab eum ipsum fugit magni quidem.\"}',17),(42,'saturday','12:00','21:00','{\"en\":\"Voluptates numquam amet consequatur magnam.\"}',6),(43,'tuesday','08:00','17:00','{\"en\":\"Quia sapiente culpa consectetur ut quod.\"}',13),(44,'tuesday','03:00','17:00','{\"en\":\"Qui velit nihil deleniti et eum sint culpa eos.\"}',6),(45,'saturday','07:00','18:00','{\"en\":\"Totam ex et reiciendis enim voluptas dolores.\"}',16),(46,'tuesday','07:00','18:00','{\"en\":\"Vero et aliquid earum quia sed tempora.\"}',6),(47,'saturday','06:00','22:00','{\"en\":\"Ullam ipsa dolor quis sit earum reprehenderit.\"}',7),(48,'wednesday','06:00','19:00','{\"en\":\"Rem ut explicabo unde et quae dolor id quisquam.\"}',10),(49,'friday','02:00','16:00','{\"en\":\"Voluptate perferendis enim qui velit.\"}',5),(50,'wednesday','04:00','13:00','{\"en\":\"Et quas tempora et vero.\"}',3);
/*!40000 ALTER TABLE `availability_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `awards_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `awards_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'{\"en\":\"Omnis sapiente et voluptatibus amet dolor ipsam deleniti. Accusantium voluptatibus laborum culpa.\"}','{\"en\":\"Alice panted as she could not remember ever having heard of one,\' said Alice, who had been for some time busily writing in his confusion he bit a large pool all round her, about the twentieth time.\"}',16,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(2,'{\"en\":\"Eos velit aliquam nihil enim non. Voluptatibus dicta quas minima quasi eum voluptate unde.\"}','{\"en\":\"Cat, and vanished again. Alice waited a little, and then treading on her face in her own mind (as well as the Caterpillar angrily, rearing itself upright as it is.\' \'I quite agree with you,\' said.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(3,'{\"en\":\"Fuga adipisci ipsam modi quia nihil libero. Quos qui officiis magnam beatae ex ad nam.\"}','{\"en\":\"Duchess, it had entirely disappeared; so the King said to the beginning of the Mock Turtle. \'And how did you manage to do that,\' said the King say in a trembling voice:-- \'I passed by his face only.\"}',6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(4,'{\"en\":\"Qui omnis velit provident id. Ut qui odio aut dolore hic qui.\"}','{\"en\":\"Cat again, sitting on a three-legged stool in the morning, just time to avoid shrinking away altogether. \'That WAS a curious dream!\' said Alice, (she had kept a piece of rudeness was more hopeless.\"}',17,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(5,'{\"en\":\"Facere veniam ducimus incidunt vero. Sed consequatur porro necessitatibus inventore qui.\"}','{\"en\":\"Crab took the place where it had gone. \'Well! I\'ve often seen them so often, you know.\' It was, no doubt: only Alice did not see anything that had made out what it was: at first she would have this.\"}',14,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(6,'{\"en\":\"Mollitia beatae consequuntur explicabo. Nihil voluptates atque quis totam sit tempora aut.\"}','{\"en\":\"HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the door began sneezing all at once. \'Give your evidence,\' said the Dormouse; \'--well in.\' This answer so confused poor.\"}',17,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(7,'{\"en\":\"Non rerum odit qui odio occaecati. Accusamus architecto similique sit enim ab quasi voluptatum.\"}','{\"en\":\"By the use of a well?\' \'Take some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse did not see anything that had fluttered down from the Queen added to one of the Gryphon, \'she.\"}',12,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(8,'{\"en\":\"Accusamus perferendis dicta beatae accusamus voluptatem. Cumque et dignissimos harum.\"}','{\"en\":\"Footman went on so long that they couldn\'t get them out again. That\'s all.\' \'Thank you,\' said the Duchess: \'and the moral of that is--\\\"The more there is of mine, the less there is of finding morals.\"}',14,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(9,'{\"en\":\"Voluptatem molestiae qui qui. Delectus vel quod omnis omnis. Placeat eum ad in quas.\"}','{\"en\":\"Alice for some time without hearing anything more: at last turned sulky, and would only say, \'I am older than you, and listen to her. \'I wish the creatures argue. It\'s enough to look about her and.\"}',18,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(10,'{\"en\":\"Rerum et officia laudantium similique aut. Et saepe aut dolores.\"}','{\"en\":\"I have to beat time when she found she had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD not remember the simple rules their friends had taught them.\"}',13,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(11,'{\"en\":\"Veritatis hic rerum cum ipsam. Sed quo eos ut minus. Ea sint repellendus nihil magnam minus.\"}','{\"en\":\"Why, there\'s hardly room for this, and she drew herself up and said, without opening its eyes, for it was written to nobody, which isn\'t usual, you know.\' \'Not at all,\' said the Lory, who at last.\"}',6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(12,'{\"en\":\"Sit enim voluptatibus nesciunt. Voluptatum eaque voluptatum tempore dolore incidunt natus.\"}','{\"en\":\"WOULD put their heads off?\' shouted the Queen. \'I never went to school in the last words out loud, and the beak-- Pray how did you call him Tortoise, if he thought it over a little bottle on it.\"}',15,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(13,'{\"en\":\"Facilis voluptatem impedit ipsum vitae earum quaerat accusantium. Aut doloribus id ab ipsa veniam.\"}','{\"en\":\"This is the driest thing I ever saw in another moment that it was quite out of their hearing her; and when she was now, and she crossed her hands on her lap as if she was playing against herself.\"}',4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(14,'{\"en\":\"Harum ut hic alias eum tempora velit repellendus. Unde et explicabo est debitis consequatur.\"}','{\"en\":\"Alice went timidly up to her usual height. It was all very well without--Maybe it\'s always pepper that had fallen into it: there was no time she\'d have everybody executed, all round. \'But she must.\"}',6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(15,'{\"en\":\"Molestiae molestiae quod reiciendis totam incidunt. Sunt eius necessitatibus praesentium quos ea.\"}','{\"en\":\"Alice appeared, she was not quite sure whether it would like the Mock Turtle at last, and they lived at the Queen, \'and he shall tell you what year it is?\' \'Of course it was,\' said the March Hare.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(16,'{\"en\":\"Delectus asperiores cupiditate aut beatae aliquid. Veritatis vitae eum maiores est deleniti.\"}','{\"en\":\"It doesn\'t look like one, but it was over at last, and they all spoke at once, she found a little way forwards each time and a Canary called out \'The race is over!\' and they repeated their arguments.\"}',8,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(17,'{\"en\":\"Culpa voluptatem non voluptate voluptas illo. Error qui laudantium ea. Impedit ut quibusdam sunt.\"}','{\"en\":\"Queen was close behind it when she had hoped) a fan and the two creatures got so close to her ear, and whispered \'She\'s under sentence of execution. Then the Queen was in livery: otherwise, judging.\"}',6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(18,'{\"en\":\"Ea exercitationem dolorum aut. Voluptas sequi quia officiis.\"}','{\"en\":\"I do hope it\'ll make me smaller, I suppose.\' So she swallowed one of them even when they met in the beautiful garden, among the leaves, which she had wept when she was getting very sleepy; \'and they.\"}',11,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(19,'{\"en\":\"Commodi et et ut. Quisquam ducimus dolorem sit voluptates. Repellendus earum et vel rerum.\"}','{\"en\":\"English); \'now I\'m opening out like the tone of great relief. \'Call the first day,\' said the White Rabbit, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that.\"}',5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(20,'{\"en\":\"Accusantium ea quo sunt dolore cumque. Enim ut dolores culpa quasi ut aliquid.\"}','{\"en\":\"Dormouse was sitting on the ground near the entrance of the March Hare meekly replied. \'Yes, but some crumbs must have been changed for Mabel! I\'ll try and repeat \\\"\'TIS THE VOICE OF THE SLUGGARD,\\\"\'.\"}',10,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(21,'{\"en\":\"Corrupti fuga possimus eum fugiat. Non dolore aut nulla tenetur.\"}','{\"en\":\"Mock Turtle replied in an offended tone, \'was, that the pebbles were all locked; and when she had to be full of soup. \'There\'s certainly too much overcome to do that,\' said the King. \'It began with.\"}',18,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(22,'{\"en\":\"Molestiae aut non quibusdam facilis optio. Repudiandae modi neque voluptatibus nesciunt.\"}','{\"en\":\"Hatter, and, just as well as she went on \'And how did you manage to do anything but sit with its legs hanging down, but generally, just as I get SOMEWHERE,\' Alice added as an explanation. \'Oh.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(23,'{\"en\":\"Atque consequuntur dolores qui occaecati similique. Unde aut iusto libero.\"}','{\"en\":\"Imagine her surprise, when the White Rabbit hurried by--the frightened Mouse splashed his way through the wood. \'If it had no reason to be sure; but I grow up, I\'ll write one--but I\'m grown up now,\'.\"}',5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(24,'{\"en\":\"Eius sunt illo omnis aut ipsa. Tenetur eligendi cumque aut aut consectetur dignissimos.\"}','{\"en\":\"Owl had the dish as its share of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what does it matter to.\"}',9,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(25,'{\"en\":\"Qui autem perferendis iure beatae. Et non exercitationem non. Cumque qui quas saepe aperiam.\"}','{\"en\":\"You see the earth takes twenty-four hours to turn into a large cat which was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a Caucus-race.\' \'What IS a.\"}',5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(26,'{\"en\":\"Et est quo sint illo est sed temporibus repellat. Repellat ea dolores nulla.\"}','{\"en\":\"And the muscular strength, which it gave to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther were sharing a pie--\' [later editions continued as follows The Panther.\"}',13,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(27,'{\"en\":\"Quae amet quos amet soluta quia. Eligendi omnis rerum voluptate.\"}','{\"en\":\"I know?\' said Alice, timidly; \'some of the house, and found herself lying on the floor, and a sad tale!\' said the Caterpillar. Alice thought this must be getting somewhere near the door that led.\"}',18,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(28,'{\"en\":\"Ab quos rem odit ipsum aspernatur et. Ea harum dolor sint quisquam beatae et.\"}','{\"en\":\"Lizard) could not think of what sort it was) scratching and scrambling about in all directions, \'just like a mouse, you know. Come on!\' \'Everybody says \\\"come on!\\\" here,\' thought Alice, \'they\'re sure.\"}',12,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(29,'{\"en\":\"Dicta ipsam enim aut ea. Consequatur laborum aliquid earum aut.\"}','{\"en\":\"Bill! I wouldn\'t be so proud as all that.\' \'With extras?\' asked the Mock Turtle, and to her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Caterpillar. Alice thought she.\"}',6,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(30,'{\"en\":\"Fuga exercitationem qui facilis a iste accusantium. Qui voluptatem quia consequatur in sunt.\"}','{\"en\":\"Alice, in a natural way. \'I thought you did,\' said the Duchess, it had lost something; and she went on, half to itself, half to itself, half to itself, half to Alice. \'What sort of way to explain.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(31,'{\"en\":\"Iste ut ea quod accusantium. Ut rerum eum et ab. Delectus neque mollitia ratione dolor.\"}','{\"en\":\"The Hatter was the White Rabbit read out, at the door and found that it was too late to wish that! She went in without knocking, and hurried upstairs, in great disgust, and walked two and two, as.\"}',8,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(32,'{\"en\":\"Culpa vel et ut temporibus et. Minus quo non iste. Est quis reprehenderit veritatis quo delectus.\"}','{\"en\":\"Alice laughed so much into the sky all the while, and fighting for the end of half those long words, and, what\'s more, I don\'t know,\' he went on, \'--likely to win, that it\'s hardly worth while.\"}',13,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(33,'{\"en\":\"Nam quaerat quam similique distinctio. Repellendus eius nisi autem. Non aperiam occaecati et.\"}','{\"en\":\"VERY wide, but she thought it must be getting home; the night-air doesn\'t suit my throat!\' and a fall, and a long sleep you\'ve had!\' \'Oh, I\'ve had such a thing as \\\"I eat what I was a little sharp.\"}',13,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(34,'{\"en\":\"Iusto nulla eos aliquam ut. Excepturi ad nostrum qui est. Magnam vitae harum quos iusto.\"}','{\"en\":\"Pat, what\'s that in some book, but I grow at a reasonable pace,\' said the King and Queen of Hearts, carrying the King\'s crown on a little startled when she next peeped out the Fish-Footman was gone.\"}',13,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(35,'{\"en\":\"Quo atque consectetur sit reprehenderit. Autem asperiores maxime dolores eum esse incidunt.\"}','{\"en\":\"THE VOICE OF THE SLUGGARD,\\\"\' said the Mock Turtle. \'Certainly not!\' said Alice very politely; but she could guess, she was near enough to drive one crazy!\' The Footman seemed to be otherwise than.\"}',16,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(36,'{\"en\":\"Dolor deleniti ducimus aperiam sunt. Debitis ipsam delectus distinctio nobis soluta.\"}','{\"en\":\"First, however, she went on without attending to her, still it was a queer-shaped little creature, and held out its arms folded, frowning like a writing-desk?\' \'Come, we shall get on better.\' \'I\'d.\"}',16,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(37,'{\"en\":\"Assumenda rem voluptas ut ipsam sint error autem. Quia itaque odio harum aut et voluptatem itaque.\"}','{\"en\":\"Caterpillar decidedly, and there stood the Queen to-day?\' \'I should think you could see her after the candle is like after the rest of the lefthand bit of the evening, beautiful Soup! Beau--ootiful.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(38,'{\"en\":\"Cum et est qui velit neque. Eum alias rem nulla at. Veniam et voluptates vel omnis officiis.\"}','{\"en\":\"Cheshire cat,\' said the King. \'Then it ought to eat her up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was so large a house, that she was dozing off, and found.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(39,'{\"en\":\"Nobis et quis ad mollitia hic. Minima distinctio nesciunt repellat. Ab sed voluptatem doloremque.\"}','{\"en\":\"Lobster Quadrille, that she remained the same tone, exactly as if it please your Majesty,\' the Hatter said, turning to the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(40,'{\"en\":\"Praesentium ad voluptatem et omnis. Autem est blanditiis tempora expedita unde repudiandae ipsa.\"}','{\"en\":\"Alice quite hungry to look through into the loveliest garden you ever eat a bat?\' when suddenly, thump! thump! down she came up to her daughter \'Ah, my dear! Let this be a person of authority over.\"}',16,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(41,'{\"en\":\"Ut nihil doloremque est et aut. Doloremque repudiandae exercitationem odit dolorem.\"}','{\"en\":\"I can listen all day to such stuff? Be off, or I\'ll have you executed on the floor, and a fall, and a fall, and a large caterpillar, that was sitting on a branch of a well?\' The Dormouse shook.\"}',10,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(42,'{\"en\":\"Dolor aut veritatis mollitia perferendis voluptas beatae est. Animi adipisci et vel magni quia quo.\"}','{\"en\":\"King, \'that saves a world of trouble, you know, and he poured a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Lory, who at last the Dodo could not swim. He sent them word I had our.\"}',4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(43,'{\"en\":\"Quidem sed corrupti sed enim repellendus nihil. Quis dolores nihil sequi deleniti natus laudantium.\"}','{\"en\":\"Alice panted as she could, and soon found out a box of comfits, (luckily the salt water had not gone much farther before she gave a look askance-- Said he thanked the whiting kindly, but he could.\"}',5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(44,'{\"en\":\"Ut et quia commodi. Aspernatur rem veritatis deserunt molestias sapiente velit qui alias.\"}','{\"en\":\"Shall I try the patience of an oyster!\' \'I wish you could manage it?) \'And what an ignorant little girl she\'ll think me at all.\' \'In that case,\' said the White Rabbit, \'but it sounds uncommon.\"}',11,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(45,'{\"en\":\"Non vero hic nostrum sunt molestiae. Repudiandae sed voluptates ipsam totam neque quia quae.\"}','{\"en\":\"I should think!\' (Dinah was the White Rabbit, jumping up and to stand on your shoes and stockings for you now, dears? I\'m sure she\'s the best way to hear the Rabbit say to itself, half to Alice.\"}',18,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(46,'{\"en\":\"Similique porro excepturi fugit nesciunt quasi. Illum molestiae dolorum voluptates officia.\"}','{\"en\":\"There was a dead silence. \'It\'s a mineral, I THINK,\' said Alice. \'It goes on, you know,\' said the Mock Turtle: \'why, if a fish came to ME, and told me he was speaking, so that they could not swim.\"}',4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(47,'{\"en\":\"Vel tempora in omnis similique. Ducimus beatae eos rerum tempora accusamus.\"}','{\"en\":\"HAVE tasted eggs, certainly,\' said Alice sharply, for she felt that she hardly knew what she did, she picked up a little girl or a watch to take the hint; but the Dodo solemnly, rising to its feet.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(48,'{\"en\":\"Vel quis dignissimos et reiciendis delectus excepturi. Quia eligendi soluta neque.\"}','{\"en\":\"There ought to be Number One,\' said Alice. \'Call it what you were or might have been ill.\' \'So they were,\' said the Caterpillar. \'I\'m afraid I am, sir,\' said Alice; \'living at the moment, \'My dear!.\"}',5,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(49,'{\"en\":\"Et qui nihil ullam voluptatem. Est consequuntur vel iste dolores et qui dignissimos.\"}','{\"en\":\"Mock Turtle to sing \\\"Twinkle, twinkle, little bat! How I wonder what you\'re at!\\\" You know the song, perhaps?\' \'I\'ve heard something like it,\' said the Caterpillar. This was such a rule at.\"}',18,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(50,'{\"en\":\"Ex sint et voluptatem quo est inventore. Aut qui nam sed quia. Nulla maiores et debitis ducimus.\"}','{\"en\":\"Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as well as she was surprised to find that the Queen added to one of the bill, \\\"French, music, AND WASHING--extra.\\\"\' \'You couldn\'t.\"}',11,'2022-03-22 16:41:56','2022-03-22 16:41:56');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_statuses`
--

DROP TABLE IF EXISTS `booking_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` longtext COLLATE utf8mb4_unicode_ci,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_statuses`
--

LOCK TABLES `booking_statuses` WRITE;
/*!40000 ALTER TABLE `booking_statuses` DISABLE KEYS */;
INSERT INTO `booking_statuses` VALUES (1,'Received',1,'2021-01-25 17:25:46','2021-01-29 15:56:35'),(2,'In Progress',40,'2021-01-25 17:26:02','2021-02-16 19:56:52'),(3,'On the Way',20,'2021-01-28 05:47:23','2021-02-16 10:10:13'),(4,'Accepted',10,'2021-02-16 10:09:29','2021-02-16 10:10:06'),(5,'Ready',30,'2021-02-16 10:11:50','2021-02-16 19:56:42'),(6,'Done',50,'2021-02-16 19:57:02','2021-02-16 19:57:02'),(7,'Failed',60,'2021-02-16 19:58:36','2021-02-16 19:58:36');
/*!40000 ALTER TABLE `booking_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `e_provider` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_service` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `quantity` smallint DEFAULT '1',
  `user_id` bigint unsigned DEFAULT NULL,
  `booking_status_id` int unsigned DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `coupon` longtext COLLATE utf8mb4_unicode_ci,
  `taxes` longtext COLLATE utf8mb4_unicode_ci,
  `booking_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci,
  `cancel` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_user_id_foreign` (`user_id`),
  KEY `bookings_booking_status_id_foreign` (`booking_status_id`),
  KEY `bookings_payment_id_foreign` (`payment_id`),
  CONSTRAINT `bookings_booking_status_id_foreign` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_statuses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `bookings_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `color` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `order` int DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `parent_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Car Services','#ff9f43','<p>Categories for all cars services</p>',1,1,NULL,'2021-01-19 15:01:35','2021-01-31 12:19:56'),(2,'Medical Services','#0abde3','<p>Categories for all Medical Services<br></p>',2,1,NULL,'2021-01-19 16:05:00','2021-01-31 11:35:11'),(3,'Laundry Service','#ee5253','<p>Category for all Laundry Service</p>',3,1,NULL,'2021-01-31 11:37:04','2021-02-01 22:33:10'),(4,'Beauty & Hair Cuts','#10ac84','<p>Category for Hair Cuts and Barber</p>',4,0,NULL,'2021-01-31 11:38:37','2021-02-23 12:37:09'),(5,'Washing & Cleaning','#5f27cd','<p>Category for&nbsp;Washing &amp; Cleaning&nbsp;</p>',5,0,NULL,'2021-01-31 11:42:02','2021-01-31 11:42:02'),(6,'Media & Photography','#ff9f43','<p>Category for Media & Photography</p>',6,0,NULL,'2021-01-31 11:43:20','2021-01-31 12:55:51'),(7,'Sewer Cleaning','#5f27cd','<p>Category for Sewer Cleaning<br></p>',1,0,5,'2021-01-31 12:46:15','2021-01-31 12:46:30'),(8,'Carpet Cleaning','#5f27cd','<p>Category for Carpet Cleaning<br></p>',2,0,5,'2021-01-31 12:47:23','2021-01-31 12:47:23'),(9,'Wheel Repair','#5f27cd','<p>Category for Wheel Repair<br></p>',1,0,1,'2021-01-31 12:49:40','2021-01-31 12:49:40');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `symbol` longtext COLLATE utf8mb4_unicode_ci,
  `code` longtext COLLATE utf8mb4_unicode_ci,
  `decimal_digits` tinyint unsigned DEFAULT NULL,
  `rounding` tinyint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US Dollar','$','USD',2,0,'2020-10-22 13:50:48','2020-10-22 13:50:48'),(2,'Euro','€','EUR',2,0,'2020-10-22 13:51:39','2020-10-22 13:51:39'),(3,'Indian Rupee','টকা','INR',2,0,'2020-10-22 13:52:50','2020-10-22 13:52:50'),(4,'Indonesian Rupiah','Rp','IDR',0,0,'2020-10-22 13:53:22','2020-10-22 13:53:22'),(5,'Brazilian Real','R$','BRL',2,0,'2020-10-22 13:54:00','2020-10-22 13:54:00'),(6,'Cambodian Riel','៛','KHR',2,0,'2020-10-22 13:55:51','2020-10-22 13:55:51'),(7,'Vietnamese Dong','₫','VND',0,0,'2020-10-22 13:56:26','2020-10-22 13:56:26');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_field_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int unsigned NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`),
  CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
INSERT INTO `custom_field_values` VALUES (30,'Explicabo. Eum provi.&nbsp;','Explicabo. Eum provi.&nbsp;',5,'App\\Models\\User',2,'2019-09-06 19:52:30','2021-02-02 09:32:57'),(31,'Modi est libero qui','Modi est libero qui',6,'App\\Models\\User',2,'2019-09-06 19:52:30','2021-02-02 09:32:57'),(33,'Consequatur error ip.&nbsp;','Consequatur error ip.&nbsp;',5,'App\\Models\\User',1,'2019-09-06 19:53:58','2021-02-02 09:32:01'),(34,'Qui vero ratione vel','Qui vero ratione vel',6,'App\\Models\\User',1,'2019-09-06 19:53:58','2021-02-02 09:32:01'),(36,'Dolor optio, error e','Dolor optio, error e',5,'App\\Models\\User',3,'2019-10-15 15:21:32','2021-02-02 09:33:23'),(37,'Voluptatibus ad ipsu','Voluptatibus ad ipsu',6,'App\\Models\\User',3,'2019-10-15 15:21:32','2021-02-02 09:33:23'),(39,'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta','Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta',5,'App\\Models\\User',4,'2019-10-16 17:31:46','2019-10-16 17:31:46'),(40,'Sequi molestiae ipsa1','Sequi molestiae ipsa1',6,'App\\Models\\User',4,'2019-10-16 17:31:46','2021-02-21 21:32:10'),(42,'Omnis fugiat et cons.','Omnis fugiat et cons.',5,'App\\Models\\User',5,'2019-12-15 16:49:44','2021-02-02 09:29:47'),(43,'Consequatur delenit','Consequatur delenit',6,'App\\Models\\User',5,'2019-12-15 16:49:44','2021-02-02 09:29:47'),(45,'<p>Short bio for this driver</p>','Short bio for this driver',5,'App\\Models\\User',6,'2020-03-29 15:28:05','2020-03-29 15:28:05'),(46,'4722 Villa Drive','4722 Villa Drive',6,'App\\Models\\User',6,'2020-03-29 15:28:05','2020-03-29 15:28:05'),(48,'Voluptatem. Omnis op.','Voluptatem. Omnis op.',5,'App\\Models\\User',7,'2021-01-17 14:13:24','2021-02-02 09:31:36'),(49,'Perspiciatis aut ei','Perspiciatis aut ei',6,'App\\Models\\User',7,'2021-01-17 14:13:24','2021-02-02 09:31:36'),(51,'sdfsdf56','sdfsdf56',5,'App\\Models\\User',8,'2021-02-10 09:31:12','2021-02-19 12:09:37'),(52,'Adressttt','Adressttt',6,'App\\Models\\User',8,'2021-02-10 09:31:12','2021-02-19 11:57:27');
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (5,'bio','textarea',NULL,0,0,0,6,1,'App\\Models\\User','2019-09-06 19:43:58','2019-09-06 19:43:58'),(6,'address','text',NULL,0,0,0,6,3,'App\\Models\\User','2019-09-06 19:49:22','2019-09-06 19:49:22');
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_pages`
--

DROP TABLE IF EXISTS `custom_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_pages`
--

LOCK TABLES `custom_pages` WRITE;
/*!40000 ALTER TABLE `custom_pages` DISABLE KEYS */;
INSERT INTO `custom_pages` VALUES (1,'Privacy Policy','<h1>Privacy Policy of SmarterVision</h1>\n<p>SmarterVision operates the SmarterVision website, which provides the SERVICE.</p>\n<p>This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the smartersvision.com website.</p>\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at smartersvision.com, unless otherwise defined in this Privacy Policy.</p>\n<h2>Information Collection and Use</h2>\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.</p>\n<h2>Log Data</h2>\n<p>We want to inform you that whenever you visit our Service, we collect information that your browser sends to us which is called Log Data. This Log Data may include information such as your computer\'s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\n<h2>Cookies</h2>\n<p>Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer\'s hard drive.</p>\n<p>Our website uses these “cookies” to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.</p>\n<h2>Service Providers</h2>\n<p>We may employ third-party companies and individuals due to the following reasons:</p>\n<ul>\n<li>To facilitate our Service;</li>\n<li>To provide the Service on our behalf;</li>\n<li>To perform Service-related services; or</li>\n<li>To assist us in analyzing how our Service is used.</li>\n</ul>\n<p>We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\n<h2>Security</h2>\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\n<h2>Links to Other Sites</h2>\n<p>Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\n<h2>Children\'s Privacy</h2>\n<p>Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\n<h2>Changes to This Privacy Policy</h2>\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\n<h2>Contact Us</h2>\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>',1,'2021-02-24 09:53:21','2021-02-24 11:19:19'),(2,'Terms & Conditions','<h2>Terms &amp; Conditions</h2><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.</p><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.<br></p>',1,'2021-02-24 11:20:06','2021-02-24 11:23:52');
/*!40000 ALTER TABLE `custom_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discountables`
--

DROP TABLE IF EXISTS `discountables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discountables` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int unsigned NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discountables_coupon_id_foreign` (`coupon_id`),
  CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discountables`
--

LOCK TABLES `discountables` WRITE;
/*!40000 ALTER TABLE `discountables` DISABLE KEYS */;
/*!40000 ALTER TABLE `discountables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_provider_addresses`
--

DROP TABLE IF EXISTS `e_provider_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_provider_addresses` (
  `e_provider_id` int unsigned NOT NULL,
  `address_id` int unsigned NOT NULL,
  PRIMARY KEY (`e_provider_id`,`address_id`),
  KEY `e_provider_addresses_address_id_foreign` (`address_id`),
  CONSTRAINT `e_provider_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `e_provider_addresses_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_provider_addresses`
--

LOCK TABLES `e_provider_addresses` WRITE;
/*!40000 ALTER TABLE `e_provider_addresses` DISABLE KEYS */;
INSERT INTO `e_provider_addresses` VALUES (8,1),(13,3),(14,3),(8,4),(18,4),(7,5),(16,5),(1,6),(10,6),(14,6),(15,6),(4,7),(16,7),(7,9),(13,10),(4,12),(11,12),(11,13),(16,13),(10,15),(4,17),(12,20);
/*!40000 ALTER TABLE `e_provider_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_provider_payouts`
--

DROP TABLE IF EXISTS `e_provider_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_provider_payouts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `e_provider_id` int unsigned NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_provider_payouts_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `e_provider_payouts_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_provider_payouts`
--

LOCK TABLES `e_provider_payouts` WRITE;
/*!40000 ALTER TABLE `e_provider_payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_provider_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_provider_taxes`
--

DROP TABLE IF EXISTS `e_provider_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_provider_taxes` (
  `e_provider_id` int unsigned NOT NULL,
  `tax_id` int unsigned NOT NULL,
  PRIMARY KEY (`e_provider_id`,`tax_id`),
  KEY `e_provider_taxes_tax_id_foreign` (`tax_id`),
  CONSTRAINT `e_provider_taxes_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `e_provider_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_provider_taxes`
--

LOCK TABLES `e_provider_taxes` WRITE;
/*!40000 ALTER TABLE `e_provider_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_provider_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_provider_types`
--

DROP TABLE IF EXISTS `e_provider_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_provider_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `commission` double(5,2) NOT NULL DEFAULT '0.00',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_provider_types`
--

LOCK TABLES `e_provider_types` WRITE;
/*!40000 ALTER TABLE `e_provider_types` DISABLE KEYS */;
INSERT INTO `e_provider_types` VALUES (2,'Company',75.00,0,'2021-01-13 16:05:35','2021-02-01 19:22:19'),(3,'Freelancer',50.00,0,'2021-01-17 17:27:18','2021-02-24 16:57:30');
/*!40000 ALTER TABLE `e_provider_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_provider_users`
--

DROP TABLE IF EXISTS `e_provider_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_provider_users` (
  `user_id` bigint unsigned NOT NULL,
  `e_provider_id` int unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`e_provider_id`),
  KEY `e_provider_users_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `e_provider_users_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `e_provider_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_provider_users`
--

LOCK TABLES `e_provider_users` WRITE;
/*!40000 ALTER TABLE `e_provider_users` DISABLE KEYS */;
INSERT INTO `e_provider_users` VALUES (2,1),(4,1),(2,2),(4,4),(6,4),(2,6),(6,7),(6,8),(2,9),(4,11),(6,11),(6,12),(2,13),(6,14),(2,15),(6,15),(2,17),(6,18),(2,20),(2,21);
/*!40000 ALTER TABLE `e_provider_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_providers`
--

DROP TABLE IF EXISTS `e_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_providers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spoken_languages` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_provider_type_id` int unsigned NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability_range` double(9,2) DEFAULT '0.00',
  `available` tinyint(1) DEFAULT '1',
  `featured` tinyint(1) DEFAULT '0',
  `accepted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_providers_e_provider_type_id_foreign` (`e_provider_type_id`),
  CONSTRAINT `e_providers_e_provider_type_id_foreign` FOREIGN KEY (`e_provider_type_id`) REFERENCES `e_provider_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_providers`
--

LOCK TABLES `e_providers` WRITE;
/*!40000 ALTER TABLE `e_providers` DISABLE KEYS */;
INSERT INTO `e_providers` VALUES (1,'{\"en\":\"Epoxy Coating Pouros-Nikolaus\"}','','','',3,'{\"en\":\"Non pariatur repudiandae nesciunt assumenda blanditiis. Assumenda et asperiores temporibus dolorem. Aliquam perspiciatis expedita qui est. Quos occaecati porro et voluptas ab.\"}','1-857-919-9001','854-441-5187',10283.71,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(2,'{\"en\":\"Masonry Kautzer-Marks\"}','','','',2,'{\"en\":\"Et repudiandae ipsam non sint voluptas. Accusantium perferendis velit aut aperiam quia. Ab est est non illum accusantium ea. Quia minima amet ipsum est.\"}','941-479-2906','+1 (321) 655-7620',7017.79,1,1,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(3,'{\"en\":\"Architect Becker, Little and Lockman\"}','','','',2,'{\"en\":\"Explicabo omnis voluptatem voluptatem. Totam amet ratione voluptas dolores in.\"}','+1-248-567-2730','+1-331-546-6720',12736.52,1,1,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(4,'{\"en\":\"Gardner Construction Brakus, Wyman and Weber\"}','','','',2,'{\"en\":\"Aut ut iure earum adipisci minus. Perspiciatis enim natus adipisci necessitatibus. Et similique illum labore dolore rerum totam id. Autem eos ipsum eos omnis ea soluta numquam.\"}','+1.385.448.6427','+19104590420',7036.72,0,1,0,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(5,'{\"en\":\"Concrete Raynor, Connelly and Renner\"}','','','',2,'{\"en\":\"Omnis in necessitatibus totam unde. Quia molestias quam officia adipisci nostrum saepe. Dolore impedit dolorum sunt autem et. Error quisquam eos at minima.\"}','(270) 665-3199','743-656-3046',6584.81,1,1,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(6,'{\"en\":\"Dentists Mueller-Runolfsdottir\"}','','','',2,'{\"en\":\"Est adipisci impedit sit libero possimus est repellendus voluptas. Omnis quo velit veniam animi. Officia quis fuga eius perferendis.\"}','985.597.2356','(657) 399-7336',9237.07,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(7,'{\"en\":\"Roofing Trantow Ltd\"}','','','',2,'{\"en\":\"Sit voluptatem id pariatur qui numquam id alias. Expedita enim eos aut voluptatibus assumenda minima. Dolor tenetur nesciunt quidem. Velit deleniti totam voluptas dolor eum est velit id.\"}','(224) 426-7221','+1.908.469.4372',9270.19,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(8,'{\"en\":\"Glass Sanford, Beahan and Rodriguez\"}','','','',3,'{\"en\":\"Dicta ut soluta debitis nulla a quo. Blanditiis harum consequatur cupiditate distinctio. Voluptas repudiandae rerum consequatur laboriosam.\"}','248-579-4183','1-702-716-2757',8840.11,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(9,'{\"en\":\"Dentists Rau, Mohr and Spencer\"}','','','',3,'{\"en\":\"Quos in qui rerum consequuntur eius dolor. Praesentium voluptas voluptas illo veritatis neque optio.\"}','325-743-2689','+1-918-754-0895',14669.42,1,1,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(10,'{\"en\":\"Epoxy Coating Cronin and Sons\"}','','','',3,'{\"en\":\"Illum sunt reiciendis maxime sint laboriosam quos. Aut asperiores accusamus voluptatem consequatur sed. Voluptatem aperiam omnis voluptates et odio. Enim qui tempora quaerat commodi id.\"}','458-401-7003','+1-878-530-6581',8350.18,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(11,'{\"en\":\"Gardner Construction Robel, Hessel and Vandervort\"}','','','',3,'{\"en\":\"Expedita accusantium similique doloremque praesentium sint. Ab suscipit quos vel quia. Culpa autem provident quidem exercitationem autem.\"}','(325) 919-7422','864.527.7983',11431.83,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(12,'{\"en\":\"Epoxy Coating Bruen, Oberbrunner and Glover\"}','','','',3,'{\"en\":\"Numquam et ab autem molestiae consequuntur. Nisi excepturi sapiente omnis et cum ut quis. Assumenda porro qui quisquam voluptatem enim.\"}','+1.740.350.1943','1-984-877-1647',11379.40,0,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(13,'{\"en\":\"Painting Heidenreich, Tromp and Hamill\"}','','','',2,'{\"en\":\"Voluptatum aut fuga rerum omnis. Fugiat vel eum atque quod commodi maxime alias. Et cupiditate ut aperiam. Et voluptatem et et id vel quia est.\"}','(747) 546-1711','+1-385-494-0393',12187.13,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(14,'{\"en\":\"Roofing Bogisich, Dooley and Grady\"}','','','',2,'{\"en\":\"Voluptatum esse totam et esse dolor ducimus ut. Est ea sint quaerat distinctio. Commodi consequatur et ad a. Dolorem veritatis ut rerum.\"}','1-651-226-2221','1-872-897-7540',8238.73,1,0,0,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(15,'{\"en\":\"Sewer Cleaning Strosin-Larson\"}','','','',3,'{\"en\":\"Distinctio et tenetur perspiciatis fugiat ut molestias. Eos ea distinctio officiis aut cupiditate at. Quasi amet quo officia ut. Amet deleniti dolorem laboriosam deserunt.\"}','+1.520.354.0336','(936) 513-9766',7288.53,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(16,'{\"en\":\"Architect Towne-Brown\"}','','','',3,'{\"en\":\"Pariatur atque voluptatem odit. Dolor ut explicabo soluta similique magnam adipisci sunt. Dolor beatae non ullam odio quidem laboriosam veritatis sint. Nihil omnis laudantium est sed.\"}','(360) 634-6030','862-823-1089',14878.35,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(17,'{\"en\":\"House Howe, Huels and Wunsch\"}','','','',2,'{\"en\":\"Autem ullam expedita voluptas voluptatibus sunt eligendi quae aut. Cumque adipisci aspernatur modi laudantium. Repudiandae totam numquam non eos. Est unde repudiandae aut voluptatem.\"}','920-306-8374','+19105315615',13564.00,1,1,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(18,'{\"en\":\"Epoxy Coating Moore-Murray\"}','','','',2,'{\"en\":\"Cumque at est veritatis quam sed quae vel. Culpa tempore veniam consequatur aut. Sit iste ducimus velit illo. Veniam excepturi totam voluptatem id.\"}','+15085582496','(740) 694-5639',6993.55,1,0,1,'2022-03-22 16:41:54','2022-03-22 16:41:54'),(19,'{\"en\":\"1\"}','','','',3,'{\"en\":null}',NULL,NULL,16.00,0,0,0,'2022-03-23 03:39:02','2022-03-23 03:39:02'),(20,'{\"en\":\"1\"}','',NULL,'',3,'{\"en\":\"1\"}',NULL,NULL,250.00,0,0,0,'2022-03-23 17:52:12','2022-03-23 17:52:12'),(21,'{\"en\":\"1\"}','',NULL,'',2,'{\"en\":\"<p>hjbkj<\\/p>\"}',NULL,NULL,79.00,0,0,0,'2022-03-23 17:54:19','2022-03-23 17:54:20'),(22,'{\"en\":\"0\"}','',NULL,'',2,'{\"en\":null}',NULL,NULL,45.00,0,0,0,'2022-03-23 17:55:23','2022-03-23 17:55:23');
/*!40000 ALTER TABLE `e_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_service_categories`
--

DROP TABLE IF EXISTS `e_service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_service_categories` (
  `e_service_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`e_service_id`,`category_id`),
  KEY `e_service_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `e_service_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `e_service_categories_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_service_categories`
--

LOCK TABLES `e_service_categories` WRITE;
/*!40000 ALTER TABLE `e_service_categories` DISABLE KEYS */;
INSERT INTO `e_service_categories` VALUES (2,1),(8,1),(2,2),(1,3),(7,3),(12,3),(14,3),(10,4),(13,4),(3,5),(5,5),(1,6),(10,7),(2,8),(6,8),(4,9),(12,9),(15,9);
/*!40000 ALTER TABLE `e_service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_service_reviews`
--

DROP TABLE IF EXISTS `e_service_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_service_reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` decimal(3,2) NOT NULL DEFAULT '0.00',
  `user_id` bigint unsigned NOT NULL,
  `e_service_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_service_reviews_user_id_foreign` (`user_id`),
  KEY `e_service_reviews_e_service_id_foreign` (`e_service_id`),
  CONSTRAINT `e_service_reviews_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `e_service_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_service_reviews`
--

LOCK TABLES `e_service_reviews` WRITE;
/*!40000 ALTER TABLE `e_service_reviews` DISABLE KEYS */;
INSERT INTO `e_service_reviews` VALUES (1,'Gryphon. \'We can do no more, whatever happens. What WILL become of it; then Alice put down yet.',5.00,3,21,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(2,'English); \'now I\'m opening out like the tone of great surprise. \'Of course twinkling begins with.',4.00,5,2,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(3,'King in a low, timid voice, \'If you can\'t swim, can you?\' he added, turning to Alice: he had taken.',1.00,5,22,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(4,'I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least notice of her age knew the.',5.00,5,30,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(5,'I think that proved it at all; and I\'m I, and--oh dear, how puzzling it all seemed quite natural.',5.00,8,39,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(6,'Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All.',3.00,5,12,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(7,'I can say.\' This was quite surprised to see its meaning. \'And just as well as she swam lazily.',4.00,7,2,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(8,'I shall have some fun now!\' thought Alice. \'I wonder what they\'ll do well enough; and what does it.',1.00,3,38,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(9,'Alice ventured to remark. \'Tut, tut, child!\' said the Cat, and vanished again. Alice waited till.',3.00,7,26,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(10,'Majesty?\' he asked. \'Begin at the bottom of a candle is blown out, for she was now the right.',3.00,8,26,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(11,'March Hare went on. \'Or would you tell me,\' said Alice, very much at this, but at any rate I\'ll.',5.00,5,17,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(12,'I wonder if I might venture to say anything. \'Why,\' said the Duchess: \'what a clear way you.',2.00,5,6,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(13,'King say in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t.',4.00,7,28,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(14,'Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, and she thought to herself. At this.',4.00,8,31,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(15,'Time, and round the neck of the court,\" and I never knew whether it would be like, \'--for they.',1.00,8,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(16,'Footman, and began an account of the house, quite forgetting her promise. \'Treacle,\' said a sleepy.',5.00,5,6,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(17,'Alice was beginning to see if she were looking up into a small passage, not much surprised at her.',5.00,5,24,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(18,'Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction.',4.00,7,4,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(19,'He sent them word I had it written up somewhere.\' Down, down, down. There was a child,\' said the.',1.00,3,23,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(20,'Alice heard the Rabbit came near her, about the temper of your nose-- What made you so awfully.',1.00,8,31,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(21,'Dinah my dear! I shall have some fun now!\' thought Alice. \'I wonder what they\'ll do well enough.',2.00,7,10,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(22,'Sir, With no jury or judge, would be very likely to eat the comfits: this caused some noise and.',3.00,5,3,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(23,'So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this moment Alice.',3.00,7,28,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(24,'Lory positively refused to tell them something more. \'You promised to tell him. \'A nice muddle.',5.00,7,31,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(25,'Why, there\'s hardly enough of me left to make the arches. The chief difficulty Alice found at.',4.00,5,35,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(26,'Would not, could not, could not, could not, would not, could not, would not join the dance. Will.',4.00,3,23,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(27,'Rabbit\'s voice; and Alice rather unwillingly took the regular course.\' \'What was THAT like?\' said.',1.00,5,12,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(28,'Wonderland of long ago: and how she would manage it. \'They were learning to draw,\' the Dormouse.',1.00,8,15,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(29,'I wish you were all in bed!\' On various pretexts they all moved off, and Alice looked down at her.',1.00,5,21,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(30,'Alice had got to the jury. They were just beginning to get hold of its mouth, and its great eyes.',3.00,3,39,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(31,'Sir, With no jury or judge, would be like, \'--for they haven\'t got much evidence YET,\' she said to.',4.00,5,13,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(32,'Alice coming. \'There\'s PLENTY of room!\' said Alice hastily; \'but I\'m not particular as to prevent.',1.00,3,22,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(33,'I shall remember it in time,\' said the March Hare. \'He denies it,\' said the Hatter: \'let\'s all.',5.00,5,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(34,'King exclaimed, turning to the King, and the soldiers had to sing you a song?\' \'Oh, a song.',4.00,8,2,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(35,'The Duchess took no notice of them say, \'Look out now, Five! Don\'t go splashing paint over me like.',2.00,5,17,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(36,'I mentioned before, And have grown most uncommonly fat; Yet you finished the goose, with the name.',3.00,3,22,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(37,'Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Nothing.',2.00,8,40,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(38,'Cat; and this was the matter with it. There was a paper label, with the time,\' she said, \'than.',4.00,7,3,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(39,'HAVE tasted eggs, certainly,\' said Alice, \'and those twelve creatures,\' (she was so ordered about.',5.00,5,16,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(40,'Mock Turtle. Alice was beginning to write with one finger, as he said in an offended tone, and.',4.00,3,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(41,'But the insolence of his teacup instead of the bill, \"French, music, AND WASHING--extra.\"\' \'You.',5.00,8,19,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(42,'She ate a little of her or of anything to say, she simply bowed, and took the thimble, looking as.',3.00,3,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(43,'Those whom she sentenced were taken into custody by the carrier,\' she thought; \'and how funny.',3.00,5,24,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(44,'This of course, to begin with; and being ordered about in the house if it thought that SOMEBODY.',5.00,5,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(45,'Dormouse, after thinking a minute or two, they began running about in the last concert!\' on which.',5.00,8,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(46,'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice, as.',2.00,7,16,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(47,'I? Ah, THAT\'S the great concert given by the time she found this a very melancholy voice. \'Repeat.',2.00,5,21,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(48,'IS the use of repeating all that stuff,\' the Mock Turtle at last, more calmly, though still.',5.00,7,36,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(49,'Mock Turtle. \'She can\'t explain it,\' said Alice angrily. \'It wasn\'t very civil of you to sit down.',2.00,5,9,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(50,'Alice thought this a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the.',2.00,7,23,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(51,'They are waiting on the bank, with her head to hide a smile: some of YOUR business, Two!\' said.',3.00,3,30,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(52,'I wonder what was the White Rabbit put on his knee, and looking anxiously about her. \'Oh, do let.',4.00,7,14,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(53,'And the Gryphon in an undertone, \'important--unimportant--unimportant--important--\' as if it began.',1.00,8,29,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(54,'I used to say.\' \'So he did, so he with his whiskers!\' For some minutes the whole party look so.',1.00,8,33,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(55,'If she should meet the real Mary Ann, and be turned out of the thing at all. However, \'jury-men\'.',1.00,8,25,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(56,'Her first idea was that you have to fly; and the fan, and skurried away into the garden, and I had.',2.00,5,5,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(57,'I can\'t show it you myself,\' the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a.',4.00,7,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(58,'Mock Turtle. \'No, no! The adventures first,\' said the Footman, and began smoking again. This time.',4.00,7,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(59,'I did: there\'s no meaning in it, and finding it very nice, (it had, in fact, a sort of present!\'.',5.00,8,1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(60,'That WILL be a very grave voice, \'until all the jurymen on to the table, but there was the White.',1.00,7,21,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(61,'Queen had only one who had been running half an hour or so, and were resting in the same thing.',5.00,3,22,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(62,'Bill,\' thought Alice,) \'Well, I never heard of one,\' said Alice, a little timidly: \'but it\'s no.',3.00,3,10,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(63,'The judge, by the officers of the court. All this time the Queen merely remarking that a moment\'s.',2.00,5,26,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(64,'They all returned from him to you, Though they were playing the Queen added to one of its little.',1.00,7,6,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(65,'When they take us up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with.',1.00,3,38,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(66,'Alice said to live. \'I\'ve seen a cat without a great crash, as if it makes me grow large again.',3.00,7,6,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(67,'In a little three-legged table, all made a memorandum of the house, quite forgetting her promise.',2.00,3,31,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(68,'Alice,) and round the refreshments!\' But there seemed to be two people! Why, there\'s hardly enough.',5.00,7,3,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(69,'No, I\'ve made up my mind about it; and as the jury had a head unless there was the fan she was.',1.00,8,16,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(70,'Then it got down off the mushroom, and raised herself to about two feet high, and her face.',4.00,3,31,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(71,'The Antipathies, I think--\' (she was obliged to say \'Drink me,\' but the Dormouse into the court.',1.00,7,4,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(72,'CHAPTER VIII. The Queen\'s argument was, that she was ready to ask the question?\' said the Queen.',4.00,5,37,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(73,'Alice thought), and it was very deep, or she fell very slowly, for she was about a whiting to a.',2.00,8,1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(74,'Dormouse,\' the Queen never left off staring at the top of her sister, who was gently brushing away.',5.00,5,4,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(75,'YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you what.',5.00,8,19,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(76,'I say again!\' repeated the Pigeon, raising its voice to its feet, ran round the court with a.',5.00,8,23,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(77,'Queen in a great hurry to get through the air! Do you think, at your age, it is right?\' \'In my.',5.00,5,25,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(78,'Knave \'Turn them over!\' The Knave of Hearts, she made out what she did, she picked up a little.',5.00,3,24,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(79,'Alice; \'that\'s not at all this time, and was delighted to find herself still in sight, hurrying.',1.00,3,26,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(80,'Mouse was bristling all over, and she heard it before,\' said Alice,) and round the refreshments!\'.',4.00,3,3,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(81,'Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you call it sad?\'.',1.00,8,31,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(82,'Gryphon. \'They can\'t have anything to put it into one of the deepest contempt. \'I\'ve seen hatters.',1.00,7,26,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(83,'I was a bright idea came into Alice\'s shoulder as she remembered the number of cucumber-frames.',3.00,3,28,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(84,'So she swallowed one of the court. \'What do you like the Mock Turtle at last, with a little animal.',1.00,5,24,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(85,'Alice did not get hold of it; then Alice dodged behind a great deal to ME,\' said Alice.',5.00,8,20,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(86,'Lizard as she spoke. (The unfortunate little Bill had left off staring at the bottom of a tree.',3.00,5,4,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(87,'English); \'now I\'m opening out like the look of the window, and one foot to the croquet-ground.',2.00,5,11,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(88,'Dinn may be,\' said the Queen, who were all turning into little cakes as they used to queer things.',1.00,8,28,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(89,'And the Gryphon whispered in a deep, hollow tone: \'sit down, both of you, and listen to her. The.',5.00,8,22,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(90,'Cheshire Cat: now I shall think nothing of the edge of her knowledge. \'Just think of anything to.',1.00,7,17,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(91,'I\'m never sure what I\'m going to happen next. \'It\'s--it\'s a very pretty dance,\' said Alice.',2.00,7,32,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(92,'Alice, (she had kept a piece of bread-and-butter in the sea!\' cried the Mouse, getting up and.',1.00,3,3,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(93,'I\'d hardly finished the goose, with the Dormouse. \'Write that down,\' the King had said that day.',4.00,5,12,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(94,'I vote the young man said, \'And your hair has become very white; And yet you incessantly stand on.',4.00,5,22,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(95,'I think?\' \'I had NOT!\' cried the Mouse, in a day is very confusing.\' \'It isn\'t,\' said the March.',2.00,5,8,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(96,'Alice. The King looked anxiously over his shoulder with some curiosity. \'What a curious dream.',3.00,5,35,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(97,'Miss, we\'re doing our best, afore she comes, to--\' At this moment the door and found quite a crowd.',4.00,3,21,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(98,'Dinah, if I fell off the fire, licking her paws and washing her face--and she is of finding morals.',4.00,3,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(99,'I could let you out, you know.\' \'I don\'t like them!\' When the procession moved on, three of the.',4.00,5,27,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(100,'You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s.',2.00,8,14,'2022-03-22 16:41:55','2022-03-22 16:41:55');
/*!40000 ALTER TABLE `e_service_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_services`
--

DROP TABLE IF EXISTS `e_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `e_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(10,2) DEFAULT '0.00',
  `price_unit` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_unit` longtext COLLATE utf8mb4_unicode_ci,
  `duration` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(1) DEFAULT '0',
  `enable_booking` tinyint(1) DEFAULT '1',
  `available` tinyint(1) DEFAULT '1',
  `e_provider_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `e_services_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `e_services_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_services`
--

LOCK TABLES `e_services` WRITE;
/*!40000 ALTER TABLE `e_services` DISABLE KEYS */;
INSERT INTO `e_services` VALUES (1,'{\"en\":\"Photography Services\"}',21.81,14.45,'fixed',NULL,'4:00','{\"en\":\"Et aut praesentium corporis neque recusandae iure nesciunt aliquam. Corrupti qui aut repellat tempore dolorem voluptatum. Id cum eum et quo in. Deleniti error repellat consequatur hic.\"}',1,0,1,11,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(2,'{\"en\":\"Wedding Photos\"}',33.87,0.00,'hourly',NULL,'4:00','{\"en\":\"Quasi iusto et non velit exercitationem quis. Voluptate quis sunt inventore et error deserunt. Quidem qui molestiae enim eos.\"}',1,1,0,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(3,'{\"en\":\"Real Estate Agents\"}',36.76,28.65,'hourly',NULL,'4:00','{\"en\":\"Beatae exercitationem nihil ut magni assumenda dolorem. Est quas accusantium dicta eum dolor reprehenderit. Delectus ea nulla perspiciatis dicta aperiam ut.\"}',0,1,1,1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(4,'{\"en\":\"Post Party Cleaning\"}',45.38,0.00,'fixed',NULL,'4:00','{\"en\":\"Ab quia sequi velit nihil eaque. Animi itaque sit eligendi soluta omnis sapiente. Explicabo voluptatem est quis amet voluptatibus temporibus nulla.\"}',1,0,0,8,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(5,'{\"en\":\"Bathtub Refinishing\"}',19.34,10.31,'fixed',NULL,'4:00','{\"en\":\"Consequuntur quibusdam dolorem laboriosam aut. Aut vero porro eius sunt dolorem. Officia praesentium facere voluptas corporis eveniet.\"}',0,0,0,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(6,'{\"en\":\"Massage Services\"}',10.89,0.00,'fixed',NULL,'2:00','{\"en\":\"Autem quidem maiores eos incidunt. Eos sed aut aut. Qui voluptas sapiente dolorem atque fuga. Necessitatibus voluptatem magni cupiditate ab eum dolores totam.\"}',0,1,1,5,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(7,'{\"en\":\"Suv Car Washing \"}',46.26,0.00,'hourly',NULL,'1:00','{\"en\":\"Optio voluptatem id quisquam. Voluptatibus molestias rerum veniam ut. Quia eum vel iusto quo.\"}',0,1,1,15,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(8,'{\"en\":\"Nurse Service\"}',43.89,0.00,'fixed',NULL,'2:00','{\"en\":\"Dolor consequatur et mollitia ad delectus nam omnis. Aperiam temporibus sit repellendus qui voluptatum dolorum. Voluptas ipsa voluptatem et doloremque. Et eos qui harum.\"}',0,0,0,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(9,'{\"en\":\"Architect Service\"}',45.33,36.14,'hourly',NULL,'2:00','{\"en\":\"Praesentium velit eligendi corrupti et sit suscipit eum. Est eligendi deserunt aut nisi nobis. Hic atque aut sapiente et.\"}',1,1,1,1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(10,'{\"en\":\"Lawn Care Services\"}',39.35,0.00,'fixed',NULL,'1:00','{\"en\":\"Odit reiciendis qui consequatur rerum et. Velit placeat facilis consequuntur nobis veritatis. Fuga quo quis ad quaerat.\"}',1,0,1,15,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(11,'{\"en\":\"Portrait Photos Services\"}',23.63,14.45,'fixed',NULL,'1:00','{\"en\":\"In eveniet perspiciatis et accusamus dolor provident et. Nisi dolor voluptas sit aspernatur. Est ut ipsam minima neque. Eligendi odit voluptas quisquam sunt qui consequatur dicta.\"}',1,0,0,14,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(12,'{\"en\":\"Office Cleaning\"}',41.34,37.07,'hourly',NULL,'2:00','{\"en\":\"Aspernatur autem quia perspiciatis repellat aut. Quae numquam dicta est non minus ut dicta magni. Ea temporibus sapiente enim aspernatur.\"}',0,1,0,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(13,'{\"en\":\"Screens - New and Repair\"}',31.25,28.58,'hourly',NULL,'2:00','{\"en\":\"Esse aut ut cum maxime facilis ab. Qui officiis qui omnis necessitatibus animi architecto sed. Similique nostrum voluptate temporibus deleniti voluptatem ad. Omnis ut quod eum deserunt consectetur.\"}',1,1,1,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(14,'{\"en\":\"Full Home Deep Cleaning\"}',24.83,0.00,'fixed',NULL,'3:00','{\"en\":\"Distinctio quae dolorem a enim optio itaque. Consequatur sequi rerum nihil aut sed saepe qui. Dignissimos architecto ut necessitatibus. Hic qui impedit expedita asperiores minus blanditiis.\"}',1,1,1,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(15,'{\"en\":\"Suv Car Washing \"}',33.84,0.00,'hourly',NULL,'2:00','{\"en\":\"Qui assumenda et ullam qui iusto voluptates facere. Et et rerum quidem ut ea. Et minima quis voluptatem sunt. Cupiditate inventore consectetur commodi ut est eligendi.\"}',0,1,0,4,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(16,'{\"en\":\"Wedding Photos\"}',13.53,7.06,'hourly',NULL,'4:00','{\"en\":\"Amet velit eligendi cum ipsam. Illum cupiditate esse voluptate. In et praesentium earum ad ut laboriosam doloribus. Amet omnis sit labore itaque quisquam.\"}',0,1,1,12,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(17,'{\"en\":\"Flooring Services\"}',37.08,33.03,'fixed',NULL,'4:00','{\"en\":\"Voluptas ut omnis sit. Perspiciatis architecto et nam a. Labore dolorem dolore sed. Alias aut adipisci molestiae magni repellendus sed.\"}',1,0,1,9,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(18,'{\"en\":\"Portrait Photos Services\"}',12.33,0.00,'fixed',NULL,'1:00','{\"en\":\"Iure qui autem laborum qui aut eum officiis. Placeat debitis distinctio culpa vel. Aperiam alias corporis sunt assumenda inventore architecto.\"}',1,1,1,12,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(19,'{\"en\":\"Photography Services\"}',27.57,17.80,'hourly',NULL,'5:00','{\"en\":\"Inventore quis autem ipsa aut voluptatem quia. Sed esse dolore nulla repellendus nihil enim iste. Illo aut voluptates et nostrum.\"}',1,1,1,5,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(20,'{\"en\":\"Bathtub Refinishing\"}',34.04,0.00,'fixed',NULL,'3:00','{\"en\":\"Possimus facere ut veniam repellendus omnis praesentium quia. Qui quae non nam nam aut. Quia aut aut voluptatum veniam eos dolor necessitatibus. Eius sapiente voluptatem porro aperiam aut.\"}',0,0,0,5,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(21,'{\"en\":\"Makeup & Beauty Services\"}',28.84,0.00,'hourly',NULL,'3:00','{\"en\":\"Et tempore et minima eos ut quas quis. Assumenda voluptatibus sit cumque et autem. Tempore et sit consequuntur. Aut sit aliquid quidem consequatur delectus dolorum rerum.\"}',1,1,1,16,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(22,'{\"en\":\"Lawn Care Services\"}',16.37,0.00,'hourly',NULL,'1:00','{\"en\":\"Eveniet iusto rerum dolor culpa et aliquid dolor. Non eaque explicabo aut ipsum omnis sunt ea ducimus. Provident voluptatem aut sed ut omnis. Cupiditate vel aut veritatis perferendis ipsum.\"}',0,0,1,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(23,'{\"en\":\"Wedding Photos\"}',23.00,19.11,'fixed',NULL,'5:00','{\"en\":\"Cupiditate ad similique magnam rerum dolorem. Dolore voluptas et temporibus autem commodi in. Necessitatibus esse minima magni sapiente dolores.\"}',1,1,1,13,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(24,'{\"en\":\"Photography Services\"}',24.77,17.47,'fixed',NULL,'5:00','{\"en\":\"Dolorem rerum quis ea quo. Aperiam molestiae harum pariatur sunt aliquid. Modi rem dolor vel fugiat ea maiores rerum totam.\"}',0,0,1,6,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(25,'{\"en\":\"Lawn Care Services\"}',11.13,0.00,'fixed',NULL,'5:00','{\"en\":\"Hic laboriosam ut quo iure. Amet numquam deserunt suscipit ducimus fuga totam occaecati. Deleniti saepe excepturi ipsa aut odio. Eaque natus enim autem quos et. Impedit qui ipsam dolores.\"}',1,1,0,1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(26,'{\"en\":\"Architect Service\"}',38.23,31.11,'hourly',NULL,'3:00','{\"en\":\"Repellendus et recusandae vel rerum est. Facilis hic eaque at. Eos consequatur ut sit voluptatem.\"}',0,0,0,9,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(27,'{\"en\":\"Real Estate Agents\"}',29.23,28.23,'hourly',NULL,'2:00','{\"en\":\"Dolorem sint sequi explicabo id. Voluptates ut id nihil rem. Iste vitae aut enim quidem velit corporis in. Non veritatis quo inventore sed tempora quod voluptate.\"}',0,1,0,1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(28,'{\"en\":\"Facials Services\"}',38.68,35.62,'hourly',NULL,'3:00','{\"en\":\"Unde asperiores dolores magni voluptatum occaecati deserunt modi. Quia omnis doloremque illo possimus et. Consequuntur soluta explicabo quia similique quos. Qui voluptatibus eos consequatur non.\"}',0,1,0,18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(29,'{\"en\":\"Wedding Photos\"}',23.03,0.00,'fixed',NULL,'1:00','{\"en\":\"Sed temporibus non cupiditate cum. Aut qui quod neque tempora sapiente error architecto. Est nihil ut quia cupiditate illum iusto.\"}',0,0,0,4,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(30,'{\"en\":\"Deck Cleaning \\/ Sealing\"}',13.29,6.76,'hourly',NULL,'5:00','{\"en\":\"Perspiciatis optio nihil eum iusto aliquid accusamus omnis. Nam quae minima ut reprehenderit praesentium atque et. Maiores suscipit ipsum fugit architecto non architecto.\"}',1,0,0,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(31,'{\"en\":\"Facials Services\"}',10.79,0.00,'fixed',NULL,'1:00','{\"en\":\"Quaerat aliquam voluptate quos quae et et. Incidunt voluptas itaque quos dolor qui fugit ex.\"}',0,0,0,8,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(32,'{\"en\":\"Office Cleaning\"}',42.21,0.00,'fixed',NULL,'2:00','{\"en\":\"Dolor laboriosam qui quo consequatur distinctio eveniet sit. Aut et eum eaque voluptatum. Ipsam aut deserunt eum fugiat doloremque.\"}',0,1,1,1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(33,'{\"en\":\"Hair Style Service\"}',15.91,6.17,'fixed',NULL,'2:00','{\"en\":\"Itaque incidunt illum hic rerum molestiae autem. Officia quia rerum veniam voluptatem. Ut amet facilis eos hic est. Iste inventore perferendis est amet quia ut voluptatum quisquam.\"}',0,0,0,11,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(34,'{\"en\":\"Bathtub Refinishing\"}',14.19,8.15,'hourly',NULL,'3:00','{\"en\":\"Commodi esse quia tempora cum repellat ut velit. Aut dolores odio dignissimos ea similique. Culpa quia ea vel ex aperiam totam similique. Aliquam qui quam aut suscipit cupiditate provident.\"}',0,0,1,3,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(35,'{\"en\":\"Sedan Car Washing \"}',39.86,37.43,'hourly',NULL,'5:00','{\"en\":\"Voluptatem quam ipsa ducimus aperiam porro ea quia ut. Velit eos ea voluptatibus architecto animi nostrum. Laboriosam rerum et et. Enim et saepe deserunt quia velit.\"}',0,1,1,5,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(36,'{\"en\":\"Facials Services\"}',35.88,0.00,'hourly',NULL,'1:00','{\"en\":\"Occaecati itaque minima numquam rerum dolorem necessitatibus explicabo. Ut fugiat enim velit eius aut ex vel. Consequatur sed hic eos voluptas quibusdam molestiae sit.\"}',1,1,0,10,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(37,'{\"en\":\"Sedan Car Washing \"}',23.36,0.00,'hourly',NULL,'1:00','{\"en\":\"Et deleniti est quia vero temporibus natus et odio. Quisquam in laborum rem. Maxime corrupti ratione cumque maiores dicta rerum.\"}',0,0,1,15,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(38,'{\"en\":\"Office Cleaning\"}',12.64,3.70,'fixed',NULL,'3:00','{\"en\":\"Itaque vitae dolorem assumenda asperiores inventore. Nihil quae occaecati in et in. Eius et non quae reiciendis debitis ipsam.\"}',0,0,0,7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(39,'{\"en\":\"Full Home Deep Cleaning\"}',27.16,24.49,'hourly',NULL,'3:00','{\"en\":\"Dolor aliquam labore neque. Commodi pariatur quis soluta est. Nemo voluptatem vel accusantium at. Tempore neque voluptatem rerum labore soluta nostrum.\"}',0,1,1,15,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(40,'{\"en\":\"Architect Service\"}',33.24,24.65,'fixed',NULL,'1:00','{\"en\":\"Adipisci tenetur ullam pariatur et. Fugit dolor atque impedit eaque temporibus. Et accusamus nobis consequatur placeat facilis quo occaecati.\"}',1,1,1,12,'2022-03-22 16:41:55','2022-03-22 16:41:55');
/*!40000 ALTER TABLE `e_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earnings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `e_provider_id` int unsigned DEFAULT NULL,
  `total_bookings` int unsigned NOT NULL DEFAULT '0',
  `total_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `e_provider_earning` double(10,2) NOT NULL DEFAULT '0.00',
  `taxes` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `earnings_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `earnings_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings`
--

LOCK TABLES `earnings` WRITE;
/*!40000 ALTER TABLE `earnings` DISABLE KEYS */;
INSERT INTO `earnings` VALUES (1,19,0,0.00,0.00,0.00,0.00,'2022-03-23 03:39:02','2022-03-23 03:39:02'),(2,20,0,0.00,0.00,0.00,0.00,'2022-03-23 17:52:12','2022-03-23 17:52:12'),(3,21,0,0.00,0.00,0.00,0.00,'2022-03-23 17:54:20','2022-03-23 17:54:20'),(4,22,0,0.00,0.00,0.00,0.00,'2022-03-23 17:55:23','2022-03-23 17:55:23');
/*!40000 ALTER TABLE `earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `experiences_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `experiences_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (1,'{\"en\":\"Qui id totam alias dicta sed. Perspiciatis odio molestiae deserunt. Eius aspernatur optio maiores excepturi sed culpa.\"}','{\"en\":\"Let me see: I\'ll give them a railway station.) However, she soon made out that it might injure the brain; But, now that I\'m doubtful about the whiting!\' \'Oh, as to go among mad people,\' Alice.\"}',17,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(2,'{\"en\":\"Repellat et culpa id illum. Labore unde nemo placeat maiores. Exercitationem aut tempora amet eos iure accusantium.\"}','{\"en\":\"Gryphon, and all her riper years, the simple and loving heart of her little sister\'s dream. The long grass rustled at her as she could, and waited to see some meaning in it,\' but none of YOUR.\"}',5,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(3,'{\"en\":\"Laborum culpa non quo possimus laborum. Corrupti enim consequatur voluptas dolorem porro.\"}','{\"en\":\"PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at each other for some minutes. Alice thought she might find another key on it, and found that, as nearly as she had made out that.\"}',18,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(4,'{\"en\":\"Laborum atque dolores vero quia. Quis quas hic officiis tempore maxime ipsa. Dolores qui dolorem sit omnis est esse nemo.\"}','{\"en\":\"Alice, \'it would be worth the trouble of getting up and said, without opening its eyes, for it was a large kitchen, which was full of smoke from one foot to the part about her repeating \'YOU ARE.\"}',18,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(5,'{\"en\":\"Distinctio ab eligendi tempora provident. Reiciendis et et omnis non. Distinctio dolores nobis saepe.\"}','{\"en\":\"But there seemed to be managed? I suppose it doesn\'t matter a bit,\' said the Hatter. \'Stolen!\' the King added in a hot tureen! Who for such a thing. After a while, finding that nothing more to be.\"}',13,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(6,'{\"en\":\"Qui in reiciendis tempora. Quod est sit nihil. Consectetur aut dolor atque minus nihil corporis.\"}','{\"en\":\"Bill!\' then the other, trying every door, she ran off at once: one old Magpie began wrapping itself up very carefully, remarking, \'I really must be Mabel after all, and I had our Dinah here, I know.\"}',17,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(7,'{\"en\":\"Est quia soluta dicta ipsa. Non ut aut veniam quasi quia. Enim aperiam sed dolorum minus occaecati.\"}','{\"en\":\"So Alice got up in such a dreadful time.\' So Alice began to get in?\' she repeated, aloud. \'I must be on the shingle--will you come to the law, And argued each case with my wife; And the moral of.\"}',5,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(8,'{\"en\":\"Ut ut doloremque omnis laborum laboriosam. Sunt sint tenetur voluptatem facilis.\"}','{\"en\":\"You see the Hatter and the three were all in bed!\' On various pretexts they all stopped and looked at the Queen, who was gently brushing away some dead leaves that had a wink of sleep these three.\"}',8,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(9,'{\"en\":\"Ut deserunt aliquam repellendus. Eius officiis sit dicta magnam provident quaerat. Fugiat recusandae ut est fugit nesciunt.\"}','{\"en\":\"Gryphon; and then she walked down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the righthand bit again, and looking at them with the next witness!\' said.\"}',7,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(10,'{\"en\":\"Laudantium assumenda iusto nam quisquam voluptatem. Quae aut error doloremque. Alias ut quia nisi molestias dolorem.\"}','{\"en\":\"I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice a good opportunity for showing off a bit hurt, and she could not join the dance. \'\\\"What matters it how far we go?\\\" his scaly.\"}',18,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(11,'{\"en\":\"Maxime qui quam blanditiis praesentium ut. Libero quia eum eos. Sunt ut magni ut sequi laudantium magni officiis.\"}','{\"en\":\"Alice desperately: \'he\'s perfectly idiotic!\' And she thought of herself, \'I don\'t know what \\\"it\\\" means.\' \'I know SOMETHING interesting is sure to kill it in a low voice. \'Not at first, but, after.\"}',14,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(12,'{\"en\":\"Omnis occaecati corrupti optio vel natus. Tempora ut iusto eos. Dolor nihil voluptatem nobis provident a ut omnis.\"}','{\"en\":\"King. \'I can\'t go no lower,\' said the Gryphon whispered in a furious passion, and went on \'And how did you begin?\' The Hatter was out of his pocket, and pulled out a new pair of boots every.\"}',10,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(13,'{\"en\":\"Ea quo consequuntur veritatis adipisci. Officiis ex rerum itaque non sit et suscipit.\"}','{\"en\":\"By the time she went slowly after it: \'I never could abide figures!\' And with that she did not seem to have no idea what Latitude was, or Longitude either, but thought they were lying round the.\"}',17,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(14,'{\"en\":\"Deserunt porro saepe esse est qui et deleniti. Voluptatem quos ut ut magni eos quo qui.\"}','{\"en\":\"Alice, \'it\'ll never do to ask: perhaps I shall be late!\' (when she thought it would,\' said the Gryphon, and, taking Alice by the Hatter, and, just as the other.\' As soon as she did not like to hear.\"}',15,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(15,'{\"en\":\"Est est aut dolorem ex qui aperiam. Officiis inventore dignissimos aspernatur non velit.\"}','{\"en\":\"Alice to herself. \'Shy, they seem to be\\\"--or if you\'d like it very much,\' said Alice; \'I can\'t help that,\' said the Hatter. Alice felt that there was nothing on it were nine o\'clock in the.\"}',15,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(16,'{\"en\":\"Voluptatem et et sunt aut optio aliquid. Amet omnis a atque incidunt quae.\"}','{\"en\":\"The first question of course was, how to speak again. The Mock Turtle to the Classics master, though. He was an old woman--but then--always to have no answers.\' \'If you can\'t swim, can you?\' he.\"}',4,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(17,'{\"en\":\"Et cum quo qui eius dolor. Ipsum reiciendis vel fuga et. Excepturi dignissimos dolores praesentium molestiae ipsam possimus.\"}','{\"en\":\"I fell off the top of his head. But at any rate a book of rules for shutting people up like telescopes: this time she had forgotten the Duchess asked, with another hedgehog, which seemed to be.\"}',6,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(18,'{\"en\":\"Aperiam quibusdam totam qui quae possimus. Cumque quisquam adipisci dolorem sequi reiciendis.\"}','{\"en\":\"The Dormouse again took a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they all looked puzzled.) \'He must have been a RED rose-tree, and we won\'t talk about cats or dogs either.\"}',10,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(19,'{\"en\":\"In in qui dolor incidunt. Debitis numquam saepe commodi.\"}','{\"en\":\"March Hare said in a dreamy sort of life! I do it again and again.\' \'You are old,\' said the Mouse, who was passing at the top of its voice. \'Back to land again, and went on without attending to her.\"}',12,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(20,'{\"en\":\"Alias ex accusamus quasi numquam alias laborum. Et qui veritatis nesciunt ut.\"}','{\"en\":\"Gryphon, lying fast asleep in the middle. Alice kept her waiting!\' Alice felt a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle.\"}',1,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(21,'{\"en\":\"Ullam omnis itaque voluptatibus. Dignissimos harum enim quae laboriosam facere consequatur. Incidunt omnis id sint aperiam.\"}','{\"en\":\"Alice, a good deal: this fireplace is narrow, to be ashamed of yourself,\' said Alice, who was passing at the sides of the game, feeling very glad to get very tired of sitting by her sister on the.\"}',1,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(22,'{\"en\":\"Eligendi officiis nisi sequi sed dolorem. Et et aspernatur eligendi qui nam. Tempore quis iure necessitatibus omnis ex sit.\"}','{\"en\":\"IT. It\'s HIM.\' \'I don\'t see any wine,\' she remarked. \'It tells the day of the trees had a door leading right into a tree. By the use of repeating all that green stuff be?\' said Alice. \'What IS the.\"}',7,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(23,'{\"en\":\"Cum iusto sequi quisquam quo. Consectetur non ut corrupti voluptatum. Est et quam blanditiis ipsam.\"}','{\"en\":\"How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not used to say whether the blows hurt it or not. So she set to work at once set to work shaking.\"}',13,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(24,'{\"en\":\"Fugiat eaque ab expedita. Asperiores at fugiat expedita at. Cumque ea est ut tempore.\"}','{\"en\":\"Queen. \'It proves nothing of the miserable Mock Turtle. Alice was not much larger than a pig, my dear,\' said Alice, very much of it altogether; but after a minute or two, she made some tarts, All on.\"}',10,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(25,'{\"en\":\"Esse nihil blanditiis est iste. Maiores aperiam ipsum quis est est.\"}','{\"en\":\"Alice in a shrill, loud voice, and the White Rabbit returning, splendidly dressed, with a cart-horse, and expecting every moment to think about it, so she went nearer to watch them, and the White.\"}',4,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(26,'{\"en\":\"Odit harum excepturi et expedita nulla est vitae. Libero voluptatum eum eum dolore hic sit. Cumque eligendi nobis soluta.\"}','{\"en\":\"Queen to-day?\' \'I should think you could only hear whispers now and then, if I fell off the subjects on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the.\"}',8,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(27,'{\"en\":\"Commodi et molestiae porro. Pariatur sunt deserunt aut molestiae maiores. Voluptatum aperiam iste et incidunt at.\"}','{\"en\":\"Hatter added as an explanation. \'Oh, you\'re sure to kill it in the after-time, be herself a grown woman; and how she would manage it. \'They must go by the officers of the cattle in the air. This.\"}',1,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(28,'{\"en\":\"Repellendus aliquam ut magnam. At ad consequatur et dolorem accusantium. Omnis dicta magnam quaerat saepe dolorum.\"}','{\"en\":\"She did it so yet,\' said the Rabbit was no longer to be seen--everything seemed to Alice an excellent opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, turning to.\"}',1,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(29,'{\"en\":\"Optio non quo aut sint qui qui est. Doloribus ipsam enim sequi aut est. Similique officiis dolorum libero quae consequuntur.\"}','{\"en\":\"These were the two creatures, who had been for some time without interrupting it. \'They were obliged to have the experiment tried. \'Very true,\' said the Mock Turtle would be as well as she spoke.\"}',3,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(30,'{\"en\":\"Praesentium quis molestiae qui. Tenetur voluptatibus nisi qui sit dolor. Tempora dolor ducimus quasi quia animi.\"}','{\"en\":\"Queen was silent. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King repeated angrily, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and.\"}',12,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(31,'{\"en\":\"Neque eius ducimus quia. Accusamus reiciendis repellat ea. A autem architecto debitis aut provident quia.\"}','{\"en\":\"I shall be late!\' (when she thought of herself, \'I wonder how many hours a day or two: wouldn\'t it be murder to leave off being arches to do THAT in a voice outside, and stopped to listen. \'Mary.\"}',15,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(32,'{\"en\":\"Voluptatem dicta id amet consectetur est quia. Officiis dolor corporis eveniet quas. Voluptatem sed ipsam voluptas.\"}','{\"en\":\"Caterpillar decidedly, and the three were all talking together: she made her look up and throw us, with the Mouse was bristling all over, and she felt very glad to do this, so that by the hedge!\'.\"}',15,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(33,'{\"en\":\"Velit consequatur architecto illum. Voluptas doloremque nemo molestiae qui.\"}','{\"en\":\"Then the Queen had never been in a piteous tone. And the Gryphon repeated impatiently: \'it begins \\\"I passed by his face only, she would keep, through all her riper years, the simple rules their.\"}',2,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(34,'{\"en\":\"Consequatur inventore ut vero. Esse sint eaque ad qui corporis.\"}','{\"en\":\"ONE, THEY GAVE HIM TWO--\\\" why, that must be kind to them,\' thought Alice, \'as all the same, shedding gallons of tears, but said nothing. \'This here young lady,\' said the King. Here one of them bowed.\"}',1,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(35,'{\"en\":\"Modi qui rerum earum. Necessitatibus deserunt alias quo mollitia et facilis sunt qui. Voluptatem aut et quo dolor voluptatem.\"}','{\"en\":\"Dinah at you!\' There was a real Turtle.\' These words were followed by a very melancholy voice. \'Repeat, \\\"YOU ARE OLD, FATHER WILLIAM,\\\"\' said the Footman, and began smoking again. This time there.\"}',12,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(36,'{\"en\":\"Commodi et qui facilis quis ipsa. Illo in enim quia debitis. Aut sapiente perferendis enim hic. Sit itaque incidunt nam quos.\"}','{\"en\":\"Alice, \'to pretend to be done, I wonder?\' And here Alice began to cry again. \'You ought to be sure; but I THINK I can reach the key; and if I shall only look up in a tone of delight, and rushed at.\"}',10,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(37,'{\"en\":\"Enim omnis est est et cupiditate cumque vel. Impedit enim enim nulla facere. Explicabo debitis vero quas eligendi impedit.\"}','{\"en\":\"All the time he had a pencil that squeaked. This of course, I meant,\' the King said to herself, for this time she had grown in the world! Oh, my dear Dinah! I wonder if I shall only look up in her.\"}',18,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(38,'{\"en\":\"Maxime et amet perferendis ipsam commodi aspernatur. Ut aut earum ut minus. Nemo mollitia minima voluptatem eligendi eum est.\"}','{\"en\":\"Why, I do it again and again.\' \'You are old,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help that,\' said the King. \'Then it ought to tell you--all I know who I am! But I\'d better.\"}',18,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(39,'{\"en\":\"Vel ad eos at ex nemo maiores sequi illum. Aperiam quod amet porro ea. Numquam architecto magni quibusdam quibusdam tenetur.\"}','{\"en\":\"Alice found at first she would keep, through all her coaxing. Hardly knowing what she was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like one, but.\"}',7,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(40,'{\"en\":\"Architecto dicta recusandae quis quibusdam doloribus tempora aut aspernatur. Aut et et accusamus ducimus architecto.\"}','{\"en\":\"Caterpillar was the only difficulty was, that if something wasn\'t done about it while the Mouse was bristling all over, and both creatures hid their faces in their mouths; and the White Rabbit, who.\"}',9,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(41,'{\"en\":\"Officiis molestiae saepe eum repellat. Molestiae consequatur odit ex eum quibusdam enim maxime.\"}','{\"en\":\"MINE.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of them attempted to explain it as you go on? It\'s by far the most interesting, and perhaps after all it might happen any.\"}',2,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(42,'{\"en\":\"Qui debitis possimus et ipsa deserunt in. Harum nostrum architecto ab corrupti. Maxime eos qui voluptatibus magni quo.\"}','{\"en\":\"Yet you finished the guinea-pigs!\' thought Alice. The poor little Lizard, Bill, was in confusion, getting the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, who.\"}',6,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(43,'{\"en\":\"Inventore rerum culpa explicabo libero voluptas voluptatem saepe. Eum sed occaecati adipisci.\"}','{\"en\":\"The Duchess took no notice of her sister, as well she might, what a dear quiet thing,\' Alice went on growing, and, as the White Rabbit, trotting slowly back again, and Alice was thoroughly puzzled.\"}',18,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(44,'{\"en\":\"Labore exercitationem perferendis fuga ut fuga harum et. Eos molestiae voluptate quo voluptatibus est.\"}','{\"en\":\"HAD THIS FIT--\\\" you never had fits, my dear, YOU must cross-examine the next moment she appeared on the trumpet, and called out \'The race is over!\' and they walked off together. Alice was very glad.\"}',7,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(45,'{\"en\":\"Est rem minus laudantium debitis quo. Deserunt voluptates recusandae beatae omnis. Mollitia magnam et dicta amet.\"}','{\"en\":\"Take your choice!\' The Duchess took her choice, and was immediately suppressed by the Hatter, with an anxious look at me like that!\' \'I couldn\'t help it,\' said the Hatter. \'You might just as the.\"}',12,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(46,'{\"en\":\"Ut est voluptatem sapiente. Recusandae dolores quasi ex. Assumenda harum repellendus eos non numquam eaque amet.\"}','{\"en\":\"For really this morning I\'ve nothing to what I like\\\"!\' \'You might just as well as pigs, and was coming to, but it was empty: she did not dare to disobey, though she looked at poor Alice, \'to pretend.\"}',8,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(47,'{\"en\":\"In ullam deserunt quo consequatur. Quia et eius sed. Quidem temporibus necessitatibus blanditiis distinctio adipisci et.\"}','{\"en\":\"Queen, and Alice, were in custody and under sentence of execution. Then the Queen put on one of them were animals, and some of them even when they had settled down again, the Dodo in an offended.\"}',8,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(48,'{\"en\":\"Perferendis dolore eos ut. Molestiae vitae soluta adipisci qui voluptatem. Eum sed iste illum non.\"}','{\"en\":\"Dormouse indignantly. However, he consented to go from here?\' \'That depends a good thing!\' she said to the rose-tree, she went round the hall, but they were IN the well,\' Alice said to herself how.\"}',14,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(49,'{\"en\":\"Labore consequatur maiores possimus. Omnis tenetur iure consequatur non illo et. Voluptatum reiciendis omnis nesciunt nostrum.\"}','{\"en\":\"Caterpillar, and the others looked round also, and all dripping wet, cross, and uncomfortable. The first thing I\'ve got to the jury. They were just beginning to think to herself, and began to repeat.\"}',6,'2022-03-22 16:41:57','2022-03-22 16:41:57'),(50,'{\"en\":\"Quos iure veniam inventore ut velit velit. Voluptatem qui officia repellat. Eos qui iste tempora ut suscipit ut dicta rerum.\"}','{\"en\":\"Pigeon; \'but if they do, why then they\'re a kind of thing never happened, and now here I am now? That\'ll be a footman in livery, with a sigh. \'I only took the least idea what to beautify is, I.\"}',13,'2022-03-22 16:41:57','2022-03-22 16:41:57');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'{\"en\":\"Service\"}','2022-03-22 16:41:54','2022-03-22 16:41:54'),(2,'{\"en\":\"Service\"}','2022-03-22 16:41:54','2022-03-22 16:41:54'),(3,'{\"en\":\"Service\"}','2022-03-22 16:41:54','2022-03-22 16:41:54'),(4,'{\"en\":\"Service\"}','2022-03-22 16:41:54','2022-03-22 16:41:54'),(5,'{\"en\":\"Service\"}','2022-03-22 16:41:54','2022-03-22 16:41:54');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8mb4_unicode_ci,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_faq_category_id_foreign` (`faq_category_id`),
  CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'{\"en\":\"Porro perferendis nobis aliquam quaerat. Delectus suscipit cupiditate eum qui suscipit.\"}','{\"en\":\"Alice! Come here directly, and get in at the corners: next the ten courtiers; these were ornamented all over their shoulders, that all the rest, Between yourself and me.\' \'That\'s the most.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(2,'{\"en\":\"Minus provident omnis architecto. Est minus iste recusandae sint vel.\"}','{\"en\":\"Then the Queen had ordered. They very soon found out a new pair of white kid gloves: she took up the fan and a bright idea came into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are.\"}',4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(3,'{\"en\":\"Qui aperiam neque et vitae. Molestiae quibusdam sit atque quas incidunt accusantium.\"}','{\"en\":\"But I\'d better take him his fan and gloves. \'How queer it seems,\' Alice said with some difficulty, as it happens; and if I would talk on such a simple question,\' added the Hatter, with an anxious.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(4,'{\"en\":\"Ut laborum et nisi sunt pariatur. Eos magni non quo tempora. Culpa nihil eos eaque fuga.\"}','{\"en\":\"Dormouse,\' the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing and howling alternately without a great hurry. An enormous puppy was looking up into a.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(5,'{\"en\":\"Neque eaque qui sint rem. Rerum ab aut similique. Totam perspiciatis quod saepe.\"}','{\"en\":\"Will you, won\'t you, won\'t you, will you, won\'t you, won\'t you, will you, old fellow?\' The Mock Turtle at last, more calmly, though still sobbing a little sharp bark just over her head struck.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(6,'{\"en\":\"In est delectus at blanditiis. Molestias sit mollitia qui ut quam reprehenderit.\"}','{\"en\":\"Either the well was very deep, or she fell past it. \'Well!\' thought Alice to herself, rather sharply; \'I advise you to offer it,\' said the Knave, \'I didn\'t know that you\'re mad?\' \'To begin with,\'.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(7,'{\"en\":\"Sit eum quas illo in temporibus soluta. Sit nam amet ex voluptatibus fugiat nam beatae ut.\"}','{\"en\":\"Alice was not an encouraging tone. Alice looked at Two. Two began in a hurry: a large ring, with the words a little, half expecting to see what this bottle was a most extraordinary noise going on.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(8,'{\"en\":\"Nesciunt ipsam quod rem voluptas. Quia error facilis vel. Quo sed qui soluta repellat quibusdam.\"}','{\"en\":\"Tortoise--\' \'Why did you manage to do THAT in a piteous tone. And the moral of that is--\\\"Be what you would seem to dry me at all.\' \'In that case,\' said the White Rabbit cried out, \'Silence in the.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(9,'{\"en\":\"Vel id non dolorum. Autem consequatur eos quia non quod nobis necessitatibus.\"}','{\"en\":\"Cat, \'or you wouldn\'t mind,\' said Alice: \'allow me to him: She gave me a good deal to come down the chimney, has he?\' said Alice in a frightened tone. \'The Queen of Hearts, she made out that it was.\"}',4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(10,'{\"en\":\"Mollitia asperiores labore natus temporibus omnis in et. Aliquam omnis id eos quod.\"}','{\"en\":\"Alice; \'but a grin without a moment\'s pause. The only things in the sun. (IF you don\'t know the meaning of it in large letters. It was all finished, the Owl, as a boon, Was kindly permitted to.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(11,'{\"en\":\"Nemo voluptas nihil neque rerum et. Molestiae harum ut excepturi vitae vero.\"}','{\"en\":\"Hatter, it woke up again as quickly as she came rather late, and the Dormouse said--\' the Hatter grumbled: \'you shouldn\'t have put it into his cup of tea, and looked at them with the other: he came.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(12,'{\"en\":\"Vel nam vel praesentium provident. Voluptas rerum et modi ratione ad. Ut voluptas aut voluptas.\"}','{\"en\":\"I know. Silence all round, if you cut your finger VERY deeply with a shiver. \'I beg pardon, your Majesty,\' the Hatter was the Cat in a twinkling! Half-past one, time for dinner!\' (\'I only wish it.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(13,'{\"en\":\"Cum aut id in vel illo doloremque libero. At ut porro tenetur praesentium id quaerat.\"}','{\"en\":\"Rabbit, and had to kneel down on her lap as if nothing had happened. \'How am I to do this, so she went in without knocking, and hurried off at once, and ran off, thinking while she ran, as well as.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(14,'{\"en\":\"Ut asperiores deserunt amet laboriosam iure. Pariatur dolore sequi ad quo velit et.\"}','{\"en\":\"Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the treat. When the Mouse replied rather impatiently: \'any shrimp could have.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(15,'{\"en\":\"Vero adipisci saepe qui rerum sit consequatur omnis. Qui in totam natus culpa.\"}','{\"en\":\"English. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Dormouse: \'not in that soup!\' Alice said very politely, \'if I had to do that,\' said the Duchess. \'I make you a present of.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(16,'{\"en\":\"Vitae laudantium ad et voluptatem et ut. Ea et debitis saepe. Odio ea tenetur iusto.\"}','{\"en\":\"I dare say you never had fits, my dear, I think?\' \'I had NOT!\' cried the Mouse, who seemed to have lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(17,'{\"en\":\"Aliquid molestiae unde nesciunt. Maiores cumque quos id blanditiis ex aliquam.\"}','{\"en\":\"White Rabbit, who was peeping anxiously into its nest. Alice crouched down among the party. Some of the sea.\' \'I couldn\'t help it,\' said Five, \'and I\'ll tell you how the game began. Alice gave a.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(18,'{\"en\":\"Nostrum in aut qui debitis nesciunt vel unde. Quasi quam sit corporis itaque numquam et.\"}','{\"en\":\"ARE OLD, FATHER WILLIAM,\' to the other two were using it as a partner!\' cried the Mock Turtle, \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes people hot-tempered,\' she.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(19,'{\"en\":\"Aut impedit vel sit quod. Et eaque debitis et quo.\"}','{\"en\":\"For anything tougher than suet; Yet you turned a back-somersault in at the other, looking uneasily at the window.\' \'THAT you won\'t\' thought Alice, \'to pretend to be said. At last the Mouse, getting.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(20,'{\"en\":\"Cumque est rerum nesciunt soluta. Est rem aut et ea expedita. Eos magnam ipsa eius doloremque.\"}','{\"en\":\"Alice, a little animal (she couldn\'t guess of what work it would feel very uneasy: to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it,\'.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(21,'{\"en\":\"Id atque nisi deserunt. Neque illo a dicta aut consequuntur. Enim cum aliquam voluptatem eos neque.\"}','{\"en\":\"March Hare. The Hatter shook his head off outside,\' the Queen was close behind her, listening: so she went back to the King, the Queen, \'Really, my dear, YOU must cross-examine the next question is.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(22,'{\"en\":\"Repellendus qui sit aperiam et. Soluta alias ut quo sint. Eum rem eos rerum illum.\"}','{\"en\":\"ONE respectable person!\' Soon her eye fell on a little faster?\\\" said a whiting before.\' \'I can hardly breathe.\' \'I can\'t help it,\' she thought, and it said nothing. \'This here young lady,\' said the.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(23,'{\"en\":\"Dolores error culpa a enim velit. Eius dolorem et quia rerum est commodi.\"}','{\"en\":\"THE KING AND QUEEN OF HEARTS. Alice was only the pepper that makes people hot-tempered,\' she went on so long that they were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, what.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(24,'{\"en\":\"Sit numquam modi qui voluptas quo qui. Velit cum ipsam quibusdam reprehenderit debitis nesciunt.\"}','{\"en\":\"RABBIT\' engraved upon it. She went on just as she could, and waited till the eyes appeared, and then treading on my tail. See how eagerly the lobsters and the reason is--\' here the Mock Turtle. \'No.\"}',4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(25,'{\"en\":\"Maxime voluptatem est aut excepturi adipisci. Nihil atque molestias recusandae atque iusto.\"}','{\"en\":\"King said, for about the twentieth time that day. \'That PROVES his guilt,\' said the Duchess, \'chop off her knowledge, as there was generally a ridge or furrow in the court!\' and the second thing is.\"}',4,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(26,'{\"en\":\"Autem quo sunt vel ipsam. Fuga tempore in et dolores excepturi dignissimos.\"}','{\"en\":\"Alice\'s shoulder, and it said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed.\"}',2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(27,'{\"en\":\"Maxime rerum corrupti iure cumque. Rerum mollitia enim impedit nisi omnis.\"}','{\"en\":\"Caterpillar. Alice said very humbly; \'I won\'t indeed!\' said Alice, who was beginning to grow to my right size: the next moment she felt sure she would gather about her and to hear his history. I.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(28,'{\"en\":\"Et totam esse aut dolorem. Perspiciatis non explicabo qui sunt. Consequatur provident nihil eum.\"}','{\"en\":\"The Queen turned angrily away from her as she heard her voice sounded hoarse and strange, and the Hatter and the roof of the creature, but on the ground as she spoke, but no result seemed to be.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(29,'{\"en\":\"Omnis quod deleniti quas. Quod in aut sunt aut natus recusandae impedit. Laudantium aut et quia.\"}','{\"en\":\"Mock Turtle went on. \'We had the best thing to get very tired of this. I vote the young lady to see some meaning in it.\' The jury all looked so good, that it had a wink of sleep these three little.\"}',3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(30,'{\"en\":\"Consectetur voluptas totam ad eveniet harum. Soluta sit nihil veritatis ut voluptatem.\"}','{\"en\":\"I will prosecute YOU.--Come, I\'ll take no denial; We must have been a RED rose-tree, and we put a white one in by mistake; and if it began ordering people about like mad things all this time. \'I.\"}',1,'2022-03-22 16:41:56','2022-03-22 16:41:56');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_options`
--

DROP TABLE IF EXISTS `favorite_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_options` (
  `option_id` int unsigned NOT NULL,
  `favorite_id` int unsigned NOT NULL,
  PRIMARY KEY (`option_id`,`favorite_id`),
  KEY `favorite_options_favorite_id_foreign` (`favorite_id`),
  CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_options`
--

LOCK TABLES `favorite_options` WRITE;
/*!40000 ALTER TABLE `favorite_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `e_service_id` int unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorites_e_service_id_foreign` (`e_service_id`),
  KEY `favorites_user_id_foreign` (`user_id`),
  CONSTRAINT `favorites_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `galleries_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'{\"en\":\"Quo aut et architecto.\"}',7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(2,'{\"en\":\"Corrupti hic harum dignissimos est.\"}',18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(3,'{\"en\":\"Culpa corrupti ad maiores unde.\"}',3,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(4,'{\"en\":\"Voluptatem officia excepturi neque temporibus magni.\"}',1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(5,'{\"en\":\"Asperiores accusantium sapiente autem deserunt quaerat eos eos.\"}',8,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(6,'{\"en\":\"Voluptatibus debitis quasi tempore sequi enim reprehenderit aut.\"}',15,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(7,'{\"en\":\"Et enim et mollitia necessitatibus culpa.\"}',9,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(8,'{\"en\":\"Occaecati perspiciatis eveniet eos optio reiciendis doloremque.\"}',12,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(9,'{\"en\":\"Aut error illum et facilis.\"}',8,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(10,'{\"en\":\"Quisquam nam quam ea dolorem rerum incidunt.\"}',18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(11,'{\"en\":\"Doloremque ut iusto modi est dolores hic praesentium aut.\"}',18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(12,'{\"en\":\"Et rerum laudantium consectetur repellendus.\"}',1,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(13,'{\"en\":\"Magnam pariatur maiores possimus odit distinctio perspiciatis dignissimos.\"}',9,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(14,'{\"en\":\"Nostrum et sapiente rerum voluptatem nihil tempora.\"}',17,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(15,'{\"en\":\"Nulla modi quam facere facilis.\"}',7,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(16,'{\"en\":\"Officia et nihil qui veniam eum.\"}',6,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(17,'{\"en\":\"Minima aliquid cumque voluptatem numquam.\"}',15,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(18,'{\"en\":\"Velit quam nesciunt fugiat modi.\"}',12,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(19,'{\"en\":\"Facilis a quo error possimus dolorum magni ut dolores.\"}',18,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(20,'{\"en\":\"Assumenda reiciendis est ullam eum cupiditate tempora tenetur.\"}',14,'2022-03-22 16:41:55','2022-03-22 16:41:55'),(21,'{\"en\":\"<p>dbfdbvdf<\\/p>\"}',1,'2022-03-23 02:23:34','2022-03-23 02:23:34'),(22,'{\"en\":\"<p>hjhk<\\/p>\"}',1,'2022-03-23 02:42:39','2022-03-23 02:42:39');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (3,'App\\Models\\PaymentMethod',2,'logo','razorpay','razorpay.png','image/png','public',13026,'[]','{\"uuid\":\"13e62475-6b5f-4812-b484-2b94cc52b715\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',3,'2021-05-07 16:03:38','2021-05-07 16:03:38'),(5,'App\\Models\\PaymentMethod',5,'logo','paypal','paypal.png','image/png','public',15819,'[]','{\"uuid\":\"2b8bd9b8-5c37-4464-a5c7-623496d7655f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',5,'2021-05-07 16:03:49','2021-05-07 16:03:49'),(7,'App\\Models\\PaymentMethod',6,'logo','pay_pickup','pay_pickup.png','image/png','public',11712,'[]','{\"uuid\":\"5e06e7ca-ac33-413c-9ab0-6fd4e3083cc1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',7,'2021-05-07 16:03:58','2021-05-07 16:03:58'),(9,'App\\Models\\PaymentMethod',7,'logo','stripe-logo','stripe-logo.png','image/png','public',5436,'[]','{\"uuid\":\"bd448a36-8a5e-4c85-8d6e-c356843429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',9,'2021-05-07 16:04:23','2021-05-07 16:04:23'),(10,'App\\Models\\PaymentMethod',9,'logo','flutterwave','flutterwave.png','image/png','public',5436,'[]','{\"uuid\":\"bd558a96-8a5e-4a85-8d6e-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',10,'2021-05-07 16:04:23','2021-05-07 16:04:23'),(11,'App\\Models\\PaymentMethod',8,'logo','paystack','paystack.png','image/png','public',5436,'[]','{\"uuid\":\"bd448a96-8a5e-4c85-8d6e-c356648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',11,'2021-05-07 16:04:23','2021-05-07 16:04:23'),(12,'App\\Models\\PaymentMethod',10,'logo','fpx','fpx.png','image/png','public',5436,'[]','{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',12,'2021-05-07 16:04:23','2021-05-07 16:04:23'),(13,'App\\Models\\PaymentMethod',11,'logo','wallet','wallet.png','image/png','public',5436,'[]','{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',12,'2021-05-07 16:04:23','2021-05-07 16:04:23'),(14,'App\\Models\\PaymentMethod',12,'logo','paymongo','paymongo.png','image/png','public',5436,'[]','{\"uuid\":\"bd558a84-8a5e-4b85-8d6f-c456648429c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',12,'2021-05-07 16:04:23','2021-05-07 16:04:23'),(15,'App\\Models\\Upload',1,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"39a8b348-4fb2-4485-a753-c4f0d25452a6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',13,'2022-03-23 02:22:08','2022-03-23 02:22:09'),(16,'App\\Models\\Gallery',21,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"39a8b348-4fb2-4485-a753-c4f0d25452a6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',14,'2022-03-23 02:23:34','2022-03-23 02:23:34'),(17,'App\\Models\\Upload',2,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"1aa6cd28-40ee-48a8-8f79-75ba9d316895\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',15,'2022-03-23 02:42:35','2022-03-23 02:42:35'),(18,'App\\Models\\Gallery',22,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"1aa6cd28-40ee-48a8-8f79-75ba9d316895\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',16,'2022-03-23 02:42:39','2022-03-23 02:42:39'),(19,'App\\Models\\Upload',3,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"7a7bba82-26dc-4223-81ea-e00015b8ef0e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',17,'2022-03-23 03:04:06','2022-03-23 03:04:06'),(20,'App\\Models\\Upload',4,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"7f5a0ae3-095c-49b9-8ea3-13f20cb43c0f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',18,'2022-03-23 03:38:31','2022-03-23 03:38:31'),(22,'App\\Models\\Upload',6,'image','asset','asset.png','image/png','public',331339,'[]','{\"uuid\":\"392cabf2-29d5-46dc-a7ce-05bbdb7a3a21\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',19,'2022-03-23 16:49:52','2022-03-23 16:49:52'),(23,'App\\Models\\Upload',7,'image','asset','asset.png','image/png','public',331339,'[]','{\"uuid\":\"181560a5-52d2-4891-810d-3d8e0b6b8726\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',20,'2022-03-23 17:51:41','2022-03-23 17:51:42'),(24,'App\\Models\\EProvider',20,'image','asset','asset.png','image/png','public',331339,'[]','{\"uuid\":\"181560a5-52d2-4891-810d-3d8e0b6b8726\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',21,'2022-03-23 17:52:12','2022-03-23 17:52:12'),(25,'App\\Models\\Upload',8,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"d7e13272-0d14-4ee0-9ab8-5e2979968321\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',22,'2022-03-23 17:53:48','2022-03-23 17:53:49'),(26,'App\\Models\\Upload',9,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"8d808924-7770-4c90-9d81-3be38b3b2fca\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',23,'2022-03-23 17:54:09','2022-03-23 17:54:09'),(27,'App\\Models\\EProvider',21,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"8d808924-7770-4c90-9d81-3be38b3b2fca\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',24,'2022-03-23 17:54:20','2022-03-23 17:54:20'),(28,'App\\Models\\Upload',10,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"7ebc5a31-071b-4856-be92-0eeb07301157\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',25,'2022-03-23 17:55:16','2022-03-23 17:55:17'),(29,'App\\Models\\EProvider',22,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"7ebc5a31-071b-4856-be92-0eeb07301157\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',26,'2022-03-23 17:55:23','2022-03-23 17:55:23'),(30,'App\\Models\\Upload',11,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"4865ca00-cc34-4bea-ba2d-132a7925808c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',27,'2022-03-23 17:57:10','2022-03-23 17:57:10'),(31,'App\\Models\\Upload',12,'image','22','22.png','image/png','public',67391,'[]','{\"uuid\":\"3fbe9f20-5bf0-43a8-930a-b5749ff445bb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}','[]',28,'2022-03-23 17:57:47','2022-03-23 17:57:47');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_05_26_175145_create_permission_tables',1),(4,'2018_06_12_140344_create_media_table',1),(5,'2018_06_13_035117_create_uploads_table',1),(6,'2018_07_17_180731_create_settings_table',1),(7,'2018_07_24_211308_create_custom_fields_table',1),(8,'2018_07_24_211327_create_custom_field_values_table',1),(9,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2019_08_29_213829_create_faq_categories_table',1),(11,'2019_08_29_213926_create_faqs_table',1),(12,'2019_10_22_144652_create_currencies_table',1),(13,'2021_01_07_162658_create_payment_methods_table',1),(14,'2021_01_07_164755_create_payment_statuses_table',1),(15,'2021_01_07_165422_create_payments_table',1),(16,'2021_01_13_105605_create_e_provider_types_table',1),(17,'2021_01_13_111155_create_e_providers_table',1),(18,'2021_01_13_111622_create_experiences_table',1),(19,'2021_01_13_111730_create_awards_table',1),(20,'2021_01_13_114302_create_taxes_table',1),(21,'2021_01_13_200249_create_addresses_table',1),(22,'2021_01_15_115239_create_e_provider_addresses_table',1),(23,'2021_01_15_115747_create_e_provider_users_table',1),(24,'2021_01_15_115850_create_e_provider_taxes_table',1),(25,'2021_01_16_160838_create_availability_hours_table',1),(26,'2021_01_19_135951_create_e_services_table',1),(27,'2021_01_19_140427_create_categories_table',1),(28,'2021_01_19_171553_create_e_service_categories_table',1),(29,'2021_01_22_194514_create_option_groups_table',1),(30,'2021_01_22_200807_create_options_table',1),(31,'2021_01_22_205819_create_favorites_table',1),(32,'2021_01_22_205944_create_favorite_options_table',1),(33,'2021_01_23_125641_create_e_service_reviews_table',1),(34,'2021_01_23_201533_create_galleries_table',1),(35,'2021_01_25_105421_create_slides_table',1),(36,'2021_01_25_162055_create_notifications_table',1),(37,'2021_01_25_170522_create_coupons_table',1),(38,'2021_01_25_170529_create_discountables_table',1),(39,'2021_01_25_191833_create_booking_statuses_table',1),(40,'2021_01_25_212252_create_bookings_table',1),(41,'2021_01_30_111717_create_e_provider_payouts_table',1),(42,'2021_01_30_135356_create_earnings_table',1),(43,'2021_02_24_102838_create_custom_pages_table',1),(44,'2021_06_26_110636_create_json_extract_function',1),(45,'2021_08_08_134136_create_wallets_table',1),(46,'2021_08_08_155732_create_wallet_transactions_table',1),(47,'2022_03_23_173154_create_videos_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App\\Models\\User',1),(3,'App\\Models\\User',2),(4,'App\\Models\\User',3),(3,'App\\Models\\User',4),(4,'App\\Models\\User',5),(3,'App\\Models\\User',6),(4,'App\\Models\\User',7),(4,'App\\Models\\User',8);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_groups`
--

DROP TABLE IF EXISTS `option_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_groups`
--

LOCK TABLES `option_groups` WRITE;
/*!40000 ALTER TABLE `option_groups` DISABLE KEYS */;
INSERT INTO `option_groups` VALUES (1,'Size',1,'2021-01-22 17:49:15','2021-02-07 18:30:19'),(2,'Area',1,'2021-01-22 18:46:28','2021-01-22 18:46:28'),(3,'Surface',0,'2021-01-22 18:46:47','2021-01-22 18:46:47');
/*!40000 ALTER TABLE `option_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `e_service_id` int unsigned NOT NULL,
  `option_group_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `options_e_service_id_foreign` (`e_service_id`),
  KEY `options_option_group_id_foreign` (`option_group_id`),
  CONSTRAINT `options_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'{\"en\":\"30m²\"}','{\"en\":\"Quisquam sed ipsam culpa est.\"}',15.75,8,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(2,'{\"en\":\"40m\"}','{\"en\":\"Natus qui blanditiis minus.\"}',16.41,33,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(3,'{\"en\":\"20m\"}','{\"en\":\"Ratione quia magni ut quo.\"}',26.62,5,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(4,'{\"en\":\"10m²\"}','{\"en\":\"Totam at laboriosam.\"}',23.24,35,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(5,'{\"en\":\"10m²\"}','{\"en\":\"Reiciendis et nisi perferendis error laboriosam.\"}',23.79,23,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(6,'{\"en\":\"20m\"}','{\"en\":\"Velit sint vel odit.\"}',22.16,8,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(7,'{\"en\":\"30m²\"}','{\"en\":\"Reiciendis facere architecto suscipit.\"}',44.26,2,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(8,'{\"en\":\"20m\"}','{\"en\":\"Vel hic rem.\"}',17.18,13,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(9,'{\"en\":\"30m²\"}','{\"en\":\"Voluptatem dolorem aperiam est ullam.\"}',10.31,11,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(10,'{\"en\":\"40m\"}','{\"en\":\"Ut officia laborum ad ipsa aut.\"}',42.91,36,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(11,'{\"en\":\"40m\"}','{\"en\":\"Amet ipsum quia.\"}',19.57,39,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(12,'{\"en\":\"10m²\"}','{\"en\":\"Eos quisquam et veniam aspernatur.\"}',17.71,19,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(13,'{\"en\":\"40m\"}','{\"en\":\"Aut consectetur corporis voluptatibus.\"}',13.02,7,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(14,'{\"en\":\"30m²\"}','{\"en\":\"Sequi ea quo dolores minima.\"}',33.58,6,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(15,'{\"en\":\"10m²\"}','{\"en\":\"Accusamus modi maxime illum.\"}',44.40,40,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(16,'{\"en\":\"10m²\"}','{\"en\":\"Et possimus explicabo et deleniti.\"}',12.87,4,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(17,'{\"en\":\"40m\"}','{\"en\":\"Iste minus non esse.\"}',40.46,16,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(18,'{\"en\":\"40m\"}','{\"en\":\"Et est dolor animi saepe voluptates.\"}',14.60,40,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(19,'{\"en\":\"30m²\"}','{\"en\":\"Qui reprehenderit perferendis.\"}',47.24,22,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(20,'{\"en\":\"20m\"}','{\"en\":\"Voluptatum aut asperiores officiis et saepe.\"}',15.12,29,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(21,'{\"en\":\"20m\"}','{\"en\":\"Blanditiis id voluptatum quis.\"}',38.66,1,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(22,'{\"en\":\"10m²\"}','{\"en\":\"Et vel rerum sed.\"}',13.30,20,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(23,'{\"en\":\"40m\"}','{\"en\":\"Sed culpa qui velit.\"}',47.94,28,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(24,'{\"en\":\"10m²\"}','{\"en\":\"Quasi et nesciunt repellat.\"}',29.59,28,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(25,'{\"en\":\"20m\"}','{\"en\":\"Saepe et sed consequatur quaerat.\"}',21.50,13,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(26,'{\"en\":\"20m\"}','{\"en\":\"Soluta exercitationem autem.\"}',10.34,18,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(27,'{\"en\":\"10m²\"}','{\"en\":\"Quis est quibusdam.\"}',24.18,34,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(28,'{\"en\":\"40m\"}','{\"en\":\"Itaque et nemo cumque odio.\"}',39.10,40,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(29,'{\"en\":\"10m²\"}','{\"en\":\"A eos magnam est.\"}',25.62,15,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(30,'{\"en\":\"20m\"}','{\"en\":\"Deleniti aut consequuntur.\"}',48.44,19,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(31,'{\"en\":\"10m²\"}','{\"en\":\"Consectetur vero ut.\"}',26.13,9,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(32,'{\"en\":\"40m\"}','{\"en\":\"Eum totam exercitationem cupiditate et.\"}',34.98,17,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(33,'{\"en\":\"30m²\"}','{\"en\":\"Ut sed molestiae autem pariatur.\"}',31.34,18,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(34,'{\"en\":\"30m²\"}','{\"en\":\"Sit quia adipisci.\"}',20.94,37,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(35,'{\"en\":\"30m²\"}','{\"en\":\"Nobis voluptas qui sed.\"}',23.12,6,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(36,'{\"en\":\"20m\"}','{\"en\":\"Nihil magnam sint.\"}',24.19,5,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(37,'{\"en\":\"30m²\"}','{\"en\":\"Suscipit molestiae culpa.\"}',40.94,39,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(38,'{\"en\":\"30m²\"}','{\"en\":\"Repellat rerum occaecati.\"}',36.66,35,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(39,'{\"en\":\"40m\"}','{\"en\":\"Est nobis nisi et molestias.\"}',43.67,11,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(40,'{\"en\":\"30m²\"}','{\"en\":\"Aperiam sint dicta explicabo est deleniti.\"}',25.77,36,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(41,'{\"en\":\"20m\"}','{\"en\":\"Nostrum aspernatur totam sed.\"}',14.39,22,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(42,'{\"en\":\"30m²\"}','{\"en\":\"Quae qui nisi nihil ut tenetur.\"}',44.94,7,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(43,'{\"en\":\"40m\"}','{\"en\":\"Reiciendis laboriosam possimus et rerum.\"}',47.98,28,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(44,'{\"en\":\"40m\"}','{\"en\":\"Ut totam beatae.\"}',45.89,22,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(45,'{\"en\":\"10m²\"}','{\"en\":\"Et consequatur quaerat non.\"}',31.37,21,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(46,'{\"en\":\"20m\"}','{\"en\":\"Sunt eaque ab minus consectetur.\"}',20.79,21,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(47,'{\"en\":\"20m\"}','{\"en\":\"Error voluptatem aliquam.\"}',28.96,25,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(48,'{\"en\":\"10m²\"}','{\"en\":\"Id nostrum qui nam temporibus.\"}',13.68,31,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(49,'{\"en\":\"40m\"}','{\"en\":\"Modi numquam temporibus quisquam eos.\"}',32.69,1,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(50,'{\"en\":\"20m\"}','{\"en\":\"Aut consequatur aliquam sed ut.\"}',45.88,7,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(51,'{\"en\":\"40m\"}','{\"en\":\"Aut rem pariatur.\"}',14.48,13,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(52,'{\"en\":\"30m²\"}','{\"en\":\"Veritatis vel quas minus.\"}',38.13,34,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(53,'{\"en\":\"40m\"}','{\"en\":\"Sit nostrum nemo.\"}',25.57,35,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(54,'{\"en\":\"40m\"}','{\"en\":\"Voluptates quia aut neque.\"}',49.81,31,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(55,'{\"en\":\"20m\"}','{\"en\":\"Qui asperiores minus aut exercitationem.\"}',25.14,34,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(56,'{\"en\":\"20m\"}','{\"en\":\"Molestiae voluptas consequatur in dolor.\"}',44.07,29,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(57,'{\"en\":\"20m\"}','{\"en\":\"Aut dignissimos placeat magnam.\"}',21.99,17,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(58,'{\"en\":\"20m\"}','{\"en\":\"Sunt quo blanditiis aut sequi.\"}',37.61,25,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(59,'{\"en\":\"10m²\"}','{\"en\":\"Et aut voluptate.\"}',33.41,32,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(60,'{\"en\":\"40m\"}','{\"en\":\"Illum pariatur voluptatem ut iusto accusamus.\"}',43.77,8,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(61,'{\"en\":\"40m\"}','{\"en\":\"Officia corrupti sit consectetur nihil.\"}',12.25,5,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(62,'{\"en\":\"20m\"}','{\"en\":\"Assumenda omnis qui.\"}',15.22,22,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(63,'{\"en\":\"40m\"}','{\"en\":\"Nostrum qui laudantium et optio.\"}',40.46,7,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(64,'{\"en\":\"30m²\"}','{\"en\":\"Et ipsam ipsa.\"}',44.94,15,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(65,'{\"en\":\"20m\"}','{\"en\":\"Eius itaque illo saepe laborum ea.\"}',26.47,28,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(66,'{\"en\":\"20m\"}','{\"en\":\"Ut aspernatur doloribus quibusdam.\"}',43.44,16,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(67,'{\"en\":\"30m²\"}','{\"en\":\"Quia est qui aut molestiae.\"}',33.55,17,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(68,'{\"en\":\"20m\"}','{\"en\":\"Sit harum aut fugit est.\"}',41.15,18,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(69,'{\"en\":\"40m\"}','{\"en\":\"Tempore minus occaecati consequatur et non.\"}',21.21,23,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(70,'{\"en\":\"20m\"}','{\"en\":\"Deserunt saepe ex.\"}',39.75,33,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(71,'{\"en\":\"10m²\"}','{\"en\":\"Sunt vel et provident beatae perferendis.\"}',28.20,28,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(72,'{\"en\":\"20m\"}','{\"en\":\"Molestiae sequi vel ut.\"}',25.61,30,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(73,'{\"en\":\"20m\"}','{\"en\":\"Inventore et eum atque odit ducimus.\"}',44.51,21,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(74,'{\"en\":\"30m²\"}','{\"en\":\"Ea molestiae maiores.\"}',29.26,6,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(75,'{\"en\":\"40m\"}','{\"en\":\"Doloremque cum asperiores adipisci ut.\"}',14.69,17,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(76,'{\"en\":\"20m\"}','{\"en\":\"Et labore sed dignissimos totam eum.\"}',42.07,1,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(77,'{\"en\":\"30m²\"}','{\"en\":\"Id accusantium culpa id dolores non.\"}',13.79,29,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(78,'{\"en\":\"40m\"}','{\"en\":\"Illo cumque dolorem cum.\"}',36.52,4,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(79,'{\"en\":\"30m²\"}','{\"en\":\"Minima possimus deserunt.\"}',45.98,39,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(80,'{\"en\":\"40m\"}','{\"en\":\"Esse impedit velit et.\"}',16.71,22,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(81,'{\"en\":\"30m²\"}','{\"en\":\"Rem dolorem itaque culpa voluptatum.\"}',37.59,5,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(82,'{\"en\":\"40m\"}','{\"en\":\"Quod et blanditiis at.\"}',40.51,40,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(83,'{\"en\":\"20m\"}','{\"en\":\"Voluptas quia consectetur non.\"}',27.76,10,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(84,'{\"en\":\"10m²\"}','{\"en\":\"Assumenda illo voluptate.\"}',23.31,40,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(85,'{\"en\":\"30m²\"}','{\"en\":\"Facilis dolor commodi possimus incidunt.\"}',41.45,16,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(86,'{\"en\":\"30m²\"}','{\"en\":\"Et corporis aut minus sit.\"}',34.95,7,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(87,'{\"en\":\"10m²\"}','{\"en\":\"Nulla illo illo explicabo.\"}',22.03,13,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(88,'{\"en\":\"10m²\"}','{\"en\":\"Quasi officia dolorum minima.\"}',33.04,18,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(89,'{\"en\":\"40m\"}','{\"en\":\"Sed modi magni fugit accusantium veniam.\"}',46.01,10,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(90,'{\"en\":\"10m²\"}','{\"en\":\"Quas ut sed rerum.\"}',21.92,40,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(91,'{\"en\":\"20m\"}','{\"en\":\"Cumque aut animi ea.\"}',10.38,23,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(92,'{\"en\":\"30m²\"}','{\"en\":\"Sit ut beatae repellendus ipsam.\"}',27.62,24,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(93,'{\"en\":\"40m\"}','{\"en\":\"Vitae est explicabo consectetur et.\"}',35.56,16,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(94,'{\"en\":\"20m\"}','{\"en\":\"Cum et veritatis dolor.\"}',44.99,30,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(95,'{\"en\":\"10m²\"}','{\"en\":\"Ea sunt est dolorem.\"}',11.43,36,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(96,'{\"en\":\"30m²\"}','{\"en\":\"Ut doloribus dolorum.\"}',43.80,2,3,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(97,'{\"en\":\"30m²\"}','{\"en\":\"Reiciendis itaque libero aut dolorem.\"}',38.37,17,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(98,'{\"en\":\"10m²\"}','{\"en\":\"Non harum laudantium quos et.\"}',32.79,9,1,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(99,'{\"en\":\"30m²\"}','{\"en\":\"Delectus vitae praesentium eaque sed.\"}',25.74,28,2,'2022-03-22 16:41:56','2022-03-22 16:41:56'),(100,'{\"en\":\"20m\"}','{\"en\":\"Qui accusamus ut modi.\"}',31.72,37,2,'2022-03-22 16:41:56','2022-03-22 16:41:56');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `route` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (2,'RazorPay','Click to pay with RazorPay gateway','/RazorPay',2,0,1,'2021-01-17 12:33:49','2021-02-17 20:37:30'),(5,'PayPal','Click to pay with your PayPal account','/PayPal',1,0,1,'2021-01-17 13:46:06','2021-02-17 20:38:47'),(6,'Cash','Click to pay cash when finish','/Cash',3,1,1,'2021-02-17 20:38:42','2021-02-17 20:38:42'),(7,'Credit Card (Stripe)','Click to pay with your Credit Card','/Stripe',3,0,1,'2021-02-17 20:38:42','2021-02-17 20:38:42'),(8,'PayStack','Click to pay with PayStack gateway','/PayStack',5,0,1,'2021-07-23 20:38:42','2021-07-23 20:38:42'),(9,'FlutterWave','Click to pay with FlutterWave gateway','/FlutterWave',6,0,1,'2021-07-23 20:38:42','2021-07-23 20:38:42'),(10,'Malaysian Stripe FPX	','Click to pay with Stripe FPX gateway','/StripeFPX',7,0,1,'2021-07-24 20:38:42','2021-07-24 20:38:42'),(11,'Wallet','Click to pay with Wallet','/Wallet',8,0,1,'2021-08-08 20:38:42','2021-08-08 20:38:42'),(12,'PayMongo','Click to pay with PayMongo','/PayMongo',12,0,1,'2021-10-08 20:38:42','2021-10-08 20:38:42');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_statuses`
--

DROP TABLE IF EXISTS `payment_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` longtext COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_statuses`
--

LOCK TABLES `payment_statuses` WRITE;
/*!40000 ALTER TABLE `payment_statuses` DISABLE KEYS */;
INSERT INTO `payment_statuses` VALUES (1,'Pending',1,'2021-01-17 13:28:28','2021-02-17 19:55:15'),(2,'Paid',10,'2021-01-11 21:19:49','2021-02-17 19:55:53'),(3,'Failed',20,'2021-01-17 12:05:04','2021-02-17 19:56:32'),(4,'Refunded',40,'2021-02-17 19:58:14','2021-02-17 19:58:14');
/*!40000 ALTER TABLE `payment_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `payment_method_id` int unsigned NOT NULL,
  `payment_status_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_user_id_foreign` (`user_id`),
  KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  KEY `payments_payment_status_id_foreign` (`payment_status_id`),
  CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payments_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'dashboard','web','2021-01-07 11:17:34','2021-01-07 11:17:34'),(2,'medias.create','web','2021-01-07 11:17:35','2021-01-07 11:17:35'),(3,'users.profile','web','2021-01-07 11:17:35','2021-01-07 11:17:35'),(4,'users.index','web','2021-01-07 11:17:35','2021-01-07 11:17:35'),(5,'users.create','web','2021-01-07 11:17:35','2021-01-07 11:17:35'),(6,'users.store','web','2021-01-07 11:17:35','2021-01-07 11:17:35'),(7,'users.show','web','2021-01-07 11:17:35','2021-01-07 11:17:35'),(8,'users.edit','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(9,'users.update','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(10,'users.destroy','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(11,'medias.delete','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(12,'medias','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(13,'permissions.index','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(14,'permissions.create','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(15,'permissions.store','web','2021-01-07 11:17:36','2021-01-07 11:17:36'),(16,'permissions.show','web','2021-01-07 11:17:37','2021-01-07 11:17:37'),(17,'permissions.edit','web','2021-01-07 11:17:37','2021-01-07 11:17:37'),(18,'permissions.update','web','2021-01-07 11:17:37','2021-01-07 11:17:37'),(19,'permissions.destroy','web','2021-01-07 11:17:37','2021-01-07 11:17:37'),(20,'roles.index','web','2021-01-07 11:17:37','2021-01-07 11:17:37'),(21,'roles.create','web','2021-01-07 11:17:37','2021-01-07 11:17:37'),(22,'roles.store','web','2021-01-07 11:17:37','2021-01-07 11:17:37'),(23,'roles.show','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(24,'roles.edit','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(25,'roles.update','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(26,'roles.destroy','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(27,'customFields.index','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(28,'customFields.create','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(29,'customFields.store','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(30,'customFields.show','web','2021-01-07 11:17:38','2021-01-07 11:17:38'),(31,'customFields.edit','web','2021-01-07 11:17:39','2021-01-07 11:17:39'),(32,'customFields.update','web','2021-01-07 11:17:39','2021-01-07 11:17:39'),(33,'customFields.destroy','web','2021-01-07 11:17:39','2021-01-07 11:17:39'),(34,'currencies.index','web','2021-01-07 11:17:39','2021-01-07 11:17:39'),(35,'currencies.create','web','2021-01-07 11:17:39','2021-01-07 11:17:39'),(36,'currencies.store','web','2021-01-07 11:17:39','2021-01-07 11:17:39'),(37,'currencies.edit','web','2021-01-07 11:17:39','2021-01-07 11:17:39'),(38,'currencies.update','web','2021-01-07 11:17:40','2021-01-07 11:17:40'),(39,'currencies.destroy','web','2021-01-07 11:17:40','2021-01-07 11:17:40'),(40,'users.login-as-user','web','2021-01-07 11:17:40','2021-01-07 11:17:40'),(41,'app-settings','web','2021-01-07 11:17:40','2021-01-07 11:17:40'),(42,'faqCategories.index','web','2021-01-07 11:17:40','2021-01-07 11:17:40'),(43,'faqCategories.create','web','2021-01-07 11:17:40','2021-01-07 11:17:40'),(44,'faqCategories.store','web','2021-01-07 11:17:40','2021-01-07 11:17:40'),(45,'faqCategories.edit','web','2021-01-07 11:17:41','2021-01-07 11:17:41'),(46,'faqCategories.update','web','2021-01-07 11:17:41','2021-01-07 11:17:41'),(47,'faqCategories.destroy','web','2021-01-07 11:17:41','2021-01-07 11:17:41'),(48,'faqs.index','web','2021-01-07 11:17:41','2021-01-07 11:17:41'),(49,'faqs.create','web','2021-01-07 11:17:41','2021-01-07 11:17:41'),(50,'faqs.store','web','2021-01-07 11:17:41','2021-01-07 11:17:41'),(51,'faqs.edit','web','2021-01-07 11:17:41','2021-01-07 11:17:41'),(52,'faqs.update','web','2021-01-07 11:17:42','2021-01-07 11:17:42'),(53,'faqs.destroy','web','2021-01-07 11:17:42','2021-01-07 11:17:42'),(54,'payments.index','web','2021-01-10 22:04:33','2021-01-10 22:04:33'),(55,'payments.show','web','2021-01-10 22:04:33','2021-01-10 22:04:33'),(56,'payments.update','web','2021-01-10 22:04:33','2021-01-10 22:04:33'),(57,'paymentMethods.index','web','2021-01-10 22:04:33','2021-01-10 22:04:33'),(58,'paymentMethods.create','web','2021-01-10 22:04:34','2021-01-10 22:04:34'),(59,'paymentMethods.store','web','2021-01-10 22:04:34','2021-01-10 22:04:34'),(60,'paymentMethods.edit','web','2021-01-10 22:04:34','2021-01-10 22:04:34'),(61,'paymentMethods.update','web','2021-01-10 22:04:34','2021-01-10 22:04:34'),(62,'paymentMethods.destroy','web','2021-01-10 22:04:34','2021-01-10 22:04:34'),(63,'paymentStatuses.index','web','2021-01-10 22:04:34','2021-01-10 22:04:34'),(64,'paymentStatuses.create','web','2021-01-10 22:04:34','2021-01-10 22:04:34'),(65,'paymentStatuses.store','web','2021-01-10 22:04:35','2021-01-10 22:04:35'),(66,'paymentStatuses.edit','web','2021-01-10 22:04:35','2021-01-10 22:04:35'),(67,'paymentStatuses.update','web','2021-01-10 22:04:35','2021-01-10 22:04:35'),(68,'paymentStatuses.destroy','web','2021-01-10 22:04:35','2021-01-10 22:04:35'),(69,'verification.notice','web','2021-01-12 08:19:50','2021-01-12 08:19:50'),(70,'verification.verify','web','2021-01-12 08:19:50','2021-01-12 08:19:50'),(71,'verification.resend','web','2021-01-12 08:19:51','2021-01-12 08:19:51'),(72,'awards.index','web','2021-01-12 08:19:51','2021-01-12 08:19:51'),(73,'awards.create','web','2021-01-12 08:19:52','2021-01-12 08:19:52'),(74,'awards.store','web','2021-01-12 08:19:52','2021-01-12 08:19:52'),(75,'awards.show','web','2021-01-12 08:19:52','2021-01-12 08:19:52'),(76,'awards.edit','web','2021-01-12 08:19:52','2021-01-12 08:19:52'),(77,'awards.update','web','2021-01-12 08:19:52','2021-01-12 08:19:52'),(78,'awards.destroy','web','2021-01-12 08:19:52','2021-01-12 08:19:52'),(79,'experiences.index','web','2021-01-12 09:20:29','2021-01-12 09:20:29'),(80,'experiences.create','web','2021-01-12 09:20:29','2021-01-12 09:20:29'),(81,'experiences.store','web','2021-01-12 09:20:30','2021-01-12 09:20:30'),(82,'experiences.show','web','2021-01-12 09:20:30','2021-01-12 09:20:30'),(83,'experiences.edit','web','2021-01-12 09:20:30','2021-01-12 09:20:30'),(84,'experiences.update','web','2021-01-12 09:20:30','2021-01-12 09:20:30'),(85,'experiences.destroy','web','2021-01-12 09:20:30','2021-01-12 09:20:30'),(92,'eProviderTypes.index','web','2021-01-13 09:31:08','2021-01-13 09:31:08'),(93,'eProviderTypes.create','web','2021-01-13 09:31:09','2021-01-13 09:31:09'),(94,'eProviderTypes.store','web','2021-01-13 09:31:09','2021-01-13 09:31:09'),(95,'eProviderTypes.edit','web','2021-01-13 09:31:09','2021-01-13 09:31:09'),(96,'eProviderTypes.update','web','2021-01-13 09:31:09','2021-01-13 09:31:09'),(97,'eProviderTypes.destroy','web','2021-01-13 09:31:09','2021-01-13 09:31:09'),(98,'eProviders.index','web','2021-01-13 09:48:55','2021-01-13 09:48:55'),(99,'eProviders.create','web','2021-01-13 09:48:56','2021-01-13 09:48:56'),(100,'eProviders.store','web','2021-01-13 09:48:56','2021-01-13 09:48:56'),(101,'eProviders.edit','web','2021-01-13 09:48:56','2021-01-13 09:48:56'),(102,'eProviders.update','web','2021-01-13 09:48:56','2021-01-13 09:48:56'),(103,'eProviders.destroy','web','2021-01-13 09:48:56','2021-01-13 09:48:56'),(104,'addresses.index','web','2021-01-13 09:48:56','2021-01-13 09:48:56'),(105,'addresses.create','web','2021-01-13 09:48:57','2021-01-13 09:48:57'),(106,'addresses.store','web','2021-01-13 09:48:57','2021-01-13 09:48:57'),(107,'addresses.edit','web','2021-01-13 09:48:57','2021-01-13 09:48:57'),(108,'addresses.update','web','2021-01-13 09:48:57','2021-01-13 09:48:57'),(109,'addresses.destroy','web','2021-01-13 09:48:57','2021-01-13 09:48:57'),(110,'taxes.index','web','2021-01-13 09:48:57','2021-01-13 09:48:57'),(111,'taxes.create','web','2021-01-13 09:48:57','2021-01-13 09:48:57'),(112,'taxes.store','web','2021-01-13 09:48:58','2021-01-13 09:48:58'),(113,'taxes.edit','web','2021-01-13 09:48:58','2021-01-13 09:48:58'),(114,'taxes.update','web','2021-01-13 09:48:58','2021-01-13 09:48:58'),(115,'taxes.destroy','web','2021-01-13 09:48:58','2021-01-13 09:48:58'),(116,'availabilityHours.index','web','2021-01-16 14:14:21','2021-01-16 14:14:21'),(117,'availabilityHours.create','web','2021-01-16 14:14:21','2021-01-16 14:14:21'),(118,'availabilityHours.store','web','2021-01-16 14:14:21','2021-01-16 14:14:21'),(119,'availabilityHours.edit','web','2021-01-16 14:14:21','2021-01-16 14:14:21'),(120,'availabilityHours.update','web','2021-01-16 14:14:22','2021-01-16 14:14:22'),(121,'availabilityHours.destroy','web','2021-01-16 14:14:22','2021-01-16 14:14:22'),(122,'eServices.index','web','2021-01-19 12:03:00','2021-01-19 12:03:00'),(123,'eServices.create','web','2021-01-19 12:03:00','2021-01-19 12:03:00'),(124,'eServices.store','web','2021-01-19 12:03:00','2021-01-19 12:03:00'),(126,'eServices.edit','web','2021-01-19 12:03:01','2021-01-19 12:03:01'),(127,'eServices.update','web','2021-01-19 12:03:01','2021-01-19 12:03:01'),(128,'eServices.destroy','web','2021-01-19 12:03:01','2021-01-19 12:03:01'),(129,'categories.index','web','2021-01-19 12:08:55','2021-01-19 12:08:55'),(130,'categories.create','web','2021-01-19 12:08:55','2021-01-19 12:08:55'),(131,'categories.store','web','2021-01-19 12:08:55','2021-01-19 12:08:55'),(132,'categories.edit','web','2021-01-19 12:08:55','2021-01-19 12:08:55'),(133,'categories.update','web','2021-01-19 12:08:56','2021-01-19 12:08:56'),(134,'categories.destroy','web','2021-01-19 12:08:56','2021-01-19 12:08:56'),(135,'optionGroups.index','web','2021-01-22 17:48:32','2021-01-22 17:48:32'),(136,'optionGroups.create','web','2021-01-22 17:48:32','2021-01-22 17:48:32'),(137,'optionGroups.store','web','2021-01-22 17:48:32','2021-01-22 17:48:32'),(138,'optionGroups.edit','web','2021-01-22 17:48:32','2021-01-22 17:48:32'),(139,'optionGroups.update','web','2021-01-22 17:48:32','2021-01-22 17:48:32'),(140,'optionGroups.destroy','web','2021-01-22 17:48:32','2021-01-22 17:48:32'),(141,'options.index','web','2021-01-22 18:10:51','2021-01-22 18:10:51'),(142,'options.create','web','2021-01-22 18:10:51','2021-01-22 18:10:51'),(143,'options.store','web','2021-01-22 18:10:52','2021-01-22 18:10:52'),(144,'options.edit','web','2021-01-22 18:10:52','2021-01-22 18:10:52'),(145,'options.update','web','2021-01-22 18:10:52','2021-01-22 18:10:52'),(146,'options.destroy','web','2021-01-22 18:10:52','2021-01-22 18:10:52'),(147,'favorites.index','web','2021-01-22 19:01:13','2021-01-22 19:01:13'),(148,'favorites.create','web','2021-01-22 19:01:13','2021-01-22 19:01:13'),(149,'favorites.store','web','2021-01-22 19:01:13','2021-01-22 19:01:13'),(150,'favorites.edit','web','2021-01-22 19:01:13','2021-01-22 19:01:13'),(151,'favorites.update','web','2021-01-22 19:01:13','2021-01-22 19:01:13'),(152,'favorites.destroy','web','2021-01-22 19:01:13','2021-01-22 19:01:13'),(153,'eServiceReviews.index','web','2021-01-23 17:42:57','2021-01-23 17:42:57'),(154,'eServiceReviews.create','web','2021-01-23 17:42:58','2021-01-23 17:42:58'),(155,'eServiceReviews.store','web','2021-01-23 17:42:58','2021-01-23 17:42:58'),(156,'eServiceReviews.edit','web','2021-01-23 17:42:58','2021-01-23 17:42:58'),(157,'eServiceReviews.update','web','2021-01-23 17:42:58','2021-01-23 17:42:58'),(158,'eServiceReviews.destroy','web','2021-01-23 17:42:58','2021-01-23 17:42:58'),(160,'galleries.index','web','2021-01-23 18:17:46','2021-01-23 18:17:46'),(161,'galleries.create','web','2021-01-23 18:17:47','2021-01-23 18:17:47'),(162,'galleries.store','web','2021-01-23 18:17:47','2021-01-23 18:17:47'),(163,'galleries.edit','web','2021-01-23 18:17:47','2021-01-23 18:17:47'),(164,'galleries.update','web','2021-01-23 18:17:47','2021-01-23 18:17:47'),(165,'galleries.destroy','web','2021-01-23 18:17:47','2021-01-23 18:17:47'),(166,'requestedEProviders.index','web','2021-01-25 07:53:17','2021-01-25 07:53:17'),(167,'slides.index','web','2021-01-25 09:01:20','2021-01-25 09:01:20'),(168,'slides.create','web','2021-01-25 09:01:20','2021-01-25 09:01:20'),(169,'slides.store','web','2021-01-25 09:01:20','2021-01-25 09:01:20'),(170,'slides.edit','web','2021-01-25 09:01:20','2021-01-25 09:01:20'),(171,'slides.update','web','2021-01-25 09:01:20','2021-01-25 09:01:20'),(172,'slides.destroy','web','2021-01-25 09:01:20','2021-01-25 09:01:20'),(173,'notifications.index','web','2021-01-25 13:42:33','2021-01-25 13:42:33'),(174,'notifications.show','web','2021-01-25 13:42:34','2021-01-25 13:42:34'),(175,'notifications.destroy','web','2021-01-25 13:42:34','2021-01-25 13:42:34'),(176,'coupons.index','web','2021-01-25 14:11:55','2021-01-25 14:11:55'),(177,'coupons.create','web','2021-01-25 14:11:55','2021-01-25 14:11:55'),(178,'coupons.store','web','2021-01-25 14:11:55','2021-01-25 14:11:55'),(179,'coupons.edit','web','2021-01-25 14:11:55','2021-01-25 14:11:55'),(180,'coupons.update','web','2021-01-25 14:11:55','2021-01-25 14:11:55'),(181,'coupons.destroy','web','2021-01-25 14:11:55','2021-01-25 14:11:55'),(182,'bookingStatuses.index','web','2021-01-25 17:21:01','2021-01-25 17:21:01'),(183,'bookingStatuses.create','web','2021-01-25 17:21:01','2021-01-25 17:21:01'),(184,'bookingStatuses.store','web','2021-01-25 17:21:01','2021-01-25 17:21:01'),(185,'bookingStatuses.edit','web','2021-01-25 17:21:01','2021-01-25 17:21:01'),(186,'bookingStatuses.update','web','2021-01-25 17:21:01','2021-01-25 17:21:01'),(187,'bookingStatuses.destroy','web','2021-01-25 17:21:01','2021-01-25 17:21:01'),(188,'bookings.index','web','2021-01-25 19:27:09','2021-01-25 19:27:09'),(189,'bookings.create','web','2021-01-25 19:27:09','2021-01-25 19:27:09'),(190,'bookings.store','web','2021-01-25 19:27:09','2021-01-25 19:27:09'),(191,'bookings.show','web','2021-01-25 19:27:09','2021-01-25 19:27:09'),(192,'bookings.edit','web','2021-01-25 19:27:09','2021-01-25 19:27:09'),(193,'bookings.update','web','2021-01-25 19:27:09','2021-01-25 19:27:09'),(194,'bookings.destroy','web','2021-01-25 19:27:09','2021-01-25 19:27:09'),(195,'eProviderPayouts.index','web','2021-01-30 09:23:08','2021-01-30 09:23:08'),(196,'eProviderPayouts.create','web','2021-01-30 09:23:08','2021-01-30 09:23:08'),(197,'eProviderPayouts.store','web','2021-01-30 09:23:08','2021-01-30 09:23:08'),(198,'eProviderPayouts.destroy','web','2021-01-30 09:23:09','2021-01-30 09:23:09'),(199,'earnings.index','web','2021-01-30 11:57:57','2021-01-30 11:57:57'),(200,'earnings.create','web','2021-01-30 11:57:57','2021-01-30 11:57:57'),(201,'earnings.store','web','2021-01-30 11:57:57','2021-01-30 11:57:57'),(202,'earnings.destroy','web','2021-01-30 11:57:57','2021-01-30 11:57:57'),(203,'customPages.index','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(204,'customPages.create','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(205,'customPages.store','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(206,'customPages.show','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(207,'customPages.edit','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(208,'customPages.update','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(209,'customPages.destroy','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(210,'wallets.index','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(211,'wallets.create','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(212,'wallets.store','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(213,'wallets.update','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(214,'wallets.edit','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(215,'wallets.destroy','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(216,'walletTransactions.index','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(217,'walletTransactions.create','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(218,'walletTransactions.store','web','2021-02-24 09:37:44','2021-02-24 09:37:44'),(219,'videos','web','2022-03-23 07:01:52','2022-03-23 07:01:52'),(220,'videos.index','web','2022-03-23 07:04:07','2022-03-23 07:04:07');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(66,2),(67,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(92,2),(93,2),(94,2),(95,2),(96,2),(97,2),(98,2),(99,2),(100,2),(101,2),(102,2),(103,2),(104,2),(105,2),(106,2),(107,2),(108,2),(109,2),(110,2),(111,2),(112,2),(113,2),(114,2),(115,2),(116,2),(117,2),(118,2),(119,2),(120,2),(121,2),(122,2),(123,2),(124,2),(126,2),(127,2),(128,2),(129,2),(130,2),(131,2),(132,2),(133,2),(134,2),(135,2),(136,2),(137,2),(138,2),(139,2),(140,2),(141,2),(142,2),(143,2),(144,2),(145,2),(146,2),(147,2),(148,2),(149,2),(150,2),(151,2),(152,2),(153,2),(156,2),(157,2),(158,2),(160,2),(161,2),(162,2),(163,2),(164,2),(165,2),(166,2),(167,2),(168,2),(169,2),(170,2),(171,2),(172,2),(173,2),(174,2),(175,2),(176,2),(177,2),(178,2),(179,2),(180,2),(181,2),(182,2),(185,2),(186,2),(188,2),(191,2),(192,2),(193,2),(194,2),(195,2),(196,2),(197,2),(199,2),(200,2),(203,2),(204,2),(205,2),(206,2),(207,2),(208,2),(209,2),(210,2),(211,2),(212,2),(213,2),(214,2),(215,2),(216,2),(217,2),(218,2),(219,2),(220,2),(2,3),(3,3),(9,3),(11,3),(12,3),(42,3),(48,3),(54,3),(57,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(82,3),(83,3),(84,3),(85,3),(92,3),(98,3),(99,3),(100,3),(101,3),(102,3),(104,3),(105,3),(106,3),(107,3),(108,3),(109,3),(116,3),(117,3),(118,3),(119,3),(120,3),(121,3),(122,3),(123,3),(124,3),(126,3),(127,3),(128,3),(129,3),(135,3),(136,3),(137,3),(141,3),(142,3),(143,3),(144,3),(145,3),(146,3),(147,3),(149,3),(151,3),(153,3),(156,3),(157,3),(160,3),(161,3),(162,3),(163,3),(164,3),(165,3),(166,3),(173,3),(175,3),(176,3),(179,3),(180,3),(182,3),(188,3),(191,3),(192,3),(193,3),(194,3),(195,3),(196,3),(197,3),(199,3),(200,3),(203,3),(210,3),(216,3),(219,3),(220,3),(2,4),(3,4),(9,4),(11,4),(42,4),(48,4),(54,4),(98,4),(99,4),(100,4),(104,4),(105,4),(106,4),(107,4),(108,4),(109,4),(122,4),(129,4),(147,4),(153,4),(156,4),(157,4),(166,4),(173,4),(175,4),(188,4),(191,4),(203,4),(210,4),(216,4);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'admin','web',0,NULL,NULL),(3,'provider','web',0,NULL,NULL),(4,'customer','web',1,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slides` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order` int unsigned DEFAULT '0',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `button` longtext COLLATE utf8mb4_unicode_ci,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `e_service_id` int unsigned DEFAULT NULL,
  `e_provider_id` int unsigned DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slides_e_service_id_foreign` (`e_service_id`),
  KEY `slides_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `slides_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `slides_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,1,'Assign a Handyman at Work to Fix the Household','Discover It','bottom_start','#333333','#009E6A','#FFFFFF','#333333','cover',NULL,NULL,1,'2021-01-25 09:51:45','2021-01-31 09:08:13'),(2,2,'Fix the Broken Stuff by Asking for the Technicians','Repair','bottom_start','#333333','#F4841F','#FFFFFF','#333333','cover',NULL,NULL,1,'2021-01-25 12:23:49','2021-01-31 09:03:05'),(3,3,'Add Hands to Your Cleaning Chores','Book Now','bottom_start','#333333','#1FA3F4','#FFFFFF','#333333','cover',NULL,NULL,1,'2021-01-31 09:04:36','2021-01-31 09:06:45');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `value` double(10,2) NOT NULL DEFAULT '0.00',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'Tax 20',20.00,'percent','2021-01-15 09:12:13','2021-02-01 19:23:01'),(2,'Tax 10',10.00,'percent','2021-01-15 09:19:30','2021-01-15 09:19:30'),(3,'Maintenance',2.00,'fixed','2021-01-18 18:48:29','2021-02-01 19:25:13'),(4,'Tools Fee',5.00,'fixed','2021-02-01 19:24:12','2021-02-01 19:24:12');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploads` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
INSERT INTO `uploads` VALUES (1,'39a8b348-4fb2-4485-a753-c4f0d25452a6','2022-03-23 02:22:08','2022-03-23 02:22:08'),(2,'1aa6cd28-40ee-48a8-8f79-75ba9d316895','2022-03-23 02:42:35','2022-03-23 02:42:35'),(3,'7a7bba82-26dc-4223-81ea-e00015b8ef0e','2022-03-23 03:04:06','2022-03-23 03:04:06'),(4,'7f5a0ae3-095c-49b9-8ea3-13f20cb43c0f','2022-03-23 03:38:31','2022-03-23 03:38:31'),(6,'392cabf2-29d5-46dc-a7ce-05bbdb7a3a21','2022-03-23 16:49:52','2022-03-23 16:49:52'),(7,'181560a5-52d2-4891-810d-3d8e0b6b8726','2022-03-23 17:51:41','2022-03-23 17:51:41'),(8,'d7e13272-0d14-4ee0-9ab8-5e2979968321','2022-03-23 17:53:48','2022-03-23 17:53:48'),(9,'8d808924-7770-4c90-9d81-3be38b3b2fca','2022-03-23 17:54:09','2022-03-23 17:54:09'),(10,'7ebc5a31-071b-4856-be92-0eeb07301157','2022-03-23 17:55:16','2022-03-23 17:55:16'),(11,'4865ca00-cc34-4bea-ba2d-132a7925808c','2022-03-23 17:57:10','2022-03-23 17:57:10'),(12,'3fbe9f20-5bf0-43a8-930a-b5749ff445bb','2022-03-23 17:57:47','2022-03-23 17:57:47');
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hyatt Zimmerman','admin@demo.com','+1 234 8996 321','2021-01-10 15:22:10','2021-01-10 15:22:10','$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu','PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA','',NULL,NULL,NULL,NULL,NULL,'nZMyx5eCVfJSixRGxbf2E5FCjDCbnFlV2w7hqW3XgbM81ZvNvoZTmxMe2CZy',NULL,'2021-02-09 14:50:32'),(2,'Jennifer Paul','provider@demo.com','+1 234 8996 322','2021-01-10 15:22:10','2021-01-10 15:22:10','$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu','tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB','',NULL,NULL,NULL,NULL,NULL,'eVwst1AlgWaSIxxG3yLnEOsd9toRdWVkZFRiTCersWO0uGGu4c4Lx7Z37h1Z',NULL,'2021-02-28 15:06:55'),(3,'Germaine Guzman','customer@demo.com','+1 234 8996 323','2021-01-10 15:22:10','2021-01-10 15:22:10','$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K','fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv','',NULL,NULL,NULL,NULL,NULL,'SPz6luq3aoxCbgIS1gqmFDgM1qzGlIDtF0HgmDbtWcx2reaeFcogcFQzdP2F',NULL,'2021-02-24 19:52:57'),(4,'Aimee Mcgee','provider1@demo.com','+1 234 8996 324','2021-01-10 15:22:10','2021-01-10 15:22:10','$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei','Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte','',NULL,NULL,NULL,NULL,NULL,'yCzPqDP1oczySU57q6G71SxTIJSiZUBE4vYdXbXCqzpzC2iN09igcs3jzSQK',NULL,'2021-02-21 12:50:29'),(5,'Josephine Harding','customer3@demo.com',NULL,NULL,NULL,'$2y$10$n/06hZG121ZGp3tSwDQS3uhsQKxEYspjKrn7kGlLxRinUZKiulrEm','gkEWScQHIol9EIRhP3m5m7JqnK5UvcGdEsKQJo7YeBcQawYFq3JAJ6SX9UKy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-11 08:55:52','2021-02-02 09:29:47'),(6,'Nicolette Christiansen','provider2@demo.com',NULL,NULL,'2021-01-10 22:00:00','$2y$04$WRpHC9iMxZ3f.gctQ4igsuZjsYfGjX7igVM8GsC2AMME3.4au3dYu','TKArYDDFHNiEI33sfExaBEhxHCs5kFaWP7EO6aNlUZfnqHrvsMCwsYeAk9s2',NULL,NULL,NULL,NULL,NULL,NULL,'JbiYaHlRWGKkfITxH9qI87GzTMPf0zJ2Iw6NIdlS5dDvWuT5PC2sP5ELGwKx','2021-01-11 09:33:59','2021-02-02 09:30:56'),(7,'Rose Bauer','customer2@demo.com',NULL,NULL,NULL,'$2y$10$3GhoIShzRdSXevYAh1NF/.67J3OshX9D2.sqY50o8kxh7EXPw7tuC','w6QJYqZyllY24AIR3nSsKqgj5eMSZevmgpSywwxJxUS9nwULcuriRLBxEXZC','',NULL,NULL,NULL,NULL,NULL,'WxYP9zjTBy9SYF5OWjcFbMt2Ob9r0bahBKzPDOtw9OrAJ89JqaMxkN5aqu8J','2021-01-17 14:13:24','2021-02-28 16:03:25'),(8,'smarter8','smartersvision@gmail.com','+12645595482',NULL,NULL,'$2y$10$MqPMTfg6RUNxxEH6aLdqnOYZUBsT7xtxkglD74pDgThV52.HJrLba','WivbG2oAEbEGl51EBeBuHaZeCqyfBnCVGo18nSaj2FwwiDjux2ZOAZWUoddK','',NULL,NULL,NULL,NULL,NULL,'SdstZCaeYW0pjqZn832HMzBD7WPGJ5m9hwWG28nhbIrzSS0etj33rbTRJ6kD','2021-02-10 09:31:12','2021-02-23 18:41:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `e_provider_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videos_e_provider_id_foreign` (`e_provider_id`),
  CONSTRAINT `videos_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'sadsda',8,NULL,NULL),(2,'gdfgdf',17,'2022-03-30 22:55:18','2022-03-30 22:55:18'),(3,'jhkjhk',2,NULL,'2022-03-24 23:22:02');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` enum('credit','debit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallet_transactions_wallet_id_foreign` (`wallet_id`),
  KEY `wallet_transactions_user_id_foreign` (`user_id`),
  CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wallet_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_transactions`
--

LOCK TABLES `wallet_transactions` WRITE;
/*!40000 ALTER TABLE `wallet_transactions` DISABLE KEYS */;
INSERT INTO `wallet_transactions` VALUES ('01194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','01194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('02194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','02194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('03194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','03194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('04194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','04194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('05194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','05194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('06194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','06194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('07194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','07194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('8d194a4f-f302-47af-80b2-ceb2075d36dc',200.00,'First Transaction','credit','8d194a4f-f302-47af-80b2-ceb2075d36dc',1,'2021-08-07 11:17:34','2021-08-07 11:17:34');
/*!40000 ALTER TABLE `wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double(16,2) NOT NULL DEFAULT '0.00',
  `currency` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets_user_id_foreign` (`user_id`),
  CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
INSERT INTO `wallets` VALUES ('01194a4f-f302-47af-80b2-ceb2075d36dc','My USD Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',1,1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('02194a4f-f302-47af-80b2-ceb2075d36dc','Home USD Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',2,1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('03194a4f-f302-47af-80b2-ceb2075d36dc','Work USD Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',3,1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('04194a4f-f302-47af-80b2-ceb2075d36dc','Dummy USD Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',4,1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('05194a4f-f302-47af-80b2-ceb2075d36dc','Old USD Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',5,1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('06194a4f-f302-47af-80b2-ceb2075d36dc','New USD Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',6,1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('07194a4f-f302-47af-80b2-ceb2075d36dc','USD Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',7,1,'2021-08-07 11:17:34','2021-08-07 11:17:34'),('8d194a4f-f302-47af-80b2-ceb2075d36dc','Dollar Wallet',200.00,'{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}',8,1,'2021-01-07 11:17:34','2021-01-07 11:17:34');
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 11:29:15
