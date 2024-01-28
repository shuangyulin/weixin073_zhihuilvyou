/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm49085
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm49085` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm49085`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm49085/upload/1620624392244.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm49085/upload/1620624399511.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm49085/upload/1620624406792.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussjingquhuodong` */

DROP TABLE IF EXISTS `discussjingquhuodong`;

CREATE TABLE `discussjingquhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='景区活动评论表';

/*Data for the table `discussjingquhuodong` */

insert  into `discussjingquhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-05-10 13:20:39',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjingquhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-05-10 13:20:39',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjingquhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-05-10 13:20:39',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjingquhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-05-10 13:20:39',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjingquhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-05-10 13:20:39',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjingquhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-05-10 13:20:39',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusslvyoujingdian` */

DROP TABLE IF EXISTS `discusslvyoujingdian`;

CREATE TABLE `discusslvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='旅游景点评论表';

/*Data for the table `discusslvyoujingdian` */

insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-05-10 13:20:39',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-05-10 13:20:39',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-05-10 13:20:39',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-05-10 13:20:39',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-05-10 13:20:39',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-05-10 13:20:39',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jingdianfenlei` */

DROP TABLE IF EXISTS `jingdianfenlei`;

CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1620624169391 DEFAULT CHARSET=utf8 COMMENT='景点分类';

/*Data for the table `jingdianfenlei` */

insert  into `jingdianfenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-05-10 13:20:38','分类1');
insert  into `jingdianfenlei`(`id`,`addtime`,`fenlei`) values (22,'2021-05-10 13:20:38','分类2');
insert  into `jingdianfenlei`(`id`,`addtime`,`fenlei`) values (23,'2021-05-10 13:20:38','分类3');
insert  into `jingdianfenlei`(`id`,`addtime`,`fenlei`) values (24,'2021-05-10 13:20:39','分类4');
insert  into `jingdianfenlei`(`id`,`addtime`,`fenlei`) values (1620624169390,'2021-05-10 13:22:49','古代遗址');

/*Table structure for table `jingdiangoupiao` */

DROP TABLE IF EXISTS `jingdiangoupiao`;

CREATE TABLE `jingdiangoupiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goupiaoriqi` date DEFAULT NULL COMMENT '购票日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620624599039 DEFAULT CHARSET=utf8 COMMENT='景点购票';

/*Data for the table `jingdiangoupiao` */

insert  into `jingdiangoupiao`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-05-10 13:20:39','订单编号1','景点名称1','分类1','http://localhost:8080/ssm49085/upload/jingdiangoupiao_jingdiantupian1.jpg','景点地址1',1,1,'总金额1','2021-05-10','用户名1','手机1','身份证1','是','','未支付',1);
insert  into `jingdiangoupiao`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (42,'2021-05-10 13:20:39','订单编号2','景点名称2','分类2','http://localhost:8080/ssm49085/upload/jingdiangoupiao_jingdiantupian2.jpg','景点地址2',2,2,'总金额2','2021-05-10','用户名2','手机2','身份证2','是','','未支付',2);
insert  into `jingdiangoupiao`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (43,'2021-05-10 13:20:39','订单编号3','景点名称3','分类3','http://localhost:8080/ssm49085/upload/jingdiangoupiao_jingdiantupian3.jpg','景点地址3',3,3,'总金额3','2021-05-10','用户名3','手机3','身份证3','是','','未支付',3);
insert  into `jingdiangoupiao`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (44,'2021-05-10 13:20:39','订单编号4','景点名称4','分类4','http://localhost:8080/ssm49085/upload/jingdiangoupiao_jingdiantupian4.jpg','景点地址4',4,4,'总金额4','2021-05-10','用户名4','手机4','身份证4','是','','未支付',4);
insert  into `jingdiangoupiao`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (45,'2021-05-10 13:20:39','订单编号5','景点名称5','分类5','http://localhost:8080/ssm49085/upload/jingdiangoupiao_jingdiantupian5.jpg','景点地址5',5,5,'总金额5','2021-05-10','用户名5','手机5','身份证5','是','','未支付',5);
insert  into `jingdiangoupiao`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (46,'2021-05-10 13:20:39','订单编号6','景点名称6','分类6','http://localhost:8080/ssm49085/upload/jingdiangoupiao_jingdiantupian6.jpg','景点地址6',6,6,'总金额6','2021-05-10','用户名6','手机6','身份证6','是','','未支付',6);
insert  into `jingdiangoupiao`(`id`,`addtime`,`dingdanbianhao`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandizhi`,`menpiaojiage`,`shuliang`,`zongjine`,`goupiaoriqi`,`yonghuming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`,`userid`) values (1620624599038,'2021-05-10 13:29:58','1620624595409','西湖公园','古代遗址','http://localhost:8080/ssm49085/upload/1620624263681.jpg','杭州市西湖区龙井路1号',100,2,'200','2021-05-10','2','12312312312','123456789789456123','是','ok','已支付',1620624525731);

/*Table structure for table `jingquhuodong` */

DROP TABLE IF EXISTS `jingquhuodong`;

