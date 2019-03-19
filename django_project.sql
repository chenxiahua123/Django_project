-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: django_project
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add order',8,'add_order'),(23,'Can change order',8,'change_order'),(24,'Can delete order',8,'delete_order'),(25,'Can add wheel',9,'add_wheel'),(26,'Can change wheel',9,'change_wheel'),(27,'Can delete wheel',9,'delete_wheel'),(28,'Can add order goods',10,'add_ordergoods'),(29,'Can change order goods',10,'change_ordergoods'),(30,'Can delete order goods',10,'delete_ordergoods'),(31,'Can add goods',11,'add_goods'),(32,'Can change goods',11,'change_goods'),(33,'Can delete goods',11,'delete_goods'),(34,'Can add cart',12,'add_cart'),(35,'Can change cart',12,'change_cart'),(36,'Can delete cart',12,'delete_cart'),(37,'Can add tuijian',13,'add_tuijian'),(38,'Can change tuijian',13,'change_tuijian'),(39,'Can delete tuijian',13,'delete_tuijian');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(12,'app','cart'),(11,'app','goods'),(8,'app','order'),(10,'app','ordergoods'),(13,'app','tuijian'),(7,'app','user'),(9,'app','wheel'),(2,'auth','group'),(4,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-18 11:54:30.841481'),(2,'auth','0001_initial','2019-03-18 11:54:32.730120'),(3,'admin','0001_initial','2019-03-18 11:54:33.102442'),(4,'admin','0002_logentry_remove_auto_add','2019-03-18 11:54:33.120787'),(5,'app','0001_initial','2019-03-18 11:54:35.078970'),(6,'contenttypes','0002_remove_content_type_name','2019-03-18 11:54:35.206806'),(7,'auth','0002_alter_permission_name_max_length','2019-03-18 11:54:35.487515'),(8,'auth','0003_alter_user_email_max_length','2019-03-18 11:54:35.522756'),(9,'auth','0004_alter_user_username_opts','2019-03-18 11:54:35.535669'),(10,'auth','0005_alter_user_last_login_null','2019-03-18 11:54:35.775863'),(11,'auth','0006_require_contenttypes_0002','2019-03-18 11:54:35.780122'),(12,'auth','0007_alter_validators_add_error_messages','2019-03-18 11:54:35.792348'),(13,'auth','0008_alter_user_username_max_length','2019-03-18 11:54:35.825970'),(14,'sessions','0001_initial','2019-03-18 11:54:35.935396');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7as2mgrt18sdddq3gzkinrez8jhf2kes','MTVhNjJmZDlkNjc4ODRiMTA2ZjM1MDkzYTE0MjlkNDc1YjY2MDliODp7InRva2VuIjoiYWNkYjVmMDNkMGQ1NjY3YTIxMjY5NmJhNDJjODMyYjcifQ==','2019-04-01 12:00:54.632283');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangyikaola——cart`
--

DROP TABLE IF EXISTS `wangyikaola——cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangyikaola——cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `isselect` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wangyikaola——cart_goods_id_270c66db_fk_wangyikaola——goods_id` (`goods_id`),
  KEY `wangyikaola——cart_user_id_fc4adb3c_fk_wangyikaola——user_id` (`user_id`),
  CONSTRAINT `wangyikaola——cart_goods_id_270c66db_fk_wangyikaola——goods_id` FOREIGN KEY (`goods_id`) REFERENCES `wangyikaola——goods` (`id`),
  CONSTRAINT `wangyikaola——cart_user_id_fc4adb3c_fk_wangyikaola——user_id` FOREIGN KEY (`user_id`) REFERENCES `wangyikaola——user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangyikaola——cart`
--

