/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-01 21:44:08
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
  `totalPrice` double(8,0) NOT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `totalPrice` double(8,0) NOT NULL,
  PRIMARY KEY (`cartID`,`goodsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `customerID` int(5) NOT NULL,
  `goodsID` int(5) NOT NULL,
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
  PRIMARY KEY (`evaluateID`,`pictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `goodsSpecify` varchar(50) NOT NULL,
  `goodsBrief` varchar(100) NOT NULL,
  `goodsPrice` double(8,2) NOT NULL,
  `goodsCount` int(5) NOT NULL,
  `sellCount` int(5) NOT NULL,
  `goodsDate` datetime(6) NOT NULL,
  `isSell` int(2) NOT NULL,
  `goodsSecondaryTypeID` int(5) NOT NULL,
  PRIMARY KEY (`goodsID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'sdfjl', '99', '13', '31', '324.00', '34', '53', '2018-08-01 10:03:02.000000', '1', '1');

-- ----------------------------
-- Table structure for `goodsmaintype`
-- ----------------------------
DROP TABLE IF EXISTS `goodsmaintype`;
CREATE TABLE `goodsmaintype` (
  `goodsMainTypeID` int(5) NOT NULL AUTO_INCREMENT,
  `goodsMainType` varchar(50) NOT NULL,
  `pictureID` int(5) NOT NULL,
  PRIMARY KEY (`goodsMainTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goodsmaintype
-- ----------------------------
INSERT INTO `goodsmaintype` VALUES ('99', 'haha', '99');

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
  PRIMARY KEY (`goodsSecondaryTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodssecondarytype
-- ----------------------------
INSERT INTO `goodssecondarytype` VALUES ('1', '99', '15', '1', '1');

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
  `expressCode` int(18) NOT NULL,
  `indentState` int(2) NOT NULL,
  PRIMARY KEY (`indentID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('1', '1', '20.00', '2018-07-27 19:00:28.000000', '1', '1', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', '1', '/SE3-F4/img/product/product1.png');
