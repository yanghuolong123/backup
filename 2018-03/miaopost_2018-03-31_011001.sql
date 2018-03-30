-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: zd_miaopost
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(65) NOT NULL COMMENT '名称',
  `sort` tinyint(1) NOT NULL COMMENT '排序',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'求购',0,0),(2,'出售',0,0),(3,'求租房',0,0),(4,'出租房',0,0),(5,'周边服务',0,0),(6,'其他',0,0);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_info`
--

DROP TABLE IF EXISTS `tbl_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) NOT NULL COMMENT '分类id',
  `content` varchar(5000) NOT NULL COMMENT '描述',
  `valid_day` int(11) NOT NULL COMMENT '有效天数',
  `email` varchar(128) NOT NULL COMMENT '发布人邮箱',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `views` int(11) NOT NULL COMMENT '查看数',
  `ip` varchar(15) NOT NULL COMMENT 'ip地址',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_info`
--

LOCK TABLES `tbl_info` WRITE;
/*!40000 ALTER TABLE `tbl_info` DISABLE KEYS */;
INSERT INTO `tbl_info` VALUES (30,2,'台灯，5刀，自取，电话4695798617,地址2780 N Hillbrier Cir, Plano 75075',5,'wenbo7zhao@gmail.com',-1,26,'','2018-03-20 10:58:16'),(31,2,'23寸液晶显示器，$60, 包括两种连接线。自取。2780 N Hillbrier Cir, plano 75075  电话4695798617（prefer text）',15,'wenbo7zhao@gmail.com',0,37,'','2018-03-22 05:21:34'),(32,1,'电视机',2,'',-1,16,'','2018-03-22 11:33:34'),(33,6,'Cricket Group Saving招人。话费每月$25，无限高速流量。\n详情请联系微信Chantvay或电话214-558-7352',10,'',0,5,'','2018-03-23 21:37:04'),(34,6,'讲座：数据科学家进阶之路',5,'',-1,18,'','2018-03-23 21:39:25'),(35,4,'好房出租，离UTD近，地理位置绝佳，房间设备家具一应俱全，欢迎联系（电话在图片）',10,'',0,52,'','2018-03-23 21:43:49'),(36,2,'moving sale,多买多送',7,'',-1,33,'','2018-03-23 23:53:03'),(37,6,'冠軍奶茶\n\n冠軍招人 誠徵週6,日班  工作環境清鬆,包吃,包喝,氣氛好待會優, 快樂打工的不二選擇 有興趣請私訊.                                                                                                                                                                                                                                                                                          \n台灣美食,冠軍美味\n️：469-361-3688\n..微信：championgourmet\n..地址：151 W Spring Creek Pkwy, Ste 517, Plano TX 75023（招牌：「Champion Gourmet 」）',8,'',0,21,'','2018-03-23 23:54:33'),(38,2,'出售 14年购入dell台式机 Inspiron 3847,  CPU i3-4150, 内存 12G(4G+8G) 硬盘500g   220刀\nEVGA GTX 750Ti 显卡                 110刀\nBenq GW2255 显示器                  70刀\n可打包，可分售，可小刀\n\n有意请加 QQ 252251143 或者短信联系469-888-3466',0,'',0,22,'','2018-03-23 23:55:15'),(39,3,'求暑期在Dallas东北部临近8150 N Central Expy的sublease，5-8月的时间。单间或合租都可以，合租是有希望可以是女生。联系：电话短信2179797361，或者微信wyhwechat',5,'',-1,18,'','2018-03-23 23:56:12'),(40,6,'招人啦，达拉斯wholesale company 招staff accountant. 可以CPT, OPT，也可sponsor H1B . 简历发jinjiangbingguan@gmail.com',10,'',0,32,'','2018-03-23 23:56:49'),(41,2,'出台灯火锅空气炸锅保温杯面膜，有意者请加微信nicoleniu0619或短信4696262158，谢谢',5,'',-1,25,'','2018-03-23 23:57:58'),(42,4,'出租coppell的次卧一间～～',6,'',-1,34,'','2018-03-23 23:59:10'),(43,2,'Moving sale请短信2149069368',30,'m455138914@gmail.com',0,108,'','2018-03-24 00:28:00'),(44,4,'Wplano house 大侧卧招租：\n位于Custer和w parker交界处。去UTD，99 ranch 均为 10分钟。邻居nice，neighborhood安全，附近有kroger丶Walmart丶chase，gas station丶餐馆。生活方便。房间里有大walk in的衣柜，配大床，书桌，椅子。拎包入住。室友都是UTD女生，在读或刚毕业。house公共区域定期有人打扫。【ONLY女生】一楼侧卧，两人share卫生间。房间带两个大窗户。实木地板丶4月14日可入住。房租500 电气。希望你：爱干净，单身，无宠物丶不抽烟联系方式：微信：stephanie9484，备注：租房',5,'',-1,24,'','2018-03-24 02:29:25'),(45,2,'Instant pot 7-in-1 9成新',10,'Janeheng0125@gmail.com',0,26,'','2018-03-24 02:30:42'),(46,2,'出一个pad',3,'',-1,24,'','2018-03-24 02:31:58'),(47,2,'9成新电压力锅 50刀可小刀',10,'Janeheng0125@gmail.com',0,23,'','2018-03-24 02:32:18'),(48,2,'',0,'',0,33,'','2018-03-24 02:49:25'),(49,2,'出售立式晾衣架 木的10刀 金属的15刀，9成新坚固耐用 短信联系4697021359',10,'',0,22,'','2018-03-24 03:15:50'),(50,4,'Plano house招租\n两间卧室招室友，一间五月入住，另一间六月可以入住，都带独立卫生间，男女不限，家具齐全，拎包入住，$550包水电网\n位置: Independence pkwy与Hedgcoxe Rd交汇附近。\n短信：(469) 288-9545',5,'',-1,36,'','2018-03-24 03:38:04'),(51,2,'回国卖车，红色',7,'',0,62,'','2018-03-24 03:41:52'),(52,2,'9成新 面试上班好伙伴，出售熨衣板 大的12刀 小的8刀 text: 469-702-1359',10,'',0,24,'','2018-03-24 04:17:55'),(53,2,'卖车\n2009 Nissan Versa\nClean title\n55800 miles\n刚刚保养过\n有兴趣的请联系 6269058308',45,'jade01.liu@gmail.com',0,50,'','2018-03-24 06:18:55'),(54,4,'MQ小区3B2B出租侧卧 (室友是2名accounting在读的女生~)\n时间6月-8月中(5月底要入住也可以)\n带家具.洗衣机.烘干机 拎包入住即可~',30,'shellychen1016@hotmail.com',0,37,'','2018-03-24 07:53:42'),(55,2,'挥泪甩卖爱车',30,'rayechen@outlook.com',0,58,'','2018-03-24 10:24:14'),(56,2,'爱车甩卖469-450-1605（短信）',30,'',0,65,'','2018-03-24 10:28:11'),(57,4,'达拉斯阿灵顿和大草原之间公寓带卫生间主卧出租，Silverbrook Apartments, 2934 Alouette Dr, Grand Prairie, TX 75052，靠近360，拎包即住，电话：6265603539',5,'',-1,18,'','2018-03-24 22:18:53'),(58,4,'回国转租',5,'',-1,36,'','2018-03-24 22:20:38'),(59,2,'morning sale ',3,'',-1,18,'','2018-03-24 22:23:04'),(60,4,'侧卧招租',6,'',-1,31,'','2018-03-24 22:27:39'),(61,2,'moving sale',7,'',0,47,'','2018-03-25 00:04:09'),(62,4,'2B2B超豪华全新公寓转租',30,'tianqi.zhu6666@gmail.com',0,45,'','2018-03-25 00:13:44'),(63,6,'【CS讲座最后报名机会】请提前报名获取注册链接！\n\n',10,'',0,17,'','2018-03-25 04:55:28'),(64,2,'MQ自取',3,'',-1,52,'','2018-03-25 04:56:59'),(65,4,'找室友，4月1日可入住，水电网全包，有家具，环境好，house内的二楼，到UTD15分钟，附近商场多。大的bathroom两人share，有保卫。$500/month。请电或text 972-890-6081',15,'Lin.da201360@yahoo.com',0,38,'','2018-03-25 06:25:16'),(66,1,'描述：求购一个电高压锅\n联系方式：wechat ：F663300953\n电话：972-854-8645 prefer text\n                ',10,'wenbo7zhao@gmail.com',0,10,'','2018-03-26 21:34:34'),(67,4,'描述：Allen近outlets侧卧招租，1分钟上75交通便利，周围有各种超市电影院，到大华百佳7分钟。\n价格：550+水电网\n地址：\n联系方式：微信719130896 或者短信4692371512\n                ',10,'',0,17,'','2018-03-27 00:48:18'),(68,4,'描述：Village Chase,2b2b的主卧，平均750-780一个月包括水电网，五月20号-6月初开始，步行SMU校车站只需3分钟，有家具，需要的话就便宜卖你，不要的话我就提前卖掉，室友是女生，平米大隔音好不会互相打扰，lease是8月份到期，到时候你可以和室友商量继续租这个或者继续一起租别的，我要搬离达拉斯所以提前出手。\n价格：760usd\n地址：Chase in the village\n联系方式：214-914-1739\n                ',60,'zhenhuaen@hotmail.com',0,15,'','2018-03-27 01:04:06'),(69,1,'描述：求购停车牌，黄牌或橙牌都可以。\n价格：\n地址：\n联系方式：4695435807\n                ',40,'443617943@qq.com',0,13,'','2018-03-27 01:37:50'),(70,2,'描述：出一个Mattag Bravos 八成新滚筒洗衣机，容量大功能多，可定时可分冷热水，各种高大上，吐血大甩卖，只需要能自取。\n价格：115\n地址：\n联系方式：4695435807 微信xiangjiao443617943\n                ',50,'443617943@qq.com',0,29,'','2018-03-27 01:46:35'),(71,4,'\nUTD南面单间出租。走路上学超级近。\n现有租客全部男生 \n\n房间1和2:\n地址1902 deep valley Dr. richardson TX 侧卧需要share卫生间五月底入住。550每月。主卧单独卫生间五月初入住 650每月\n\n\n房间3:\n地址1813 floyd Rd richardson TX\n拥有独立卫生间新装修卧室立刻可以入住。 650每月。\n\n水电网全包。卫生干净  家具齐全。冰箱两台，洗衣机烘干机都有。要求少炊。联系电话‪2148644988‬或添加微信ss214911188注明租房。 ',30,'',0,20,'','2018-03-27 04:44:01'),(72,6,'招工啦。McKinney 一家华人公司招part time会计，要求每月完成会计报表，报税。每周工作半天，每小时15刀。可办CPT, OPT。联系电话，972-210-9726\n微信：HKelectronicstock\n                ',30,'tai158158@gmail.com',0,29,'','2018-03-27 07:44:37'),(73,4,'【公寓短租】Preston Rd上面1B1B户型整套Apt招租，坐北朝南，采光好，带大客厅和阳台，家具厨具齐全，拎包入住。（可带宠物）\n【周边】小区恬静安全，环境整洁干净，有泳池和健身房，公寓管理人员态度友好，服务高效。位于Preston Rd & George Bush。4分钟到Walmart，3分钟到Tom Thumb。去utd 12 分钟，\n【设备】全新的厨房家电，洗衣机烘干机，房租每月855，另加电费网费。欢迎爱干净的朋友来预约看房。\n【时间】5月8号至8月20\n\n微信: magiclily2012 或手机: 972-302-7341',60,'wenhaowang@ymail.com',0,28,'','2018-03-27 10:50:22'),(74,6,'描述：求租一套master毕业服155-160cm\n价格：20-35\n地址：\n联系方式：微信：342485921\n                ',38,'dtt1231@gmail.com',0,15,'','2018-03-28 03:32:38'),(75,3,'描述：暑假到Richardson实习，求租房，租期5月中到8月中。工作在Fossil总部，希望离公司越近越好。本人男，今年研一，无不良嗜好。联系方式微信或电话。\n价格：$500-700\n地址：Richardson南部， 最好901 S Central Expy附近\n联系方式：微信号：yzx666/电话： 5132383964\n                ',5,'zixuanyang0514@outlook.com',0,28,'','2018-03-28 10:08:09'),(76,3,'诚招室友！本人是utd cs17fall的同学 目前看上了一套在校车东线小区pcv的一套3b2b的房子 带两个车库   目前只需要1666就可以租下来 性价比非常高  想召集两名室友！\n\n联系方式：4699290258\n                ',0,'',0,23,'','2018-03-29 01:39:19'),(77,2,'描述：#卖车#\n2013 Toyota RAV4 XLE，购于Toyota  ，Certified Used Car，黑色，有倒车影像 天窗 蓝牙，Clean Title， 里程不到3万迈。\n价格：$18500 可议价\n地址：Plano\n联系方式：电话：469-642-4154\n微信：342929375\n                ',0,'9090zn@gmail.com',0,17,'','2018-03-29 04:05:24'),(78,2,'描述：全新天文望远镜 amazon四星好评\n价格：50\n地址：utd\n联系方式：3184971651\n                ',30,'',0,14,'','2018-03-29 05:18:14'),(79,4,'描述：\n价格：\n地址：\n联系方式：\n                ',3,'qiaoqiao504@hotmail.com',0,25,'','2018-03-29 05:19:18'),(80,2,'描述：moving sale\n价格：\n地址：9050 markville dr. dallas\n联系方式：2148099566\n                ',0,'xmj91616@gmail.com',0,25,'','2018-03-29 05:27:36'),(81,1,'描述：\n价格：\n地址：\n联系方式：\n                ',0,'',-1,7,'','2018-03-29 08:52:01'),(82,6,'描述：寻学生兼职 男女不限\n价格：$300-$500/天\n地址：各大mall\n联系方式：Y20180103C\n                ',0,'',-1,29,'','2018-03-29 11:41:40'),(83,6,'描述：寻学生兼职 男女不限\n价格：$300-$500/天\n地址：各大mall\n联系方式：Y20180103C\n                ',0,'',-1,6,'','2018-03-29 11:41:54'),(84,2,'描述：毕业卖车\n价格：7700\n地址：UTD附近\n联系方式：4696424042\n                ',45,'alicehangingout@hotmail.com',0,16,'72.190.51.210','2018-03-30 10:51:50'),(85,3,'Las Colinas/grapevine求租 \n上班女生，无宠物，无不良嗜好，爱干净，少炊，希望可以有独立bathroom。想找Las Colinas/grapevine附近的homestay或者2B2B 合租(女生only)。\n联系方式：4695713841\n                ',30,'juliet1hu@gmail.com',0,7,'166.137.118.59','2018-03-30 23:33:46');
/*!40000 ALTER TABLE `tbl_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_photo`
--

DROP TABLE IF EXISTS `tbl_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `info_id` int(11) NOT NULL COMMENT '信息id',
  `url` varchar(128) NOT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='图片';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_photo`
--

LOCK TABLES `tbl_photo` WRITE;
/*!40000 ALTER TABLE `tbl_photo` DISABLE KEYS */;
INSERT INTO `tbl_photo` VALUES (15,30,'/uploads/2018/3/20/201803201056214596.jpg'),(16,31,'/uploads/2018/3/22/201803220518386374.jpg'),(17,31,'/uploads/2018/3/22/201803220519012326.jpg'),(18,34,'/uploads/2018/3/23/201803232138546374.jpg'),(19,35,'/uploads/2018/3/23/201803232143342326.jpg'),(20,36,'/uploads/2018/3/23/201803232352506374.jpg'),(21,41,'/uploads/2018/3/23/201803232357532326.jpg'),(22,42,'/uploads/2018/3/23/201803232359018434.jpg'),(23,43,'/uploads/2018/3/24/201803240027323513.jpeg'),(24,45,'/uploads/2018/3/24/201803240229244088.JPG'),(25,46,'/uploads/2018/3/24/201803240231504108.jpg'),(26,47,'/uploads/2018/3/24/201803240232022642.JPG'),(27,48,'/uploads/2018/3/24/201803240249094927.JPG'),(28,48,'/uploads/2018/3/24/201803240249091628.JPG'),(29,49,'/uploads/2018/3/24/201803240314099167.JPG'),(30,51,'/uploads/2018/3/24/201803240341291753.jpg'),(31,51,'/uploads/2018/3/24/201803240341436389.jpg'),(32,52,'/uploads/2018/3/24/201803240416069290.JPG'),(33,52,'/uploads/2018/3/24/201803240416366260.JPG'),(34,53,'/uploads/2018/3/24/201803240613326982.jpeg'),(35,53,'/uploads/2018/3/24/201803240614108582.jpeg'),(36,53,'/uploads/2018/3/24/201803240614251711.jpeg'),(37,53,'/uploads/2018/3/24/201803240615528877.jpeg'),(38,55,'/uploads/2018/3/24/201803241021238169.jpeg'),(39,55,'/uploads/2018/3/24/201803241021314743.jpeg'),(40,55,'/uploads/2018/3/24/201803241021386156.jpeg'),(41,55,'/uploads/2018/3/24/201803241021465316.jpeg'),(42,55,'/uploads/2018/3/24/201803241021556679.jpeg'),(43,55,'/uploads/2018/3/24/201803241022043739.jpeg'),(44,56,'/uploads/2018/3/24/201803241027295760.jpeg'),(45,56,'/uploads/2018/3/24/201803241027358215.jpeg'),(46,56,'/uploads/2018/3/24/201803241027411049.jpeg'),(47,56,'/uploads/2018/3/24/201803241027469024.jpeg'),(48,56,'/uploads/2018/3/24/201803241027533412.jpeg'),(49,56,'/uploads/2018/3/24/201803241028007763.jpeg'),(50,58,'/uploads/2018/3/24/201803242220328581.jpg'),(51,59,'/uploads/2018/3/24/201803242222596638.jpg'),(52,60,'/uploads/2018/3/24/201803242227344348.jpg'),(53,61,'/uploads/2018/3/25/201803250003527692.jpg'),(54,61,'/uploads/2018/3/25/201803250004002086.jpg'),(55,62,'/uploads/2018/3/25/201803250012496622.png'),(56,63,'/uploads/2018/3/25/201803250455174127.jpg'),(57,64,'/uploads/2018/3/25/201803250456535433.jpg'),(58,70,'/uploads/2018/3/27/201803270144204088.JPG'),(59,70,'/uploads/2018/3/27/201803270144301891.JPG'),(60,70,'/uploads/2018/3/27/201803270144374596.JPG'),(61,70,'/uploads/2018/3/27/201803270144552642.JPG'),(62,70,'/uploads/2018/3/27/201803270145026674.JPG'),(63,73,'/uploads/2018/3/27/201803271050111753.jpg'),(64,75,'/uploads/2018/3/28/201803281008058434.JPG'),(65,77,'/uploads/2018/3/29/201803290404256218.JPG'),(66,78,'/uploads/2018/3/29/201803290517194596.png'),(67,79,'/uploads/2018/3/29/201803290518264108.jpg'),(68,80,'/uploads/2018/3/29/201803290527094927.JPG'),(69,80,'/uploads/2018/3/29/201803290527141628.jpg'),(70,84,'/uploads/2018/3/30/201803301051262326.jpeg');
/*!40000 ALTER TABLE `tbl_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_suggest`
--

DROP TABLE IF EXISTS `tbl_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `info_id` int(11) NOT NULL COMMENT '信息id',
  `ip` varchar(15) NOT NULL COMMENT 'ip地址',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='建议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_suggest`
