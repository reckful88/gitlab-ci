-- MySQL dump 10.13  Distrib 5.7.13, for osx10.11 (x86_64)
--
-- Host: localhost    Database: beast
-- ------------------------------------------------------
-- Server version	5.7.13

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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add content type',3,'add_contenttype'),(8,'Can change content type',3,'change_contenttype'),(9,'Can delete content type',3,'delete_contenttype'),(10,'Can add session',4,'add_session'),(11,'Can change session',4,'change_session'),(12,'Can delete session',4,'delete_session'),(13,'Can add Token',5,'add_token'),(14,'Can change Token',5,'change_token'),(15,'Can delete Token',5,'delete_token'),(16,'Can add log entry',6,'add_logentry'),(17,'Can change log entry',6,'change_logentry'),(18,'Can delete log entry',6,'delete_logentry'),(19,'Can add task state',7,'add_taskmeta'),(20,'Can change task state',7,'change_taskmeta'),(21,'Can delete task state',7,'delete_taskmeta'),(22,'Can add saved group result',8,'add_tasksetmeta'),(23,'Can change saved group result',8,'change_tasksetmeta'),(24,'Can delete saved group result',8,'delete_tasksetmeta'),(25,'Can add interval',9,'add_intervalschedule'),(26,'Can change interval',9,'change_intervalschedule'),(27,'Can delete interval',9,'delete_intervalschedule'),(28,'Can add crontab',10,'add_crontabschedule'),(29,'Can change crontab',10,'change_crontabschedule'),(30,'Can delete crontab',10,'delete_crontabschedule'),(31,'Can add periodic tasks',11,'add_periodictasks'),(32,'Can change periodic tasks',11,'change_periodictasks'),(33,'Can delete periodic tasks',11,'delete_periodictasks'),(34,'Can add periodic task',12,'add_periodictask'),(35,'Can change periodic task',12,'change_periodictask'),(36,'Can delete periodic task',12,'delete_periodictask'),(37,'Can add worker',13,'add_workerstate'),(38,'Can change worker',13,'change_workerstate'),(39,'Can delete worker',13,'delete_workerstate'),(40,'Can add task',14,'add_taskstate'),(41,'Can change task',14,'change_taskstate'),(42,'Can delete task',14,'delete_taskstate'),(43,'Can add s city',15,'add_scity'),(44,'Can change s city',15,'change_scity'),(45,'Can delete s city',15,'delete_scity'),(46,'Can add realeased package',16,'add_realeasedpackage'),(47,'Can change realeased package',16,'change_realeasedpackage'),(48,'Can delete realeased package',16,'delete_realeasedpackage'),(49,'Can add s ad cycle',17,'add_sadcycle'),(50,'Can change s ad cycle',17,'change_sadcycle'),(51,'Can delete s ad cycle',17,'delete_sadcycle'),(52,'Can add s ad boom',18,'add_sadboom'),(53,'Can change s ad boom',18,'change_sadboom'),(54,'Can delete s ad boom',18,'delete_sadboom'),(55,'Can add s release version',19,'add_sreleaseversion'),(56,'Can change s release version',19,'change_sreleaseversion'),(57,'Can delete s release version',19,'delete_sreleaseversion'),(58,'Can add 城市管理',15,'add_pscity'),(59,'Can change 城市管理',15,'change_pscity'),(60,'Can delete 城市管理',15,'delete_pscity'),(61,'Can add 轮播管理',17,'add_psadcycle'),(62,'Can change 轮播管理',17,'change_psadcycle'),(63,'Can delete 轮播管理',17,'delete_psadcycle'),(64,'Can add 弹窗管理',18,'add_psadboom'),(65,'Can change 弹窗管理',18,'change_psadboom'),(66,'Can delete 弹窗管理',18,'delete_psadboom'),(67,'Can add 更新管理',19,'add_psreleaseversion'),(68,'Can change 更新管理',19,'change_psreleaseversion'),(69,'Can delete 更新管理',19,'delete_psreleaseversion'),(70,'Can add s user info',24,'add_suserinfo'),(71,'Can change s user info',24,'change_suserinfo'),(72,'Can delete s user info',24,'delete_suserinfo'),(73,'Can add s user',25,'add_suser'),(74,'Can change s user',25,'change_suser'),(75,'Can delete s user',25,'delete_suser'),(76,'Can add s user auth',26,'add_suserauth'),(77,'Can change s user auth',26,'change_suserauth'),(78,'Can delete s user auth',26,'delete_suserauth'),(79,'Can add _User',25,'add_psuser'),(80,'Can change _User',25,'change_psuser'),(81,'Can delete _User',25,'delete_psuser'),(82,'Can add UserInfo',24,'add_psuserinfo'),(83,'Can change UserInfo',24,'change_psuserinfo'),(84,'Can delete UserInfo',24,'delete_psuserinfo'),(85,'Can add 登录信息',26,'add_psuserauth'),(86,'Can change 登录信息',26,'change_psuserauth'),(87,'Can delete 登录信息',26,'delete_psuserauth'),(88,'Can add s appeal',30,'add_sappeal'),(89,'Can change s appeal',30,'change_sappeal'),(90,'Can delete s appeal',30,'delete_sappeal'),(91,'Can add s route report',31,'add_sroutereport'),(92,'Can change s route report',31,'change_sroutereport'),(93,'Can delete s route report',31,'delete_sroutereport'),(94,'Can add s feed back',32,'add_sfeedback'),(95,'Can change s feed back',32,'change_sfeedback'),(96,'Can delete s feed back',32,'delete_sfeedback'),(97,'Can add 申诉',30,'add_psappeal'),(98,'Can change 申诉',30,'change_psappeal'),(99,'Can delete 申诉',30,'delete_psappeal'),(100,'Can add 骑行举报',31,'add_psroutereport'),(101,'Can change 骑行举报',31,'change_psroutereport'),(102,'Can delete 骑行举报',31,'delete_psroutereport'),(103,'Can add 用户反馈',32,'add_psfeedback'),(104,'Can change 用户反馈',32,'change_psfeedback'),(105,'Can delete 用户反馈',32,'delete_psfeedback'),(106,'Can add s broadcast',36,'add_sbroadcast'),(107,'Can change s broadcast',36,'change_sbroadcast'),(108,'Can delete s broadcast',36,'delete_sbroadcast'),(109,'Can add s un read',37,'add_sunread'),(110,'Can change s un read',37,'change_sunread'),(111,'Can delete s un read',37,'delete_sunread'),(112,'Can add s club msg',38,'add_sclubmsg'),(113,'Can change s club msg',38,'change_sclubmsg'),(114,'Can delete s club msg',38,'delete_sclubmsg'),(115,'Can add Broadcast',36,'add_psbroadcast'),(116,'Can change Broadcast',36,'change_psbroadcast'),(117,'Can delete Broadcast',36,'delete_psbroadcast'),(118,'Can add s flow recharge',40,'add_sflowrecharge'),(119,'Can change s flow recharge',40,'change_sflowrecharge'),(120,'Can delete s flow recharge',40,'delete_sflowrecharge'),(121,'Can add 流量充值',40,'add_psflowrecharge'),(122,'Can change 流量充值',40,'change_psflowrecharge'),(123,'Can delete 流量充值',40,'delete_psflowrecharge'),(124,'Can add s route',42,'add_sroute'),(125,'Can change s route',42,'change_sroute'),(126,'Can delete s route',42,'delete_sroute'),(127,'Can add s route node',43,'add_sroutenode'),(128,'Can change s route node',43,'change_sroutenode'),(129,'Can delete s route node',43,'delete_sroutenode'),(130,'Can add s favorite route',44,'add_sfavoriteroute'),(131,'Can change s favorite route',44,'change_sfavoriteroute'),(132,'Can delete s favorite route',44,'delete_sfavoriteroute'),(133,'Can add s route comment',45,'add_sroutecomment'),(134,'Can change s route comment',45,'change_sroutecomment'),(135,'Can delete s route comment',45,'delete_sroutecomment'),(136,'Can add s route follower',46,'add_sroutefollower'),(137,'Can change s route follower',46,'change_sroutefollower'),(138,'Can delete s route follower',46,'delete_sroutefollower'),(139,'Can add s route views',47,'add_srouteviews'),(140,'Can change s route views',47,'change_srouteviews'),(141,'Can delete s route views',47,'delete_srouteviews'),(142,'Can add s samples',48,'add_ssamples'),(143,'Can change s samples',48,'change_ssamples'),(144,'Can delete s samples',48,'delete_ssamples'),(145,'Can add s sport route',49,'add_ssportroute'),(146,'Can change s sport route',49,'change_ssportroute'),(147,'Can delete s sport route',49,'delete_ssportroute'),(148,'Can add Samples',48,'add_psamples'),(149,'Can change Samples',48,'change_psamples'),(150,'Can delete Samples',48,'delete_psamples'),(151,'Can add sportRoute',49,'add_psportroute'),(152,'Can change sportRoute',49,'change_psportroute'),(153,'Can delete sportRoute',49,'delete_psportroute'),(154,'Can add Route',42,'add_psroute'),(155,'Can change Route',42,'change_psroute'),(156,'Can delete Route',42,'delete_psroute'),(157,'Can add RouteComment',45,'add_psroutecomment'),(158,'Can change RouteComment',45,'change_psroutecomment'),(159,'Can delete RouteComment',45,'delete_psroutecomment'),(160,'Can add s task',54,'add_stask'),(161,'Can change s task',54,'change_stask'),(162,'Can delete s task',54,'delete_stask'),(163,'Can add s task award',55,'add_staskaward'),(164,'Can change s task award',55,'change_staskaward'),(165,'Can delete s task award',55,'delete_staskaward'),(166,'Can add s user task',56,'add_susertask'),(167,'Can change s user task',56,'change_susertask'),(168,'Can delete s user task',56,'delete_susertask'),(169,'Can add s gift',57,'add_sgift'),(170,'Can change s gift',57,'change_sgift'),(171,'Can delete s gift',57,'delete_sgift'),(172,'Can add Task',54,'add_pstask'),(173,'Can change Task',54,'change_pstask'),(174,'Can delete Task',54,'delete_pstask'),(175,'Can add central control',59,'add_centralcontrol'),(176,'Can change central control',59,'change_centralcontrol'),(177,'Can delete central control',59,'delete_centralcontrol'),(178,'Can add s club',60,'add_sclub'),(179,'Can change s club',60,'change_sclub'),(180,'Can delete s club',60,'delete_sclub'),(181,'Can add s user club relation',61,'add_suserclubrelation'),(182,'Can change s user club relation',61,'change_suserclubrelation'),(183,'Can delete s user club relation',61,'delete_suserclubrelation'),(184,'Can add s club activity',62,'add_sclubactivity'),(185,'Can change s club activity',62,'change_sclubactivity'),(186,'Can delete s club activity',62,'delete_sclubactivity'),(187,'Can add s user club activity',63,'add_suserclubactivity'),(188,'Can change s user club activity',63,'change_suserclubactivity'),(189,'Can delete s user club activity',63,'delete_suserclubactivity'),(190,'Can add s club apply',64,'add_sclubapply'),(191,'Can change s club apply',64,'change_sclubapply'),(192,'Can delete s club apply',64,'delete_sclubapply'),(193,'Can add s club post',65,'add_sclubpost'),(194,'Can change s club post',65,'change_sclubpost'),(195,'Can delete s club post',65,'delete_sclubpost'),(196,'Can add s club photo',66,'add_sclubphoto'),(197,'Can change s club photo',66,'change_sclubphoto'),(198,'Can delete s club photo',66,'delete_sclubphoto'),(199,'Can add s club photo comment',67,'add_sclubphotocomment'),(200,'Can change s club photo comment',67,'change_sclubphotocomment'),(201,'Can delete s club photo comment',67,'delete_sclubphotocomment'),(202,'Can add s club notice',68,'add_sclubnotice'),(203,'Can change s club notice',68,'change_sclubnotice'),(204,'Can delete s club notice',68,'delete_sclubnotice'),(205,'Can add s club level',69,'add_sclublevel'),(206,'Can change s club level',69,'change_sclublevel'),(207,'Can delete s club level',69,'delete_sclublevel'),(208,'Can add s club testament',70,'add_sclubtestament'),(209,'Can change s club testament',70,'change_sclubtestament'),(210,'Can delete s club testament',70,'delete_sclubtestament'),(211,'Can add 俱乐部',60,'add_psclub'),(212,'Can change 俱乐部',60,'change_psclub'),(213,'Can delete 俱乐部',60,'delete_psclub'),(214,'Can add 俱乐部成员',61,'add_psuserclubrelation'),(215,'Can change 俱乐部成员',61,'change_psuserclubrelation'),(216,'Can delete 俱乐部成员',61,'delete_psuserclubrelation'),(217,'Can add 俱乐部活动',62,'add_psclubactivity'),(218,'Can change 俱乐部活动',62,'change_psclubactivity'),(219,'Can delete 俱乐部活动',62,'delete_psclubactivity'),(220,'Can add 俱乐部照片',66,'add_psclubphoto'),(221,'Can change 俱乐部照片',66,'change_psclubphoto'),(222,'Can delete 俱乐部照片',66,'delete_psclubphoto'),(223,'Can add 俱乐部等级',69,'add_psclublevel'),(224,'Can change 俱乐部等级',69,'change_psclublevel'),(225,'Can delete 俱乐部等级',69,'delete_psclublevel'),(226,'Can add s social request',76,'add_ssocialrequest'),(227,'Can change s social request',76,'change_ssocialrequest'),(228,'Can delete s social request',76,'delete_ssocialrequest'),(229,'Can add s social info',77,'add_ssocialinfo'),(230,'Can change s social info',77,'change_ssocialinfo'),(231,'Can delete s social info',77,'delete_ssocialinfo'),(232,'Can add s chat info',78,'add_schatinfo'),(233,'Can change s chat info',78,'change_schatinfo'),(234,'Can delete s chat info',78,'delete_schatinfo'),(235,'Can add s activity',79,'add_sactivity'),(236,'Can change s activity',79,'change_sactivity'),(237,'Can delete s activity',79,'delete_sactivity'),(238,'Can add s activity list',80,'add_sactivitylist'),(239,'Can change s activity list',80,'change_sactivitylist'),(240,'Can delete s activity list',80,'delete_sactivitylist'),(241,'Can add s user activity',81,'add_suseractivity'),(242,'Can change s user activity',81,'change_suseractivity'),(243,'Can delete s user activity',81,'delete_suseractivity'),(244,'Can add s user award',82,'add_suseraward'),(245,'Can change s user award',82,'change_suseraward'),(246,'Can delete s user award',82,'delete_suseraward'),(247,'Can add 活动',79,'add_psactivity'),(248,'Can change 活动',79,'change_psactivity'),(249,'Can delete 活动',79,'delete_psactivity'),(250,'Can add 子活动',80,'add_psactivitylist'),(251,'Can change 子活动',80,'change_psactivitylist'),(252,'Can delete 子活动',80,'delete_psactivitylist'),(253,'Can add 奖品',57,'add_psgift'),(254,'Can change 奖品',57,'change_psgift'),(255,'Can delete 奖品',57,'delete_psgift'),(256,'Can add 用户活动',81,'add_psuseractivity'),(257,'Can change 用户活动',81,'change_psuseractivity'),(258,'Can delete 用户活动',81,'delete_psuseractivity'),(259,'Can add 用户领奖',82,'add_psuseraward'),(260,'Can change 用户领奖',82,'change_psuseraward'),(261,'Can delete 用户领奖',82,'delete_psuseraward'),(262,'Can add s club time line',88,'add_sclubtimeline'),(263,'Can change s club time line',88,'change_sclubtimeline'),(264,'Can delete s club time line',88,'delete_sclubtimeline'),(265,'Can add s club feed comment',89,'add_sclubfeedcomment'),(266,'Can change s club feed comment',89,'change_sclubfeedcomment'),(267,'Can delete s club feed comment',89,'delete_sclubfeedcomment'),(268,'Can add s user grid',90,'add_susergrid'),(269,'Can change s user grid',90,'change_susergrid'),(270,'Can delete s user grid',90,'delete_susergrid'),(271,'Can add s fitting',91,'add_sfitting'),(272,'Can change s fitting',91,'change_sfitting'),(273,'Can delete s fitting',91,'delete_sfitting'),(274,'Can add s badge',92,'add_sbadge'),(275,'Can change s badge',92,'change_sbadge'),(276,'Can delete s badge',92,'delete_sbadge'),(277,'Can add s user badge',93,'add_suserbadge'),(278,'Can change s user badge',93,'change_suserbadge'),(279,'Can delete s user badge',93,'delete_suserbadge'),(280,'Can add s badge gift',94,'add_sbadgegift'),(281,'Can change s badge gift',94,'change_sbadgegift'),(282,'Can delete s badge gift',94,'delete_sbadgegift'),(283,'Can add s user badge gift',95,'add_suserbadgegift'),(284,'Can change s user badge gift',95,'change_suserbadgegift'),(285,'Can delete s user badge gift',95,'delete_suserbadgegift'),(286,'Can add s badge activity',96,'add_sbadgeactivity'),(287,'Can change s badge activity',96,'change_sbadgeactivity'),(288,'Can delete s badge activity',96,'delete_sbadgeactivity'),(289,'Can add 活动',96,'add_psbadgeactivity'),(290,'Can change 活动',96,'change_psbadgeactivity'),(291,'Can delete 活动',96,'delete_psbadgeactivity'),(292,'Can add 用户勋章',93,'add_psuserbadge'),(293,'Can change 用户勋章',93,'change_psuserbadge'),(294,'Can delete 用户勋章',93,'delete_psuserbadge'),(295,'Can add 用户领奖',95,'add_psuserbadgegift'),(296,'Can change 用户领奖',95,'change_psuserbadgegift'),(297,'Can delete 用户领奖',95,'delete_psuserbadgegift'),(298,'Can add 勋章',92,'add_psbadge'),(299,'Can change 勋章',92,'change_psbadge'),(300,'Can delete 勋章',92,'delete_psbadge'),(301,'Can add 奖品',94,'add_psbadgegift'),(302,'Can change 奖品',94,'change_psbadgegift'),(303,'Can delete 奖品',94,'delete_psbadgegift'),(304,'Can add s temp table1',102,'add_stemptable1'),(305,'Can change s temp table1',102,'change_stemptable1'),(306,'Can delete s temp table1',102,'delete_stemptable1'),(307,'Can add s contact us',103,'add_scontactus'),(308,'Can change s contact us',103,'change_scontactus'),(309,'Can delete s contact us',103,'delete_scontactus'),(310,'Can add s temp table2',104,'add_stemptable2'),(311,'Can change s temp table2',104,'change_stemptable2'),(312,'Can delete s temp table2',104,'delete_stemptable2'),(313,'Can add s idfa',105,'add_sidfa'),(314,'Can change s idfa',105,'change_sidfa'),(315,'Can delete s idfa',105,'delete_sidfa'),(316,'Can add 收集手机号',102,'add_pstemptable1'),(317,'Can change 收集手机号',102,'change_pstemptable1'),(318,'Can delete 收集手机号',102,'delete_pstemptable1'),(319,'Can add 联系我们',103,'add_pscontactus'),(320,'Can change 联系我们',103,'change_pscontactus'),(321,'Can delete 联系我们',103,'delete_pscontactus');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_1d10c57f535fb363_fk_s_user_account_pk_id` FOREIGN KEY (`user_id`) REFERENCES `s_user_account` (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_taskmeta`
--

