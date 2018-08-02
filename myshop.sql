/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-02 10:29:07
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
  PRIMARY KEY (`evaluateID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('1', '1', '1', '2018-07-27 19:09:06.000000', '5', '神书，五星好评');

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
  PRIMARY KEY (`goodsID`,`goodsSpecify`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'sdfjl', '99', '1', '13', '31', '324.00', '34', '53', '2018-08-01 10:03:02.000000', '1');

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
INSERT INTO `indent` VALUES ('1', '1', '20.00', '2018-07-27 19:00:28.000000', '1', '0', '1');

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
  PRIMARY KEY (`indentID`,`goodsID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of indentdetail
-- ----------------------------
INSERT INTO `indentdetail` VALUES ('1', '1', '20.00', '1', '20.00');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