--

LOCK TABLES `tbl_suggest` WRITE;
/*!40000 ALTER TABLE `tbl_suggest` DISABLE KEYS */;
INSERT INTO `tbl_suggest` VALUES (2,43,'129.110.241.62','','2018-03-24 01:53:09'),(4,54,'114.246.93.240','','2018-03-24 09:30:01'),(7,55,'47.185.249.127','','2018-03-24 10:44:13'),(9,65,'114.246.93.240','','2018-03-25 16:15:35'),(10,63,'129.110.241.71','','2018-03-27 03:17:45'),(11,65,'47.183.192.237','','2018-03-27 04:15:05'),(12,64,'107.242.113.6','','2018-03-27 04:19:19'),(13,64,'107.242.113.6','','2018-03-27 04:19:22'),(16,81,'99.37.205.225','','2018-03-29 08:58:44'),(25,82,'123.124.206.69','','2018-03-29 12:19:37'),(26,82,'107.242.113.10','','2018-03-29 21:06:43'),(27,82,'47.186.35.80','','2018-03-29 22:13:28'),(28,80,'47.186.35.80','','2018-03-29 22:29:39'),(29,82,'107.242.113.10','','2018-03-30 04:48:00');
/*!40000 ALTER TABLE `tbl_suggest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-31  1:10:01