DROP TABLE IF EXISTS `celery_taskmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_662f707d` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_taskmeta`
--

LOCK TABLES `celery_taskmeta` WRITE;
/*!40000 ALTER TABLE `celery_taskmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `celery_taskmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_tasksetmeta`
--

DROP TABLE IF EXISTS `celery_tasksetmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_662f707d` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_tasksetmeta`
--

LOCK TABLES `celery_tasksetmeta` WRITE;
/*!40000 ALTER TABLE `celery_tasksetmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `celery_tasksetmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_lo_user_id_52fdd58701c5f563_fk_s_user_account_pk_id` FOREIGN KEY (`user_id`) REFERENCES `s_user_account` (`pk_id`)
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'content type','contenttypes','contenttype'),(4,'session','sessions','session'),(5,'Token','authtoken','token'),(6,'log entry','admin','logentry'),(7,'task state','djcelery','taskmeta'),(8,'saved group result','djcelery','tasksetmeta'),(9,'interval','djcelery','intervalschedule'),(10,'crontab','djcelery','crontabschedule'),(11,'periodic tasks','djcelery','periodictasks'),(12,'periodic task','djcelery','periodictask'),(13,'worker','djcelery','workerstate'),(14,'task','djcelery','taskstate'),(15,'s city','configs','scity'),(16,'realeased package','configs','realeasedpackage'),(17,'s ad cycle','configs','sadcycle'),(18,'s ad boom','configs','sadboom'),(19,'s release version','configs','sreleaseversion'),(20,'更新管理','configs','psreleaseversion'),(21,'城市管理','configs','pscity'),(22,'轮播管理','configs','psadcycle'),(23,'弹窗管理','configs','psadboom'),(24,'s user info','user','suserinfo'),(25,'s user','user','suser'),(26,'s user auth','user','suserauth'),(27,'_User','user','psuser'),(28,'UserInfo','user','psuserinfo'),(29,'登录信息','user','psuserauth'),(30,'s appeal','appeal','sappeal'),(31,'s route report','appeal','sroutereport'),(32,'s feed back','appeal','sfeedback'),(33,'申诉','appeal','psappeal'),(34,'用户反馈','appeal','psfeedback'),(35,'骑行举报','appeal','psroutereport'),(36,'s broadcast','message','sbroadcast'),(37,'s un read','message','sunread'),(38,'s club msg','message','sclubmsg'),(39,'Broadcast','message','psbroadcast'),(40,'s flow recharge','oauth','sflowrecharge'),(41,'流量充值','oauth','psflowrecharge'),(42,'s route','route','sroute'),(43,'s route node','route','sroutenode'),(44,'s favorite route','route','sfavoriteroute'),(45,'s route comment','route','sroutecomment'),(46,'s route follower','route','sroutefollower'),(47,'s route views','route','srouteviews'),(48,'s samples','route','ssamples'),(49,'s sport route','route','ssportroute'),(50,'Samples','route','psamples'),(51,'sportRoute','route','psportroute'),(52,'RouteComment','route','psroutecomment'),(53,'Route','route','psroute'),(54,'s task','task','stask'),(55,'s task award','task','staskaward'),(56,'s user task','task','susertask'),(57,'s gift','task','sgift'),(58,'Task','task','pstask'),(59,'central control','centralcontrol','centralcontrol'),(60,'s club','club','sclub'),(61,'s user club relation','club','suserclubrelation'),(62,'s club activity','club','sclubactivity'),(63,'s user club activity','club','suserclubactivity'),(64,'s club apply','club','sclubapply'),(65,'s club post','club','sclubpost'),(66,'s club photo','club','sclubphoto'),(67,'s club photo comment','club','sclubphotocomment'),(68,'s club notice','club','sclubnotice'),(69,'s club level','club','sclublevel'),(70,'s club testament','club','sclubtestament'),(71,'俱乐部','club','psclub'),(72,'俱乐部活动','club','psclubactivity'),(73,'俱乐部等级','club','psclublevel'),(74,'俱乐部照片','club','psclubphoto'),(75,'俱乐部成员','club','psuserclubrelation'),(76,'s social request','social','ssocialrequest'),(77,'s social info','social','ssocialinfo'),(78,'s chat info','chat','schatinfo'),(79,'s activity','activity','sactivity'),(80,'s activity list','activity','sactivitylist'),(81,'s user activity','activity','suseractivity'),(82,'s user award','activity','suseraward'),(83,'活动','activity','psactivity'),(84,'用户活动','activity','psuseractivity'),(85,'用户领奖','activity','psuseraward'),(86,'子活动','activity','psactivitylist'),(87,'奖品','activity','psgift'),(88,'s club time line','feeds','sclubtimeline'),(89,'s club feed comment','feeds','sclubfeedcomment'),(90,'s user grid','grid','susergrid'),(91,'s fitting','fitting','sfitting'),(92,'s badge','badge','sbadge'),(93,'s user badge','badge','suserbadge'),(94,'s badge gift','badge','sbadgegift'),(95,'s user badge gift','badge','suserbadgegift'),(96,'s badge activity','badge','sbadgeactivity'),(97,'用户勋章','badge','psuserbadge'),(98,'用户领奖','badge','psuserbadgegift'),(99,'勋章','badge','psbadge'),(100,'活动','badge','psbadgeactivity'),(101,'奖品','badge','psbadgegift'),(102,'s temp table1','utils','stemptable1'),(103,'s contact us','utils','scontactus'),(104,'s temp table2','utils','stemptable2'),(105,'s idfa','utils','sidfa'),(106,'联系我们','utils','pscontactus'),(107,'收集手机号','utils','pstemptable1');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-07-29 07:17:49'),(2,'admin','0001_initial','2016-07-29 07:17:50'),(3,'auth','0001_initial','2016-07-29 07:17:51'),(4,'authtoken','0001_initial','2016-07-29 07:17:51'),(5,'authtoken','0002_auto_20160226_1747','2016-07-29 07:17:52'),(6,'djcelery','0001_initial','2016-07-29 07:17:55'),(7,'sessions','0001_initial','2016-07-29 07:17:55');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_crontabschedule`
--

