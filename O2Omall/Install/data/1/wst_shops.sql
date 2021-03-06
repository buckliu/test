SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wst_shops`
-- ----------------------------
DROP TABLE IF EXISTS `wst_shops`;
CREATE TABLE `wst_shops` (
  `shopId` int(11) NOT NULL AUTO_INCREMENT,
  `shopSn` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `areaId1` int(11) NOT NULL,
  `areaId2` int(11) NOT NULL,
  `areaId3` int(11) NOT NULL,
  `goodsCatId1` int(11) NOT NULL,
  `goodsCatId2` int(11) DEFAULT NULL,
  `goodsCatId3` int(11) DEFAULT NULL,
  `isSelf` tinyint(4) NOT NULL DEFAULT '0',
  `shopName` varchar(100) NOT NULL,
  `shopCompany` varchar(255) NOT NULL,
  `shopImg` varchar(150) NOT NULL,
  `shopTel` varchar(20) DEFAULT NULL,
  `shopAddress` varchar(255) NOT NULL,
  `avgeCostMoney` decimal(11,2) DEFAULT '0.00',
  `deliveryStartMoney` decimal(11,2) DEFAULT '0.00',
  `deliveryMoney` decimal(11,2) DEFAULT '0.00',
  `deliveryFreeMoney` decimal(11,2) DEFAULT '0.00',
  `deliveryCostTime` int(11) NOT NULL DEFAULT '0',
  `deliveryTime` varchar(255) NOT NULL,
  `deliveryType` tinyint(4) NOT NULL DEFAULT '0',
  `bankId` int(11) NOT NULL,
  `bankNo` varchar(20) NOT NULL,
  `isInvoice` tinyint(4) NOT NULL DEFAULT '0',
  `invoiceRemarks` varchar(255) DEFAULT NULL,
  `serviceStartTime` float(11,1) NOT NULL,
  `serviceEndTime` float(11,1) NOT NULL,
  `shopStatus` tinyint(4) NOT NULL DEFAULT '0',
  `statusRemarks` varchar(255) DEFAULT NULL,
  `shopAtive` tinyint(4) NOT NULL DEFAULT '1',
  `shopFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `latitude` char(30) DEFAULT '0',
  `longitude` char(30) DEFAULT '0',
  `mapLevel` int(11) DEFAULT '13',
  `qqNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`shopId`),
  KEY `areaId1` (`areaId2`) USING BTREE,
  KEY `shopStatus` (`shopStatus`,`shopFlag`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wst_shops
-- ----------------------------
 INSERT INTO `wst_shops` VALUES('4', '00002', '9', '440000', '440100', '440106', '47', null, null, '1', '广东广州店铺', '广东广州店铺', 'Upload/shops/2015-05/554c1f72a4480.png', '020-29806661', '广东广州店铺', '20.0', '0.0', '0.0', '10.0', '0', '', '1', '17', '6222023602094008497', '1', '开错无补', '8.0', '20.0', '1', null, '1', '1', '2015-05-19 23:28:06', '23.134334', '113.324604', '16', '707563272'),
 ('5', '00006', '10', '440000', '440300', '440303', '48', null, null, '1', '广东深圳店铺', '广东深圳店铺', 'Upload/shops/2015-05/554c208b77447.png', '020-29806661', '广东深圳店铺', '0.0', '0.0', '0.0', '0.0', '0', '', '1', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-12 21:22:37', '22.700189', '114.236408', '15', '707563272'),
 ('6', '00005', '11', '440000', '440400', '440402', '49', null, null, '0', '广东珠海店铺', '广东珠海店铺', 'Upload/shops/2015-05/554c20d9578f2.png', '020-29806661', '广东珠海店铺', '0.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-12 21:22:14', '22.276281', '113.557934', '15', '707563272'),
 ('7', '00004', '12', '440000', '440500', '440507', '50', null, null, '0', '广东汕头店铺', '广东汕头店铺', 'Upload/shops/2015-05/554c21314a3ab.png', '020-29806661', '广东汕头店铺', '0.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-12 21:21:49', '23.374487', '116.73241', '14', '707563272'),
 ('8', '00003', '13', '440000', '440200', '440203', '51', null, null, '1', '广东韶关店铺', '广东韶关店铺', 'Upload/shops/2015-05/554c21985e65a.png', '020-29806661', '广东韶关店铺', '0.0', '0.0', '0.0', '0.0', '0', '', '1', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-12 21:21:09', '24.798137', '113.599145', '17', '707563272'),
 ('9', '00001', '14', '440000', '440600', '440604', '52', null, null, '1', '广东佛山店铺', '广东佛山店铺', 'Upload/shops/2015-05/554c21df265f1.png', '15918671994', '广东佛山店铺', '20.0', '0.0', '0.0', '10.0', '0', '', '1', '17', '6222023602094008497', '0', '', '8.0', '20.0', '1', null, '1', '1', '2015-05-12 22:03:39', '23.090203', '113.131472', '14', '707563272'),
 ('10', 'S0001', '15', '440000', '440100', '440103', '47', null, null, '0', '测试店铺', '测试公司', 'Upload/shops/2015-05/554f70160cd3a_thumb.png', '020-29806661', '广东省广州市天河区龙口东路', '50.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '5212023122016330670', '1', '请注明发票抬头，可开具各种类型发票', '8.0', '20.0', '1', null, '0', '1', '2015-05-10 22:52:52', '23.136553', '113.34128', '18', '707563272'),
 ('11', '10001', '16', '440000', '440100', '440103', '47', null, null, '0', '测试店铺1', '广州商淘信息科技有限公司', 'Upload/shops/2015-05/55520afe5a5f6.png', '020-29806661', '广东省广州市天河区', '0.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-26 16:32:26', '23.128446', '113.277395', '17', '707563272'),
 ('12', '10002', '17', '440000', '440100', '440106', '47', null, null, '0', '测试店铺2', '广州商淘信息科技有限公司', 'Upload/shops/2015-05/55520bac225be_thumb.png', '020-29806661', '广东省广州市天河区', '41.0', '0.0', '2.0', '2.0', '0', '', '0', '17', '6222023602094008497', '0', '', '8.0', '20.0', '1', null, '1', '1', '2015-05-12 22:35:10', '23.127447', '113.331835', '16', '707563272'),
 ('13', '10003', '18', '440000', '440100', '440105', '47', null, null, '0', '测试店铺3', '测试店铺3', 'Upload/shops/2015-05/55520f278cc93_thumb.png', '020-29806661', '广东省广州市海珠区', '45.0', '0.0', '2.0', '8.0', '0', '', '0', '17', '6222023602094008497', '0', '', '8.0', '20.0', '1', null, '1', '1', '2015-05-12 22:34:57', '23.109134', '113.243429', '17', '707563272'),
 ('14', '20004', '19', '440000', '440100', '440111', '48', null, null, '0', '测试店铺21', '测试店铺21', 'Upload/shops/2015-05/5552f7f735905.png', '020-29806661', '广东省广州市白云区', '0.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-27 00:45:31', '23.160506', '113.271453', '17', '707563272'),
 ('15', '20003', '20', '440000', '440100', '440111', '48', null, null, '0', '测试店铺22', '测试店铺22', 'Upload/shops/2015-05/5552f8351f762.png', '020-29806661', '广东省广州市白云区', '0.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-13 17:35:55', '23.159659', '113.256336', '17', '707563272'),
 ('16', '20002', '21', '440000', '440100', '440111', '48', null, null, '0', '测试店铺23', '测试店铺23', 'Upload/shops/2015-05/5552f87d9651a.png', '020-29806661', '广东省广州市白云区', '0.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-13 16:59:29', '23.172826', '113.267594', '16', '707563272'),
 ('17', '20001', '22', '440000', '440100', '440111', '48', null, null, '0', '测试店铺24', '测试店铺24', 'Upload/shops/2015-05/5552f8c6de2e7.png', '020-29806661', '广东省广州市白云区', '0.0', '0.0', '0.0', '0.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', null, '1', '1', '2015-05-13 16:59:03', '23.1617', '113.255794', '16', '707563272'),
 ('18', '234978', '24', '440000', '440100', '440106', '49', null, null, '0', '测试店铺31', '测试店铺31', 'Upload/shops/2015-05/55646f83c80eb.png', '15918671994', '广东省广州市天河区', '45.0', '0.0', '5.0', '20.0', '0', '', '0', '17', '6222023602094008497', '0', '', '9.0', '23.0', '1', '', '1', '1', '2015-05-26 21:06:03', '23.126915', '113.342736', '14', '707563272'),
 ('19', '23498', '25', '440000', '440100', '440106', '49', null, null, '0', '测试店铺32', '测试店铺32', 'Upload/shops/2015-05/55647005331e6.png', '15918671994', '广东省广州市天河区', '47.0', '0.0', '0.0', '30.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', '', '1', '1', '2015-05-26 21:08:13', '23.135005', '113.3378', '16', '707563272'),
 ('20', '3249', '26', '440000', '440100', '440106', '49', null, null, '0', '测试店铺33', '测试店铺33', 'Upload/shops/2015-05/5564709e3dc3d.png', '15918671994', '广东省广州市天河区', '34.0', '0.0', '5.0', '32.0', '0', '', '0', '17', '6222023602094008497', '0', '', '6.0', '17.0', '1', '', '1', '1', '2015-05-26 21:09:53', '23.133576', '113.333174', '15', '707563272'),
 ('21', '324982', '27', '440000', '440100', '440106', '49', null, null, '0', '测试店铺34', '测试店铺34', 'Upload/shops/2015-05/556470c441fff.png', '15918671994', '广东省广州市天河区', '50.0', '0.0', '5.0', '45.0', '0', '', '0', '17', '6222023602094008497', '0', '', '7.0', '21.0', '1', '', '1', '1', '2015-05-26 21:11:23', '23.133229', '113.356597', '16', '707563272'),
 ('22', '234823', '28', '440000', '440100', '440106', '50', null, null, '0', '测试店铺41', '测试店铺41', 'Upload/shops/2015-05/5564715db78ba.png', '15918671994', '广东省广州市天河区', '65.0', '0.0', '5.0', '40.0', '0', '', '0', '17', '6222023602094008497', '0', '', '9.0', '22.0', '1', '', '1', '1', '2015-05-26 21:14:00', '23.13903', '113.336127', '15', '707563272'),
 ('23', '234978', '29', '440000', '440100', '440106', '50', null, null, '0', '测试店铺42', '测试店铺42', 'Upload/shops/2015-05/556472c50ae1a.png', '15918671994', '广东省广州市天河区', '45.0', '0.0', '5.0', '54.0', '0', '', '0', '17', '6222023602094008497', '0', '', '9.0', '23.0', '1', '', '1', '1', '2015-05-26 21:20:27', '23.144935', '113.327867', '15', '707563272'),
 ('24', '23423', '30', '440000', '440100', '440106', '50', null, null, '0', '测试店铺43', '测试店铺43', 'Upload/shops/2015-05/55647356b697b.png', '15918671994', '广东省广州市天河区', '80.0', '0.0', '8.0', '80.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '0.0', '1', '', '1', '1', '2015-05-26 21:22:06', '23.144002', '113.340761', '15', '707563272'),
 ('25', '234798', '31', '440000', '440100', '440106', '50', null, null, '0', '测试店铺44', '测试店铺44', 'Upload/shops/2015-05/556473da51f49.png', '15918671994', '广东省广州市天河区', '45.0', '0.0', '5.0', '50.0', '0', '', '0', '17', '6222023602094008497', '0', '', '10.0', '21.0', '1', '', '1', '1', '2015-05-26 21:24:36', '23.138717', '113.332816', '15', '707563272'),
 ('26', '23489723', '32', '440000', '440100', '440106', '51', null, null, '0', '测试店铺51', '测试店铺51', 'Upload/shops/2015-05/5564752741943.png', '15918671994', '广东省广州市天河区', '34.0', '0.0', '4.0', '30.0', '0', '', '0', '17', '6222023602094008497', '0', '', '9.0', '17.0', '1', '', '1', '1', '2015-05-26 21:30:17', '23.123165', '113.348529', '15', '707563272'),
 ('27', '2189', '33', '440000', '440100', '440106', '51', null, null, '0', '测试店铺52', '测试店铺52', 'Upload/shops/2015-05/556475978d54c.png', '15918671994', '广东省广州市天河区', '67.0', '0.0', '6.0', '50.0', '0', '', '0', '17', '6222023602094008497', '0', '', '10.0', '22.0', '1', '', '1', '1', '2015-05-26 21:32:01', '23.142108', '113.334882', '15', '707563272'),
 ('28', '249823', '34', '440000', '440100', '440106', '51', null, null, '0', '测试店铺53', '测试店铺53', 'Upload/shops/2015-05/556475f979416.png', '15918671994', '广东省广州市天河区', '45.0', '0.0', '3.0', '45.0', '0', '', '0', '17', '6222023602094008497', '0', '', '0.0', '22.0', '1', '', '1', '1', '2015-05-26 21:33:27', '23.13386', '113.326471', '16', '707563272'),
 ('29', '23489', '35', '440000', '440100', '440106', '51', null, null, '0', '测试店铺54', '测试店铺54', 'Upload/shops/2015-05/5564777f510ac.png', '15918671994', '广东省广州市天河区', '35.0', '0.0', '3.0', '30.0', '0', '', '0', '17', '6222023602094008497', '0', '', '7.0', '22.0', '1', '', '1', '1', '2015-05-26 21:40:20', '23.129914', '113.32278', '15', '707563272'),
 ('30', '23499', '36', '440000', '440100', '440106', '52', null, null, '0', '测试店铺61', '测试店铺61', 'Upload/shops/2015-05/5564782d1b224.png', '15918671994', '广东省广州市天河区', '24.0', '0.0', '4.0', '12.0', '0', '', '0', '17', '6222023602094008497', '0', '', '4.0', '23.0', '1', '', '1', '1', '2015-05-26 21:42:59', '23.131414', '113.35473', '16', '707563272'),
 ('31', '23497832', '37', '440000', '440100', '440106', '52', null, null, '0', '测试店铺62', '测试店铺62', 'Upload/shops/2015-05/556478c4abcd8.png', '15918671994', '广东省广州市天河区', '32.0', '0.0', '10.0', '65.0', '0', '', '0', '17', '6222023602094008497', '0', '', '7.0', '21.0', '1', '', '1', '1', '2015-05-26 21:45:22', '23.137846', '113.322308', '15', '707563272'),
 ('32', '34789', '38', '440000', '440100', '440106', '52', null, null, '0', '测试店铺63', '测试店铺63', 'Upload/shops/2015-05/5564791d7cf5f.png', '15918671994', '广东省广州市天河区', '70.0', '0.0', '6.0', '78.0', '0', '', '0', '17', '6222023602094008497', '0', '', '9.0', '22.0', '1', '', '1', '1', '2015-05-26 21:47:10', '23.154726', '113.342627', '14', '707563272'),
 ('33', '234897', '39', '440000', '440100', '440106', '52', null, null, '0', '测试店铺64', '测试店铺64', 'Upload/shops/2015-05/5564797444510.png', '15918671994', '广东省广州市天河区', '45.0', '0.0', '4.0', '40.0', '0', '', '0', '17', '6222023602094008497', '0', '', '12.0', '23.0', '1', '', '1', '1', '2015-05-26 21:48:43', '23.141674', '113.337714', '15', '707563272');
