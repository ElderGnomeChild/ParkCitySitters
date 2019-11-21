-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for osx10.14 (x86_64)
--
-- Host: localhost    Database: pcsdatabase
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user',1,'add_babysitter'),(2,'Can change user',1,'change_babysitter'),(3,'Can delete user',1,'delete_babysitter'),(4,'Can view user',1,'view_babysitter'),(5,'Can add client',2,'add_client'),(6,'Can change client',2,'change_client'),(7,'Can delete client',2,'delete_client'),(8,'Can view client',2,'view_client'),(9,'Can add language',3,'add_language'),(10,'Can change language',3,'change_language'),(11,'Can delete language',3,'delete_language'),(12,'Can view language',3,'view_language'),(13,'Can add job',4,'add_job'),(14,'Can change job',4,'change_job'),(15,'Can delete job',4,'delete_job'),(16,'Can view job',4,'view_job'),(17,'Can add child',5,'add_child'),(18,'Can change child',5,'change_child'),(19,'Can delete child',5,'delete_child'),(20,'Can view child',5,'view_child'),(21,'Can add log entry',6,'add_logentry'),(22,'Can change log entry',6,'change_logentry'),(23,'Can delete log entry',6,'delete_logentry'),(24,'Can view log entry',6,'view_logentry'),(25,'Can add permission',7,'add_permission'),(26,'Can change permission',7,'change_permission'),(27,'Can delete permission',7,'delete_permission'),(28,'Can view permission',7,'view_permission'),(29,'Can add group',8,'add_group'),(30,'Can change group',8,'change_group'),(31,'Can delete group',8,'delete_group'),(32,'Can view group',8,'view_group'),(33,'Can add content type',9,'add_contenttype'),(34,'Can change content type',9,'change_contenttype'),(35,'Can delete content type',9,'delete_contenttype'),(36,'Can view content type',9,'view_contenttype'),(37,'Can add session',10,'add_session'),(38,'Can change session',10,'change_session'),(39,'Can delete session',10,'delete_session'),(40,'Can view session',10,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_sit_babysitter_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_sit_babysitter_id` FOREIGN KEY (`user_id`) REFERENCES `sit_babysitter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-11-20 02:25:59.132087','2','first name last name',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]',1,2),(2,'2019-11-20 02:50:02.132812','2','Mary and Jacob Blathers',1,'[{\"added\": {}}]',2,2),(3,'2019-11-20 02:50:36.047651','2','Fredward, child of Mary and Jacob Blathers',1,'[{\"added\": {}}]',5,2),(4,'2019-11-20 02:51:06.982206','3','Henry, child of Mary and Jacob Blathers',1,'[{\"added\": {}}]',5,2),(5,'2019-11-20 02:51:56.514630','4','Ethan, child of Mary and Jacob Blathers',1,'[{\"added\": {}}]',5,2),(6,'2019-11-20 02:52:11.387295','2','Job object (2)',1,'[{\"added\": {}}]',4,2),(7,'2019-11-21 02:31:32.499567','3','Mr and Mrs Jones',1,'[{\"added\": {}}]',2,2),(8,'2019-11-21 02:31:50.375315','3','Mr and Mrs Jones',3,'',2,2),(9,'2019-11-21 02:32:13.116487','4','Mr. and Mrs. Hurst',1,'[{\"added\": {}}]',2,2),(10,'2019-11-21 02:32:46.529421','5','Pelham, child of Mr. and Mrs. Hurst',1,'[{\"added\": {}}]',5,2),(11,'2019-11-21 02:32:51.117710','3','Mr. and Mrs. Hurst at Aria',1,'[{\"added\": {}}]',4,2),(12,'2019-11-21 02:33:29.797937','4','Mary and Jacob Blathers at Mandalay Bay',1,'[{\"added\": {}}]',4,2),(13,'2019-11-21 02:34:17.704923','5','Mary and Jacob Blathers at Holiday Inn Express',1,'[{\"added\": {}}]',4,2),(14,'2019-11-21 07:42:44.080243','6','Jerry, child of Michelle Banks',1,'[{\"added\": {}}]',5,2),(15,'2019-11-21 07:42:49.499783','6','Michelle Banks at Stratosphere',1,'[{\"added\": {}}]',4,2),(16,'2019-11-21 07:43:15.944693','7','Mr. and Mrs. Hurst at The Happy Lodge',1,'[{\"added\": {}}]',4,2),(17,'2019-11-21 09:07:46.926042','11','Mary and Jacob Blathers at The Hilton',3,'',4,2),(18,'2019-11-21 09:07:46.929537','10','Mary and Jacob Blathers at The Hilton',3,'',4,2),(19,'2019-11-21 09:07:46.934285','9','Mr. and Mrs. Hurst at The Hilton',3,'',4,2),(20,'2019-11-21 09:07:46.937096','8','Mr. and Mrs. Hurst at The Hilton',3,'',4,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(8,'auth','group'),(7,'auth','permission'),(9,'contenttypes','contenttype'),(10,'sessions','session'),(1,'sit','babysitter'),(5,'sit','child'),(2,'sit','client'),(4,'sit','job'),(3,'sit','language');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-11-18 03:56:03.097276'),(2,'contenttypes','0002_remove_content_type_name','2019-11-18 03:56:03.189715'),(3,'auth','0001_initial','2019-11-18 03:56:03.263385'),(4,'auth','0002_alter_permission_name_max_length','2019-11-18 03:56:03.539750'),(5,'auth','0003_alter_user_email_max_length','2019-11-18 03:56:03.566473'),(6,'auth','0004_alter_user_username_opts','2019-11-18 03:56:03.574103'),(7,'auth','0005_alter_user_last_login_null','2019-11-18 03:56:03.585563'),(8,'auth','0006_require_contenttypes_0002','2019-11-18 03:56:03.587100'),(9,'auth','0007_alter_validators_add_error_messages','2019-11-18 03:56:03.597637'),(10,'auth','0008_alter_user_username_max_length','2019-11-18 03:56:03.609541'),(11,'auth','0009_alter_user_last_name_max_length','2019-11-18 03:56:03.615984'),(12,'auth','0010_alter_group_name_max_length','2019-11-18 03:56:03.641211'),(13,'auth','0011_update_proxy_permissions','2019-11-18 03:56:03.652011'),(14,'sit','0001_initial','2019-11-18 03:56:03.896714'),(15,'admin','0001_initial','2019-11-18 03:56:04.555599'),(16,'admin','0002_logentry_remove_auto_add','2019-11-18 03:56:04.667776'),(17,'admin','0003_logentry_add_action_flag_choices','2019-11-18 03:56:04.694010'),(18,'sessions','0001_initial','2019-11-18 03:56:04.727658'),(19,'sit','0002_job_child','2019-11-18 03:59:13.687251'),(20,'sit','0003_auto_20191117_2101','2019-11-18 04:01:50.053814');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5itl3wkd4d706at6cdbpg2y9tdkujkup','MjMzYjYyOTI5MjQ1NGE4NjMwM2ZhMmMxZjczMjhmYjU0NTIxNDU3ODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NmZhZmUzZjhiZTQ3NTZlMTFjODcwYmQ2OGM0OWFmZGEwNGU0NThjIn0=','2019-12-04 02:06:23.105112');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_babysitter`
--

DROP TABLE IF EXISTS `sit_babysitter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_babysitter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `babysitter_lname` varchar(30) NOT NULL,
  `babysitter_fname` varchar(30) NOT NULL,
  `babysitter_phone` varchar(16) NOT NULL,
  `babysitter_years_of_experience` int(10) unsigned NOT NULL,
  `babysitter_address_street1` varchar(50) NOT NULL,
  `babysitter_address_street2` varchar(20) DEFAULT NULL,
  `babysitter_address_city` varchar(25) DEFAULT NULL,
  `babysitter_address_state` varchar(2) NOT NULL,
  `babysitter_address_zip` int(10) unsigned NOT NULL,
  `babysitter_works_with_disabilities` tinyint(1) NOT NULL,
  `babysitter_age01_or_younger` tinyint(1) NOT NULL,
  `babysitter_age02` tinyint(1) NOT NULL,
  `babysitter_age03` tinyint(1) NOT NULL,
  `babysitter_age04` tinyint(1) NOT NULL,
  `babysitter_age05` tinyint(1) NOT NULL,
  `babysitter_age06` tinyint(1) NOT NULL,
  `babysitter_age07` tinyint(1) NOT NULL,
  `babysitter_age08` tinyint(1) NOT NULL,
  `babysitter_age09` tinyint(1) NOT NULL,
  `babysitter_age10` tinyint(1) NOT NULL,
  `babysitter_age11` tinyint(1) NOT NULL,
  `babysitter_age12_plus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_babysitter`
--

LOCK TABLES `sit_babysitter` WRITE;
/*!40000 ALTER TABLE `sit_babysitter` DISABLE KEYS */;
INSERT INTO `sit_babysitter` VALUES (1,'',NULL,0,'','','','hilda@jenkins.com',0,1,'2019-11-18 04:18:12.319764','Jenkins','Hilda','801-832-7172',3,'772 W Carlisle Park Ave','#H103','S Salt Lake','UT',84119,0,0,1,1,1,1,1,1,1,1,1,1,1),(2,'pbkdf2_sha256$150000$a8qvF5Koi6Gx$ItNNHg4mRQjJFeeXPyxzqvOeGEwqCou5OcXEnjSclL4=','2019-11-20 02:06:23.000000',1,'admin','Daniel','Lier','dpl0809@westminstercollege.edu',1,1,'2019-11-20 01:04:05.000000','last name','first name','not set',0,'no address on file',NULL,NULL,'UT',0,0,0,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `sit_babysitter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_babysitter_babysitter_languages`
--

DROP TABLE IF EXISTS `sit_babysitter_babysitter_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_babysitter_babysitter_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `babysitter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sit_babysitter_babysitte_babysitter_id_language_i_0ba4e208_uniq` (`babysitter_id`,`language_id`),
  KEY `sit_babysitter_babys_language_id_abc57f25_fk_sit_langu` (`language_id`),
  CONSTRAINT `sit_babysitter_babys_babysitter_id_6c0ae63c_fk_sit_babys` FOREIGN KEY (`babysitter_id`) REFERENCES `sit_babysitter` (`id`),
  CONSTRAINT `sit_babysitter_babys_language_id_abc57f25_fk_sit_langu` FOREIGN KEY (`language_id`) REFERENCES `sit_language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_babysitter_babysitter_languages`
--

LOCK TABLES `sit_babysitter_babysitter_languages` WRITE;
/*!40000 ALTER TABLE `sit_babysitter_babysitter_languages` DISABLE KEYS */;
INSERT INTO `sit_babysitter_babysitter_languages` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `sit_babysitter_babysitter_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_babysitter_groups`
--

DROP TABLE IF EXISTS `sit_babysitter_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_babysitter_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `babysitter_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sit_babysitter_groups_babysitter_id_group_id_f62fb4f3_uniq` (`babysitter_id`,`group_id`),
  KEY `sit_babysitter_groups_group_id_c282a5cd_fk_auth_group_id` (`group_id`),
  CONSTRAINT `sit_babysitter_group_babysitter_id_731c4d92_fk_sit_babys` FOREIGN KEY (`babysitter_id`) REFERENCES `sit_babysitter` (`id`),
  CONSTRAINT `sit_babysitter_groups_group_id_c282a5cd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_babysitter_groups`
--

LOCK TABLES `sit_babysitter_groups` WRITE;
/*!40000 ALTER TABLE `sit_babysitter_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `sit_babysitter_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_babysitter_user_permissions`
--

DROP TABLE IF EXISTS `sit_babysitter_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_babysitter_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `babysitter_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sit_babysitter_user_perm_babysitter_id_permission_3897db8e_uniq` (`babysitter_id`,`permission_id`),
  KEY `sit_babysitter_user__permission_id_a784fdba_fk_auth_perm` (`permission_id`),
  CONSTRAINT `sit_babysitter_user__babysitter_id_ffc2d20d_fk_sit_babys` FOREIGN KEY (`babysitter_id`) REFERENCES `sit_babysitter` (`id`),
  CONSTRAINT `sit_babysitter_user__permission_id_a784fdba_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_babysitter_user_permissions`
--

LOCK TABLES `sit_babysitter_user_permissions` WRITE;
/*!40000 ALTER TABLE `sit_babysitter_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sit_babysitter_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_child`
--

DROP TABLE IF EXISTS `sit_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_child` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_firstname` varchar(25) NOT NULL,
  `child_age_years` int(11) NOT NULL,
  `child_age_months` int(11) NOT NULL,
  `child_allergies` longtext NOT NULL,
  `child_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sit_child_child_parent_id_60a0524b_fk_sit_client_id` (`child_parent_id`),
  CONSTRAINT `sit_child_child_parent_id_60a0524b_fk_sit_client_id` FOREIGN KEY (`child_parent_id`) REFERENCES `sit_client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_child`
--

LOCK TABLES `sit_child` WRITE;
/*!40000 ALTER TABLE `sit_child` DISABLE KEYS */;
INSERT INTO `sit_child` VALUES (1,'bean',12,6,'avocado',1),(2,'Fredward',3,2,'legumes',2),(3,'Henry',9,0,'None',2),(4,'Ethan',4,8,'Peanuts',2),(5,'Pelham',2,4,'None',4),(6,'Jerry',1,9,'None',6);
/*!40000 ALTER TABLE `sit_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_client`
--

DROP TABLE IF EXISTS `sit_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) NOT NULL,
  `client_phone` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_client`
--

LOCK TABLES `sit_client` WRITE;
/*!40000 ALTER TABLE `sit_client` DISABLE KEYS */;
INSERT INTO `sit_client` VALUES (1,'The Joneses','8010322400'),(2,'Mary and Jacob Blathers','7028071337'),(4,'Mr. and Mrs. Hurst','8013280981'),(5,'The Franks','7773334444'),(6,'Michelle Banks','801-832-7500');
/*!40000 ALTER TABLE `sit_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_job`
--

DROP TABLE IF EXISTS `sit_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) NOT NULL,
  `datetime_start` datetime(6) NOT NULL,
  `datetime_end` datetime(6) NOT NULL,
  `num_child` int(10) unsigned NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `sitter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sit_job_sitter_id_cafee4fd_fk_sit_babysitter_id` (`sitter_id`),
  KEY `sit_job_client_id_9dd2e6c3_fk_sit_client_id` (`client_id`),
  CONSTRAINT `sit_job_client_id_9dd2e6c3_fk_sit_client_id` FOREIGN KEY (`client_id`) REFERENCES `sit_client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_job`
--

LOCK TABLES `sit_job` WRITE;
/*!40000 ALTER TABLE `sit_job` DISABLE KEYS */;
INSERT INTO `sit_job` VALUES (1,'PC Hilton','2019-11-18 04:21:22.286784','2019-11-18 04:21:22.286809',1,1,1),(2,'Mandarin Oriental','2019-11-20 02:49:19.000000','2019-11-20 07:00:00.000000',3,2,1),(3,'Aria','2019-11-21 02:30:48.000000','2019-11-23 01:00:00.000000',1,4,1),(4,'Mandalay Bay','2019-11-20 02:33:03.000000','2019-11-21 02:33:17.000000',1,2,1),(5,'Holiday Inn Express','2019-11-23 02:33:52.000000','2019-11-24 02:33:59.000000',2,2,1),(6,'Stratosphere','2019-11-21 07:42:10.000000','2019-11-23 13:00:00.000000',1,6,NULL),(7,'The Happy Lodge','2019-11-21 07:43:01.000000','2019-11-25 07:43:06.000000',1,4,NULL),(12,'La Quinta','2019-11-25 22:55:00.000000','2019-11-27 22:55:00.000000',1,4,1);
/*!40000 ALTER TABLE `sit_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_job_child`
--

DROP TABLE IF EXISTS `sit_job_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_job_child` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sit_job_child_job_id_child_id_1d5da06b_uniq` (`job_id`,`child_id`),
  KEY `sit_job_child_child_id_0159ee95_fk_sit_child_id` (`child_id`),
  CONSTRAINT `sit_job_child_child_id_0159ee95_fk_sit_child_id` FOREIGN KEY (`child_id`) REFERENCES `sit_child` (`id`),
  CONSTRAINT `sit_job_child_job_id_c39a0d74_fk_sit_job_id` FOREIGN KEY (`job_id`) REFERENCES `sit_job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_job_child`
--

LOCK TABLES `sit_job_child` WRITE;
/*!40000 ALTER TABLE `sit_job_child` DISABLE KEYS */;
INSERT INTO `sit_job_child` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,5),(6,4,3),(7,5,3),(8,5,4),(9,6,6),(10,7,5),(12,12,5);
/*!40000 ALTER TABLE `sit_job_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sit_language`
--

DROP TABLE IF EXISTS `sit_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sit_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sit_language`
--

LOCK TABLES `sit_language` WRITE;
/*!40000 ALTER TABLE `sit_language` DISABLE KEYS */;
INSERT INTO `sit_language` VALUES (1,'English'),(2,'Spanish');
/*!40000 ALTER TABLE `sit_language` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-21 14:33:00