DROP TABLE IF EXISTS `djcelery_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_crontabschedule`
--

LOCK TABLES `djcelery_crontabschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_crontabschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_intervalschedule`
--

DROP TABLE IF EXISTS `djcelery_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_intervalschedule`
--

LOCK TABLES `djcelery_intervalschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictask`
--

DROP TABLE IF EXISTS `djcelery_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictask_f3f0d72a` (`crontab_id`),
  KEY `djcelery_periodictask_1dcd7040` (`interval_id`),
  CONSTRAINT `djc_interval_id_20cfc1cad060dfad_fk_djcelery_intervalschedule_id` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`),
  CONSTRAINT `djcel_crontab_id_1d8228f5b44b680a_fk_djcelery_crontabschedule_id` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictask`
--

LOCK TABLES `djcelery_periodictask` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictask` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictasks`
--

DROP TABLE IF EXISTS `djcelery_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictasks`
--

LOCK TABLES `djcelery_periodictasks` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_taskstate`
--

DROP TABLE IF EXISTS `djcelery_taskstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_9ed39e2e` (`state`),
  KEY `djcelery_taskstate_b068931c` (`name`),
  KEY `djcelery_taskstate_863bb2ee` (`tstamp`),
  KEY `djcelery_taskstate_662f707d` (`hidden`),
  KEY `djcelery_taskstate_ce77e6ef` (`worker_id`),
  CONSTRAINT `djcelery_t_worker_id_30050731b1c3d3d9_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_taskstate`
--

LOCK TABLES `djcelery_taskstate` WRITE;
/*!40000 ALTER TABLE `djcelery_taskstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_taskstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_workerstate`
--

DROP TABLE IF EXISTS `djcelery_workerstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_f129901a` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_workerstate`
--

