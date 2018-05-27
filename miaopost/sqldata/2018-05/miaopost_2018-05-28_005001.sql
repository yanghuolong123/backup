-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: zd_miaopost
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

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
-- Table structure for table `tbl_administrator`
--

DROP TABLE IF EXISTS `tbl_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `username` varchar(65) NOT NULL COMMENT '用户名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `last_logintime` datetime NOT NULL COMMENT '最近登陆时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_administrator`
--

LOCK TABLES `tbl_administrator` WRITE;
/*!40000 ALTER TABLE `tbl_administrator` DISABLE KEYS */;
INSERT INTO `tbl_administrator` VALUES (1,'yhl27ml@126.com','90b4953bb5bdf3ebf3fa0a59dce440ad','2018-04-07 00:41:57');
/*!40000 ALTER TABLE `tbl_administrator` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_info`
--

LOCK TABLES `tbl_info` WRITE;
/*!40000 ALTER TABLE `tbl_info` DISABLE KEYS */;
INSERT INTO `tbl_info` VALUES (30,2,'台灯，5刀，自取，电话4695798617,地址2780 N Hillbrier Cir, Plano 75075',5,'wenbo7zhao@gmail.com',-1,26,'','2018-03-20 10:58:16'),(31,2,'23寸液晶显示器，$60, 包括两种连接线。自取。2780 N Hillbrier Cir, plano 75075  电话4695798617（prefer text）',15,'wenbo7zhao@gmail.com',-1,43,'','2018-03-22 05:21:34'),(32,1,'电视机',2,'',-1,16,'','2018-03-22 11:33:34'),(33,6,'Cricket Group Saving招人。话费每月$25，无限高速流量。\n详情请联系微信Chantvay或电话214-558-7352',10,'',-1,13,'','2018-03-23 21:37:04'),(34,6,'讲座：数据科学家进阶之路',5,'',-1,18,'','2018-03-23 21:39:25'),(35,4,'好房出租，离UTD近，地理位置绝佳，房间设备家具一应俱全，欢迎联系（电话在图片）',10,'',-1,65,'','2018-03-23 21:43:49'),(36,2,'moving sale,多买多送',7,'',-1,33,'','2018-03-23 23:53:03'),(37,6,'冠軍奶茶\n\n冠軍招人 誠徵週6,日班  工作環境清鬆,包吃,包喝,氣氛好待會優, 快樂打工的不二選擇 有興趣請私訊.                                                                                                                                                                                                                                                                                          \n台灣美食,冠軍美味\n️：469-361-3688\n..微信：championgourmet\n..地址：151 W Spring Creek Pkwy, Ste 517, Plano TX 75023（招牌：「Champion Gourmet 」）',8,'',-1,22,'','2018-03-23 23:54:33'),(38,2,'出售 14年购入dell台式机 Inspiron 3847,  CPU i3-4150, 内存 12G(4G+8G) 硬盘500g   220刀\nEVGA GTX 750Ti 显卡                 110刀\nBenq GW2255 显示器                  70刀\n可打包，可分售，可小刀\n\n有意请加 QQ 252251143 或者短信联系469-888-3466',0,'',0,30,'','2018-03-23 23:55:15'),(39,3,'求暑期在Dallas东北部临近8150 N Central Expy的sublease，5-8月的时间。单间或合租都可以，合租是有希望可以是女生。联系：电话短信2179797361，或者微信wyhwechat',5,'',-1,18,'','2018-03-23 23:56:12'),(40,6,'招人啦，达拉斯wholesale company 招staff accountant. 可以CPT, OPT，也可sponsor H1B . 简历发jinjiangbingguan@gmail.com',10,'',-1,40,'','2018-03-23 23:56:49'),(41,2,'出台灯火锅空气炸锅保温杯面膜，有意者请加微信nicoleniu0619或短信4696262158，谢谢',5,'',-1,25,'','2018-03-23 23:57:58'),(42,4,'出租coppell的次卧一间～～',6,'',-1,34,'','2018-03-23 23:59:10'),(43,2,'Moving sale请短信2149069368',30,'m455138914@gmail.com',0,119,'','2018-03-24 00:28:00'),(44,4,'Wplano house 大侧卧招租：\n位于Custer和w parker交界处。去UTD，99 ranch 均为 10分钟。邻居nice，neighborhood安全，附近有kroger丶Walmart丶chase，gas station丶餐馆。生活方便。房间里有大walk in的衣柜，配大床，书桌，椅子。拎包入住。室友都是UTD女生，在读或刚毕业。house公共区域定期有人打扫。【ONLY女生】一楼侧卧，两人share卫生间。房间带两个大窗户。实木地板丶4月14日可入住。房租500 电气。希望你：爱干净，单身，无宠物丶不抽烟联系方式：微信：stephanie9484，备注：租房',5,'',-1,24,'','2018-03-24 02:29:25'),(45,2,'Instant pot 7-in-1 9成新',10,'Janeheng0125@gmail.com',-1,31,'','2018-03-24 02:30:42'),(46,2,'出一个pad',3,'',-1,24,'','2018-03-24 02:31:58'),(47,2,'9成新电压力锅 50刀可小刀',10,'Janeheng0125@gmail.com',-1,29,'','2018-03-24 02:32:18'),(48,2,'',0,'',0,42,'','2018-03-24 02:49:25'),(49,2,'出售立式晾衣架 木的10刀 金属的15刀，9成新坚固耐用 短信联系4697021359',10,'',-1,26,'','2018-03-24 03:15:50'),(50,4,'Plano house招租\n两间卧室招室友，一间五月入住，另一间六月可以入住，都带独立卫生间，男女不限，家具齐全，拎包入住，$550包水电网\n位置: Independence pkwy与Hedgcoxe Rd交汇附近。\n短信：(469) 288-9545',5,'',-1,36,'','2018-03-24 03:38:04'),(51,2,'回国卖车，红色',7,'',-1,65,'','2018-03-24 03:41:52'),(52,2,'9成新 面试上班好伙伴，出售熨衣板 大的12刀 小的8刀 text: 469-702-1359',10,'',-1,25,'','2018-03-24 04:17:55'),(53,2,'卖车\n2009 Nissan Versa\nClean title\n55800 miles\n刚刚保养过\n有兴趣的请联系 6269058308',45,'jade01.liu@gmail.com',0,67,'','2018-03-24 06:18:55'),(54,4,'MQ小区3B2B出租侧卧 (室友是2名accounting在读的女生~)\n时间6月-8月中(5月底要入住也可以)\n带家具.洗衣机.烘干机 拎包入住即可~',30,'shellychen1016@hotmail.com',0,47,'','2018-03-24 07:53:42'),(55,2,'挥泪甩卖爱车',30,'rayechen@outlook.com',0,85,'','2018-03-24 10:24:14'),(56,2,'爱车甩卖469-450-1605（短信）',30,'',0,101,'','2018-03-24 10:28:11'),(57,4,'达拉斯阿灵顿和大草原之间公寓带卫生间主卧出租，Silverbrook Apartments, 2934 Alouette Dr, Grand Prairie, TX 75052，靠近360，拎包即住，电话：6265603539',5,'',-1,19,'','2018-03-24 22:18:53'),(58,4,'回国转租',5,'',-1,36,'','2018-03-24 22:20:38'),(59,2,'morning sale ',3,'',-1,18,'','2018-03-24 22:23:04'),(60,4,'侧卧招租',6,'',-1,32,'','2018-03-24 22:27:39'),(61,2,'moving sale',7,'',-1,54,'','2018-03-25 00:04:09'),(62,4,'2B2B超豪华全新公寓转租',30,'tianqi.zhu6666@gmail.com',0,67,'','2018-03-25 00:13:44'),(63,6,'【CS讲座最后报名机会】请提前报名获取注册链接！\n\n',10,'',-1,19,'','2018-03-25 04:55:28'),(64,2,'MQ自取',3,'',-1,53,'','2018-03-25 04:56:59'),(65,4,'找室友，4月1日可入住，水电网全包，有家具，环境好，house内的二楼，到UTD15分钟，附近商场多。大的bathroom两人share，有保卫。$500/month。请电或text 972-890-6081',15,'Lin.da201360@yahoo.com',-1,62,'','2018-03-25 06:25:16'),(66,1,'描述：求购一个电高压锅\n联系方式：wechat ：F663300953\n电话：972-854-8645 prefer text\n                ',10,'wenbo7zhao@gmail.com',-1,17,'','2018-03-26 21:34:34'),(67,4,'描述：Allen近outlets侧卧招租，1分钟上75交通便利，周围有各种超市电影院，到大华百佳7分钟。\n价格：550+水电网\n地址：\n联系方式：微信719130896 或者短信4692371512\n                ',10,'',-1,27,'','2018-03-27 00:48:18'),(68,4,'描述：Village Chase,2b2b的主卧，平均750-780一个月包括水电网，五月20号-6月初开始，步行SMU校车站只需3分钟，有家具，需要的话就便宜卖你，不要的话我就提前卖掉，室友是女生，平米大隔音好不会互相打扰，lease是8月份到期，到时候你可以和室友商量继续租这个或者继续一起租别的，我要搬离达拉斯所以提前出手。\n价格：760usd\n地址：Chase in the village\n联系方式：214-914-1739\n                ',60,'zhenhuaen@hotmail.com',0,33,'','2018-03-27 01:04:06'),(69,1,'描述：求购停车牌，黄牌或橙牌都可以。\n价格：\n地址：\n联系方式：4695435807\n                ',40,'443617943@qq.com',0,20,'','2018-03-27 01:37:50'),(70,2,'描述：出一个Mattag Bravos 八成新滚筒洗衣机，容量大功能多，可定时可分冷热水，各种高大上，吐血大甩卖，只需要能自取。\n价格：115\n地址：\n联系方式：4695435807 微信xiangjiao443617943\n                ',50,'443617943@qq.com',0,52,'','2018-03-27 01:46:35'),(71,4,'\nUTD南面单间出租。走路上学超级近。\n现有租客全部男生 \n\n房间1和2:\n地址1902 deep valley Dr. richardson TX 侧卧需要share卫生间五月底入住。550每月。主卧单独卫生间五月初入住 650每月\n\n\n房间3:\n地址1813 floyd Rd richardson TX\n拥有独立卫生间新装修卧室立刻可以入住。 650每月。\n\n水电网全包。卫生干净  家具齐全。冰箱两台，洗衣机烘干机都有。要求少炊。联系电话‪2148644988‬或添加微信ss214911188注明租房。 ',30,'',0,50,'','2018-03-27 04:44:01'),(72,6,'招工啦。McKinney 一家华人公司招part time会计，要求每月完成会计报表，报税。每周工作半天，每小时15刀。可办CPT, OPT。联系电话，972-210-9726\n微信：HKelectronicstock\n                ',30,'tai158158@gmail.com',0,53,'','2018-03-27 07:44:37'),(73,4,'【公寓短租】Preston Rd上面1B1B户型整套Apt招租，坐北朝南，采光好，带大客厅和阳台，家具厨具齐全，拎包入住。（可带宠物）\n【周边】小区恬静安全，环境整洁干净，有泳池和健身房，公寓管理人员态度友好，服务高效。位于Preston Rd & George Bush。4分钟到Walmart，3分钟到Tom Thumb。去utd 12 分钟，\n【设备】全新的厨房家电，洗衣机烘干机，房租每月855，另加电费网费。欢迎爱干净的朋友来预约看房。\n【时间】5月8号至8月20\n\n微信: magiclily2012 或手机: 972-302-7341',60,'wenhaowang@ymail.com',0,53,'','2018-03-27 10:50:22'),(74,6,'描述：求租一套master毕业服155-160cm\n价格：20-35\n地址：\n联系方式：微信：342485921\n                ',38,'dtt1231@gmail.com',0,24,'','2018-03-28 03:32:38'),(75,3,'描述：暑假到Richardson实习，求租房，租期5月中到8月中。工作在Fossil总部，希望离公司越近越好。本人男，今年研一，无不良嗜好。联系方式微信或电话。\n价格：$500-700\n地址：Richardson南部， 最好901 S Central Expy附近\n联系方式：微信号：yzx666/电话： 5132383964\n                ',5,'zixuanyang0514@outlook.com',-1,39,'','2018-03-28 10:08:09'),(76,3,'诚招室友！本人是utd cs17fall的同学 目前看上了一套在校车东线小区pcv的一套3b2b的房子 带两个车库   目前只需要1666就可以租下来 性价比非常高  想召集两名室友！\n\n联系方式：4699290258\n                ',0,'',0,58,'','2018-03-29 01:39:19'),(77,2,'描述：#卖车#\n2013 Toyota RAV4 XLE，购于Toyota  ，Certified Used Car，黑色，有倒车影像 天窗 蓝牙，Clean Title， 里程不到3万迈。\n价格：$18500 可议价\n地址：Plano\n联系方式：电话：469-642-4154\n微信：342929375\n                ',0,'9090zn@gmail.com',0,38,'','2018-03-29 04:05:24'),(78,2,'描述：全新天文望远镜 amazon四星好评\n价格：50\n地址：utd\n联系方式：3184971651\n                ',30,'',0,27,'','2018-03-29 05:18:14'),(79,4,'描述：\n价格：\n地址：\n联系方式：\n                ',3,'qiaoqiao504@hotmail.com',-1,28,'','2018-03-29 05:19:18'),(80,2,'描述：moving sale\n价格：\n地址：9050 markville dr. dallas\n联系方式：2148099566\n                ',0,'xmj91616@gmail.com',0,72,'','2018-03-29 05:27:36'),(81,1,'描述：\n价格：\n地址：\n联系方式：\n                ',0,'',-1,7,'','2018-03-29 08:52:01'),(82,6,'描述：寻学生兼职 男女不限\n价格：$300-$500/天\n地址：各大mall\n联系方式：Y20180103C\n                ',0,'',-1,29,'','2018-03-29 11:41:40'),(83,6,'描述：寻学生兼职 男女不限\n价格：$300-$500/天\n地址：各大mall\n联系方式：Y20180103C\n                ',0,'',-1,6,'','2018-03-29 11:41:54'),(84,2,'描述：毕业卖车\n价格：7700\n地址：UTD附近\n联系方式：4696424042\n                ',45,'alicehangingout@hotmail.com',0,69,'72.190.51.210','2018-03-30 10:51:50'),(85,3,'Las Colinas/grapevine求租 \n上班女生，无宠物，无不良嗜好，爱干净，少炊，希望可以有独立bathroom。想找Las Colinas/grapevine附近的homestay或者2B2B 合租(女生only)。\n联系方式：4695713841\n                ',30,'juliet1hu@gmail.com',0,23,'166.137.118.59','2018-03-30 23:33:46'),(86,2,'描述：Huawei Watch2, best buy 购入，使用半年，基本全新， IOS和安卓系统都可以使用。\n价格：150（可小刀）\n地址：17811 Vail Street\n联系方式：4695437276(prefer text)\n                ',30,'zhangrunze1508@outlook.com',0,23,'72.190.57.87','2018-03-31 11:44:02'),(87,4,'描述：Plano小区2b2b其中一间暑期短租，家具齐全，独立卫浴，拎包入住。\n价格：$550全包\n地址：1201 E Park Blvd，Plano\n联系方式：Text：4695437273\n                ',7,'wggmat800@gmail.com',-1,40,'70.119.76.252','2018-03-31 14:30:59'),(88,5,'Hello 大家好\n在海外求学的你，是否有时有种千金难买早知道，万般无奈没想到的惆怅?\nOverseas Student Outreach Platform (OSOP) 由一群海外留学生组成，由于深刻体会异乡学子求职艰辛，因此成立提供海外留学生职场互动机会及探讨主流专业导向的平台，希望使来自异乡的你能在美国遍地开花!\n近期将举办一场Career Seminar，邀请5位讲者分别来自Accounting、SCM、Marketing、CS及Law等不同领域分享自身求职经验。活动将以round table形式进行，让大家能与讲者有交流互动的机会，藉由问与答的过程中，找到人生的下一步! 不论你来自哪个科系，都欢迎一同参与! 活动相关资讯与报名连结如下:\nhttps://goo.gl/forms/Th4jvWyaTHJHIDGs2\n\nAddress: 400 N Greenville Ave, Ste 12 Richardson, Texas 75081\nDate: April 7 th Saturday\nTime: 11:30 AM to 01:40 PM\n                ',7,'',-1,33,'70.119.234.236','2018-03-31 16:30:42'),(89,5,'描述：出去旅行\n价格：0元\n地址北京天安门\n联系方式：13123702300\n                ',3,'',-1,6,'61.53.28.207','2018-04-01 06:37:44'),(90,1,'描述：刚来到学校，想买一套办公桌\n价格：100\n地址：学校内\n联系方式：13123702389＠qq.com\n                ',1,'',-1,5,'61.53.28.207','2018-04-01 06:41:04'),(91,5,'描述：出去旅行\n价格：0元\n地址北京天安门\n联系方式：13123702300\n                ',1,'',-1,5,'61.53.28.207','2018-04-01 06:44:14'),(92,2,'描述：卖车 2013 雪佛兰科鲁兹 54000miles\n价格：$7100\n地址：75070\n联系方式：2149069368\n                ',50,'m455138914@gmail.com',0,38,'99.37.205.225','2018-04-01 08:19:35'),(93,2,'23寸液晶显示器，型号:G236HL,  $60, 包括两种连接线。自取。2780 N Hillbrier Cir, plano 75075 电话4695798617（prefer text）\n                ',10,'',0,14,'107.242.113.9','2018-04-02 04:25:34'),(94,4,'描述：UTD 学校内1B1B户型短租，4月25号到7月24号。户型空间大，各种家具一应俱全，拎包入住。UTD学校地理位置方便，去哪里都比较近。学校内房子安静安全。有兴趣的微信联系。时间价格可议。户型见图片。\n价格：865一个月包水电网，价格为学校官方价格，可在学校官网查询。\n地址：UTD校园内，University Village.\n联系方式：WeChat ID: liyiyiyiyi19. Email: snowballhit@gmail.com\n                ',20,'snowballhit@gmail.com',0,25,'129.110.241.66','2018-04-02 04:54:28'),(95,4,'Carrollton 和Addison中间house找室友！全新装修House 3b2.5b 二楼卧室招女生室友一位，4月可move in。位置便利：距新大华超市,韩国城都很近，5分钟上George Bush无论在Irving，Addision、Carrollton、DFW机场上班都十分方便。520每月。希望遇到好相处，爱干净的妹子一起。家里有只听话的小猫。有意请联系电话：469-642-3443。\n\n                ',0,'libingyu0605@gmqil.com',0,20,'70.119.151.47','2018-04-02 06:23:43'),(96,2,'描述：全新实木真皮餐桌椅（七件套）\n价格：$750\n地址：10785 Rankin Dr Frisco\n联系方式：4699204291\n                ',0,'Waterwang619@hotmail.com',0,17,'70.121.1.126','2018-04-02 06:26:57'),(97,2,'描述：全新实木复古风电视柜\n价格：$250\n地址：10785 Rankin Dr Frisco\n联系方式：4699204291\n                ',0,'waterwang619@hotmail.com',0,20,'70.121.1.126','2018-04-02 06:28:12'),(98,2,'描述：2008 年现代 Sante Fe\n价格：$6000\n地址：10785 Rankin Dr Frisco\n联系方式：4699204291\n                ',0,'Waterwang619@hotmail.com',0,29,'70.121.1.126','2018-04-02 06:29:51'),(99,2,'描述：22寸显示器\n价格：20\n地址：\n联系方式：微信 evanchee22\n                ',7,'',-1,30,'174.206.14.209','2018-04-02 06:31:24'),(100,2,'出台灯, 需自取\n价格：7刀\n地址：2780 N Hillbrier Cir\n联系方式：4695798617（prefer text）\n                ',9,'',0,20,'72.190.52.205','2018-04-02 10:16:22'),(101,2,'描述：2012 Nissan 6200刀\n\n                ',10,'',0,151,'47.186.35.80','2018-04-03 00:09:01'),(102,4,'描述：House招租，位于Park和Custer附近，距离UTD开车15分钟，距离大华百家超市15分钟，距离Coit中餐厅5分钟。其中两个侧卧需要share卫生间，冰箱洗衣机烘干机齐全，每个月$500包水电网气。有兴趣请联系9723576359。谢谢！\n                ',7,'',-1,35,'192.198.252.44','2018-04-03 01:36:05'),(103,4,'描述：allen 地区侧卧需和一男生share厕所\n价格：550一月包水电网\n地址：608 heartland dr\n联系方式：wechat：frankjunxu\n                ',15,'frankjunxu@foxmail.com',0,20,'112.97.55.207','2018-04-03 10:06:28'),(104,4,'描述：转发 ：4 5月house 短租，干净整洁house  。 9063705517\n价格：\n地址：\n联系方式：\n                ',8,'',0,17,'107.242.113.5','2018-04-04 07:13:08'),(105,4,'描述：5.1到7.31可续租，仅限女生\n价格：500刀水电网全包\n地址：近Plano大华，百佳\n联系方式：9726397443，短信联系\n                ',30,'',0,21,'47.188.43.189','2018-04-04 11:34:19'),(106,3,'描述：求7421小区1b1b，或者2b的暑期短租房。 prefer 5月底_7月\n价格：不限\n地址：UTD附近的7421 on thefrankford of小区\n联系方式：ww_123123_ww 或者短信：4024302189\n                ',60,'',0,20,'70.121.32.204','2018-04-04 13:08:50'),(107,2,'描述：床架床垫 Queen Size\n价格：250 刀自取\n地址：75025\n联系方式：4694076192\n                ',30,'457625091@qq.com',0,24,'72.180.110.176','2018-04-04 13:38:15'),(108,2,'描述：14 Ford Focus clean title 可提供carfax 无机械故障 55K+ miles 上下班使用\n价格：$8500\n地址：75025\n联系方式： WeChat: feifei210 (注明买车)\n                ',30,'457625091@qq.com',0,44,'72.180.110.176','2018-04-04 13:45:34'),(109,2,'描述：23 Inch Computer Privacy Screen Filter for Widescreen Computer Monitor - Anti-Glare - Anti-Scratch Protector Film for Data Confidentiality - 16:9 Aspect Ratio 需自取，屏幕隐私保护，有一定角度后看不见。\n价格：$30\n地址：plano\n联系方式：4695798617（ prefer text）\n                ',15,'',0,21,'47.186.35.80','2018-04-05 21:31:31'),(110,2,'描述：卖晾衣架 熨衣板 全新双面LED环形灯化妆镜 全新切片器 全新蒸笼 日式煎蛋锅\n价格：5-25\n地址：\n联系方式：6822302299\n                ',0,'',0,25,'76.184.126.190','2018-04-06 03:01:04'),(111,4,'描述：Entire Town House 2b2b\n价格：1500\n地址：\n联系方式：Wechat-18817870819\n                ',45,'zxz162330@utdallas.edu',0,22,'129.110.242.17','2018-04-06 05:51:57'),(112,4,'plano新house侧卧招租，女生only，到UTD不需走高速、只需走local15分钟，不存在堵车情况，小区环境好房屋新，房间敞亮，家电家具全新（包括冰箱炉灶微波炉洗碗机空调洗衣机烘干机餐桌甚至全新地毯等），有带棚车库，卧室在二楼几乎不存在干扰，不靠近路边，极为安静，室友都是UTD学生。开车2分钟可达周边的中西餐馆、快餐馆以及Tom Thumb，10分钟到大华百家沃尔玛costco，拎包入住，希望你爱干净，无宠物，不抽烟，月租550包水电网，五月可入住，有意者私聊微信：774736260\n价格：\n地址：\n联系方式：\n                ',6,'',0,13,'47.186.35.80','2018-04-06 22:01:20'),(113,4,'描述：1B1B 暑期5.8至8.19短租(可以)，788尺带有棚车位。位于Frankford与preston交界，二楼无蚊虫光线通风好。小区及周边环境治安很好，邻居礼貌安静，距离UTD， Walmart, Whole Foods均10分钟以内车程，离最近一家Kroger仅三分钟。各种生火家具用品家电齐全，包都可以不拎就入住:p，欢迎无宠物爱干净的小伙伴详聊看房。\n价格：750刀/月 （具体价格，租期可议，最重要的租给放心的人）\n地址：17602 Preston Rd, Preston Villas\n联系方式：微信MrClock002或扫二维码， 电话4696023602',30,'zhongyp.design@gmail.com',0,74,'97.99.113.81','2018-04-06 22:26:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='图片';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_photo`
--

LOCK TABLES `tbl_photo` WRITE;
/*!40000 ALTER TABLE `tbl_photo` DISABLE KEYS */;
INSERT INTO `tbl_photo` VALUES (15,30,'/uploads/2018/3/20/201803201056214596.jpg'),(16,31,'/uploads/2018/3/22/201803220518386374.jpg'),(17,31,'/uploads/2018/3/22/201803220519012326.jpg'),(18,34,'/uploads/2018/3/23/201803232138546374.jpg'),(19,35,'/uploads/2018/3/23/201803232143342326.jpg'),(20,36,'/uploads/2018/3/23/201803232352506374.jpg'),(21,41,'/uploads/2018/3/23/201803232357532326.jpg'),(22,42,'/uploads/2018/3/23/201803232359018434.jpg'),(23,43,'/uploads/2018/3/24/201803240027323513.jpeg'),(24,45,'/uploads/2018/3/24/201803240229244088.JPG'),(25,46,'/uploads/2018/3/24/201803240231504108.jpg'),(26,47,'/uploads/2018/3/24/201803240232022642.JPG'),(27,48,'/uploads/2018/3/24/201803240249094927.JPG'),(28,48,'/uploads/2018/3/24/201803240249091628.JPG'),(29,49,'/uploads/2018/3/24/201803240314099167.JPG'),(30,51,'/uploads/2018/3/24/201803240341291753.jpg'),(31,51,'/uploads/2018/3/24/201803240341436389.jpg'),(32,52,'/uploads/2018/3/24/201803240416069290.JPG'),(33,52,'/uploads/2018/3/24/201803240416366260.JPG'),(34,53,'/uploads/2018/3/24/201803240613326982.jpeg'),(35,53,'/uploads/2018/3/24/201803240614108582.jpeg'),(36,53,'/uploads/2018/3/24/201803240614251711.jpeg'),(37,53,'/uploads/2018/3/24/201803240615528877.jpeg'),(38,55,'/uploads/2018/3/24/201803241021238169.jpeg'),(39,55,'/uploads/2018/3/24/201803241021314743.jpeg'),(40,55,'/uploads/2018/3/24/201803241021386156.jpeg'),(41,55,'/uploads/2018/3/24/201803241021465316.jpeg'),(42,55,'/uploads/2018/3/24/201803241021556679.jpeg'),(43,55,'/uploads/2018/3/24/201803241022043739.jpeg'),(44,56,'/uploads/2018/3/24/201803241027295760.jpeg'),(45,56,'/uploads/2018/3/24/201803241027358215.jpeg'),(46,56,'/uploads/2018/3/24/201803241027411049.jpeg'),(47,56,'/uploads/2018/3/24/201803241027469024.jpeg'),(48,56,'/uploads/2018/3/24/201803241027533412.jpeg'),(49,56,'/uploads/2018/3/24/201803241028007763.jpeg'),(50,58,'/uploads/2018/3/24/201803242220328581.jpg'),(51,59,'/uploads/2018/3/24/201803242222596638.jpg'),(52,60,'/uploads/2018/3/24/201803242227344348.jpg'),(53,61,'/uploads/2018/3/25/201803250003527692.jpg'),(54,61,'/uploads/2018/3/25/201803250004002086.jpg'),(55,62,'/uploads/2018/3/25/201803250012496622.png'),(56,63,'/uploads/2018/3/25/201803250455174127.jpg'),(57,64,'/uploads/2018/3/25/201803250456535433.jpg'),(58,70,'/uploads/2018/3/27/201803270144204088.JPG'),(59,70,'/uploads/2018/3/27/201803270144301891.JPG'),(60,70,'/uploads/2018/3/27/201803270144374596.JPG'),(61,70,'/uploads/2018/3/27/201803270144552642.JPG'),(62,70,'/uploads/2018/3/27/201803270145026674.JPG'),(63,73,'/uploads/2018/3/27/201803271050111753.jpg'),(64,75,'/uploads/2018/3/28/201803281008058434.JPG'),(65,77,'/uploads/2018/3/29/201803290404256218.JPG'),(66,78,'/uploads/2018/3/29/201803290517194596.png'),(67,79,'/uploads/2018/3/29/201803290518264108.jpg'),(68,80,'/uploads/2018/3/29/201803290527094927.JPG'),(69,80,'/uploads/2018/3/29/201803290527141628.jpg'),(70,84,'/uploads/2018/3/30/201803301051262326.jpeg'),(71,86,'/uploads/2018/3/31/201803311142557414.jpg'),(72,87,'/uploads/2018/3/31/201803311427024596.jpeg'),(73,87,'/uploads/2018/3/31/201803311427084108.jpeg'),(74,88,'/uploads/2018/3/31/201803311630131293.jpg'),(75,88,'/uploads/2018/3/31/201803311630264927.jpg'),(76,89,'/uploads/2018/4/1/201804010635411753.png'),(77,89,'/uploads/2018/4/1/201804010635566389.jpg'),(78,92,'/uploads/2018/4/1/201804010818389290.jpeg'),(79,93,'/uploads/2018/4/2/201804020425254079.jpg'),(81,96,'/uploads/2018/4/2/201804020626372277.jpeg'),(82,97,'/uploads/2018/4/2/201804020627498169.jpeg'),(83,97,'/uploads/2018/4/2/201804020627574743.jpeg'),(84,98,'/uploads/2018/4/2/201804020629146679.jpeg'),(85,98,'/uploads/2018/4/2/201804020629193739.jpeg'),(86,98,'/uploads/2018/4/2/201804020629258626.jpeg'),(87,98,'/uploads/2018/4/2/201804020629371980.jpeg'),(88,99,'/uploads/2018/4/2/201804020630541049.jpeg'),(89,94,'/uploads/2018/4/2/201804020453565994.jpg'),(90,100,'/uploads/2018/4/2/201804021015409024.jpg'),(91,101,'/uploads/2018/4/3/201804030008496374.jpg'),(92,103,'/uploads/2018/4/3/201804031005113513.jpeg'),(93,107,'/uploads/2018/4/4/201804041337408434.jpeg'),(94,108,'/uploads/2018/4/4/201804041340336218.jpeg'),(95,108,'/uploads/2018/4/4/201804041340474088.jpeg'),(96,108,'/uploads/2018/4/4/201804041341041891.jpeg'),(97,108,'/uploads/2018/4/4/201804041341184596.jpeg'),(98,108,'/uploads/2018/4/4/201804041341432642.png'),(99,108,'/uploads/2018/4/4/201804041342196674.jpeg'),(100,109,'/uploads/2018/4/5/201804052131096374.jpg'),(101,109,'/uploads/2018/4/5/201804052131192326.png'),(102,110,'/uploads/2018/4/6/201804060259317414.JPG'),(103,111,'/uploads/2018/4/6/201804060550026218.jpg'),(104,113,'/uploads/2018/4/6/201804062226136374.jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='建议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_suggest`
--

LOCK TABLES `tbl_suggest` WRITE;
/*!40000 ALTER TABLE `tbl_suggest` DISABLE KEYS */;
INSERT INTO `tbl_suggest` VALUES (2,43,'129.110.241.62','','2018-03-24 01:53:09'),(4,54,'114.246.93.240','','2018-03-24 09:30:01'),(7,55,'47.185.249.127','','2018-03-24 10:44:13'),(9,65,'114.246.93.240','','2018-03-25 16:15:35'),(10,63,'129.110.241.71','','2018-03-27 03:17:45'),(11,65,'47.183.192.237','','2018-03-27 04:15:05'),(12,64,'107.242.113.6','','2018-03-27 04:19:19'),(13,64,'107.242.113.6','','2018-03-27 04:19:22'),(16,81,'99.37.205.225','','2018-03-29 08:58:44'),(25,82,'123.124.206.69','','2018-03-29 12:19:37'),(26,82,'107.242.113.10','','2018-03-29 21:06:43'),(27,82,'47.186.35.80','','2018-03-29 22:13:28'),(28,80,'47.186.35.80','','2018-03-29 22:29:39'),(29,82,'107.242.113.10','','2018-03-30 04:48:00'),(30,79,'123.123.107.70','','2018-03-31 09:33:30'),(31,79,'123.123.107.70','','2018-03-31 13:42:45'),(32,88,'76.184.111.68','','2018-03-31 23:58:44'),(33,88,'76.184.111.68','','2018-04-01 01:32:19'),(34,76,'61.53.28.207','','2018-04-01 06:50:21'),(35,54,'61.53.28.207','','2018-04-01 06:52:15'),(36,69,'61.53.28.207','','2018-04-01 06:52:43'),(37,91,'61.53.28.207','','2018-04-01 06:55:36'),(38,91,'61.53.28.207','','2018-04-01 06:55:54'),(39,92,'70.113.148.231','','2018-04-01 08:29:13'),(40,88,'76.184.111.68','','2018-04-02 05:00:24'),(41,86,'123.232.136.163','','2018-04-03 14:16:57'),(42,103,'117.136.0.224','','2018-04-03 20:37:52'),(43,104,'123.124.206.69','','2018-04-04 10:06:28'),(44,74,'70.123.127.32','','2018-04-04 11:31:02'),(45,108,'123.124.206.69','','2018-04-04 18:14:10'),(46,106,'76.184.111.68','','2018-04-05 10:16:28'),(47,69,'97.99.80.59','','2018-04-06 06:07:52'),(48,100,'76.184.108.240','','2018-04-06 10:28:31'),(49,111,'72.190.99.242','','2018-04-06 12:15:23'),(50,108,'42.230.135.24','','2018-04-06 13:59:32');
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

-- Dump completed on 2018-05-28  0:50:01
