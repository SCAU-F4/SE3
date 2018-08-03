/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-04 02:02:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `customerID` int(5) NOT NULL,
  `addressID` int(5) NOT NULL AUTO_INCREMENT,
  `addressDetail` varchar(100) NOT NULL,
  `addressPostcode` varchar(6) NOT NULL,
  `addressPhone` varchar(11) NOT NULL,
  `addressName` varchar(20) NOT NULL,
  PRIMARY KEY (`addressID`,`customerID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '华南农业大学华山区14栋112', '510000', '13123123123', '黄大仙');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartID` int(5) NOT NULL,
  `customerID` int(5) NOT NULL,
  `totalPrice` double(8,2) NOT NULL,
  PRIMARY KEY (`cartID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for `cartdetail`
-- ----------------------------
DROP TABLE IF EXISTS `cartdetail`;
CREATE TABLE `cartdetail` (
  `cartID` int(5) NOT NULL,
  `goodsID` int(5) NOT NULL,
  `goodsCount` int(5) NOT NULL,
  `totalPrice` double(8,2) NOT NULL,
  PRIMARY KEY (`cartID`,`goodsID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cartdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customerID` int(5) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(20) NOT NULL,
  `customerPwd` varchar(20) NOT NULL,
  `customerPhone` varchar(11) NOT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `customerRegDate` datetime(6) NOT NULL,
  PRIMARY KEY (`customerID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'wenyujun', '123123', '13123123123', '11@qq.com', '2018-07-27 18:29:34.949000');
INSERT INTO `customer` VALUES ('2', '123444', '123123', '13123123123', '11@qq.com', '2018-07-30 21:22:07.027000');

-- ----------------------------
-- Table structure for `evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `evaluateID` int(5) NOT NULL AUTO_INCREMENT,
  `goodsID` int(5) NOT NULL,
  `customerID` int(5) NOT NULL,
  `evaluateDate` datetime(6) NOT NULL,
  `evaluateGrade` int(5) NOT NULL,
  `evaluateContent` varchar(255) NOT NULL,
  `goodsSpecify` varchar(50) NOT NULL,
  PRIMARY KEY (`evaluateID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('1', '1', '1', '2018-07-27 19:09:06.000000', '5', '神书，五星好评', '山海经');

-- ----------------------------
-- Table structure for `evaluatepicture`
-- ----------------------------
DROP TABLE IF EXISTS `evaluatepicture`;
CREATE TABLE `evaluatepicture` (
  `evaluateID` int(5) NOT NULL,
  `pictureID` int(5) NOT NULL,
  PRIMARY KEY (`evaluateID`,`pictureID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of evaluatepicture
-- ----------------------------
INSERT INTO `evaluatepicture` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `express`
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express` (
  `expressCode` int(18) NOT NULL AUTO_INCREMENT,
  `expressDate` datetime(6) NOT NULL,
  `expressState` varchar(50) NOT NULL,
  PRIMARY KEY (`expressCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of express
-- ----------------------------
INSERT INTO `express` VALUES ('1', '2018-07-27 19:04:21.000000', '0');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsID` int(5) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) NOT NULL,
  `goodsMainTypeID` int(5) NOT NULL,
  `goodsSecondaryTypeID` int(5) NOT NULL,
  `goodsSpecify` varchar(50) NOT NULL,
  `goodsBrief` varchar(100) NOT NULL,
  `goodsPrice` double(8,2) NOT NULL,
  `goodsCount` int(5) NOT NULL,
  `sellCount` int(5) NOT NULL,
  `goodsDate` datetime(6) NOT NULL,
  `isSell` int(2) NOT NULL,
  PRIMARY KEY (`goodsID`,`goodsSpecify`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '24寸原创山海经PC铝框拉杆箱', '1', '1', '山海经', '与众不同 原创设计山海经箱面', '539.00', '500', '0', '2018-08-03 15:15:23.000000', '1');
INSERT INTO `goods` VALUES ('2', '17寸全铝镁合金登机箱', '1', '1', '太空银', '100%铝镁合金 坚固抗冲', '699.00', '500', '0', '2018-08-03 15:18:37.000000', '1');
INSERT INTO `goods` VALUES ('2', '17寸全铝镁合金登机箱', '1', '1', '经典黑', '100%铝镁合金 坚固抗冲', '699.00', '500', '0', '2018-08-03 15:20:22.000000', '1');
INSERT INTO `goods` VALUES ('3', '20寸全铝镁合金登机箱', '1', '1', '太空银', '41升超薄坚固，100%铝镁合金', '699.00', '500', '0', '2018-08-03 15:23:46.000000', '1');
INSERT INTO `goods` VALUES ('3', '20寸全铝镁合金登机箱', '1', '1', '经典黑', '41升超薄坚固，100%铝镁合金', '699.00', '500', '0', '2018-08-03 15:22:03.000000', '1');
INSERT INTO `goods` VALUES ('3', '20寸全铝镁合金登机箱', '1', '1', '草木绿', '41升超薄坚固，100%铝镁合金', '699.00', '500', '0', '2018-08-03 15:24:30.000000', '1');
INSERT INTO `goods` VALUES ('4', '20寸 星空 纯PC铝框登机箱', '1', '1', '星空灰', '40升适中容量 独特星空效果', '699.00', '500', '0', '2018-08-03 15:25:34.000000', '1');
INSERT INTO `goods` VALUES ('4', '20寸 星空 纯PC铝框登机箱', '1', '1', '玫瑰金', '40升适中容量 独特星空效果', '699.00', '500', '0', '2018-08-03 15:27:37.000000', '1');
INSERT INTO `goods` VALUES ('4', '20寸 星空 纯PC铝框登机箱', '1', '1', '芥末黄', '40升适中容量 独特星空效果', '699.00', '500', '0', '2018-08-03 15:26:50.000000', '1');
INSERT INTO `goods` VALUES ('5', '28寸 纯PC“铝框”（非全铝）拉杆箱', '1', '1', '优雅白', '109升大容量，满足全家出行', '439.00', '500', '0', '2018-08-03 15:29:53.000000', '1');
INSERT INTO `goods` VALUES ('5', '28寸 纯PC“铝框”（非全铝）拉杆箱', '1', '1', '草木绿', '109升大容量，满足全家出行', '439.00', '500', '0', '2018-08-03 15:30:33.000000', '1');
INSERT INTO `goods` VALUES ('6', '24寸 纯PC“铝框”（非全铝）拉杆箱', '1', '1', '玫瑰金', '71升容量升级，灵活出行', '369.00', '500', '0', '2018-08-03 15:32:01.000000', '1');
INSERT INTO `goods` VALUES ('6', '24寸 纯PC“铝框”（非全铝）拉杆箱', '1', '1', '行军绿', '71升容量升级，灵活出行', '369.00', '500', '0', '2018-08-03 15:32:59.000000', '1');
INSERT INTO `goods` VALUES ('7', '翻盖涂层织物双肩包', '1', '2', '黑色', '科技感双肩包 防泼水处理', '269.00', '500', '0', '2018-08-03 15:34:13.000000', '1');
INSERT INTO `goods` VALUES ('8', '牛皮轻简电脑包', '1', '2', '15寸棕色', '利落线条，极简生活方式', '303.10', '500', '0', '2018-08-03 15:36:11.000000', '1');
INSERT INTO `goods` VALUES ('8', '牛皮轻简电脑包', '1', '2', '15寸黑色', '利落线条，极简生活方式', '303.10', '500', '0', '2018-08-03 15:35:34.000000', '1');
INSERT INTO `goods` VALUES ('9', '轻便杜邦纸双肩包', '1', '2', '灰色', '把轻、柔、韧发挥到超乎你想象', '169.00', '500', '0', '2018-08-03 15:37:50.000000', '1');
INSERT INTO `goods` VALUES ('9', '轻便杜邦纸双肩包', '1', '2', '蓝色', '把轻、柔、韧发挥到超乎你想象', '169.00', '500', '0', '2018-08-03 15:38:23.000000', '1');
INSERT INTO `goods` VALUES ('9', '轻便杜邦纸双肩包', '1', '2', '黑色', '把轻、柔、韧发挥到超乎你想象', '169.00', '500', '0', '2018-08-03 15:37:07.000000', '1');
INSERT INTO `goods` VALUES ('10', '牛皮复古公文包', '1', '2', '复古棕', 'MK制造商，定制牛皮优雅尽显', '599.00', '500', '0', '2018-08-03 15:39:14.000000', '1');
INSERT INTO `goods` VALUES ('11', '菱形拼接束口双肩包', '1', '2', '白色', '大容量设计，轻盈储物', '169.00', '500', '0', '2018-08-03 15:40:02.000000', '1');
INSERT INTO `goods` VALUES ('11', '菱形拼接束口双肩包', '1', '2', '黑色', '大容量设计，轻盈储物', '169.00', '500', '0', '2018-08-03 15:40:36.000000', '1');
INSERT INTO `goods` VALUES ('12', '小铆钉链条斜挎包', '1', '3', '白兰地色', '朋克铆钉 美丽也可以耍酷', '239.20', '500', '0', '2018-08-03 15:43:55.000000', '1');
INSERT INTO `goods` VALUES ('12', '小铆钉链条斜挎包', '1', '3', '青色', '朋克铆钉 美丽也可以耍酷', '239.20', '500', '0', '2018-08-03 15:44:37.000000', '1');
INSERT INTO `goods` VALUES ('13', '小铆钉皮质双肩包', '1', '3', '深灰色', '双肩包也可以很酷', '299.00', '500', '0', '2018-08-03 15:47:07.000000', '1');
INSERT INTO `goods` VALUES ('13', '小铆钉皮质双肩包', '1', '3', '蘑菇色', '双肩包也可以很酷', '299.00', '500', '0', '2018-08-03 15:46:06.000000', '1');
INSERT INTO `goods` VALUES ('13', '小铆钉皮质双肩包', '1', '3', '黑色', '双肩包也可以很酷', '299.00', '500', '0', '2018-08-03 15:45:31.000000', '1');
INSERT INTO `goods` VALUES ('14', '牛皮方形锁扣手提包', '1', '3', '灰白色', '轻复古 梯形利落包身', '499.00', '500', '0', '2018-08-03 15:49:04.000000', '1');
INSERT INTO `goods` VALUES ('14', '牛皮方形锁扣手提包', '1', '3', '雾霾蓝', '轻复古 梯形利落包身', '499.00', '500', '0', '2018-08-03 15:48:19.000000', '1');
INSERT INTO `goods` VALUES ('15', '幸运桃心链条单肩包', '1', '3', '金色', '金色守护精灵，随身出行', '199.00', '500', '0', '2018-08-03 15:50:13.000000', '1');
INSERT INTO `goods` VALUES ('16', '翻盖锁扣斜挎包', '1', '3', '脏粉色', '轻盈小巧 手拿的优雅', '399.00', '500', '0', '2018-08-03 15:51:45.000000', '1');
INSERT INTO `goods` VALUES ('16', '翻盖锁扣斜挎包', '1', '3', '黑色', '轻盈小巧 手拿的优雅', '399.00', '500', '0', '2018-08-03 15:51:08.000000', '1');
INSERT INTO `goods` VALUES ('17', '头层牛皮长款拉链钱包', '1', '4', '黑色', '进口头层牛皮，14道卡位奢享生活', '269.00', '500', '0', '2018-08-03 15:52:49.000000', '1');
INSERT INTO `goods` VALUES ('18', '牛皮十字纹长款钱包', '1', '4', '棕色', '简约商务派，13个储卡位', '209.00', '500', '0', '2018-08-03 15:54:28.000000', '1');
INSERT INTO `goods` VALUES ('18', '牛皮十字纹长款钱包', '1', '4', '黑色', '简约商务派，13个储卡位', '209.00', '500', '0', '2018-08-03 15:53:33.000000', '1');
INSERT INTO `goods` VALUES ('19', '意式牛皮卡包钱包两件套', '1', '4', '黑色', '意大利头层牛皮，可拆分为2包使用', '119.50', '500', '0', '2018-08-03 15:55:19.000000', '1');
INSERT INTO `goods` VALUES ('20', '头层牛皮卡包', '1', '4', '灰色', '3层卡位 精巧收纳', '79.00', '500', '0', '2018-08-03 15:56:46.000000', '1');
INSERT INTO `goods` VALUES ('20', '头层牛皮卡包', '1', '4', '藏青色', '3层卡位 精巧收纳', '79.00', '500', '0', '2018-08-03 15:56:13.000000', '1');
INSERT INTO `goods` VALUES ('21', '男式120支丝光莫代尔T恤', '2', '5', '灰蓝色', '德国机织，丝光工艺', '139.30', '500', '0', '2018-08-03 15:58:57.000000', '1');
INSERT INTO `goods` VALUES ('21', '男式120支丝光莫代尔T恤', '2', '5', '白色', '德国机织，丝光工艺', '139.30', '500', '0', '2018-08-03 15:58:17.000000', '1');
INSERT INTO `goods` VALUES ('22', '女式复古字母T恤衫', '2', '5', '白色', '复古潮搭，时髦新玩法', '75.00', '500', '0', '2018-08-03 16:00:48.000000', '1');
INSERT INTO `goods` VALUES ('22', '女式复古字母T恤衫', '2', '5', '酒红色', '复古潮搭，时髦新玩法', '75.00', '500', '0', '2018-08-03 16:00:05.000000', '1');
INSERT INTO `goods` VALUES ('23', '男式无缝休闲运动T恤', '2', '5', '麻灰L', 'Adidas制造商，快干透气网结构', '100.00', '500', '0', '2018-08-03 16:03:32.000000', '1');
INSERT INTO `goods` VALUES ('23', '男式无缝休闲运动T恤', '2', '5', '麻红M', 'Adidas制造商，快干透气网结构', '100.00', '500', '0', '2018-08-03 16:03:00.000000', '1');
INSERT INTO `goods` VALUES ('24', '女式纯棉百搭圆领T恤', '2', '5', '湖蓝色M', '新疆全棉的自然贴肤感', '49.00', '500', '0', '2018-08-03 16:04:57.000000', '1');
INSERT INTO `goods` VALUES ('24', '女式纯棉百搭圆领T恤', '2', '5', '白色XS', '新疆全棉的自然贴肤感', '49.00', '500', '0', '2018-08-03 16:04:28.000000', '1');
INSERT INTO `goods` VALUES ('25', '100%纯棉 女式纯棉百搭V领T恤', '2', '5', '白色XS', 'V领勾勒的极简主义', '49.00', '500', '0', '2018-08-03 16:05:53.000000', '1');
INSERT INTO `goods` VALUES ('25', '100%纯棉 女式纯棉百搭V领T恤', '2', '5', '黑色S', 'V领勾勒的极简主义', '49.00', '500', '0', '2018-08-03 16:06:29.000000', '1');
INSERT INTO `goods` VALUES ('26', '女式中长款条纹短袖T恤裙', '2', '5', '蓝白条纹S', '舒适与宽松，也能穿出时髦感', '99.00', '500', '0', '2018-08-03 16:07:21.000000', '1');
INSERT INTO `goods` VALUES ('26', '女式中长款条纹短袖T恤裙', '2', '5', '黑白条纹L', '舒适与宽松，也能穿出时髦感', '99.00', '500', '0', '2018-08-03 16:08:26.000000', '1');
INSERT INTO `goods` VALUES ('26', '女式中长款条纹短袖T恤裙', '2', '5', '黑粉条纹M', '舒适与宽松，也能穿出时髦感', '99.00', '500', '0', '2018-08-03 16:07:49.000000', '1');
INSERT INTO `goods` VALUES ('27', '法国雨露棉麻衬衫', '2', '6', '牛仔蓝S', '天然棉麻的触感与心跳', '99.00', '500', '0', '2018-08-03 16:09:25.000000', '1');
INSERT INTO `goods` VALUES ('27', '法国雨露棉麻衬衫', '2', '6', '藏蓝色M', '天然棉麻的触感与心跳', '99.00', '500', '0', '2018-08-03 16:09:55.000000', '1');
INSERT INTO `goods` VALUES ('28', '男式经典牛津纺衬衫', '2', '6', '浅蓝S', '舒适有风度 感受一气呵成的经典', '99.00', '500', '0', '2018-08-03 16:10:51.000000', '1');
INSERT INTO `goods` VALUES ('29', '男式超柔舒适商务衬衫', '2', '6', '蓝灰条纹L', '驰骋商场的温柔后盾', '799.00', '500', '0', '2018-08-03 16:12:20.000000', '1');
INSERT INTO `goods` VALUES ('29', '男式超柔舒适商务衬衫', '2', '6', '蓝灰条纹M', '驰骋商场的温柔后盾', '799.00', '500', '0', '2018-08-03 16:11:45.000000', '1');
INSERT INTO `goods` VALUES ('29', '男式超柔舒适商务衬衫', '2', '6', '蓝灰条纹XL', '驰骋商场的温柔后盾', '799.00', '500', '0', '2018-08-03 16:12:58.000000', '1');
INSERT INTO `goods` VALUES ('30', '男士全麻易打理短袖衬衫', '2', '6', '灰色XL', '高级欧洲亚麻，给你好品质', '224.00', '500', '0', '2018-08-03 16:15:01.000000', '1');
INSERT INTO `goods` VALUES ('30', '男士全麻易打理短袖衬衫', '2', '6', '白色S ', '高级欧洲亚麻，给你好品质', '224.00', '500', '0', '2018-08-03 16:13:47.000000', '1');
INSERT INTO `goods` VALUES ('30', '男士全麻易打理短袖衬衫', '2', '6', '藏青M', '高级欧洲亚麻，给你好品质', '224.00', '500', '0', '2018-08-03 16:14:20.000000', '1');
INSERT INTO `goods` VALUES ('31', '女式浪漫散摆修身连衣裙', '2', '7', '黑色S', '少即是多，浪漫圆摆气质大爱', '399.00', '500', '0', '2018-08-03 16:17:08.000000', '1');
INSERT INTO `goods` VALUES ('31', '女式浪漫散摆修身连衣裙', '2', '7', '黑色XS', '少即是多，浪漫圆摆气质大爱', '399.00', '500', '0', '2018-08-03 16:16:40.000000', '1');
INSERT INTO `goods` VALUES ('32', '女式提花针织半裙', '2', '7', '黑色L', '黑沙漠里盛开白珍珠，优雅鱼尾裙美而屏息', '259.00', '500', '0', '2018-08-03 16:19:04.000000', '1');
INSERT INTO `goods` VALUES ('32', '女式提花针织半裙', '2', '7', '黑色M ', '黑沙漠里盛开白珍珠，优雅鱼尾裙美而屏息', '259.00', '500', '0', '2018-08-03 16:18:37.000000', '1');
INSERT INTO `goods` VALUES ('32', '女式提花针织半裙', '2', '7', '黑色S', '黑沙漠里盛开白珍珠，优雅鱼尾裙美而屏息', '259.00', '500', '0', '2018-08-03 16:18:04.000000', '1');
INSERT INTO `goods` VALUES ('33', '女式经典纯色polo裙', '2', '7', '麻灰S', '活力冻龄，轻松穿出高级感', '169.00', '500', '0', '2018-08-03 16:19:53.000000', '1');
INSERT INTO `goods` VALUES ('34', '女式典雅真丝长吊带睡裙', '2', '7', '裸粉色S', 'BCBG制造商，多用打底', '230.30', '500', '0', '2018-08-03 16:20:44.000000', '1');
INSERT INTO `goods` VALUES ('34', '女式典雅真丝长吊带睡裙', '2', '7', '裸粉色XL', 'BCBG制造商，多用打底', '230.30', '500', '0', '2018-08-03 16:21:24.000000', '1');
INSERT INTO `goods` VALUES ('35', '设计师款 女式深绿印花睡袍', '2', '7', '绿色底印花S', '风情质感，享受一次森林女王的居家感', '119.40', '500', '0', '2018-08-03 16:22:36.000000', '1');
INSERT INTO `goods` VALUES ('36', '男式弹力基础牛仔裤', '2', '8', '原色黑M', '像是皮肤随你而动，自由弹力做灵魂的跟随者', '183.20', '500', '0', '2018-08-03 16:24:07.000000', '1');
INSERT INTO `goods` VALUES ('36', '男式弹力基础牛仔裤', '2', '8', '夏日蓝L', '像是皮肤随你而动，自由弹力做灵魂的跟随者', '183.20', '500', '0', '2018-08-03 16:25:37.000000', '1');
INSERT INTO `goods` VALUES ('36', '男式弹力基础牛仔裤', '2', '8', '水洗蓝L', '像是皮肤随你而动，自由弹力做灵魂的跟随者', '183.20', '500', '0', '2018-08-03 16:24:48.000000', '1');
INSERT INTO `goods` VALUES ('37', '男式自由体商务休闲裤', '2', '8', '卡其L', '拥戴皮肤呼吸的尊严，透气感让身体畅快淋漓。', '269.00', '500', '0', '2018-08-03 16:26:45.000000', '1');
INSERT INTO `goods` VALUES ('37', '男式自由体商务休闲裤', '2', '8', '黑色M', '拥戴皮肤呼吸的尊严，透气感让身体畅快淋漓。', '269.00', '500', '0', '2018-08-03 16:26:20.000000', '1');
INSERT INTO `goods` VALUES ('38', '女式潮流男友版型牛仔裤', '2', '8', '中蓝色', '时髦的中性潮流，教你帅过男友', '229.00', '500', '0', '2018-08-03 16:27:19.000000', '1');
INSERT INTO `goods` VALUES ('39', 'OL风 女士弹力百搭锥形裤', '2', '8', '黑色', '四季都爱，火遍时髦圈的锥形裤', '199.00', '500', '0', '2018-08-03 16:28:02.000000', '1');
INSERT INTO `goods` VALUES ('40', '爱的乐章黑巧克力礼盒304克', '3', '9', '304克', '乐有终章，爱无止境', '139.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('41', '韩式海苔糙米脆片', '3', '9', '清新番茄味', '纤香松脆，浓浓海味', '9.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('41', '韩式海苔糙米脆片', '3', '9', '蜂蜜玉米味', '纤香松脆，浓浓海味', '9.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('41', '韩式海苔糙米脆片', '3', '9', '辣爽芥末味', '纤香松脆，浓浓海味', '9.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('42', '鲜果冻 180克（6粒入）', '3', '9', ' 青梅鲜果冻', '果冻里面有真果粒', '13.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('42', '鲜果冻 180克（6粒入）', '3', '9', '菠萝鲜果冻', '果冻里面有真果粒', '13.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('42', '鲜果冻 180克（6粒入）', '3', '9', '雪梨鲜果冻', '果冻里面有真果粒', '13.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('42', '鲜果冻 180克（6粒入）', '3', '9', '黄桃鲜果冻', '果冻里面有真果粒', '13.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('43', '千层星云酥 180克/3颗', '3', '9', '一盒装', '酥饼界的小仙女', '22.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('44', '月见和菓子（棉花糖麻薯)', '3', '9', '抹茶味', '三层夹心，Q弹有料', '18.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('44', '月见和菓子（棉花糖麻薯)', '3', '9', '芒果味', '三层夹心，Q弹有料', '18.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('44', '月见和菓子（棉花糖麻薯)', '3', '9', '草莓味', '三层夹心，Q弹有料', '18.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('44', '月见和菓子（棉花糖麻薯)', '3', '9', '酸奶味', '三层夹心，Q弹有料', '18.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('45', '绿豆糕', '3', '9', '原味', '细腻松软，入口绵柔', '15.90', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('45', '绿豆糕', '3', '9', '玫瑰味', '细腻松软，入口绵柔', '15.90', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('46', '芒果干118克', '3', '10', '1袋装', '新鲜澳芒，甜鲜果味', '16.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('47', '草莓干118克', '3', '10', '118克', '甘甜不腻，清新自然', '20.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('48', '每日坚果(4种坚果+3种果干)', '3', '10', '175克', '营养配比，乐享生活', '35.80', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('49', '混合果仁 210克', '3', '10', '机智过仁', '美味搭配，均衡营养 ', '34.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('49', '混合果仁 210克', '3', '10', '美丽动仁', '美味搭配，均衡营养 ', '34.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('49', '混合果仁 210克', '3', '10', '能量超仁', '美味搭配，均衡营养 ', '34.50', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('50', '碧根果 148克', '3', '10', '148克', '口感香脆，营养健康', '28.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('51', '猪肉脯 150克', '3', '11', '原味', '大块猪后腿原肉切片', '18.90', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('51', '猪肉脯 150克', '3', '11', '香辣味', '大块猪后腿原肉切片', '18.90', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('51', '猪肉脯 150克', '3', '11', '黑胡椒味', '大块猪后腿原肉切片', '18.90', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('52', '炭火烤肉 150克', '3', '11', '原味', '碳烤风味，原肉鲜香', '19.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('52', '炭火烤肉 150克', '3', '11', '香辣味', '碳烤风味，原肉鲜香', '19.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('52', '炭火烤肉 150克', '3', '11', '黑椒味', '碳烤风味，原肉鲜香', '19.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('53', '炭火烤肠 150克', '3', '11', '原味', '原肉制作，鲜嫩弹润', '18.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('53', '炭火烤肠 150克', '3', '11', '奥尔良味', '原肉制作，鲜嫩弹润', '18.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('53', '炭火烤肠 150克', '3', '11', '川香味', '原肉制作，鲜嫩弹润', '18.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('54', '脆脆虾 20克', '3', '11', '原味', '整虾可食，口口松脆', '17.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('54', '脆脆虾 20克', '3', '11', '椒盐味', '整虾可食，口口松脆', '17.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('54', '脆脆虾 20克', '3', '11', '香辣味', '整虾可食，口口松脆', '17.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('55', '纯牛奶 250毫升*24盒', '3', '12', '12盒*2提', '滴滴香浓，纯粹好奶', '88.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('56', '云萃龙井茶 12瓶', '3', '12', '450毫升*12瓶', '有机茶叶萃取，无糖清香茶饮', '82.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('57', '菊花雪梨茶 12瓶', '3', '12', '450毫升*12瓶', '低糖果茶，消夏清饮', '82.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('58', '查威克干红葡萄酒年份礼盒套装', '3', '12', '750毫升*3瓶', '打败波尔多名庄，入选“十八罗汉”', '7999.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('59', '茅台镇的酒 500毫升', '3', '12', '500毫升', '品酒师专业甄选，酿酒人匠心打磨', '188.00', '500', '0', '2018-08-01 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('60', '金属亚光钢笔', '4', '13', '白色', '铱金暗尖，超顺书写', '79.00', '500', '0', '2018-08-02 18:15:56.000000', '1');
INSERT INTO `goods` VALUES ('60', '金属亚光钢笔', '4', '13', '红色', '铱金暗尖，超顺书写', '79.00', '500', '0', '2018-08-02 18:17:15.000000', '1');
INSERT INTO `goods` VALUES ('60', '金属亚光钢笔', '4', '13', '黑色', '铱金暗尖，超顺书写', '79.00', '500', '0', '2018-08-02 10:03:02.000000', '1');
INSERT INTO `goods` VALUES ('61', '星空原色水晶笔', '4', '13', '墨黑', '140颗原色水晶，璀璨如星', '27.50', '500', '0', '2018-08-02 18:18:02.000000', '1');
INSERT INTO `goods` VALUES ('61', '星空原色水晶笔', '4', '13', '釉白', '140颗原色水晶，璀璨如星', '27.50', '500', '0', '2018-08-02 18:18:37.000000', '1');
INSERT INTO `goods` VALUES ('62', '3支装 简约雾杆荧光笔', '4', '13', '黄色+橙色+绿色', '靓丽不伤眼，一目了然', '14.90', '500', '0', '2018-08-02 18:20:00.000000', '1');
INSERT INTO `goods` VALUES ('63', '单层磨砂笔盒', '4', '13', '17.5*5*2.2cm', '磨砂手感，超轻重量', '9.90', '500', '0', '2018-08-02 18:22:34.000000', '1');
INSERT INTO `goods` VALUES ('63', '单层磨砂笔盒', '4', '13', '19*6.2*2.2cm', '磨砂手感，超轻重量', '9.90', '500', '0', '2018-08-02 18:22:01.000000', '1');
INSERT INTO `goods` VALUES ('64', '透明磨砂双环笔记本', '4', '13', '方格A5', '磨砂质感， 80g道林纸', '12.90', '500', '0', '2018-08-02 18:24:19.000000', '1');
INSERT INTO `goods` VALUES ('64', '透明磨砂双环笔记本', '4', '13', '横线A5', '磨砂质感， 80g道林纸', '12.90', '500', '0', '2018-08-02 18:23:25.000000', '1');
INSERT INTO `goods` VALUES ('65', '炫彩系列办公工具组合', '4', '13', '灰色', '四种组合，便利办公', '18.00', '500', '0', '2018-08-02 18:25:55.000000', '1');
INSERT INTO `goods` VALUES ('65', '炫彩系列办公工具组合', '4', '13', '粉色', '四种组合，便利办公', '18.00', '500', '0', '2018-08-02 18:24:56.000000', '1');
INSERT INTO `goods` VALUES ('65', '炫彩系列办公工具组合', '4', '13', '绿色', '四种组合，便利办公', '18.00', '500', '0', '2018-08-02 18:25:23.000000', '1');
INSERT INTO `goods` VALUES ('66', '酷动系列 骑行眼镜', '4', '14', '镀膜', '轻巧防风，骑行如风', '126.70', '500', '0', '2018-08-02 18:27:22.000000', '1');
INSERT INTO `goods` VALUES ('67', '户外露营秋千吊床', '4', '14', '气质灰', '强韧材质，小巧便携', '69.00', '500', '0', '2018-08-02 18:29:08.000000', '1');
INSERT INTO `goods` VALUES ('67', '户外露营秋千吊床', '4', '14', '沙漠驼', '强韧材质，小巧便携', '69.00', '500', '0', '2018-08-02 18:29:43.000000', '1');
INSERT INTO `goods` VALUES ('68', '双层防风防潮自动展开3-4人帐篷', '4', '14', '暗夜灰', '轻松搭建，户外必备', '349.00', '500', '0', '2018-08-02 18:31:10.000000', '1');
INSERT INTO `goods` VALUES ('68', '双层防风防潮自动展开3-4人帐篷', '4', '14', '沙漠驼', '轻松搭建，户外必备', '349.00', '500', '0', '2018-08-02 18:30:31.000000', '1');
INSERT INTO `goods` VALUES ('69', '健身瑜伽垫', '4', '14', '粉色', '超强回弹，让身体自由伸展', '79.00', '500', '0', '2018-08-02 18:33:28.000000', '1');
INSERT INTO `goods` VALUES ('69', '健身瑜伽垫', '4', '14', '紫色', '超强回弹，让身体自由伸展', '79.00', '500', '0', '2018-08-02 18:32:52.000000', '1');
INSERT INTO `goods` VALUES ('69', '健身瑜伽垫', '4', '14', '蓝色', '超强回弹，让身体自由伸展', '79.00', '500', '0', '2018-08-02 18:34:12.000000', '1');
INSERT INTO `goods` VALUES ('70', '音伏IN-VOICE 动圈高保真耳机', '4', '15', '红色', '强劲低频，澎湃低音', '799.00', '500', '0', '2018-08-02 18:34:47.000000', '1');
INSERT INTO `goods` VALUES ('70', '音伏IN-VOICE 动圈高保真耳机', '4', '15', '黑色', '强劲低频，澎湃低音', '799.00', '500', '0', '2018-08-02 18:35:39.000000', '1');
INSERT INTO `goods` VALUES ('71', '网易智造双子星蓝牙音箱-pro版', '4', '15', '白色', '便携体质 HIFI音质 3D音箱', '299.00', '500', '0', '2018-08-02 18:37:17.000000', '1');
INSERT INTO `goods` VALUES ('71', '网易智造双子星蓝牙音箱-pro版', '4', '15', '黑色', '便携体质 HIFI音质 3D音箱', '299.00', '500', '0', '2018-08-02 18:36:20.000000', '1');
INSERT INTO `goods` VALUES ('72', '音伏IVIM-T1入耳式挂耳单动圈高保真耳机', '4', '15', '冷茶灰', '沉浸入耳 动圈保真', '149.00', '500', '0', '2018-08-02 18:39:10.000000', '1');
INSERT INTO `goods` VALUES ('72', '音伏IVIM-T1入耳式挂耳单动圈高保真耳机', '4', '15', '激情红', '沉浸入耳 动圈保真', '149.00', '500', '0', '2018-08-02 18:38:40.000000', '1');
INSERT INTO `goods` VALUES ('72', '音伏IVIM-T1入耳式挂耳单动圈高保真耳机', '4', '15', '雾霾蓝', '沉浸入耳 动圈保真', '149.00', '500', '0', '2018-08-02 18:38:02.000000', '1');
INSERT INTO `goods` VALUES ('73', '网易智造X3 Plus蓝牙HiFi耳机', '4', '15', '灰色', '新一代X3蓝牙耳机 全新升级', '199.00', '500', '0', '2018-08-02 18:40:04.000000', '1');
INSERT INTO `goods` VALUES ('73', '网易智造X3 Plus蓝牙HiFi耳机', '4', '15', '白色', '新一代X3蓝牙耳机 全新升级', '199.00', '500', '0', '2018-08-02 18:41:05.000000', '1');
INSERT INTO `goods` VALUES ('73', '网易智造X3 Plus蓝牙HiFi耳机', '4', '15', '黑色', '新一代X3蓝牙耳机 全新升级', '199.00', '500', '0', '2018-08-02 18:40:37.000000', '1');
INSERT INTO `goods` VALUES ('74', '瑞鸣收藏版黑胶唱片-被遗忘的时光', '4', '15', '三国', '爵士醇香，撩拨醉心', '248.00', '500', '0', '2018-08-02 18:42:35.000000', '1');
INSERT INTO `goods` VALUES ('74', '瑞鸣收藏版黑胶唱片-被遗忘的时光', '4', '15', '伶歌', '爵士醇香，撩拨醉心', '248.00', '500', '0', '2018-08-02 18:41:51.000000', '1');
INSERT INTO `goods` VALUES ('74', '瑞鸣收藏版黑胶唱片-被遗忘的时光', '4', '15', '玫瑰三愿', '爵士醇香，撩拨醉心', '248.00', '500', '0', '2018-08-02 18:43:33.000000', '1');
INSERT INTO `goods` VALUES ('74', '瑞鸣收藏版黑胶唱片-被遗忘的时光', '4', '15', '粉墨是梦2', '爵士醇香，撩拨醉心', '248.00', '500', '0', '2018-08-02 18:43:03.000000', '1');
INSERT INTO `goods` VALUES ('74', '瑞鸣收藏版黑胶唱片-被遗忘的时光', '4', '15', '被遗忘的时光', '爵士醇香，撩拨醉心', '248.00', '500', '0', '2018-08-02 18:44:23.000000', '1');
INSERT INTO `goods` VALUES ('75', '复仇者联盟 英雄徽标 钥匙链挂件 漫威', '4', '16', '复仇者联盟', '超英集结，与你共战', '66.00', '500', '0', '2018-08-02 18:45:01.000000', '1');
INSERT INTO `goods` VALUES ('76', '黑寡妇&钢铁侠 短袖T恤 漫威', '4', '16', 'L', '黑寡妇与钢铁侠的再度重逢', '138.00', '500', '0', '2018-08-02 18:47:24.000000', '1');
INSERT INTO `goods` VALUES ('76', '黑寡妇&钢铁侠 短袖T恤 漫威', '4', '16', 'M', '黑寡妇与钢铁侠的再度重逢', '138.00', '500', '0', '2018-08-02 18:45:38.000000', '1');
INSERT INTO `goods` VALUES ('76', '黑寡妇&钢铁侠 短袖T恤 漫威', '4', '16', 'XL', '黑寡妇与钢铁侠的再度重逢', '138.00', '500', '0', '2018-08-02 18:48:00.000000', '1');
INSERT INTO `goods` VALUES ('76', '黑寡妇&钢铁侠 短袖T恤 漫威', '4', '16', 'XXL', '黑寡妇与钢铁侠的再度重逢', '138.00', '500', '0', '2018-08-02 18:48:45.000000', '1');
INSERT INTO `goods` VALUES ('77', '美国队长漫画线稿 短袖T恤 漫威', '4', '16', 'L', '一起变身成为超级英雄', '138.00', '500', '0', '2018-08-02 18:49:25.000000', '1');
INSERT INTO `goods` VALUES ('77', '美国队长漫画线稿 短袖T恤 漫威', '4', '16', 'M', '一起变身成为超级英雄', '138.00', '500', '0', '2018-08-02 18:50:28.000000', '1');
INSERT INTO `goods` VALUES ('77', '美国队长漫画线稿 短袖T恤 漫威', '4', '16', 'XL', '一起变身成为超级英雄', '138.00', '500', '0', '2018-08-02 18:50:00.000000', '1');
INSERT INTO `goods` VALUES ('77', '美国队长漫画线稿 短袖T恤 漫威', '4', '16', 'XXL', '一起变身成为超级英雄', '138.00', '500', '0', '2018-08-02 18:50:59.000000', '1');
INSERT INTO `goods` VALUES ('78', '瓦坎达图腾 杯垫 漫威黑豹', '4', '16', 'A款', '图腾之力贴心隔热', '21.00', '500', '0', '2018-08-02 18:51:31.000000', '1');
INSERT INTO `goods` VALUES ('78', '瓦坎达图腾 杯垫 漫威黑豹', '4', '16', 'B款', '图腾之力贴心隔热', '21.00', '500', '0', '2018-08-02 18:52:18.000000', '1');
INSERT INTO `goods` VALUES ('79', '网易青果 高清网络智能摄像头 专业版', '4', '16', '夜空黑', '专业摄像高清视野', '388.00', '500', '0', '2018-08-02 18:53:03.000000', '1');

-- ----------------------------
-- Table structure for `goodsmaintype`
-- ----------------------------
DROP TABLE IF EXISTS `goodsmaintype`;
CREATE TABLE `goodsmaintype` (
  `goodsMainTypeID` int(5) NOT NULL AUTO_INCREMENT,
  `goodsMainType` varchar(50) NOT NULL,
  `pictureID` int(5) NOT NULL,
  PRIMARY KEY (`goodsMainTypeID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goodsmaintype
-- ----------------------------
INSERT INTO `goodsmaintype` VALUES ('1', '箱包配饰', '1');
INSERT INTO `goodsmaintype` VALUES ('2', '服装', '2');
INSERT INTO `goodsmaintype` VALUES ('3', '饮食', '3');
INSERT INTO `goodsmaintype` VALUES ('4', '文体', '4');

-- ----------------------------
-- Table structure for `goodssecondarytype`
-- ----------------------------
DROP TABLE IF EXISTS `goodssecondarytype`;
CREATE TABLE `goodssecondarytype` (
  `goodsSecondaryTypeID` int(5) NOT NULL,
  `goodsMainTypeID` int(5) NOT NULL,
  `goodsSecondaryType` varchar(50) NOT NULL,
  `goodsSecondaryTypeExplain` varchar(50) NOT NULL,
  `pictureID` int(5) NOT NULL,
  PRIMARY KEY (`goodsSecondaryTypeID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goodssecondarytype
-- ----------------------------
INSERT INTO `goodssecondarytype` VALUES ('1', '1', '行李箱包', '轻奢行李箱陪你走天下', '5');
INSERT INTO `goodssecondarytype` VALUES ('2', '1', '男士箱包', 'MK制造商', '6');
INSERT INTO `goodssecondarytype` VALUES ('3', '1', '女士箱包', 'Alexander McQueen制造商', '7');
INSERT INTO `goodssecondarytype` VALUES ('4', '1', '钱包配件', 'TUMI制造商', '8');
INSERT INTO `goodssecondarytype` VALUES ('5', '2', '清爽短袖', '自在而潇洒的穿着感', '9');
INSERT INTO `goodssecondarytype` VALUES ('6', '2', '时尚衬衫', '经典百搭 精致设计', '10');
INSERT INTO `goodssecondarytype` VALUES ('7', '2', '性感长裙', '舒适好穿搭', '11');
INSERT INTO `goodssecondarytype` VALUES ('8', '2', '潮流裤类', '高质感面料 休闲商务两适宜', '12');
INSERT INTO `goodssecondarytype` VALUES ('9', '3', '美味零食', '原香鲜材，以小食之味，带来味蕾惊喜', '13');
INSERT INTO `goodssecondarytype` VALUES ('10', '3', '水果坚果', '品尝与收获到的是自然的味道', '14');
INSERT INTO `goodssecondarytype` VALUES ('11', '3', '新鲜肉类', '真嗜肉者，都爱这一味，佳肴美馔真滋味', '15');
INSERT INTO `goodssecondarytype` VALUES ('12', '3', '饮料酒水', '美酒佳酿，用心典藏', '16');
INSERT INTO `goodssecondarytype` VALUES ('13', '4', '精美文具', '找回书写的力量', '17');
INSERT INTO `goodssecondarytype` VALUES ('14', '4', '运动户外', 'MUJI、Nike等制造商出品', '18');
INSERT INTO `goodssecondarytype` VALUES ('15', '4', '音乐相关', '经典音乐，用心典藏，瑞鸣音乐大师匠心打造', '19');
INSERT INTO `goodssecondarytype` VALUES ('16', '4', '影视相关', '漫威DC系列影视周边', '20');

-- ----------------------------
-- Table structure for `indent`
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent` (
  `indentID` int(5) NOT NULL AUTO_INCREMENT,
  `customerID` int(5) NOT NULL,
  `totalPrice` double(8,2) NOT NULL,
  `indentTime` datetime(6) NOT NULL,
  `addressID` int(5) NOT NULL,
  `indentState` int(2) NOT NULL,
  `expressCode` int(18) NOT NULL,
  PRIMARY KEY (`indentID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('1', '1', '79.00', '2018-07-27 19:00:28.000000', '1', '0', '1');

-- ----------------------------
-- Table structure for `indentdetail`
-- ----------------------------
DROP TABLE IF EXISTS `indentdetail`;
CREATE TABLE `indentdetail` (
  `indentID` int(5) NOT NULL,
  `goodsID` int(5) NOT NULL,
  `goodsPrice` double(8,2) NOT NULL,
  `goodsCount` int(5) NOT NULL,
  `totalPrice` double(8,2) NOT NULL,
  `goodsSpecify` varchar(50) NOT NULL,
  PRIMARY KEY (`indentID`,`goodsID`,`goodsSpecify`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of indentdetail
-- ----------------------------
INSERT INTO `indentdetail` VALUES ('1', '60', '79.00', '1', '79.00', '白色');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `managerID` int(5) NOT NULL AUTO_INCREMENT,
  `managerName` varchar(20) NOT NULL,
  `managerPwd` varchar(20) NOT NULL,
  PRIMARY KEY (`managerID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `goodsID` int(5) NOT NULL,
  `pictureID` int(5) NOT NULL AUTO_INCREMENT,
  `picturePath` varchar(100) NOT NULL,
  PRIMARY KEY (`pictureID`,`goodsID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('-1', '1', '/SE3-F4/img/icon/category1.jpg');
INSERT INTO `picture` VALUES ('-1', '2', '/SE3-F4/img/icon/category2.jpg');
INSERT INTO `picture` VALUES ('-1', '3', '/SE3-F4/img/icon/category3.jpg');
INSERT INTO `picture` VALUES ('-1', '4', '/SE3-F4/img/icon/category4.jpg');
INSERT INTO `picture` VALUES ('-1', '5', '/SE3-F4/img/icon/xingli.png');
INSERT INTO `picture` VALUES ('-1', '6', '/SE3-F4/img/icon/nanxing.png');
INSERT INTO `picture` VALUES ('-1', '7', '/SE3-F4/img/icon/nvxing.png');
INSERT INTO `picture` VALUES ('-1', '8', '/SE3-F4/img/icon/qianbao.png');
INSERT INTO `picture` VALUES ('-1', '9', '/SE3-F4/img/icon/Tshirt.png');
INSERT INTO `picture` VALUES ('-1', '10', '/SE3-F4/img/icon/shirt.png');
INSERT INTO `picture` VALUES ('-1', '11', '/SE3-F4/img/icon/dress.png');
INSERT INTO `picture` VALUES ('-1', '12', '/SE3-F4/img/icon/ku.png');
INSERT INTO `picture` VALUES ('-1', '13', '/SE3-F4/img/icon/xiaochi.png');
INSERT INTO `picture` VALUES ('-1', '14', '/SE3-F4/img/icon/shuiguo.png');
INSERT INTO `picture` VALUES ('-1', '15', '/SE3-F4/img/icon/rou.png');
INSERT INTO `picture` VALUES ('-1', '16', '/SE3-F4/img/icon/yinliao.png');
INSERT INTO `picture` VALUES ('-1', '17', '/SE3-F4/img/icon/wenju.png');
INSERT INTO `picture` VALUES ('-1', '18', '/SE3-F4/img/icon/huwai.png');
INSERT INTO `picture` VALUES ('-1', '19', '/SE3-F4/img/icon/yinyue.png');
INSERT INTO `picture` VALUES ('-1', '20', '/SE3-F4/img/icon/yinshi.png');
INSERT INTO `picture` VALUES ('1', '21', '/SE3-F4/img/product/product1_1.png');
INSERT INTO `picture` VALUES ('1', '22', '/SE3-F4/img/product/product1_2.jpg');
INSERT INTO `picture` VALUES ('1', '23', '/SE3-F4/img/product/product1_3.jpg');
INSERT INTO `picture` VALUES ('1', '24', '/SE3-F4/img/product/product1_4.jpg');
INSERT INTO `picture` VALUES ('1', '25', '/SE3-F4/img/product/product1_5.jpg');
INSERT INTO `picture` VALUES ('1', '26', '/SE3-F4/img/product/product1_6.jpg');
INSERT INTO `picture` VALUES ('2', '27', '/SE3-F4/img/product/product2_1.png');
INSERT INTO `picture` VALUES ('2', '28', '/SE3-F4/img/product/product2_2.jpg');
INSERT INTO `picture` VALUES ('2', '29', '/SE3-F4/img/product/product2_3.jpg');
INSERT INTO `picture` VALUES ('2', '30', '/SE3-F4/img/product/product2_4.jpg');
INSERT INTO `picture` VALUES ('2', '31', '/SE3-F4/img/product/product2_5.jpg');
INSERT INTO `picture` VALUES ('2', '32', '/SE3-F4/img/product/product2_6.jpg');
INSERT INTO `picture` VALUES ('3', '33', '/SE3-F4/img/product/product3_1.png');
INSERT INTO `picture` VALUES ('3', '34', '/SE3-F4/img/product/product3_2.jpg');
INSERT INTO `picture` VALUES ('3', '35', '/SE3-F4/img/product/product3_3.jpg');
INSERT INTO `picture` VALUES ('3', '36', '/SE3-F4/img/product/product3_4.jpg');
INSERT INTO `picture` VALUES ('3', '37', '/SE3-F4/img/product/product3_5.jpg');
INSERT INTO `picture` VALUES ('3', '38', '/SE3-F4/img/product/product3_6.jpg');
INSERT INTO `picture` VALUES ('4', '39', '/SE3-F4/img/product/product4_1.png');
INSERT INTO `picture` VALUES ('4', '40', '/SE3-F4/img/product/product4_2.jpg');
INSERT INTO `picture` VALUES ('4', '41', '/SE3-F4/img/product/product4_3.jpg');
INSERT INTO `picture` VALUES ('4', '42', '/SE3-F4/img/product/product4_4.jpg');
INSERT INTO `picture` VALUES ('4', '43', '/SE3-F4/img/product/product4_5.jpg');
INSERT INTO `picture` VALUES ('4', '44', '/SE3-F4/img/product/product4_6.jpg');
INSERT INTO `picture` VALUES ('5', '45', '/SE3-F4/img/product/product5_1.png');
INSERT INTO `picture` VALUES ('5', '46', '/SE3-F4/img/product/product5_2.jpg');
INSERT INTO `picture` VALUES ('5', '47', '/SE3-F4/img/product/product5_3.jpg');
INSERT INTO `picture` VALUES ('5', '48', '/SE3-F4/img/product/product5_4.jpg');
INSERT INTO `picture` VALUES ('5', '49', '/SE3-F4/img/product/product5_5.jpg');
INSERT INTO `picture` VALUES ('5', '50', '/SE3-F4/img/product/product5_6.jpg');
INSERT INTO `picture` VALUES ('6', '51', '/SE3-F4/img/product/product6_1.png');
INSERT INTO `picture` VALUES ('6', '52', '/SE3-F4/img/product/product6_2.jpg');
INSERT INTO `picture` VALUES ('6', '53', '/SE3-F4/img/product/product6_3.jpg');
INSERT INTO `picture` VALUES ('6', '54', '/SE3-F4/img/product/product6_4.jpg');
INSERT INTO `picture` VALUES ('6', '55', '/SE3-F4/img/product/product6_5.jpg');
INSERT INTO `picture` VALUES ('6', '56', '/SE3-F4/img/product/product6_6.jpg');
INSERT INTO `picture` VALUES ('7', '57', '/SE3-F4/img/product/product7_1.png');
INSERT INTO `picture` VALUES ('7', '58', '/SE3-F4/img/product/product7_2.jpg');
INSERT INTO `picture` VALUES ('7', '59', '/SE3-F4/img/product/product7_3.jpg');
INSERT INTO `picture` VALUES ('7', '60', '/SE3-F4/img/product/product7_4.jpg');
INSERT INTO `picture` VALUES ('7', '61', '/SE3-F4/img/product/product7_5.jpg');
INSERT INTO `picture` VALUES ('7', '62', '/SE3-F4/img/product/product7_6.jpg');
INSERT INTO `picture` VALUES ('8', '63', '/SE3-F4/img/product/product8_1.png');
INSERT INTO `picture` VALUES ('8', '64', '/SE3-F4/img/product/product8_2.jpg');
INSERT INTO `picture` VALUES ('8', '65', '/SE3-F4/img/product/product8_3.jpg');
INSERT INTO `picture` VALUES ('8', '66', '/SE3-F4/img/product/product8_4.jpg');
INSERT INTO `picture` VALUES ('8', '67', '/SE3-F4/img/product/product8_5.jpg');
INSERT INTO `picture` VALUES ('8', '68', '/SE3-F4/img/product/product8_6.jpg');
INSERT INTO `picture` VALUES ('9', '69', '/SE3-F4/img/product/product9_1.png');
INSERT INTO `picture` VALUES ('9', '70', '/SE3-F4/img/product/product9_2.jpg');
INSERT INTO `picture` VALUES ('9', '71', '/SE3-F4/img/product/product9_3.jpg');
INSERT INTO `picture` VALUES ('9', '72', '/SE3-F4/img/product/product9_4.jpg');
INSERT INTO `picture` VALUES ('9', '73', '/SE3-F4/img/product/product9_5.jpg');
INSERT INTO `picture` VALUES ('9', '74', '/SE3-F4/img/product/product9_6.jpg');
INSERT INTO `picture` VALUES ('10', '75', '/SE3-F4/img/product/product10_1.png');
INSERT INTO `picture` VALUES ('10', '76', '/SE3-F4/img/product/product10_2.jpg');
INSERT INTO `picture` VALUES ('10', '77', '/SE3-F4/img/product/product10_3.jpg');
INSERT INTO `picture` VALUES ('10', '78', '/SE3-F4/img/product/product10_4.jpg');
INSERT INTO `picture` VALUES ('10', '79', '/SE3-F4/img/product/product10_5.jpg');
INSERT INTO `picture` VALUES ('10', '80', '/SE3-F4/img/product/product10_6.jpg');
INSERT INTO `picture` VALUES ('11', '81', '/SE3-F4/img/product/product11_1.png');
INSERT INTO `picture` VALUES ('11', '82', '/SE3-F4/img/product/product11_2.jpg');
INSERT INTO `picture` VALUES ('11', '83', '/SE3-F4/img/product/product11_3.jpg');
INSERT INTO `picture` VALUES ('11', '84', '/SE3-F4/img/product/product11_4.jpg');
INSERT INTO `picture` VALUES ('11', '85', '/SE3-F4/img/product/product11_5.jpg');
INSERT INTO `picture` VALUES ('11', '86', '/SE3-F4/img/product/product11_6.jpg');
INSERT INTO `picture` VALUES ('12', '87', '/SE3-F4/img/product/product12_1.png');
INSERT INTO `picture` VALUES ('12', '88', '/SE3-F4/img/product/product12_2.jpg');
INSERT INTO `picture` VALUES ('12', '89', '/SE3-F4/img/product/product12_3.jpg');
INSERT INTO `picture` VALUES ('12', '90', '/SE3-F4/img/product/product12_4.jpg');
INSERT INTO `picture` VALUES ('12', '91', '/SE3-F4/img/product/product12_5.jpg');
INSERT INTO `picture` VALUES ('12', '92', '/SE3-F4/img/product/product12_6.jpg');
INSERT INTO `picture` VALUES ('13', '93', '/SE3-F4/img/product/product13_1.png');
INSERT INTO `picture` VALUES ('13', '94', '/SE3-F4/img/product/product13_2.jpg');
INSERT INTO `picture` VALUES ('13', '95', '/SE3-F4/img/product/product13_3.jpg');
INSERT INTO `picture` VALUES ('13', '96', '/SE3-F4/img/product/product13_4.jpg');
INSERT INTO `picture` VALUES ('13', '97', '/SE3-F4/img/product/product13_5.jpg');
INSERT INTO `picture` VALUES ('13', '98', '/SE3-F4/img/product/product13_6.jpg');
INSERT INTO `picture` VALUES ('14', '99', '/SE3-F4/img/product/product14_1.png');
INSERT INTO `picture` VALUES ('14', '100', '/SE3-F4/img/product/product14_2.jpg');
INSERT INTO `picture` VALUES ('14', '101', '/SE3-F4/img/product/product14_3.jpg');
INSERT INTO `picture` VALUES ('14', '102', '/SE3-F4/img/product/product14_4.jpg');
INSERT INTO `picture` VALUES ('14', '103', '/SE3-F4/img/product/product14_5.jpg');
INSERT INTO `picture` VALUES ('14', '104', '/SE3-F4/img/product/product14_6.jpg');
INSERT INTO `picture` VALUES ('15', '105', '/SE3-F4/img/product/product15_1.png');
INSERT INTO `picture` VALUES ('15', '106', '/SE3-F4/img/product/product15_2.jpg');
INSERT INTO `picture` VALUES ('15', '107', '/SE3-F4/img/product/product15_3.jpg');
INSERT INTO `picture` VALUES ('15', '108', '/SE3-F4/img/product/product15_4.jpg');
INSERT INTO `picture` VALUES ('15', '109', '/SE3-F4/img/product/product15_5.jpg');
INSERT INTO `picture` VALUES ('15', '110', '/SE3-F4/img/product/product15_6.jpg');
INSERT INTO `picture` VALUES ('16', '111', '/SE3-F4/img/product/product16_1.png');
INSERT INTO `picture` VALUES ('16', '112', '/SE3-F4/img/product/product16_2.jpg');
INSERT INTO `picture` VALUES ('16', '113', '/SE3-F4/img/product/product16_3.jpg');
INSERT INTO `picture` VALUES ('16', '114', '/SE3-F4/img/product/product16_4.jpg');
INSERT INTO `picture` VALUES ('16', '115', '/SE3-F4/img/product/product16_5.jpg');
INSERT INTO `picture` VALUES ('16', '116', '/SE3-F4/img/product/product16_6.jpg');
INSERT INTO `picture` VALUES ('17', '117', '/SE3-F4/img/product/product17_1.png');
INSERT INTO `picture` VALUES ('17', '118', '/SE3-F4/img/product/product17_2.jpg');
INSERT INTO `picture` VALUES ('17', '119', '/SE3-F4/img/product/product17_3.jpg');
INSERT INTO `picture` VALUES ('17', '120', '/SE3-F4/img/product/product17_4.jpg');
INSERT INTO `picture` VALUES ('17', '121', '/SE3-F4/img/product/product17_5.jpg');
INSERT INTO `picture` VALUES ('17', '122', '/SE3-F4/img/product/product17_6.jpg');
INSERT INTO `picture` VALUES ('18', '123', '/SE3-F4/img/product/product18_1.png');
INSERT INTO `picture` VALUES ('18', '124', '/SE3-F4/img/product/product18_2.jpg');
INSERT INTO `picture` VALUES ('18', '125', '/SE3-F4/img/product/product18_3.jpg');
INSERT INTO `picture` VALUES ('18', '126', '/SE3-F4/img/product/product18_4.jpg');
INSERT INTO `picture` VALUES ('18', '127', '/SE3-F4/img/product/product18_5.jpg');
INSERT INTO `picture` VALUES ('18', '128', '/SE3-F4/img/product/product18_6.jpg');
INSERT INTO `picture` VALUES ('19', '129', '/SE3-F4/img/product/product19_1.png');
INSERT INTO `picture` VALUES ('19', '130', '/SE3-F4/img/product/product19_2.jpg');
INSERT INTO `picture` VALUES ('19', '131', '/SE3-F4/img/product/product19_3.jpg');
INSERT INTO `picture` VALUES ('19', '132', '/SE3-F4/img/product/product19_4.jpg');
INSERT INTO `picture` VALUES ('19', '133', '/SE3-F4/img/product/product19_5.jpg');
INSERT INTO `picture` VALUES ('19', '134', '/SE3-F4/img/product/product19_6.jpg');
INSERT INTO `picture` VALUES ('20', '135', '/SE3-F4/img/product/product20_1.png');
INSERT INTO `picture` VALUES ('20', '136', '/SE3-F4/img/product/product20_2.jpg');
INSERT INTO `picture` VALUES ('20', '137', '/SE3-F4/img/product/product20_3.jpg');
INSERT INTO `picture` VALUES ('20', '138', '/SE3-F4/img/product/product20_4.jpg');
INSERT INTO `picture` VALUES ('20', '139', '/SE3-F4/img/product/product20_5.jpg');
INSERT INTO `picture` VALUES ('20', '140', '/SE3-F4/img/product/product20_6.jpg');
INSERT INTO `picture` VALUES ('21', '141', '/SE3-F4/img/product/product21_1.png');
INSERT INTO `picture` VALUES ('21', '142', '/SE3-F4/img/product/product21_2.jpg');
INSERT INTO `picture` VALUES ('21', '143', '/SE3-F4/img/product/product21_3.jpg');
INSERT INTO `picture` VALUES ('21', '144', '/SE3-F4/img/product/product21_4.jpg');
INSERT INTO `picture` VALUES ('21', '145', '/SE3-F4/img/product/product21_5.jpg');
INSERT INTO `picture` VALUES ('21', '146', '/SE3-F4/img/product/product21_6.jpg');
INSERT INTO `picture` VALUES ('22', '147', '/SE3-F4/img/product/product22_1.png');
INSERT INTO `picture` VALUES ('22', '148', '/SE3-F4/img/product/product22_2.jpg');
INSERT INTO `picture` VALUES ('22', '149', '/SE3-F4/img/product/product22_3.jpg');
INSERT INTO `picture` VALUES ('22', '150', '/SE3-F4/img/product/product22_4.jpg');
INSERT INTO `picture` VALUES ('22', '151', '/SE3-F4/img/product/product22_5.jpg');
INSERT INTO `picture` VALUES ('22', '152', '/SE3-F4/img/product/product22_6.jpg');
INSERT INTO `picture` VALUES ('23', '153', '/SE3-F4/img/product/product23_1.png');
INSERT INTO `picture` VALUES ('23', '154', '/SE3-F4/img/product/product23_2.png');
INSERT INTO `picture` VALUES ('23', '155', '/SE3-F4/img/product/product23_3.png');
INSERT INTO `picture` VALUES ('23', '156', '/SE3-F4/img/product/product23_4.png');
INSERT INTO `picture` VALUES ('23', '157', '/SE3-F4/img/product/product23_5.png');
INSERT INTO `picture` VALUES ('23', '158', '/SE3-F4/img/product/product23_6.jpg');
INSERT INTO `picture` VALUES ('24', '159', '/SE3-F4/img/product/product24_1.png');
INSERT INTO `picture` VALUES ('24', '160', '/SE3-F4/img/product/product24_2.jpg');
INSERT INTO `picture` VALUES ('24', '161', '/SE3-F4/img/product/product24_3.jpg');
INSERT INTO `picture` VALUES ('24', '162', '/SE3-F4/img/product/product24_4.jpg');
INSERT INTO `picture` VALUES ('24', '163', '/SE3-F4/img/product/product24_5.jpg');
INSERT INTO `picture` VALUES ('24', '164', '/SE3-F4/img/product/product24_6.jpg');
INSERT INTO `picture` VALUES ('25', '165', '/SE3-F4/img/product/product25_1.png');
INSERT INTO `picture` VALUES ('25', '166', '/SE3-F4/img/product/product25_2.jpg');
INSERT INTO `picture` VALUES ('25', '167', '/SE3-F4/img/product/product25_3.jpg');
INSERT INTO `picture` VALUES ('25', '168', '/SE3-F4/img/product/product25_4.jpg');
INSERT INTO `picture` VALUES ('25', '169', '/SE3-F4/img/product/product25_5.jpg');
INSERT INTO `picture` VALUES ('25', '170', '/SE3-F4/img/product/product25_6.jpg');
INSERT INTO `picture` VALUES ('26', '171', '/SE3-F4/img/product/product26_1.png');
INSERT INTO `picture` VALUES ('26', '172', '/SE3-F4/img/product/product26_2.jpg');
INSERT INTO `picture` VALUES ('26', '173', '/SE3-F4/img/product/product26_3.jpg');
INSERT INTO `picture` VALUES ('26', '174', '/SE3-F4/img/product/product26_4.jpg');
INSERT INTO `picture` VALUES ('26', '175', '/SE3-F4/img/product/product26_5.jpg');
INSERT INTO `picture` VALUES ('26', '176', '/SE3-F4/img/product/product26_6.jpg');
INSERT INTO `picture` VALUES ('27', '177', '/SE3-F4/img/product/product27_1.png');
INSERT INTO `picture` VALUES ('27', '178', '/SE3-F4/img/product/product27_2.jpg');
INSERT INTO `picture` VALUES ('27', '179', '/SE3-F4/img/product/product27_3.jpg');
INSERT INTO `picture` VALUES ('27', '180', '/SE3-F4/img/product/product27_4.jpg');
INSERT INTO `picture` VALUES ('27', '181', '/SE3-F4/img/product/product27_5.jpg');
INSERT INTO `picture` VALUES ('27', '182', '/SE3-F4/img/product/product27_6.jpg');
INSERT INTO `picture` VALUES ('28', '183', '/SE3-F4/img/product/product28_1.png');
INSERT INTO `picture` VALUES ('28', '184', '/SE3-F4/img/product/product28_2.jpg');
INSERT INTO `picture` VALUES ('28', '185', '/SE3-F4/img/product/product28_3.jpg');
INSERT INTO `picture` VALUES ('28', '186', '/SE3-F4/img/product/product28_4.jpg');
INSERT INTO `picture` VALUES ('28', '187', '/SE3-F4/img/product/product28_5.jpg');
INSERT INTO `picture` VALUES ('28', '188', '/SE3-F4/img/product/product28_6.jpg');
INSERT INTO `picture` VALUES ('29', '189', '/SE3-F4/img/product/product29_1.png');
INSERT INTO `picture` VALUES ('29', '190', '/SE3-F4/img/product/product29_2.jpg');
INSERT INTO `picture` VALUES ('29', '191', '/SE3-F4/img/product/product29_3.jpg');
INSERT INTO `picture` VALUES ('29', '192', '/SE3-F4/img/product/product29_4.jpg');
INSERT INTO `picture` VALUES ('29', '193', '/SE3-F4/img/product/product29_5.jpg');
INSERT INTO `picture` VALUES ('29', '194', '/SE3-F4/img/product/product29_6.jpg');
INSERT INTO `picture` VALUES ('30', '195', '/SE3-F4/img/product/product30_1.png');
INSERT INTO `picture` VALUES ('30', '196', '/SE3-F4/img/product/product30_2.jpg');
INSERT INTO `picture` VALUES ('30', '197', '/SE3-F4/img/product/product30_3.jpg');
INSERT INTO `picture` VALUES ('30', '198', '/SE3-F4/img/product/product30_4.jpg');
INSERT INTO `picture` VALUES ('30', '199', '/SE3-F4/img/product/product30_5.jpg');
INSERT INTO `picture` VALUES ('30', '200', '/SE3-F4/img/product/product30_6.jpg');
INSERT INTO `picture` VALUES ('31', '201', '/SE3-F4/img/product/product31_1.png');
INSERT INTO `picture` VALUES ('31', '202', '/SE3-F4/img/product/product31_2.jpg');
INSERT INTO `picture` VALUES ('31', '203', '/SE3-F4/img/product/product31_3.jpg');
INSERT INTO `picture` VALUES ('31', '204', '/SE3-F4/img/product/product31_4.jpg');
INSERT INTO `picture` VALUES ('31', '205', '/SE3-F4/img/product/product31_5.jpg');
INSERT INTO `picture` VALUES ('31', '206', '/SE3-F4/img/product/product31_6.jpg');
INSERT INTO `picture` VALUES ('32', '207', '/SE3-F4/img/product/product32_1.png');
INSERT INTO `picture` VALUES ('32', '208', '/SE3-F4/img/product/product32_2.jpg');
INSERT INTO `picture` VALUES ('32', '209', '/SE3-F4/img/product/product32_3.jpg');
INSERT INTO `picture` VALUES ('32', '210', '/SE3-F4/img/product/product32_4.jpg');
INSERT INTO `picture` VALUES ('32', '211', '/SE3-F4/img/product/product32_5.jpg');
INSERT INTO `picture` VALUES ('32', '212', '/SE3-F4/img/product/product32_6.jpg');
INSERT INTO `picture` VALUES ('33', '213', '/SE3-F4/img/product/product33_1.png');
INSERT INTO `picture` VALUES ('33', '214', '/SE3-F4/img/product/product33_2.jpg');
INSERT INTO `picture` VALUES ('33', '215', '/SE3-F4/img/product/product33_3.jpg');
INSERT INTO `picture` VALUES ('33', '216', '/SE3-F4/img/product/product33_4.jpg');
INSERT INTO `picture` VALUES ('33', '217', '/SE3-F4/img/product/product33_5.png');
INSERT INTO `picture` VALUES ('33', '218', '/SE3-F4/img/product/product33_6.jpg');
INSERT INTO `picture` VALUES ('34', '219', '/SE3-F4/img/product/product34_1.png');
INSERT INTO `picture` VALUES ('34', '220', '/SE3-F4/img/product/product34_2.jpg');
INSERT INTO `picture` VALUES ('34', '221', '/SE3-F4/img/product/product34_3.jpg');
INSERT INTO `picture` VALUES ('34', '222', '/SE3-F4/img/product/product34_4.jpg');
INSERT INTO `picture` VALUES ('34', '223', '/SE3-F4/img/product/product34_5.jpg');
INSERT INTO `picture` VALUES ('34', '224', '/SE3-F4/img/product/product34_6.jpg');
INSERT INTO `picture` VALUES ('35', '225', '/SE3-F4/img/product/product35_1.png');
INSERT INTO `picture` VALUES ('35', '226', '/SE3-F4/img/product/product35_2.jpg');
INSERT INTO `picture` VALUES ('35', '227', '/SE3-F4/img/product/product35_3.jpg');
INSERT INTO `picture` VALUES ('35', '228', '/SE3-F4/img/product/product35_4.jpg');
INSERT INTO `picture` VALUES ('35', '229', '/SE3-F4/img/product/product35_5.jpg');
INSERT INTO `picture` VALUES ('35', '230', '/SE3-F4/img/product/product35_6.jpg');
INSERT INTO `picture` VALUES ('36', '231', '/SE3-F4/img/product/product36_1.png');
INSERT INTO `picture` VALUES ('36', '232', '/SE3-F4/img/product/product36_2.jpg');
INSERT INTO `picture` VALUES ('36', '233', '/SE3-F4/img/product/product36_3.jpg');
INSERT INTO `picture` VALUES ('36', '234', '/SE3-F4/img/product/product36_4.jpg');
INSERT INTO `picture` VALUES ('36', '235', '/SE3-F4/img/product/product36_5.jpg');
INSERT INTO `picture` VALUES ('36', '236', '/SE3-F4/img/product/product36_6.jpg');
INSERT INTO `picture` VALUES ('37', '237', '/SE3-F4/img/product/product37_1.png');
INSERT INTO `picture` VALUES ('37', '238', '/SE3-F4/img/product/product37_2.jpg');
INSERT INTO `picture` VALUES ('37', '239', '/SE3-F4/img/product/product37_3.jpg');
INSERT INTO `picture` VALUES ('37', '240', '/SE3-F4/img/product/product37_4.jpg');
INSERT INTO `picture` VALUES ('37', '241', '/SE3-F4/img/product/product37_5.jpg');
INSERT INTO `picture` VALUES ('37', '242', '/SE3-F4/img/product/product37_6.jpg');
INSERT INTO `picture` VALUES ('38', '243', '/SE3-F4/img/product/product38_1.png');
INSERT INTO `picture` VALUES ('38', '244', '/SE3-F4/img/product/product38_2.jpg');
INSERT INTO `picture` VALUES ('38', '245', '/SE3-F4/img/product/product38_3.jpg');
INSERT INTO `picture` VALUES ('38', '246', '/SE3-F4/img/product/product38_4.jpg');
INSERT INTO `picture` VALUES ('38', '247', '/SE3-F4/img/product/product38_5.jpg');
INSERT INTO `picture` VALUES ('38', '248', '/SE3-F4/img/product/product38_6.jpg');
INSERT INTO `picture` VALUES ('39', '249', '/SE3-F4/img/product/product39_1.png');
INSERT INTO `picture` VALUES ('39', '250', '/SE3-F4/img/product/product39_2.jpg');
INSERT INTO `picture` VALUES ('39', '251', '/SE3-F4/img/product/product39_3.jpg');
INSERT INTO `picture` VALUES ('39', '252', '/SE3-F4/img/product/product39_4.jpg');
INSERT INTO `picture` VALUES ('39', '253', '/SE3-F4/img/product/product39_5.jpg');
INSERT INTO `picture` VALUES ('39', '254', '/SE3-F4/img/product/product39_6.jpg');
INSERT INTO `picture` VALUES ('40', '255', '/SE3-F4/img/product/product40_1.png');
INSERT INTO `picture` VALUES ('40', '256', '/SE3-F4/img/product/product40_2.jpg');
INSERT INTO `picture` VALUES ('40', '257', '/SE3-F4/img/product/product40_3.jpg');
INSERT INTO `picture` VALUES ('40', '258', '/SE3-F4/img/product/product40_4.jpg');
INSERT INTO `picture` VALUES ('40', '259', '/SE3-F4/img/product/product40_5.jpg');
INSERT INTO `picture` VALUES ('40', '260', '/SE3-F4/img/product/product40_6.jpg');
INSERT INTO `picture` VALUES ('41', '261', '/SE3-F4/img/product/product41_1.png');
INSERT INTO `picture` VALUES ('41', '262', '/SE3-F4/img/product/product41_2.jpg');
INSERT INTO `picture` VALUES ('41', '263', '/SE3-F4/img/product/product41_3.jpg');
INSERT INTO `picture` VALUES ('41', '264', '/SE3-F4/img/product/product41_4.jpg');
INSERT INTO `picture` VALUES ('41', '265', '/SE3-F4/img/product/product41_5.jpg');
INSERT INTO `picture` VALUES ('41', '266', '/SE3-F4/img/product/product41_6.jpg');
INSERT INTO `picture` VALUES ('42', '267', '/SE3-F4/img/product/product42_1.png');
INSERT INTO `picture` VALUES ('42', '268', '/SE3-F4/img/product/product42_2.jpg');
INSERT INTO `picture` VALUES ('42', '269', '/SE3-F4/img/product/product42_3.jpg');
INSERT INTO `picture` VALUES ('42', '270', '/SE3-F4/img/product/product42_4.jpg');
INSERT INTO `picture` VALUES ('42', '271', '/SE3-F4/img/product/product42_5.jpg');
INSERT INTO `picture` VALUES ('42', '272', '/SE3-F4/img/product/product42_6.jpg');
INSERT INTO `picture` VALUES ('43', '273', '/SE3-F4/img/product/product43_1.png');
INSERT INTO `picture` VALUES ('43', '274', '/SE3-F4/img/product/product43_2.jpg');
INSERT INTO `picture` VALUES ('43', '275', '/SE3-F4/img/product/product43_3.jpg');
INSERT INTO `picture` VALUES ('43', '276', '/SE3-F4/img/product/product43_4.jpg');
INSERT INTO `picture` VALUES ('43', '277', '/SE3-F4/img/product/product43_5.jpg');
INSERT INTO `picture` VALUES ('43', '278', '/SE3-F4/img/product/product43_6.jpg');
INSERT INTO `picture` VALUES ('44', '279', '/SE3-F4/img/product/product44_1.png');
INSERT INTO `picture` VALUES ('44', '280', '/SE3-F4/img/product/product44_2.jpg');
INSERT INTO `picture` VALUES ('44', '281', '/SE3-F4/img/product/product44_3.jpg');
INSERT INTO `picture` VALUES ('44', '282', '/SE3-F4/img/product/product44_4.jpg');
INSERT INTO `picture` VALUES ('44', '283', '/SE3-F4/img/product/product44_5.jpg');
INSERT INTO `picture` VALUES ('44', '284', '/SE3-F4/img/product/product44_6.jpg');
INSERT INTO `picture` VALUES ('45', '285', '/SE3-F4/img/product/product45_1.png');
INSERT INTO `picture` VALUES ('45', '286', '/SE3-F4/img/product/product45_2.jpg');
INSERT INTO `picture` VALUES ('45', '287', '/SE3-F4/img/product/product45_3.jpg');
INSERT INTO `picture` VALUES ('45', '288', '/SE3-F4/img/product/product45_4.jpg');
INSERT INTO `picture` VALUES ('45', '289', '/SE3-F4/img/product/product45_5.jpg');
INSERT INTO `picture` VALUES ('45', '290', '/SE3-F4/img/product/product45_6.jpg');
INSERT INTO `picture` VALUES ('46', '291', '/SE3-F4/img/product/product46_1.png');
INSERT INTO `picture` VALUES ('46', '292', '/SE3-F4/img/product/product46_2.jpg');
INSERT INTO `picture` VALUES ('46', '293', '/SE3-F4/img/product/product46_3.jpg');
INSERT INTO `picture` VALUES ('46', '294', '/SE3-F4/img/product/product46_4.jpg');
INSERT INTO `picture` VALUES ('46', '295', '/SE3-F4/img/product/product46_5.jpg');
INSERT INTO `picture` VALUES ('46', '296', '/SE3-F4/img/product/product46_6.jpg');
INSERT INTO `picture` VALUES ('47', '297', '/SE3-F4/img/product/product47_1.png');
INSERT INTO `picture` VALUES ('47', '298', '/SE3-F4/img/product/product47_2.jpg');
INSERT INTO `picture` VALUES ('47', '299', '/SE3-F4/img/product/product47_3.jpg');
INSERT INTO `picture` VALUES ('47', '300', '/SE3-F4/img/product/product47_4.jpg');
INSERT INTO `picture` VALUES ('47', '301', '/SE3-F4/img/product/product47_5.jpg');
INSERT INTO `picture` VALUES ('47', '302', '/SE3-F4/img/product/product47_6.jpg');
INSERT INTO `picture` VALUES ('48', '303', '/SE3-F4/img/product/product48_1.png');
INSERT INTO `picture` VALUES ('48', '304', '/SE3-F4/img/product/product48_2.jpg');
INSERT INTO `picture` VALUES ('48', '305', '/SE3-F4/img/product/product48_3.jpg');
INSERT INTO `picture` VALUES ('48', '306', '/SE3-F4/img/product/product48_4.jpg');
INSERT INTO `picture` VALUES ('48', '307', '/SE3-F4/img/product/product48_5.jpg');
INSERT INTO `picture` VALUES ('48', '308', '/SE3-F4/img/product/product48_6.jpg');
INSERT INTO `picture` VALUES ('49', '309', '/SE3-F4/img/product/product49_1.png');
INSERT INTO `picture` VALUES ('49', '310', '/SE3-F4/img/product/product49_2.jpg');
INSERT INTO `picture` VALUES ('49', '311', '/SE3-F4/img/product/product49_3.jpg');
INSERT INTO `picture` VALUES ('49', '312', '/SE3-F4/img/product/product49_4.jpg');
INSERT INTO `picture` VALUES ('49', '313', '/SE3-F4/img/product/product49_5.jpg');
INSERT INTO `picture` VALUES ('49', '314', '/SE3-F4/img/product/product49_6.jpg');
INSERT INTO `picture` VALUES ('50', '315', '/SE3-F4/img/product/product50_1.png');
INSERT INTO `picture` VALUES ('50', '316', '/SE3-F4/img/product/product50_2.jpg');
INSERT INTO `picture` VALUES ('50', '317', '/SE3-F4/img/product/product50_3.jpg');
INSERT INTO `picture` VALUES ('50', '318', '/SE3-F4/img/product/product50_4.jpg');
INSERT INTO `picture` VALUES ('50', '319', '/SE3-F4/img/product/product50_5.jpg');
INSERT INTO `picture` VALUES ('50', '320', '/SE3-F4/img/product/product50_6.jpg');
INSERT INTO `picture` VALUES ('51', '321', '/SE3-F4/img/product/product51_1.png');
INSERT INTO `picture` VALUES ('51', '322', '/SE3-F4/img/product/product51_2.jpg');
INSERT INTO `picture` VALUES ('51', '323', '/SE3-F4/img/product/product51_3.jpg');
INSERT INTO `picture` VALUES ('51', '324', '/SE3-F4/img/product/product51_4.jpg');
INSERT INTO `picture` VALUES ('51', '325', '/SE3-F4/img/product/product51_5.jpg');
INSERT INTO `picture` VALUES ('51', '326', '/SE3-F4/img/product/product51_6.jpg');
INSERT INTO `picture` VALUES ('52', '327', '/SE3-F4/img/product/product52_1.png');
INSERT INTO `picture` VALUES ('52', '328', '/SE3-F4/img/product/product52_2.jpg');
INSERT INTO `picture` VALUES ('52', '329', '/SE3-F4/img/product/product52_3.jpg');
INSERT INTO `picture` VALUES ('52', '330', '/SE3-F4/img/product/product52_4.jpg');
INSERT INTO `picture` VALUES ('52', '331', '/SE3-F4/img/product/product52_5.jpg');
INSERT INTO `picture` VALUES ('52', '332', '/SE3-F4/img/product/product52_6.jpg');
INSERT INTO `picture` VALUES ('53', '333', '/SE3-F4/img/product/product53_1.png');
INSERT INTO `picture` VALUES ('53', '334', '/SE3-F4/img/product/product53_2.jpg');
INSERT INTO `picture` VALUES ('53', '335', '/SE3-F4/img/product/product53_3.jpg');
INSERT INTO `picture` VALUES ('53', '336', '/SE3-F4/img/product/product53_4.jpg');
INSERT INTO `picture` VALUES ('53', '337', '/SE3-F4/img/product/product53_5.jpg');
INSERT INTO `picture` VALUES ('53', '338', '/SE3-F4/img/product/product53_6.jpg');
INSERT INTO `picture` VALUES ('54', '339', '/SE3-F4/img/product/product54_1.png');
INSERT INTO `picture` VALUES ('54', '340', '/SE3-F4/img/product/product54_2.jpg');
INSERT INTO `picture` VALUES ('54', '341', '/SE3-F4/img/product/product54_3.jpg');
INSERT INTO `picture` VALUES ('54', '342', '/SE3-F4/img/product/product54_4.jpg');
INSERT INTO `picture` VALUES ('54', '343', '/SE3-F4/img/product/product54_5.jpg');
INSERT INTO `picture` VALUES ('54', '344', '/SE3-F4/img/product/product54_6.jpg');
INSERT INTO `picture` VALUES ('55', '345', '/SE3-F4/img/product/product55_1.png');
INSERT INTO `picture` VALUES ('55', '346', '/SE3-F4/img/product/product55_2.jpg');
INSERT INTO `picture` VALUES ('55', '347', '/SE3-F4/img/product/product55_3.jpg');
INSERT INTO `picture` VALUES ('55', '348', '/SE3-F4/img/product/product55_4.jpg');
INSERT INTO `picture` VALUES ('55', '349', '/SE3-F4/img/product/product55_5.jpg');
INSERT INTO `picture` VALUES ('55', '350', '/SE3-F4/img/product/product55_6.jpg');
INSERT INTO `picture` VALUES ('56', '351', '/SE3-F4/img/product/product56_1.png');
INSERT INTO `picture` VALUES ('56', '352', '/SE3-F4/img/product/product56_2.jpg');
INSERT INTO `picture` VALUES ('56', '353', '/SE3-F4/img/product/product56_3.jpg');
INSERT INTO `picture` VALUES ('56', '354', '/SE3-F4/img/product/product56_4.jpg');
INSERT INTO `picture` VALUES ('56', '355', '/SE3-F4/img/product/product56_5.jpg');
INSERT INTO `picture` VALUES ('56', '356', '/SE3-F4/img/product/product56_6.jpg');
INSERT INTO `picture` VALUES ('57', '357', '/SE3-F4/img/product/product57_1.png');
INSERT INTO `picture` VALUES ('57', '358', '/SE3-F4/img/product/product57_2.jpg');
INSERT INTO `picture` VALUES ('57', '359', '/SE3-F4/img/product/product57_3.jpg');
INSERT INTO `picture` VALUES ('57', '360', '/SE3-F4/img/product/product57_4.jpg');
INSERT INTO `picture` VALUES ('57', '361', '/SE3-F4/img/product/product57_5.jpg');
INSERT INTO `picture` VALUES ('57', '362', '/SE3-F4/img/product/product57_6.jpg');
INSERT INTO `picture` VALUES ('58', '363', '/SE3-F4/img/product/product58_1.png');
INSERT INTO `picture` VALUES ('58', '364', '/SE3-F4/img/product/product58_2.jpg');
INSERT INTO `picture` VALUES ('58', '365', '/SE3-F4/img/product/product58_3.jpg');
INSERT INTO `picture` VALUES ('58', '366', '/SE3-F4/img/product/product58_4.jpg');
INSERT INTO `picture` VALUES ('58', '367', '/SE3-F4/img/product/product58_5.jpg');
INSERT INTO `picture` VALUES ('58', '368', '/SE3-F4/img/product/product58_6.jpg');
INSERT INTO `picture` VALUES ('59', '369', '/SE3-F4/img/product/product59_1.png');
INSERT INTO `picture` VALUES ('59', '370', '/SE3-F4/img/product/product59_2.jpg');
INSERT INTO `picture` VALUES ('59', '371', '/SE3-F4/img/product/product59_3.jpg');
INSERT INTO `picture` VALUES ('59', '372', '/SE3-F4/img/product/product59_4.jpg');
INSERT INTO `picture` VALUES ('59', '373', '/SE3-F4/img/product/product59_5.jpg');
INSERT INTO `picture` VALUES ('59', '374', '/SE3-F4/img/product/product59_6.jpg');
INSERT INTO `picture` VALUES ('60', '375', '/SE3-F4/img/product/product60_1.png');
INSERT INTO `picture` VALUES ('60', '376', '/SE3-F4/img/product/product60_2.jpg');
INSERT INTO `picture` VALUES ('60', '377', '/SE3-F4/img/product/product60_3.jpg');
INSERT INTO `picture` VALUES ('60', '378', '/SE3-F4/img/product/product60_4.jpg');
INSERT INTO `picture` VALUES ('60', '379', '/SE3-F4/img/product/product60_5.jpg');
INSERT INTO `picture` VALUES ('60', '380', '/SE3-F4/img/product/product60_6.jpg');
INSERT INTO `picture` VALUES ('61', '381', '/SE3-F4/img/product/product61_1.png');
INSERT INTO `picture` VALUES ('61', '382', '/SE3-F4/img/product/product61_2.jpg');
INSERT INTO `picture` VALUES ('61', '383', '/SE3-F4/img/product/product61_3.jpg');
INSERT INTO `picture` VALUES ('61', '384', '/SE3-F4/img/product/product61_4.jpg');
INSERT INTO `picture` VALUES ('61', '385', '/SE3-F4/img/product/product61_5.jpg');
INSERT INTO `picture` VALUES ('61', '386', '/SE3-F4/img/product/product61_6.jpg');
INSERT INTO `picture` VALUES ('62', '387', '/SE3-F4/img/product/product62_1.png');
INSERT INTO `picture` VALUES ('62', '388', '/SE3-F4/img/product/product62_2.jpg');
INSERT INTO `picture` VALUES ('62', '389', '/SE3-F4/img/product/product62_3.jpg');
INSERT INTO `picture` VALUES ('62', '390', '/SE3-F4/img/product/product62_4.jpg');
INSERT INTO `picture` VALUES ('62', '391', '/SE3-F4/img/product/product62_5.jpg');
INSERT INTO `picture` VALUES ('62', '392', '/SE3-F4/img/product/product62_6.jpg');
INSERT INTO `picture` VALUES ('63', '393', '/SE3-F4/img/product/product63_1.png');
INSERT INTO `picture` VALUES ('63', '394', '/SE3-F4/img/product/product63_2.jpg');
INSERT INTO `picture` VALUES ('63', '395', '/SE3-F4/img/product/product63_3.jpg');
INSERT INTO `picture` VALUES ('63', '396', '/SE3-F4/img/product/product63_4.jpg');
INSERT INTO `picture` VALUES ('63', '397', '/SE3-F4/img/product/product63_5.jpg');
INSERT INTO `picture` VALUES ('63', '398', '/SE3-F4/img/product/product63_6.jpg');
INSERT INTO `picture` VALUES ('64', '399', '/SE3-F4/img/product/product64_1.png');
INSERT INTO `picture` VALUES ('64', '400', '/SE3-F4/img/product/product64_2.jpg');
INSERT INTO `picture` VALUES ('64', '401', '/SE3-F4/img/product/product64_3.jpg');
INSERT INTO `picture` VALUES ('64', '402', '/SE3-F4/img/product/product64_4.jpg');
INSERT INTO `picture` VALUES ('64', '403', '/SE3-F4/img/product/product64_5.jpg');
INSERT INTO `picture` VALUES ('64', '404', '/SE3-F4/img/product/product64_6.jpg');
INSERT INTO `picture` VALUES ('65', '405', '/SE3-F4/img/product/product65_1.png');
INSERT INTO `picture` VALUES ('65', '406', '/SE3-F4/img/product/product65_2.jpg');
INSERT INTO `picture` VALUES ('65', '407', '/SE3-F4/img/product/product65_3.jpg');
INSERT INTO `picture` VALUES ('65', '408', '/SE3-F4/img/product/product65_4.jpg');
INSERT INTO `picture` VALUES ('65', '409', '/SE3-F4/img/product/product65_5.jpg');
INSERT INTO `picture` VALUES ('65', '410', '/SE3-F4/img/product/product65_6.jpg');
INSERT INTO `picture` VALUES ('66', '411', '/SE3-F4/img/product/product66_1.png');
INSERT INTO `picture` VALUES ('66', '412', '/SE3-F4/img/product/product66_2.jpg');
INSERT INTO `picture` VALUES ('66', '413', '/SE3-F4/img/product/product66_3.jpg');
INSERT INTO `picture` VALUES ('66', '414', '/SE3-F4/img/product/product66_4.jpg');
INSERT INTO `picture` VALUES ('66', '415', '/SE3-F4/img/product/product66_5.jpg');
INSERT INTO `picture` VALUES ('66', '416', '/SE3-F4/img/product/product66_6.jpg');
INSERT INTO `picture` VALUES ('67', '417', '/SE3-F4/img/product/product67_1.png');
INSERT INTO `picture` VALUES ('67', '418', '/SE3-F4/img/product/product67_2.jpg');
INSERT INTO `picture` VALUES ('67', '419', '/SE3-F4/img/product/product67_3.jpg');
INSERT INTO `picture` VALUES ('67', '420', '/SE3-F4/img/product/product67_4.jpg');
INSERT INTO `picture` VALUES ('67', '421', '/SE3-F4/img/product/product67_5.jpg');
INSERT INTO `picture` VALUES ('67', '422', '/SE3-F4/img/product/product67_6.jpg');
INSERT INTO `picture` VALUES ('68', '423', '/SE3-F4/img/product/product68_1.png');
INSERT INTO `picture` VALUES ('68', '424', '/SE3-F4/img/product/product68_2.jpg');
INSERT INTO `picture` VALUES ('68', '425', '/SE3-F4/img/product/product68_3.jpg');
INSERT INTO `picture` VALUES ('68', '426', '/SE3-F4/img/product/product68_4.jpg');
INSERT INTO `picture` VALUES ('68', '427', '/SE3-F4/img/product/product68_5.jpg');
INSERT INTO `picture` VALUES ('68', '428', '/SE3-F4/img/product/product68_6.jpg');
INSERT INTO `picture` VALUES ('69', '429', '/SE3-F4/img/product/product69_1.png');
INSERT INTO `picture` VALUES ('69', '430', '/SE3-F4/img/product/product69_2.jpg');
INSERT INTO `picture` VALUES ('69', '431', '/SE3-F4/img/product/product69_3.jpg');
INSERT INTO `picture` VALUES ('69', '432', '/SE3-F4/img/product/product69_4.jpg');
INSERT INTO `picture` VALUES ('69', '433', '/SE3-F4/img/product/product69_5.jpg');
INSERT INTO `picture` VALUES ('69', '434', '/SE3-F4/img/product/product69_6.jpg');
INSERT INTO `picture` VALUES ('70', '435', '/SE3-F4/img/product/product70_1.png');
INSERT INTO `picture` VALUES ('70', '436', '/SE3-F4/img/product/product70_2.jpg');
INSERT INTO `picture` VALUES ('70', '437', '/SE3-F4/img/product/product70_3.jpg');
INSERT INTO `picture` VALUES ('70', '438', '/SE3-F4/img/product/product70_4.jpg');
INSERT INTO `picture` VALUES ('70', '439', '/SE3-F4/img/product/product70_5.jpg');
INSERT INTO `picture` VALUES ('70', '440', '/SE3-F4/img/product/product70_6.jpg');
INSERT INTO `picture` VALUES ('71', '441', '/SE3-F4/img/product/product71_1.png');
INSERT INTO `picture` VALUES ('71', '442', '/SE3-F4/img/product/product71_2.jpg');
INSERT INTO `picture` VALUES ('71', '443', '/SE3-F4/img/product/product71_3.jpg');
INSERT INTO `picture` VALUES ('71', '444', '/SE3-F4/img/product/product71_4.jpg');
INSERT INTO `picture` VALUES ('71', '445', '/SE3-F4/img/product/product71_5.jpg');
INSERT INTO `picture` VALUES ('71', '446', '/SE3-F4/img/product/product71_6.jpg');
INSERT INTO `picture` VALUES ('72', '447', '/SE3-F4/img/product/product72_1.jpg');
INSERT INTO `picture` VALUES ('72', '448', '/SE3-F4/img/product/product72_2.jpg');
INSERT INTO `picture` VALUES ('72', '449', '/SE3-F4/img/product/product72_3.jpg');
INSERT INTO `picture` VALUES ('72', '450', '/SE3-F4/img/product/product72_4.jpg');
INSERT INTO `picture` VALUES ('72', '451', '/SE3-F4/img/product/product72_5.jpg');
INSERT INTO `picture` VALUES ('72', '452', '/SE3-F4/img/product/product72_6.jpg');
INSERT INTO `picture` VALUES ('73', '453', '/SE3-F4/img/product/product73_1.png');
INSERT INTO `picture` VALUES ('73', '454', '/SE3-F4/img/product/product73_2.jpg');
INSERT INTO `picture` VALUES ('73', '455', '/SE3-F4/img/product/product73_3.jpg');
INSERT INTO `picture` VALUES ('73', '456', '/SE3-F4/img/product/product73_4.jpg');
INSERT INTO `picture` VALUES ('73', '457', '/SE3-F4/img/product/product73_5.jpg');
INSERT INTO `picture` VALUES ('73', '458', '/SE3-F4/img/product/product73_6.jpg');
INSERT INTO `picture` VALUES ('74', '459', '/SE3-F4/img/product/product74_1.png');
INSERT INTO `picture` VALUES ('74', '460', '/SE3-F4/img/product/product74_2.jpg');
INSERT INTO `picture` VALUES ('74', '461', '/SE3-F4/img/product/product74_3.jpg');
INSERT INTO `picture` VALUES ('74', '462', '/SE3-F4/img/product/product74_4.jpg');
INSERT INTO `picture` VALUES ('74', '463', '/SE3-F4/img/product/product74_5.jpg');
INSERT INTO `picture` VALUES ('74', '464', '/SE3-F4/img/product/product74_6.jpg');
INSERT INTO `picture` VALUES ('75', '465', '/SE3-F4/img/product/product75_1.png');
INSERT INTO `picture` VALUES ('75', '466', '/SE3-F4/img/product/product75_2.jpg');
INSERT INTO `picture` VALUES ('75', '467', '/SE3-F4/img/product/product75_3.jpg');
INSERT INTO `picture` VALUES ('75', '468', '/SE3-F4/img/product/product75_4.jpg');
INSERT INTO `picture` VALUES ('75', '469', '/SE3-F4/img/product/product75_5.jpg');
INSERT INTO `picture` VALUES ('75', '470', '/SE3-F4/img/product/product75_6.jpg');
INSERT INTO `picture` VALUES ('76', '471', '/SE3-F4/img/product/product76_1.png');
INSERT INTO `picture` VALUES ('76', '472', '/SE3-F4/img/product/product76_2.jpg');
INSERT INTO `picture` VALUES ('76', '473', '/SE3-F4/img/product/product76_3.jpg');
INSERT INTO `picture` VALUES ('76', '474', '/SE3-F4/img/product/product76_4.jpg');
INSERT INTO `picture` VALUES ('76', '475', '/SE3-F4/img/product/product76_5.jpg');
INSERT INTO `picture` VALUES ('76', '476', '/SE3-F4/img/product/product76_6.jpg');
INSERT INTO `picture` VALUES ('77', '477', '/SE3-F4/img/product/product77_1.png');
INSERT INTO `picture` VALUES ('77', '478', '/SE3-F4/img/product/product77_2.jpg');
INSERT INTO `picture` VALUES ('77', '479', '/SE3-F4/img/product/product77_3.jpg');
INSERT INTO `picture` VALUES ('77', '480', '/SE3-F4/img/product/product77_4.jpg');
INSERT INTO `picture` VALUES ('77', '481', '/SE3-F4/img/product/product77_5.jpg');
INSERT INTO `picture` VALUES ('77', '482', '/SE3-F4/img/product/product77_6.jpg');
INSERT INTO `picture` VALUES ('78', '483', '/SE3-F4/img/product/product78_1.png');
INSERT INTO `picture` VALUES ('78', '484', '/SE3-F4/img/product/product78_2.jpg');
INSERT INTO `picture` VALUES ('78', '485', '/SE3-F4/img/product/product78_3.jpg');
INSERT INTO `picture` VALUES ('78', '486', '/SE3-F4/img/product/product78_4.jpg');
INSERT INTO `picture` VALUES ('78', '487', '/SE3-F4/img/product/product78_5.jpg');
INSERT INTO `picture` VALUES ('78', '488', '/SE3-F4/img/product/product78_6.jpg');
INSERT INTO `picture` VALUES ('79', '489', '/SE3-F4/img/product/product79_1.png');
INSERT INTO `picture` VALUES ('79', '490', '/SE3-F4/img/product/product79_2.jpg');
INSERT INTO `picture` VALUES ('79', '491', '/SE3-F4/img/product/product79_3.png');
INSERT INTO `picture` VALUES ('79', '492', '/SE3-F4/img/product/product79_4.png');
INSERT INTO `picture` VALUES ('79', '493', '/SE3-F4/img/product/product79_5.png');
INSERT INTO `picture` VALUES ('79', '494', '/SE3-F4/img/product/product79_6.jpg');
