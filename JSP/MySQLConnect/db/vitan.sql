/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : vitan

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2018-11-02 10:21:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `number` char(50) NOT NULL,
  `name` char(50) DEFAULT NULL,
  `mateTime` datetime DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('a1001', 'OnePlus', '2018-10-09 09:08:52', '4299');
INSERT INTO `product` VALUES ('a1002', 'Google Pixel', '2018-11-13 09:09:48', '5699');
INSERT INTO `product` VALUES ('a1003', 'SamSung', '2018-11-27 09:50:09', '8999');
INSERT INTO `product` VALUES ('b1001', 'Mi', '2018-11-12 09:50:31', '3499');