LOCK TABLES `djcelery_workerstate` WRITE;
/*!40000 ALTER TABLE `djcelery_workerstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_workerstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_acitivity_list`
--

DROP TABLE IF EXISTS `s_acitivity_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_acitivity_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `activityId` varchar(32) DEFAULT NULL,
  `stopDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `score` double DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_acitivity_list`
--

LOCK TABLES `s_acitivity_list` WRITE;
/*!40000 ALTER TABLE `s_acitivity_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_acitivity_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_activity`
--

DROP TABLE IF EXISTS `s_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `description` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `rule` bigint(20) DEFAULT NULL,
  `stopDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `coverId` varchar(32) DEFAULT NULL,
  `coverImage` varchar(512) DEFAULT NULL,
  `duration` smallint(6) NOT NULL,
  `giftId` varchar(32) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `followers` bigint(20) NOT NULL,
  `sort` smallint(6) NOT NULL,
  `type` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_activity`
--

LOCK TABLES `s_activity` WRITE;
/*!40000 ALTER TABLE `s_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_ad_boom`
--

DROP TABLE IF EXISTS `s_ad_boom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_ad_boom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(512) DEFAULT NULL,
  `linkTo` varchar(512) DEFAULT NULL,
  `mCount` smallint(6) NOT NULL,
  `showDate` datetime NOT NULL,
  `offlineDate` datetime NOT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `lang` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_ad_boom`
--

LOCK TABLES `s_ad_boom` WRITE;
/*!40000 ALTER TABLE `s_ad_boom` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_ad_boom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_ad_cycle`
--

DROP TABLE IF EXISTS `s_ad_cycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_ad_cycle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(16) NOT NULL,
  `imageUrl` varchar(512) DEFAULT NULL,
  `linkTo` varchar(512) DEFAULT NULL,
  `showDate` datetime NOT NULL,
  `offlineDate` datetime NOT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `lang` varchar(32) NOT NULL,
  `sort` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_ad_cycle`
--

LOCK TABLES `s_ad_cycle` WRITE;
/*!40000 ALTER TABLE `s_ad_cycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_ad_cycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_appeal`
--

DROP TABLE IF EXISTS `s_appeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_appeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `appVersion` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `phoneSystem` varchar(128) NOT NULL,
  `phoneMode` varchar(128) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `activityId` varchar(32) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_appeal`
--

LOCK TABLES `s_appeal` WRITE;
/*!40000 ALTER TABLE `s_appeal` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_appeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_badge`
--

DROP TABLE IF EXISTS `s_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_badge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `nameEn` varchar(32) NOT NULL,
  `detail` longtext,
  `detailEn` longtext,
  `lightText` longtext,
  `lightTextEn` longtext,
  `unLightUrl` varchar(200) NOT NULL,
  `lightUrl` varchar(200) NOT NULL,
  `giftId` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_badge`
--

LOCK TABLES `s_badge` WRITE;
/*!40000 ALTER TABLE `s_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_badge_activity`
--

DROP TABLE IF EXISTS `s_badge_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_badge_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `nameEn` varchar(32) NOT NULL,
  `description` longtext,
  `descriptionEn` longtext,
  `detail` longtext,
  `detailEn` longtext,
  `onlineDate` datetime NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `badgeId` bigint(20) NOT NULL,
  `giftId` bigint(20) DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `score` bigint(20) NOT NULL,
  `joinedNum` bigint(20) NOT NULL,
  `coverUrl` varchar(200) DEFAULT NULL,
  `language` varchar(8) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_badge_activity`
--

LOCK TABLES `s_badge_activity` WRITE;
/*!40000 ALTER TABLE `s_badge_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_badge_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_badge_gift`
--

DROP TABLE IF EXISTS `s_badge_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_badge_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `detail` longtext NOT NULL,
  `type` smallint(6) NOT NULL,
  `imageUrl` varchar(200) DEFAULT NULL,
  `sn` smallint(6) DEFAULT NULL,
  `lottoConfig` longtext,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_badge_gift`
--

LOCK TABLES `s_badge_gift` WRITE;
/*!40000 ALTER TABLE `s_badge_gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_badge_gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_broadcast`
--

DROP TABLE IF EXISTS `s_broadcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_broadcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `appVersion` varchar(128) NOT NULL,
  `availableTime` datetime NOT NULL,
  `message` varchar(255) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_broadcast`
--

LOCK TABLES `s_broadcast` WRITE;
/*!40000 ALTER TABLE `s_broadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_broadcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_central_control`
--

DROP TABLE IF EXISTS `s_central_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_central_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `state` varchar(16) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_central_control`
--

LOCK TABLES `s_central_control` WRITE;
/*!40000 ALTER TABLE `s_central_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_central_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_chat_info`
--

DROP TABLE IF EXISTS `s_chat_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_chat_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(32) NOT NULL,
  `rongToken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`),
  KEY `s_chat_info_c12a3c06` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_chat_info`
--

LOCK TABLES `s_chat_info` WRITE;
/*!40000 ALTER TABLE `s_chat_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_chat_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_city`
--

DROP TABLE IF EXISTS `s_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `zh_TW` varchar(64) NOT NULL,
  `en` varchar(64) NOT NULL,
  `zh_CN` varchar(64) NOT NULL,
  `cityId` varchar(32) NOT NULL,
  `sort` smallint(6) NOT NULL,
  `isList` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  KEY `s_city_64723a2d` (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_city`
--

LOCK TABLES `s_city` WRITE;
/*!40000 ALTER TABLE `s_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club`
--

DROP TABLE IF EXISTS `s_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `logoId` varchar(32) DEFAULT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(64) NOT NULL,
  `desc` varchar(128) NOT NULL,
  `managerId` varchar(32) NOT NULL,
  `status` smallint(6) NOT NULL,
  `verifyInfo` longtext NOT NULL,
  `notice` longtext,
  `milestone` double NOT NULL,
  `isPrivate` tinyint(1) NOT NULL,
  `score` double NOT NULL,
  `recommend` bigint(20) NOT NULL,
  `curMembers` bigint(20) NOT NULL,
  `maxMembers` bigint(20) NOT NULL,
  `maxPhotoNum` bigint(20) NOT NULL,
  `level` smallint(6) DEFAULT NULL,
  `geoCode` varchar(32) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  UNIQUE KEY `managerId` (`managerId`),
  KEY `s_club_00124aa0` (`managerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club`
--

LOCK TABLES `s_club` WRITE;
/*!40000 ALTER TABLE `s_club` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_activity`
--

DROP TABLE IF EXISTS `s_club_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `clubId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `mobPlace` varchar(128) NOT NULL,
  `routeId` varchar(32) DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `status` smallint(6) NOT NULL,
  `members` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `extInfo` longtext NOT NULL,
  `applyEndDate` datetime DEFAULT NULL,
  `maxMembers` smallint(6) DEFAULT NULL,
  `isClubPrivate` tinyint(1) NOT NULL,
  `decstiption` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  KEY `s_club_activity_c12a3c06` (`userId`),
  KEY `s_club_activity_07224705` (`clubId`),
  KEY `s_club_activity_5de15326` (`userId`,`clubId`),
  KEY `s_club_activity_6b530bb8` (`routeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_activity`
--

LOCK TABLES `s_club_activity` WRITE;
/*!40000 ALTER TABLE `s_club_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_apply`
--

DROP TABLE IF EXISTS `s_club_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `clubId` varchar(32) NOT NULL,
  `status` smallint(6) NOT NULL,
  `extInfo` longtext NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  KEY `s_club_apply_c12a3c06` (`userId`),
  KEY `s_club_apply_07224705` (`clubId`),
  KEY `s_club_apply_6e20df0e` (`clubId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_apply`
--

LOCK TABLES `s_club_apply` WRITE;
/*!40000 ALTER TABLE `s_club_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_feed_comment`
--

DROP TABLE IF EXISTS `s_club_feed_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_feed_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_id` bigint(20) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  `reply_user_id` varchar(32) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_feed_comment`
--

LOCK TABLES `s_club_feed_comment` WRITE;
/*!40000 ALTER TABLE `s_club_feed_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_feed_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_level`
--

DROP TABLE IF EXISTS `s_club_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` varchar(32) NOT NULL,
  `level` smallint(6) DEFAULT NULL,
  `progress` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `club_id` (`club_id`),
  KEY `s_club_level_e81b6977` (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_level`
--

LOCK TABLES `s_club_level` WRITE;
/*!40000 ALTER TABLE `s_club_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_msg`
--

DROP TABLE IF EXISTS `s_club_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `sender_id` varchar(32) NOT NULL,
  `msg_type` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `content` longtext NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `meta_content` longtext,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `s_club_msg_1ffdedc6` (`user_id`),
  KEY `s_club_msg_c0a0c49b` (`user_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_msg`
--

LOCK TABLES `s_club_msg` WRITE;
/*!40000 ALTER TABLE `s_club_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_notice`
--

DROP TABLE IF EXISTS `s_club_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` varchar(32) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_club_notice_e81b6977` (`club_id`),
  KEY `s_club_notice_53ca455f` (`club_id`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_notice`
--

LOCK TABLES `s_club_notice` WRITE;
/*!40000 ALTER TABLE `s_club_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_photo`
--

DROP TABLE IF EXISTS `s_club_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_meta` longtext NOT NULL,
  `content` longtext,
  `user_id` varchar(32) NOT NULL,
  `club_id` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_photo`
--

LOCK TABLES `s_club_photo` WRITE;
/*!40000 ALTER TABLE `s_club_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_photo_comment`
--

DROP TABLE IF EXISTS `s_club_photo_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_photo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` bigint(20) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  `reply_user_id` varchar(32) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_photo_comment`
--

LOCK TABLES `s_club_photo_comment` WRITE;
/*!40000 ALTER TABLE `s_club_photo_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_photo_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_post`
--

DROP TABLE IF EXISTS `s_club_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `userId` varchar(32) NOT NULL,
  `clubId` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_post`
--

LOCK TABLES `s_club_post` WRITE;
/*!40000 ALTER TABLE `s_club_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_testament`
--

DROP TABLE IF EXISTS `s_club_testament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_testament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clubId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `memberId` varchar(32) NOT NULL,
  `isQuit` tinyint(1) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_testament`
--

LOCK TABLES `s_club_testament` WRITE;
/*!40000 ALTER TABLE `s_club_testament` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_testament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_club_timeline`
--

DROP TABLE IF EXISTS `s_club_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_club_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_id` bigint(20) NOT NULL,
  `feed_type` smallint(6) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `club_id` varchar(32) NOT NULL,
  `stamp` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_club_timeline`
--

LOCK TABLES `s_club_timeline` WRITE;
/*!40000 ALTER TABLE `s_club_timeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_club_timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_contact_us`
--

DROP TABLE IF EXISTS `s_contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(64) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `message` longtext,
  `status` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_contact_us`
--

LOCK TABLES `s_contact_us` WRITE;
/*!40000 ALTER TABLE `s_contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_favorite_route`
--

DROP TABLE IF EXISTS `s_favorite_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_favorite_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routeId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_favorite_route`
--

LOCK TABLES `s_favorite_route` WRITE;
/*!40000 ALTER TABLE `s_favorite_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_favorite_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_feedback`
--

DROP TABLE IF EXISTS `s_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `content` varchar(225) NOT NULL,
  `detail` longblob,
  `logId` varchar(128) DEFAULT NULL,
  `contact` longtext,
  `userId` varchar(32) NOT NULL,
  `appVersion` varchar(32) DEFAULT NULL,
  `sysVersion` varchar(32) DEFAULT NULL,
  `deviceModel` varchar(32) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_feedback`
--

LOCK TABLES `s_feedback` WRITE;
/*!40000 ALTER TABLE `s_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_fitting`
--

DROP TABLE IF EXISTS `s_fitting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_fitting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sex` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `weight` smallint(6) NOT NULL,
  `leg` smallint(6) NOT NULL,
  `body` smallint(6) NOT NULL,
  `shoulder` smallint(6) NOT NULL,
  `arm` smallint(6) NOT NULL,
  `ip` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_fitting`
--

LOCK TABLES `s_fitting` WRITE;
/*!40000 ALTER TABLE `s_fitting` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_fitting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_flow_recharge`
--

DROP TABLE IF EXISTS `s_flow_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_flow_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobilephone` varchar(32) NOT NULL,
  `status` smallint(6) NOT NULL,
  `capacity` bigint(20) DEFAULT NULL,
  `result` longtext NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_flow_recharge`
--

LOCK TABLES `s_flow_recharge` WRITE;
/*!40000 ALTER TABLE `s_flow_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_flow_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_gift`
--

DROP TABLE IF EXISTS `s_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `description` longtext NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` smallint(6) NOT NULL,
  `useDescription` longtext,
  `url` varchar(255) DEFAULT NULL,
  `imageId` varchar(32) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_gift`
--

LOCK TABLES `s_gift` WRITE;
/*!40000 ALTER TABLE `s_gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_idfa`
--

DROP TABLE IF EXISTS `s_idfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_idfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfa` varchar(64) NOT NULL,
  `status` smallint(6) NOT NULL,
  `source` varchar(16) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idfa` (`idfa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_idfa`
--

LOCK TABLES `s_idfa` WRITE;
/*!40000 ALTER TABLE `s_idfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_idfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_realeased`
--

DROP TABLE IF EXISTS `s_realeased`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_realeased` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `installUrl` varchar(255) NOT NULL,
  `packageSize` bigint(20) NOT NULL,
  `channel` varchar(64) NOT NULL,
  `versionName` varchar(64) NOT NULL,
  `versionCode` smallint(6) NOT NULL,
  `platform` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_realeased`
--

LOCK TABLES `s_realeased` WRITE;
/*!40000 ALTER TABLE `s_realeased` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_realeased` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_release_version`
--

DROP TABLE IF EXISTS `s_release_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_release_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(16) NOT NULL,
  `changeLog` longtext,
  `changeLogEn` longtext,
  `currentVersion` varchar(32) DEFAULT NULL,
  `targetVersion` varchar(32) NOT NULL,
  `versionCode` bigint(20) DEFAULT NULL,
  `downloadLink` varchar(200) NOT NULL,
  `language` varchar(16) DEFAULT NULL,
  `availableTime` datetime NOT NULL,
  `type` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_release_version`
--

LOCK TABLES `s_release_version` WRITE;
/*!40000 ALTER TABLE `s_release_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_release_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_route`
--

DROP TABLE IF EXISTS `s_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `distance` bigint(20) NOT NULL,
  `difficultyCoefficient` smallint(6) NOT NULL,
  `viewCoefficient` smallint(6) NOT NULL,
  `trafficCoefficient` smallint(6) NOT NULL,
  `mapId` varchar(255) DEFAULT NULL,
  `cityId` varchar(32) DEFAULT NULL,
  `coverId` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) NOT NULL,
  `name_en` varchar(64) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `followers` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `routeNodes` longtext NOT NULL,
  `fixed` smallint(6) DEFAULT NULL,
  `riseTotal` bigint(20) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_route`
--

LOCK TABLES `s_route` WRITE;
/*!40000 ALTER TABLE `s_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_route_comment`
--

DROP TABLE IF EXISTS `s_route_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_route_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `content` varchar(255) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `routeId` varchar(32) NOT NULL,
  `parentId` varchar(32) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_route_comment`
--

LOCK TABLES `s_route_comment` WRITE;
/*!40000 ALTER TABLE `s_route_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_route_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_route_follower`
--

DROP TABLE IF EXISTS `s_route_follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_route_follower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routeId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_route_follower`
--

LOCK TABLES `s_route_follower` WRITE;
/*!40000 ALTER TABLE `s_route_follower` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_route_follower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_route_node`
--

DROP TABLE IF EXISTS `s_route_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_route_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `keyNode` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `routeId` varchar(32) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` double NOT NULL,
  `ordinal` bigint(20) NOT NULL,
  `coordinate` varchar(128) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_route_node`
--

LOCK TABLES `s_route_node` WRITE;
/*!40000 ALTER TABLE `s_route_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_route_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_route_report`
--

DROP TABLE IF EXISTS `s_route_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_route_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(32) NOT NULL,
  `activityId` varchar(32) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_route_report`
--

LOCK TABLES `s_route_report` WRITE;
/*!40000 ALTER TABLE `s_route_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_route_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_route_views`
--

DROP TABLE IF EXISTS `s_route_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_route_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `ordinal` smallint(6) NOT NULL,
  `photo` longtext NOT NULL,
  `routeNodeId` varchar(32) NOT NULL,
  `coordinate` varchar(128) NOT NULL,
  `routeId` varchar(32) NOT NULL,
  `altitude` double NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_route_views`
--

LOCK TABLES `s_route_views` WRITE;
/*!40000 ALTER TABLE `s_route_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_route_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_sample`
--

DROP TABLE IF EXISTS `s_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `activityId` varchar(128) NOT NULL,
  `data` longblob NOT NULL,
  `sequence` smallint(6) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `fake` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  KEY `s_sample_1fd2fb60` (`activityId`),
  KEY `s_sample_c12a3c06` (`userId`),
  KEY `s_sample_bbd7b1da` (`activityId`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_sample`
--

LOCK TABLES `s_sample` WRITE;
/*!40000 ALTER TABLE `s_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_social_info`
--

DROP TABLE IF EXISTS `s_social_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_social_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(32) NOT NULL,
  `targetId` varchar(32) NOT NULL,
  `remarks` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_social_info`
--

LOCK TABLES `s_social_info` WRITE;
/*!40000 ALTER TABLE `s_social_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_social_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_social_request`
--

DROP TABLE IF EXISTS `s_social_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_social_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(32) NOT NULL,
  `receiver_id` varchar(32) NOT NULL,
  `status` smallint(6) NOT NULL,
  `extInfo` longtext NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_social_request_4d48eef1` (`sender_id`),
  KEY `s_social_request_8a194aea` (`sender_id`,`receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_social_request`
--

LOCK TABLES `s_social_request` WRITE;
/*!40000 ALTER TABLE `s_social_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_social_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_sport_route`
--

DROP TABLE IF EXISTS `s_sport_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_sport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `sportIdentify` varchar(128) NOT NULL,
  `calories` double NOT NULL,
  `speed` double NOT NULL,
  `baiduMap` tinyint(1) NOT NULL,
  `speedMax` double NOT NULL,
  `stopDate` datetime DEFAULT NULL,
  `time` double NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `fake` tinyint(1) NOT NULL,
  `nuked` tinyint(1) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `riseTotal` double NOT NULL,
  `userId` varchar(32) NOT NULL,
  `uphillDistance` double NOT NULL,
  `distance` double DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `cyclingImage_id` varchar(128) DEFAULT NULL,
  `segmentList` longtext,
  `source` varchar(64) DEFAULT NULL,
  `isPrivate` tinyint(1) NOT NULL,
  `appDistance` double DEFAULT NULL,
  `centralId` varchar(16) DEFAULT NULL,
  `cardiacRate` double DEFAULT NULL,
  `cardiacRateMax` double DEFAULT NULL,
  `cadence` double DEFAULT NULL,
  `cadenceMax` double DEFAULT NULL,
  `pfake` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  UNIQUE KEY `sportIdentify` (`sportIdentify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_sport_route`
--

LOCK TABLES `s_sport_route` WRITE;
/*!40000 ALTER TABLE `s_sport_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_sport_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_task`
--

DROP TABLE IF EXISTS `s_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `channels` longtext NOT NULL,
  `name` varchar(64) NOT NULL,
  `stopDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `coverId` varchar(32) DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `duration` smallint(6) NOT NULL,
  `giftId` varchar(32) DEFAULT NULL,
  `iconId` varchar(32) DEFAULT NULL,
  `theme` bigint(20) NOT NULL,
  `strategy` smallint(6) NOT NULL,
  `priority` smallint(6) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `record` bigint(20) NOT NULL,
  `followers` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_task`
--

LOCK TABLES `s_task` WRITE;
/*!40000 ALTER TABLE `s_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_task_award`
--

DROP TABLE IF EXISTS `s_task_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_task_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `awardStatus` tinyint(1) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `userTaskId` varchar(32) NOT NULL,
  `giftId` varchar(32) NOT NULL,
  `wechat` varchar(128) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `taskId` varchar(32) NOT NULL,
  `giftCard` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_task_award`
--

LOCK TABLES `s_task_award` WRITE;
/*!40000 ALTER TABLE `s_task_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_task_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_temp_table_1`
--

DROP TABLE IF EXISTS `s_temp_table_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_temp_table_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobilephone` varchar(128) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_temp_table_1`
--

LOCK TABLES `s_temp_table_1` WRITE;
/*!40000 ALTER TABLE `s_temp_table_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_temp_table_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_temp_table_2`
--

DROP TABLE IF EXISTS `s_temp_table_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_temp_table_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobilephone` varchar(128) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `cno` varchar(32) NOT NULL,
  `score` bigint(20) NOT NULL,
  `startTime` bigint(20) DEFAULT NULL,
  `likeList` longtext,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cno` (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_temp_table_2`
--

LOCK TABLES `s_temp_table_2` WRITE;
/*!40000 ALTER TABLE `s_temp_table_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_temp_table_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_unread`
--

DROP TABLE IF EXISTS `s_unread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_unread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(32) NOT NULL,
  `clubMsg` bigint(20) NOT NULL,
  `clubApply` smallint(6) NOT NULL,
  `clubShare` smallint(6) NOT NULL,
  `clubAct` bigint(20) NOT NULL,
  `clubApplyPass` smallint(6) NOT NULL,
  `follow` smallint(6) NOT NULL,
  `medal` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `s_unread_c12a3c06` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_unread`
--

LOCK TABLES `s_unread` WRITE;
/*!40000 ALTER TABLE `s_unread` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_unread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_account`
--

DROP TABLE IF EXISTS `s_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_account` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(32) NOT NULL,
  `third_key` varchar(128) DEFAULT NULL,
  `third_type` smallint(6) DEFAULT NULL,
  `authData` longtext,
  `salt` varchar(64) NOT NULL,
  `sessionToken` varchar(64) DEFAULT NULL,
  `emailVerified` tinyint(1) NOT NULL,
  `mobilePhoneNumber` varchar(128) DEFAULT NULL,
  `mobilePhoneVerified` tinyint(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `id` (`id`),
  KEY `s_user_account_2f2ae206` (`mobilePhoneNumber`),
  KEY `s_user_account_6b29b3e7` (`third_key`,`third_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_account`
--

LOCK TABLES `s_user_account` WRITE;
/*!40000 ALTER TABLE `s_user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_account_groups`
--

DROP TABLE IF EXISTS `s_user_account_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_account_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suser_id` (`suser_id`,`group_id`),
  KEY `s_user_account_groups_12fdf4ec` (`suser_id`),
  KEY `s_user_account_groups_5f412f9a` (`group_id`),
  CONSTRAINT `suser_id_refs_pk_id_41d234d7` FOREIGN KEY (`suser_id`) REFERENCES `s_user_account` (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_account_groups`
--

LOCK TABLES `s_user_account_groups` WRITE;
/*!40000 ALTER TABLE `s_user_account_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_account_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_account_user_permissions`
--

DROP TABLE IF EXISTS `s_user_account_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_account_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suser_id` (`suser_id`,`permission_id`),
  KEY `s_user_account_user_permissions_12fdf4ec` (`suser_id`),
  KEY `s_user_account_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `suser_id_refs_pk_id_748521cf` FOREIGN KEY (`suser_id`) REFERENCES `s_user_account` (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_account_user_permissions`
--

LOCK TABLES `s_user_account_user_permissions` WRITE;
/*!40000 ALTER TABLE `s_user_account_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_account_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_activity`
--

DROP TABLE IF EXISTS `s_user_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `activityId` varchar(32) NOT NULL,
  `activityListId` varchar(32) DEFAULT NULL,
  `userId` varchar(32) NOT NULL,
  `score` bigint(20) NOT NULL,
  `status` smallint(6) NOT NULL,
  `stopDate` datetime NOT NULL,
  `startDate` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_activity`
--

LOCK TABLES `s_user_activity` WRITE;
/*!40000 ALTER TABLE `s_user_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_auth`
--

DROP TABLE IF EXISTS `s_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `auth_type` smallint(6) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `auth_token` varchar(255) NOT NULL,
  `third_nick` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_user_auth_82ae9392` (`uid`),
  KEY `s_user_auth_a58197f6` (`auth_type`,`auth_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_auth`
--

LOCK TABLES `s_user_auth` WRITE;
/*!40000 ALTER TABLE `s_user_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_award`
--

DROP TABLE IF EXISTS `s_user_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `awardStatus` tinyint(1) NOT NULL,
  `userName` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `giftId` varchar(32) DEFAULT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `activityId` varchar(32) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_award`
--

LOCK TABLES `s_user_award` WRITE;
/*!40000 ALTER TABLE `s_user_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_badge`
--

DROP TABLE IF EXISTS `s_user_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_badge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(32) NOT NULL,
  `badgeId` bigint(20) NOT NULL,
  `activityId` bigint(20) DEFAULT NULL,
  `score` bigint(20) NOT NULL,
  `goal` bigint(20) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `lightDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_badge`
--

LOCK TABLES `s_user_badge` WRITE;
/*!40000 ALTER TABLE `s_user_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_badge_gift`
--

DROP TABLE IF EXISTS `s_user_badge_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_badge_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(32) NOT NULL,
  `giftId` bigint(20) NOT NULL,
  `lottoId` bigint(20) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `mobilephone` varchar(32) DEFAULT NULL,
  `address` longtext,
  `extInfo` longtext,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_badge_gift`
--

LOCK TABLES `s_user_badge_gift` WRITE;
/*!40000 ALTER TABLE `s_user_badge_gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_badge_gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_club`
--

DROP TABLE IF EXISTS `s_user_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `clubId` varchar(32) NOT NULL,
  `level` smallint(6) NOT NULL,
  `milestone` double NOT NULL,
  `score` double NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `clubChatNick` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  KEY `s_user_club_07224705` (`clubId`),
  KEY `s_user_club_c12a3c06` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_club`
--

LOCK TABLES `s_user_club` WRITE;
/*!40000 ALTER TABLE `s_user_club` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_club_act`
--

DROP TABLE IF EXISTS `s_user_club_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_club_act` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `actId` varchar(32) NOT NULL,
  `applyInfo` longtext NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `isSignIn` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  KEY `s_user_club_act_c12a3c06` (`userId`),
  KEY `s_user_club_act_26b35d82` (`userId`,`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_club_act`
--

LOCK TABLES `s_user_club_act` WRITE;
/*!40000 ALTER TABLE `s_user_club_act` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_club_act` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_grid`
--

DROP TABLE IF EXISTS `s_user_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_grid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `grid_id` bigint(20) NOT NULL,
  `count` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_grid`
--

LOCK TABLES `s_user_grid` WRITE;
/*!40000 ALTER TABLE `s_user_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_info`
--

DROP TABLE IF EXISTS `s_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speedx_id` bigint(20) DEFAULT NULL,
  `objectId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatarImageId` varchar(32) NOT NULL,
  `hasEdited` tinyint(1) NOT NULL,
  `email` varchar(128) NOT NULL,
  `sex` varchar(32) NOT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `area` varchar(128) DEFAULT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `weeklyDistance` double NOT NULL,
  `isOk` smallint(6) NOT NULL,
  `monthlyDistance` double NOT NULL,
  `totalDistance` double NOT NULL,
  `lastestCyclingTime` datetime DEFAULT NULL,
  `achievements` longtext NOT NULL,
  `goalDistance` double DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `geoCode` varchar(32) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`),
  UNIQUE KEY `userId` (`userId`),
  KEY `s_user_info_c12a3c06` (`userId`),
  KEY `s_user_info_70b73b7b` (`weeklyDistance`),
  KEY `s_user_info_80390379` (`monthlyDistance`),
  KEY `s_user_info_d25f93c8` (`totalDistance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_info`
--

LOCK TABLES `s_user_info` WRITE;
/*!40000 ALTER TABLE `s_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_task`
--

DROP TABLE IF EXISTS `s_user_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(32) NOT NULL,
  `stopDate` datetime NOT NULL,
  `startDate` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `record` double NOT NULL,
  `userId` varchar(32) NOT NULL,
  `taskId` varchar(32) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_task`
--

LOCK TABLES `s_user_task` WRITE;
/*!40000 ALTER TABLE `s_user_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-29 15:18:53