LOCK TABLES `wangyikaola——cart` WRITE;
/*!40000 ALTER TABLE `wangyikaola——cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `wangyikaola——cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangyikaola——goods`
--

DROP TABLE IF EXISTS `wangyikaola——goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangyikaola——goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `img` varchar(100) NOT NULL,
  `store_num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangyikaola——goods`
--

LOCK TABLES `wangyikaola——goods` WRITE;
/*!40000 ALTER TABLE `wangyikaola——goods` DISABLE KEYS */;
INSERT INTO `wangyikaola——goods` VALUES (1,'goodsbanner-1.jpg',100,'img/goodsbanner-1.jpg',10),(2,'goodsbanner-2.jpg',200,'img/goodsbanner-2.jpg',20),(3,'goodsbanner-3.jpg',300,'img/goodsbanner-3.jpg',30),(4,'goodsbanner-4.jpg',400,'img/goodsbanner-4.jpg',40),(5,'goodsbanner-5.jpg',500,'img/goodsbanner-5.jpg',50),(6,'goodsbanner-6.jpg',600,'img/goodsbanner-6.jpg',60),(7,'goodsbanner-7.jpg',700,'img/goodsbanner-7.jpg',70),(8,'goodsbanner-1.jpg',100,'img/goodsbanner-1.jpg',10),(9,'goodsbanner-2.jpg',200,'img/goodsbanner-2.jpg',20),(10,'goodsbanner-3.jpg',300,'img/goodsbanner-3.jpg',30),(11,'goodsbanner-4.jpg',400,'img/goodsbanner-4.jpg',40),(12,'goodsbanner-5.jpg',500,'img/goodsbanner-5.jpg',50),(13,'goodsbanner-6.jpg',600,'img/goodsbanner-6.jpg',60),(14,'goodsbanner-7.jpg',700,'img/goodsbanner-7.jpg',70),(15,'goodsbanner-1.jpg',100,'img/goodsbanner-1.jpg',10),(16,'goodsbanner-2.jpg',200,'img/goodsbanner-2.jpg',20),(17,'goodsbanner-3.jpg',300,'img/goodsbanner-3.jpg',30),(18,'goodsbanner-4.jpg',400,'img/goodsbanner-4.jpg',40),(19,'goodsbanner-5.jpg',500,'img/goodsbanner-5.jpg',50),(20,'goodsbanner-6.jpg',600,'img/goodsbanner-6.jpg',60),(21,'goodsbanner-7.jpg',700,'img/goodsbanner-7.jpg',70),(22,'goodsbanner-1.jpg',100,'img/goodsbanner-1.jpg',10),(23,'goodsbanner-2.jpg',200,'img/goodsbanner-2.jpg',20),(24,'goodsbanner-3.jpg',300,'img/goodsbanner-3.jpg',30),(25,'goodsbanner-4.jpg',400,'img/goodsbanner-4.jpg',40),(26,'goodsbanner-5.jpg',500,'img/goodsbanner-5.jpg',50),(27,'goodsbanner-6.jpg',600,'img/goodsbanner-6.jpg',60),(28,'goodsbanner-7.jpg',700,'img/goodsbanner-7.jpg',70),(29,'goodsbanner-1.jpg',100,'img/goodsbanner-1.jpg',10),(30,'goodsbanner-2.jpg',200,'img/goodsbanner-2.jpg',20),(31,'goodsbanner-3.jpg',300,'img/goodsbanner-3.jpg',30),(32,'goodsbanner-4.jpg',400,'img/goodsbanner-4.jpg',40),(33,'goodsbanner-5.jpg',500,'img/goodsbanner-5.jpg',50),(34,'goodsbanner-6.jpg',600,'img/goodsbanner-6.jpg',60),(35,'goodsbanner-7.jpg',700,'img/goodsbanner-7.jpg',70),(36,'goodsbanner-1.jpg',100,'img/goodsbanner-1.jpg',10),(37,'goodsbanner-2.jpg',200,'img/goodsbanner-2.jpg',20),(38,'goodsbanner-3.jpg',300,'img/goodsbanner-3.jpg',30),(39,'goodsbanner-4.jpg',400,'img/goodsbanner-4.jpg',40),(40,'goodsbanner-5.jpg',500,'img/goodsbanner-5.jpg',50),(41,'goodsbanner-6.jpg',600,'img/goodsbanner-6.jpg',60),(42,'goodsbanner-7.jpg',700,'img/goodsbanner-7.jpg',70),(43,'goodsbanner-1.jpg',100,'img/goodsbanner-1.jpg',10),(44,'goodsbanner-2.jpg',200,'img/goodsbanner-2.jpg',20),(45,'goodsbanner-3.jpg',300,'img/goodsbanner-3.jpg',30),(46,'goodsbanner-4.jpg',400,'img/goodsbanner-4.jpg',40),(47,'goodsbanner-5.jpg',500,'img/goodsbanner-5.jpg',50),(48,'goodsbanner-6.jpg',600,'img/goodsbanner-6.jpg',60),(49,'goodsbanner-7.jpg',700,'img/goodsbanner-7.jpg',70);
/*!40000 ALTER TABLE `wangyikaola——goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangyikaola——order`
--

DROP TABLE IF EXISTS `wangyikaola——order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangyikaola——order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `creat_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `identifier` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wangyikaola——order_user_id_e73dc8b1_fk_wangyikaola——user_id` (`user_id`),
  CONSTRAINT `wangyikaola——order_user_id_e73dc8b1_fk_wangyikaola——user_id` FOREIGN KEY (`user_id`) REFERENCES `wangyikaola——user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangyikaola——order`
--

LOCK TABLES `wangyikaola——order` WRITE;
/*!40000 ALTER TABLE `wangyikaola——order` DISABLE KEYS */;
INSERT INTO `wangyikaola——order` VALUES (1,0,'2019-03-18 12:01:23.133606','2019-03-18 12:01:23.133673','3676872139',1),(2,0,'2019-03-18 12:23:56.640708','2019-03-18 12:23:56.640755','1072892212',1),(3,0,'2019-03-18 12:24:26.569861','2019-03-18 12:24:26.569911','4960669446',1);
/*!40000 ALTER TABLE `wangyikaola——order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangyikaola——ordergoods`
--

DROP TABLE IF EXISTS `wangyikaola——ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangyikaola——ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wangyikaola——ordergo_goods_id_87b00b49_fk_wangyikao` (`goods_id`),
  KEY `wangyikaola——ordergo_order_id_6d81b62f_fk_wangyikao` (`order_id`),
  CONSTRAINT `wangyikaola——ordergo_goods_id_87b00b49_fk_wangyikao` FOREIGN KEY (`goods_id`) REFERENCES `wangyikaola——goods` (`id`),
  CONSTRAINT `wangyikaola——ordergo_order_id_6d81b62f_fk_wangyikao` FOREIGN KEY (`order_id`) REFERENCES `wangyikaola——order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangyikaola——ordergoods`
--

LOCK TABLES `wangyikaola——ordergoods` WRITE;
/*!40000 ALTER TABLE `wangyikaola——ordergoods` DISABLE KEYS */;
INSERT INTO `wangyikaola——ordergoods` VALUES (1,4,3,1),(2,8,3,2),(3,11,3,3);
/*!40000 ALTER TABLE `wangyikaola——ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangyikaola——tuijian`
--

DROP TABLE IF EXISTS `wangyikaola——tuijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangyikaola——tuijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangyikaola——tuijian`
--

LOCK TABLES `wangyikaola——tuijian` WRITE;
/*!40000 ALTER TABLE `wangyikaola——tuijian` DISABLE KEYS */;
/*!40000 ALTER TABLE `wangyikaola——tuijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangyikaola——user`
--

DROP TABLE IF EXISTS `wangyikaola——user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangyikaola——user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangyikaola——user`
--

LOCK TABLES `wangyikaola——user` WRITE;
/*!40000 ALTER TABLE `wangyikaola——user` DISABLE KEYS */;
INSERT INTO `wangyikaola——user` VALUES (1,'aaa_01@163.com','b1efe3fe1c322c3107dc7c605beafa02','13510212175');
/*!40000 ALTER TABLE `wangyikaola——user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangyikaola——wheel`
--

DROP TABLE IF EXISTS `wangyikaola——wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangyikaola——wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangyikaola——wheel`
--

LOCK TABLES `wangyikaola——wheel` WRITE;
/*!40000 ALTER TABLE `wangyikaola——wheel` DISABLE KEYS */;
INSERT INTO `wangyikaola——wheel` VALUES (1,'goodsbanner-1.jpg','img/goodsbanner-1.jpg'),(2,'goodsbanner-2.jpg','img/goodsbanner-2.jpg'),(3,'goodsbanner-3.jpg','img/goodsbanner-3.jpg'),(4,'goodsbanner-4.jpg','img/goodsbanner-4.jpg'),(5,'goodsbanner-5.jpg','img/goodsbanner-5.jpg'),(6,'goodsbanner-6.jpg','img/goodsbanner-6.jpg'),(7,'goodsbanner-7.jpg','img/goodsbanner-7.jpg'),(8,'goodsbanner-1.jpg','img/goodsbanner-1.jpg'),(9,'goodsbanner-2.jpg','img/goodsbanner-2.jpg'),(10,'goodsbanner-3.jpg','img/goodsbanner-3.jpg'),(11,'goodsbanner-4.jpg','img/goodsbanner-4.jpg'),(12,'goodsbanner-5.jpg','img/goodsbanner-5.jpg'),(13,'goodsbanner-6.jpg','img/goodsbanner-6.jpg'),(14,'goodsbanner-7.jpg','img/goodsbanner-7.jpg'),(15,'goodsbanner-1.jpg','img/goodsbanner-1.jpg'),(16,'goodsbanner-2.jpg','img/goodsbanner-2.jpg'),(17,'goodsbanner-3.jpg','img/goodsbanner-3.jpg'),(18,'goodsbanner-4.jpg','img/goodsbanner-4.jpg'),(19,'goodsbanner-5.jpg','img/goodsbanner-5.jpg'),(20,'goodsbanner-6.jpg','img/goodsbanner-6.jpg'),(21,'goodsbanner-7.jpg','img/goodsbanner-7.jpg'),(22,'goodsbanner-1.jpg','img/goodsbanner-1.jpg'),(23,'goodsbanner-2.jpg','img/goodsbanner-2.jpg'),(24,'goodsbanner-3.jpg','img/goodsbanner-3.jpg'),(25,'goodsbanner-4.jpg','img/goodsbanner-4.jpg'),(26,'goodsbanner-5.jpg','img/goodsbanner-5.jpg'),(27,'goodsbanner-6.jpg','img/goodsbanner-6.jpg'),(28,'goodsbanner-7.jpg','img/goodsbanner-7.jpg'),(29,'goodsbanner-1.jpg','img/goodsbanner-1.jpg'),(30,'goodsbanner-2.jpg','img/goodsbanner-2.jpg'),(31,'goodsbanner-3.jpg','img/goodsbanner-3.jpg'),(32,'goodsbanner-4.jpg','img/goodsbanner-4.jpg'),(33,'goodsbanner-5.jpg','img/goodsbanner-5.jpg'),(34,'goodsbanner-6.jpg','img/goodsbanner-6.jpg'),(35,'goodsbanner-7.jpg','img/goodsbanner-7.jpg'),(36,'goodsbanner-1.jpg','img/goodsbanner-1.jpg'),(37,'goodsbanner-2.jpg','img/goodsbanner-2.jpg'),(38,'goodsbanner-3.jpg','img/goodsbanner-3.jpg'),(39,'goodsbanner-4.jpg','img/goodsbanner-4.jpg'),(40,'goodsbanner-5.jpg','img/goodsbanner-5.jpg'),(41,'goodsbanner-6.jpg','img/goodsbanner-6.jpg'),(42,'goodsbanner-7.jpg','img/goodsbanner-7.jpg'),(43,'goodsbanner-1.jpg','img/goodsbanner-1.jpg'),(44,'goodsbanner-2.jpg','img/goodsbanner-2.jpg'),(45,'goodsbanner-3.jpg','img/goodsbanner-3.jpg'),(46,'goodsbanner-4.jpg','img/goodsbanner-4.jpg'),(47,'goodsbanner-5.jpg','img/goodsbanner-5.jpg'),(48,'goodsbanner-6.jpg','img/goodsbanner-6.jpg'),(49,'goodsbanner-7.jpg','img/goodsbanner-7.jpg');
/*!40000 ALTER TABLE `wangyikaola——wheel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-18 20:27:16
