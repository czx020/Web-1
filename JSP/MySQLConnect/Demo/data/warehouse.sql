/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : warehouse

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2018-11-01 08:42:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `number` char(50) NOT NULL,
  `name` char(50) DEFAULT NULL,
  `madetime` datetime DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('a1001', '苹果手机', '2018-11-01 08:40:06', '8000');
INSERT INTO `product` VALUES ('a1002', 'android手机', '2018-10-31 08:40:59', '7000');
INSERT INTO `product` VALUES ('b1001', '戴尔电脑', '2018-10-29 08:41:26', '3500');
INSERT INTO `product` VALUES ('b1002', '华硕计算机', '2018-11-01 08:41:53', '2800');
