/*
Navicat MySQL Data Transfer

Source Server         : orange
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : omatcha

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2018-07-09 17:17:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for `cartgoods`
-- ----------------------------
DROP TABLE IF EXISTS `cartgoods`;
CREATE TABLE `cartgoods` (
  `cgid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartgoods
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `species` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `discount` varchar(0) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '臻心', '238', '蛋糕', '鲜果蛋糕', null, 'fruitcake1_1.jpg', 'fruitcake1_2.jpg', 'fruitcake1_3.jpg', null);
INSERT INTO `goods` VALUES ('2', '心语心愿', '148', '蛋糕', '鲜果蛋糕', null, 'fruitcake2_1.jpg', 'fruitcake2_2.jpg', 'fruitcake2_3.jpg', null);
INSERT INTO `goods` VALUES ('3', '莓惑', '148', '蛋糕', '鲜果蛋糕', null, 'fruitcake3_1.jpg', 'fruitcake3_2.jpg', 'fruitcake3_3.jpg', null);
INSERT INTO `goods` VALUES ('4', '提拉米苏', '178', '蛋糕', '芝士蛋糕', null, 'cheesecake1_1.jpg', 'cheesecake1_2.jpg', 'cheesecake1_3.jpg', null);
INSERT INTO `goods` VALUES ('5', '椰汁燕窝', '218', '蛋糕', '芝士蛋糕', null, 'cheesecake2_1.jpg', 'cheesecake2_2.jpg', 'cheesecake2_3.jpg', null);
INSERT INTO `goods` VALUES ('6', '四重奏蛋糕', '218', '蛋糕', '芝士蛋糕', null, 'cheesecake3_1.jpg', 'cheesecake3_2.jpg', 'cheesecake3_3.jpg', null);
INSERT INTO `goods` VALUES ('7', '两情相悦', '248', '蛋糕', '混合蛋糕', null, 'mixcake1_1.jpg', 'mixcake1_2.jpg', 'mixcake1_3.jpg', null);
INSERT INTO `goods` VALUES ('8', '榴恋草莓', '188', '蛋糕', '混合蛋糕', null, 'mixcake2_1.jpg', 'mixcake2_2.jpg', 'mixcake2_3.jpg', null);
INSERT INTO `goods` VALUES ('9', '芒果雪沙', '328', '蛋糕', '混合蛋糕', null, 'mixcake3_1.jpg', 'mixcake3_2.jpg', 'mixcake3_3.jpg', null);
INSERT INTO `goods` VALUES ('10', '马来西亚白咖啡', '68', '咖啡', '浓缩咖啡', null, 'coffee1.jpg', 'coffee2.jpg', 'coffee1.jpg', null);
INSERT INTO `goods` VALUES ('11', '热奶咖啡', '58', '咖啡', '浓缩咖啡', null, 'coffee3.jpg', 'coffee1.jpg', 'coffee2.jpg', null);
INSERT INTO `goods` VALUES ('12', '拿铁咖啡', '98', '咖啡', '浓缩咖啡', null, 'coffee4.jpg', 'coffee5.jpg', 'coffee4.jpg', null);
INSERT INTO `goods` VALUES ('13', '意式浓缩冰咖啡', '128', '咖啡', '意式咖啡', null, 'coffee6.jpg', 'coffee1.jpg', 'coffee4.jpg', null);
INSERT INTO `goods` VALUES ('14', '意式咖啡', '58', '咖啡', '意式咖啡', null, 'coffee5.jpg', 'coffee6.jpg', 'coffee1.jpg', null);
INSERT INTO `goods` VALUES ('15', '意式黑咖啡', '68', '咖啡', '意式咖啡', null, 'coffee7.jpg', 'coffee8.jpg', 'coffee7.jpg', null);
INSERT INTO `goods` VALUES ('16', '朝阳', '58', '咖啡', '卡布奇诺', null, 'coffee8.jpg', 'coffee9.jpg', 'coffee5.jpg', null);
INSERT INTO `goods` VALUES ('17', '浓情', '78', '咖啡', '卡布奇诺', null, 'coffee1.jpg', 'coffee7.jpg', 'coffee9.jpg', null);
INSERT INTO `goods` VALUES ('18', '初恋味道', '98', '咖啡', '卡布奇诺', null, 'coffee9.jpg', 'coffee8.jpg', 'coffee7.jpg', null);
INSERT INTO `goods` VALUES ('19', '凤梨汁', '28', '饮料', '鲜榨果汁', null, 'drink1.png', 'drink2.png', 'drink3.png', null);
INSERT INTO `goods` VALUES ('20', '菠萝汁', '18', '饮料', '鲜榨果汁', null, 'drink4.png', 'drink1.png', 'drink2.png', null);
INSERT INTO `goods` VALUES ('21', '布丁', '18', '饮料', '奶昔', null, 'drink4.png', 'drink3.png', 'drink1.png', null);
INSERT INTO `goods` VALUES ('22', '抹茶', '24', '饮料', '奶昔', null, 'drink1.png', 'drink4.png', 'drink3.png', null);
INSERT INTO `goods` VALUES ('23', '巴黎之花', '23', '饮料', '鸡尾酒', null, 'drink4.png', 'drink2.png', 'drink1.png', null);
INSERT INTO `goods` VALUES ('24', '爱尔兰甜酒', '26', '饮料', '鸡尾酒', null, 'drink2.png', 'drink4.png', 'drink1.png', null);

-- ----------------------------
-- Table structure for `myorder`
-- ----------------------------
DROP TABLE IF EXISTS `myorder`;
CREATE TABLE `myorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `xiadantime` varchar(255) DEFAULT NULL,
  `dingdannumber` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `Paymentmethod` varchar(255) DEFAULT NULL,
  `Consignee` varchar(255) DEFAULT NULL,
  `Commodityinformation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myorder
-- ----------------------------

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `gid` (`gid`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `goods` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
