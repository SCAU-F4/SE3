/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-03 11:56:12
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
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
  PRIMARY KEY (`indentID`,`goodsID`,`goodsSpecify`)
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
INSERT INTO `picture` VALUES ('60', '381', '/SE3-F4/img/product/product60_1.png');
INSERT INTO `picture` VALUES ('60', '382', '/SE3-F4/img/product/product60_2.jpg');
INSERT INTO `picture` VALUES ('60', '383', '/SE3-F4/img/product/product60_3.jpg');
INSERT INTO `picture` VALUES ('60', '384', '/SE3-F4/img/product/product60_4.jpg');
INSERT INTO `picture` VALUES ('60', '385', '/SE3-F4/img/product/product60_5.jpg');
INSERT INTO `picture` VALUES ('60', '386', '/SE3-F4/img/product/product60_6.jpg');
INSERT INTO `picture` VALUES ('61', '387', '/SE3-F4/img/product/product61_1.png');
INSERT INTO `picture` VALUES ('61', '388', '/SE3-F4/img/product/product61_2.jpg');
INSERT INTO `picture` VALUES ('61', '389', '/SE3-F4/img/product/product61_3.jpg');
INSERT INTO `picture` VALUES ('61', '390', '/SE3-F4/img/product/product61_4.jpg');
INSERT INTO `picture` VALUES ('61', '391', '/SE3-F4/img/product/product61_5.jpg');
INSERT INTO `picture` VALUES ('61', '392', '/SE3-F4/img/product/product61_6.jpg');
INSERT INTO `picture` VALUES ('62', '393', '/SE3-F4/img/product/product62_1.png');
INSERT INTO `picture` VALUES ('62', '394', '/SE3-F4/img/product/product62_2.jpg');
INSERT INTO `picture` VALUES ('62', '395', '/SE3-F4/img/product/product62_3.jpg');
INSERT INTO `picture` VALUES ('62', '396', '/SE3-F4/img/product/product62_4.jpg');
INSERT INTO `picture` VALUES ('62', '397', '/SE3-F4/img/product/product62_5.jpg');
INSERT INTO `picture` VALUES ('62', '398', '/SE3-F4/img/product/product62_6.jpg');
INSERT INTO `picture` VALUES ('63', '399', '/SE3-F4/img/product/product63_1.png');
INSERT INTO `picture` VALUES ('63', '400', '/SE3-F4/img/product/product63_2.jpg');
INSERT INTO `picture` VALUES ('63', '401', '/SE3-F4/img/product/product63_3.jpg');
INSERT INTO `picture` VALUES ('63', '402', '/SE3-F4/img/product/product63_4.jpg');
INSERT INTO `picture` VALUES ('63', '403', '/SE3-F4/img/product/product63_5.jpg');
INSERT INTO `picture` VALUES ('63', '404', '/SE3-F4/img/product/product63_6.jpg');
INSERT INTO `picture` VALUES ('64', '405', '/SE3-F4/img/product/product64_1.png');
INSERT INTO `picture` VALUES ('64', '406', '/SE3-F4/img/product/product64_2.jpg');
INSERT INTO `picture` VALUES ('64', '407', '/SE3-F4/img/product/product64_3.jpg');
INSERT INTO `picture` VALUES ('64', '408', '/SE3-F4/img/product/product64_4.jpg');
INSERT INTO `picture` VALUES ('64', '409', '/SE3-F4/img/product/product64_5.jpg');
INSERT INTO `picture` VALUES ('64', '410', '/SE3-F4/img/product/product64_6.jpg');
INSERT INTO `picture` VALUES ('65', '411', '/SE3-F4/img/product/product65_1.png');
INSERT INTO `picture` VALUES ('65', '412', '/SE3-F4/img/product/product65_2.jpg');
INSERT INTO `picture` VALUES ('65', '413', '/SE3-F4/img/product/product65_3.jpg');
INSERT INTO `picture` VALUES ('65', '414', '/SE3-F4/img/product/product65_4.jpg');
INSERT INTO `picture` VALUES ('65', '415', '/SE3-F4/img/product/product65_5.jpg');
INSERT INTO `picture` VALUES ('65', '416', '/SE3-F4/img/product/product65_6.jpg');
INSERT INTO `picture` VALUES ('66', '417', '/SE3-F4/img/product/product66_1.png');
INSERT INTO `picture` VALUES ('66', '418', '/SE3-F4/img/product/product66_2.jpg');
INSERT INTO `picture` VALUES ('66', '419', '/SE3-F4/img/product/product66_3.jpg');
INSERT INTO `picture` VALUES ('66', '420', '/SE3-F4/img/product/product66_4.jpg');
INSERT INTO `picture` VALUES ('66', '421', '/SE3-F4/img/product/product66_5.jpg');
INSERT INTO `picture` VALUES ('66', '422', '/SE3-F4/img/product/product66_6.jpg');
INSERT INTO `picture` VALUES ('67', '423', '/SE3-F4/img/product/product67_1.png');
INSERT INTO `picture` VALUES ('67', '424', '/SE3-F4/img/product/product67_2.jpg');
INSERT INTO `picture` VALUES ('67', '425', '/SE3-F4/img/product/product67_3.jpg');
INSERT INTO `picture` VALUES ('67', '426', '/SE3-F4/img/product/product67_4.jpg');
INSERT INTO `picture` VALUES ('67', '427', '/SE3-F4/img/product/product67_5.jpg');
INSERT INTO `picture` VALUES ('67', '428', '/SE3-F4/img/product/product67_6.jpg');
INSERT INTO `picture` VALUES ('68', '429', '/SE3-F4/img/product/product68_1.png');
INSERT INTO `picture` VALUES ('68', '430', '/SE3-F4/img/product/product68_2.jpg');
INSERT INTO `picture` VALUES ('68', '431', '/SE3-F4/img/product/product68_3.jpg');
INSERT INTO `picture` VALUES ('68', '432', '/SE3-F4/img/product/product68_4.jpg');
INSERT INTO `picture` VALUES ('68', '433', '/SE3-F4/img/product/product68_5.jpg');
INSERT INTO `picture` VALUES ('68', '434', '/SE3-F4/img/product/product68_6.jpg');
INSERT INTO `picture` VALUES ('69', '435', '/SE3-F4/img/product/product69_1.png');
INSERT INTO `picture` VALUES ('69', '436', '/SE3-F4/img/product/product69_2.jpg');
INSERT INTO `picture` VALUES ('69', '437', '/SE3-F4/img/product/product69_3.jpg');
INSERT INTO `picture` VALUES ('69', '438', '/SE3-F4/img/product/product69_4.jpg');
INSERT INTO `picture` VALUES ('69', '439', '/SE3-F4/img/product/product69_5.jpg');
INSERT INTO `picture` VALUES ('69', '440', '/SE3-F4/img/product/product69_6.jpg');
INSERT INTO `picture` VALUES ('70', '441', '/SE3-F4/img/product/product70_1.png');
INSERT INTO `picture` VALUES ('70', '442', '/SE3-F4/img/product/product70_2.jpg');
INSERT INTO `picture` VALUES ('70', '443', '/SE3-F4/img/product/product70_3.jpg');
INSERT INTO `picture` VALUES ('70', '444', '/SE3-F4/img/product/product70_4.jpg');
INSERT INTO `picture` VALUES ('70', '445', '/SE3-F4/img/product/product70_5.jpg');
INSERT INTO `picture` VALUES ('70', '446', '/SE3-F4/img/product/product70_6.jpg');
INSERT INTO `picture` VALUES ('71', '447', '/SE3-F4/img/product/product71_1.png');
INSERT INTO `picture` VALUES ('71', '448', '/SE3-F4/img/product/product71_2.jpg');
INSERT INTO `picture` VALUES ('71', '449', '/SE3-F4/img/product/product71_3.jpg');
INSERT INTO `picture` VALUES ('71', '450', '/SE3-F4/img/product/product71_4.jpg');
INSERT INTO `picture` VALUES ('71', '451', '/SE3-F4/img/product/product71_5.jpg');
INSERT INTO `picture` VALUES ('71', '452', '/SE3-F4/img/product/product71_6.jpg');
INSERT INTO `picture` VALUES ('72', '453', '/SE3-F4/img/product/product72_1.jpg');
INSERT INTO `picture` VALUES ('72', '454', '/SE3-F4/img/product/product72_2.jpg');
INSERT INTO `picture` VALUES ('72', '455', '/SE3-F4/img/product/product72_3.jpg');
INSERT INTO `picture` VALUES ('72', '456', '/SE3-F4/img/product/product72_4.jpg');
INSERT INTO `picture` VALUES ('72', '457', '/SE3-F4/img/product/product72_5.jpg');
INSERT INTO `picture` VALUES ('72', '458', '/SE3-F4/img/product/product72_6.jpg');
INSERT INTO `picture` VALUES ('73', '459', '/SE3-F4/img/product/product73_1.png');
INSERT INTO `picture` VALUES ('73', '460', '/SE3-F4/img/product/product73_2.jpg');
INSERT INTO `picture` VALUES ('73', '461', '/SE3-F4/img/product/product73_3.jpg');
INSERT INTO `picture` VALUES ('73', '462', '/SE3-F4/img/product/product73_4.jpg');
INSERT INTO `picture` VALUES ('73', '463', '/SE3-F4/img/product/product73_5.jpg');
INSERT INTO `picture` VALUES ('73', '464', '/SE3-F4/img/product/product73_6.jpg');
INSERT INTO `picture` VALUES ('74', '465', '/SE3-F4/img/product/product74_1.png');
INSERT INTO `picture` VALUES ('74', '466', '/SE3-F4/img/product/product74_2.jpg');
INSERT INTO `picture` VALUES ('74', '467', '/SE3-F4/img/product/product74_3.jpg');
INSERT INTO `picture` VALUES ('74', '468', '/SE3-F4/img/product/product74_4.jpg');
INSERT INTO `picture` VALUES ('74', '469', '/SE3-F4/img/product/product74_5.jpg');
INSERT INTO `picture` VALUES ('74', '470', '/SE3-F4/img/product/product74_6.jpg');
INSERT INTO `picture` VALUES ('75', '471', '/SE3-F4/img/product/product75_1.png');
INSERT INTO `picture` VALUES ('75', '472', '/SE3-F4/img/product/product75_2.jpg');
INSERT INTO `picture` VALUES ('75', '473', '/SE3-F4/img/product/product75_3.jpg');
INSERT INTO `picture` VALUES ('75', '474', '/SE3-F4/img/product/product75_4.jpg');
INSERT INTO `picture` VALUES ('75', '475', '/SE3-F4/img/product/product75_5.jpg');
INSERT INTO `picture` VALUES ('75', '476', '/SE3-F4/img/product/product75_6.jpg');
INSERT INTO `picture` VALUES ('76', '477', '/SE3-F4/img/product/product76_1.png');
INSERT INTO `picture` VALUES ('76', '478', '/SE3-F4/img/product/product76_2.jpg');
INSERT INTO `picture` VALUES ('76', '479', '/SE3-F4/img/product/product76_3.jpg');
INSERT INTO `picture` VALUES ('76', '480', '/SE3-F4/img/product/product76_4.jpg');
INSERT INTO `picture` VALUES ('76', '481', '/SE3-F4/img/product/product76_5.jpg');
INSERT INTO `picture` VALUES ('76', '482', '/SE3-F4/img/product/product76_6.jpg');
INSERT INTO `picture` VALUES ('77', '483', '/SE3-F4/img/product/product77_1.png');
INSERT INTO `picture` VALUES ('77', '484', '/SE3-F4/img/product/product77_2.jpg');
INSERT INTO `picture` VALUES ('77', '485', '/SE3-F4/img/product/product77_3.jpg');
INSERT INTO `picture` VALUES ('77', '486', '/SE3-F4/img/product/product77_4.jpg');
INSERT INTO `picture` VALUES ('77', '487', '/SE3-F4/img/product/product77_5.jpg');
INSERT INTO `picture` VALUES ('77', '488', '/SE3-F4/img/product/product77_6.jpg');
INSERT INTO `picture` VALUES ('78', '489', '/SE3-F4/img/product/product78_1.png');
INSERT INTO `picture` VALUES ('78', '490', '/SE3-F4/img/product/product78_2.jpg');
INSERT INTO `picture` VALUES ('78', '491', '/SE3-F4/img/product/product78_3.jpg');
INSERT INTO `picture` VALUES ('78', '492', '/SE3-F4/img/product/product78_4.jpg');
INSERT INTO `picture` VALUES ('78', '493', '/SE3-F4/img/product/product78_5.jpg');
INSERT INTO `picture` VALUES ('78', '494', '/SE3-F4/img/product/product78_6.jpg');
INSERT INTO `picture` VALUES ('79', '495', '/SE3-F4/img/product/product79_1.png');
INSERT INTO `picture` VALUES ('79', '496', '/SE3-F4/img/product/product79_2.jpg');
INSERT INTO `picture` VALUES ('79', '497', '/SE3-F4/img/product/product79_3.png');
INSERT INTO `picture` VALUES ('79', '498', '/SE3-F4/img/product/product79_4.png');
INSERT INTO `picture` VALUES ('79', '499', '/SE3-F4/img/product/product79_5.png');
INSERT INTO `picture` VALUES ('79', '500', '/SE3-F4/img/product/product79_6.jpg');