CREATE TABLE `jingquhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `huodongjieshao` longtext COMMENT '活动介绍',
  `huodongneirong` longtext COMMENT '活动内容',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='景区活动';

/*Data for the table `jingquhuodong` */

insert  into `jingquhuodong`(`id`,`addtime`,`huodongbiaoti`,`jingdianmingcheng`,`fenlei`,`jingdiandizhi`,`fengmiantu`,`huodongjieshao`,`huodongneirong`,`huodongshijian`,`faburiqi`) values (51,'2021-05-10 13:20:39','活动标题1','景点名称1','分类1','景点地址1','http://localhost:8080/ssm49085/upload/1620624234184.jpg','活动介绍1','<p>活动内容1</p>','活动时间1','2021-05-10');
insert  into `jingquhuodong`(`id`,`addtime`,`huodongbiaoti`,`jingdianmingcheng`,`fenlei`,`jingdiandizhi`,`fengmiantu`,`huodongjieshao`,`huodongneirong`,`huodongshijian`,`faburiqi`) values (52,'2021-05-10 13:20:39','活动标题2','景点名称2','分类2','景点地址2','http://localhost:8080/ssm49085/upload/1620624304404.jpg','活动介绍2','<p>活动内容2</p>','活动时间2','2021-05-10');
insert  into `jingquhuodong`(`id`,`addtime`,`huodongbiaoti`,`jingdianmingcheng`,`fenlei`,`jingdiandizhi`,`fengmiantu`,`huodongjieshao`,`huodongneirong`,`huodongshijian`,`faburiqi`) values (53,'2021-05-10 13:20:39','活动标题3','景点名称3','分类3','景点地址3','http://localhost:8080/ssm49085/upload/1620624312228.jpg','活动介绍3','<p>活动内容3</p>','活动时间3','2021-05-10');
insert  into `jingquhuodong`(`id`,`addtime`,`huodongbiaoti`,`jingdianmingcheng`,`fenlei`,`jingdiandizhi`,`fengmiantu`,`huodongjieshao`,`huodongneirong`,`huodongshijian`,`faburiqi`) values (54,'2021-05-10 13:20:39','活动标题4','景点名称4','分类4','景点地址4','http://localhost:8080/ssm49085/upload/1620624320748.jpg','活动介绍4','<p>活动内容4</p>','活动时间4','2021-05-10');
insert  into `jingquhuodong`(`id`,`addtime`,`huodongbiaoti`,`jingdianmingcheng`,`fenlei`,`jingdiandizhi`,`fengmiantu`,`huodongjieshao`,`huodongneirong`,`huodongshijian`,`faburiqi`) values (55,'2021-05-10 13:20:39','活动标题5','景点名称5','分类5','景点地址5','http://localhost:8080/ssm49085/upload/1620624329364.jpg','活动介绍5','<p>活动内容5</p>','活动时间5','2021-05-10');
insert  into `jingquhuodong`(`id`,`addtime`,`huodongbiaoti`,`jingdianmingcheng`,`fenlei`,`jingdiandizhi`,`fengmiantu`,`huodongjieshao`,`huodongneirong`,`huodongshijian`,`faburiqi`) values (56,'2021-05-10 13:20:39','西湖公园活动','西湖公园','古代遗址','杭州市西湖区龙井路1号','http://localhost:8080/ssm49085/upload/1620624432648.jpg','活动介绍','<p>活动内容djhgkjrhdgjrotifjhyti</p><p><img src=\"http://localhost:8080/ssm49085/upload/1620624446422.jpg\"></p>','5.18-5.20','2021-05-10');

/*Table structure for table `lvyoujingdian` */

DROP TABLE IF EXISTS `lvyoujingdian`;

CREATE TABLE `lvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='旅游景点';

/*Data for the table `lvyoujingdian` */

insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`jingdianjieshao`,`clicktime`,`clicknum`) values (31,'2021-05-10 13:20:39','景点名称1','分类1','http://localhost:8080/ssm49085/upload/1620624177216.jpg','A','景点地址1',1,'开放时间1','<p>景点介绍1</p>','2021-05-10 13:29:41',3);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`jingdianjieshao`,`clicktime`,`clicknum`) values (32,'2021-05-10 13:20:39','景点名称2','分类2','http://localhost:8080/ssm49085/upload/1620624185871.jpg','A','景点地址2',2,'开放时间2','<p>景点介绍2</p>','2021-05-10 13:23:00',3);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`jingdianjieshao`,`clicktime`,`clicknum`) values (33,'2021-05-10 13:20:39','景点名称3','分类3','http://localhost:8080/ssm49085/upload/1620624194489.jpg','A','景点地址3',3,'开放时间3','<p>景点介绍3</p>','2021-05-10 13:23:09',4);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`jingdianjieshao`,`clicktime`,`clicknum`) values (34,'2021-05-10 13:20:39','景点名称4','分类4','http://localhost:8080/ssm49085/upload/1620624203711.jpg','A','景点地址4',4,'开放时间4','<p>景点介绍4</p>','2021-05-10 13:29:09',11);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`jingdianjieshao`,`clicktime`,`clicknum`) values (35,'2021-05-10 13:20:39','景点名称5','分类2','http://localhost:8080/ssm49085/upload/1620624211638.jpg','A','景点地址5',5,'开放时间5','<p>景点介绍5</p>','2021-05-10 13:24:04',7);
insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`fenlei`,`jingdiantupian`,`jingdiandengji`,`jingdiandizhi`,`menpiaojiage`,`kaifangshijian`,`jingdianjieshao`,`clicktime`,`clicknum`) values (36,'2021-05-10 13:20:39','西湖公园','古代遗址','http://localhost:8080/ssm49085/upload/1620624263681.jpg','AAAAA','杭州市西湖区龙井路1号',100,'10:00-18:00','<p>西湖景区总面积49平方公里，汇水面积为21.22平方公里，湖面面积为6.38平方公里。</p><p>西湖南、西、北三面环山，湖中白堤、苏堤、杨公堤、赵公堤将湖面分割成若干水面。西湖的湖体轮廓呈近椭圆形，湖底部较为平坦，湖泊平均水深为2.27米，最深约5米，最浅不到1米。湖泊天然地表水源是金沙涧、龙泓涧、赤山涧（慧因涧）、长桥溪四条溪流。西湖地处中国东南丘陵边缘和中亚热带北缘，年均太阳总辐射量在100—110千卡/平方厘米之间，日照时数1800—2100小时。&nbsp;</p><p>西湖有100多处公园景点，有“西湖十景”、“新西湖十景”、“三评西湖十景”之说，有60多处国家、省、市级重点文物保护单位和20多座博物馆，有断桥、雷峰塔、钱王祠、净慈寺、苏小小墓等景点。&nbsp;</p><p><img src=\"http://localhost:8080/ssm49085/upload/1620624291951.jpg\"></p>','2021-05-10 13:30:00',10);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620624641309 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (81,'2021-05-10 13:20:39',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (82,'2021-05-10 13:20:39',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (83,'2021-05-10 13:20:39',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (84,'2021-05-10 13:20:39',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (85,'2021-05-10 13:20:39',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (86,'2021-05-10 13:20:39',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1620624641308,'2021-05-10 13:30:40',1620624525731,'2','有什么建议反馈这里可以进行留言','回复用户的留言');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-05-10 13:20:39','标题1','简介1','http://localhost:8080/ssm49085/upload/1620624347834.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (72,'2021-05-10 13:20:39','标题2','简介2','http://localhost:8080/ssm49085/upload/1620624355681.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (73,'2021-05-10 13:20:39','标题3','简介3','http://localhost:8080/ssm49085/upload/1620624363740.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (74,'2021-05-10 13:20:39','标题4','简介4','http://localhost:8080/ssm49085/upload/1620624372224.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (75,'2021-05-10 13:20:39','标题5','简介5','http://localhost:8080/ssm49085/upload/1620624380917.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (76,'2021-05-10 13:20:39','新景点开放通知','新景点开放','http://localhost:8080/ssm49085/upload/1620624465674.jpg','<p>资讯内容LJAMKLGFRJDMYHGTR</p><p><img src=\"http://localhost:8080/ssm49085/upload/1620624480712.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620624612149 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620624612148,'2021-05-10 13:30:11',1620624525731,56,'jingquhuodong','西湖公园活动','http://localhost:8080/ssm49085/upload/1620624432648.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','2eoebyy6tnefojglpgtqqr9gdwaxjqz7','2021-05-10 13:22:29','2021-05-10 14:22:29');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1620624525731,'2','yonghu','用户','g19s4332x1f6tx604ijhn7wykrwt5leh','2021-05-10 13:28:51','2021-05-10 14:28:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-10 13:20:39');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620624525732 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`) values (11,'2021-05-10 13:20:38','用户1','123456','姓名1','http://localhost:8080/ssm49085/upload/yonghu_touxiang1.jpg','男','13823888881','440300199101010001');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`) values (12,'2021-05-10 13:20:38','用户2','123456','姓名2','http://localhost:8080/ssm49085/upload/yonghu_touxiang2.jpg','男','13823888882','440300199202020002');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`) values (13,'2021-05-10 13:20:38','用户3','123456','姓名3','http://localhost:8080/ssm49085/upload/yonghu_touxiang3.jpg','男','13823888883','440300199303030003');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`) values (14,'2021-05-10 13:20:38','用户4','123456','姓名4','http://localhost:8080/ssm49085/upload/yonghu_touxiang4.jpg','男','13823888884','440300199404040004');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`) values (15,'2021-05-10 13:20:38','用户5','123456','姓名5','http://localhost:8080/ssm49085/upload/yonghu_touxiang5.jpg','男','13823888885','440300199505050005');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`) values (16,'2021-05-10 13:20:38','用户6','123456','姓名6','http://localhost:8080/ssm49085/upload/yonghu_touxiang6.jpg','男','13823888886','440300199606060006');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`) values (1620624525731,'2021-05-10 13:28:45','2','2','张一','http://localhost:8080/ssm49085/upload/1620624536348.jpg','女','12312312312','123456789789456123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
