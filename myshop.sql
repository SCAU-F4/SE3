/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : myshop

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 31/07/2018 15:49:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `customerID` int(5) NOT NULL,
  `addressID` int(5) NOT NULL AUTO_INCREMENT,
  `addressDetail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addressPostcode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addressPhone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addressName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`addressID`, `customerID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cartID` int(5) NOT NULL,
  `customerID` int(5) NOT NULL,
  `totalPrice` decimal(8, 2) NOT NULL,
  PRIMARY KEY (`cartID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cartdetail
-- ----------------------------
DROP TABLE IF EXISTS `cartdetail`;
CREATE TABLE `cartdetail`  (
  `cartID` int(5) NOT NULL,
  `goodsID` int(5) NOT NULL,
  `goodsCount` int(5) NULL DEFAULT NULL,
  `totalPrice` double(8, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`cartID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customerID` int(5) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customerPwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customerPhone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customerEmail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customerRegDate` datetime(6) NOT NULL,
  PRIMARY KEY (`customerID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate`  (
  `evaluateID` int(5) NOT NULL AUTO_INCREMENT,
  `customerID` int(5) NOT NULL,
  `goodsID` int(5) NOT NULL,
  `evaluateDate` datetime(6) NOT NULL,
  `evaluateGrade` int(5) NOT NULL,
  `evaluateContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `evaluatePictureID` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`evaluateID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for evaluatepicture
-- ----------------------------
DROP TABLE IF EXISTS `evaluatepicture`;
CREATE TABLE `evaluatepicture`  (
  `evaluateID` int(5) NOT NULL,
  `pictureID` int(5) NOT NULL,
  PRIMARY KEY (`evaluateID`, `pictureID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express`  (
  `expressCode` int(18) NOT NULL AUTO_INCREMENT,
  `expressDate` datetime(6) NOT NULL,
  `expressState` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`expressCode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsID` int(5) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsTypeID` int(5) NOT NULL,
  `goodsSpecify` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsBrief` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsPrice` double(8, 2) NOT NULL,
  `goodsCount` int(5) NOT NULL,
  `sellCount` int(5) NOT NULL,
  `goodsDate` datetime(6) NOT NULL,
  `isSell` int(2) NOT NULL,
  PRIMARY KEY (`goodsID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype`  (
  `goodsTypeID` int(5) NOT NULL AUTO_INCREMENT,
  `goodsMainType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsDetailType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`goodsTypeID`, `goodsMainType`, `goodsDetailType`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent`  (
  `orderID` int(5) NOT NULL AUTO_INCREMENT,
  `customerID` int(5) NOT NULL,
  `totalPrice` double(8, 2) NOT NULL,
  `orderTime` datetime(6) NOT NULL,
  `addressID` int(5) NOT NULL,
  `expressCode` int(18) NOT NULL,
  `indentState` int(2) NOT NULL,
  PRIMARY KEY (`orderID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `managerID` int(5) NOT NULL AUTO_INCREMENT,
  `managerName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `managerPwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`managerID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `orderID` int(5) NOT NULL,
  `goodsID` int(5) NOT NULL,
  `goodsPrice` double(8, 2) NOT NULL,
  `goodsCount` int(5) NOT NULL,
  `totalPrice` double(8, 2) NOT NULL,
  PRIMARY KEY (`orderID`, `goodsID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `goodsID` int(5) NOT NULL,
  `pictureID` int(5) NOT NULL AUTO_INCREMENT,
  `picturePath` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pictureID`, `goodsID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
