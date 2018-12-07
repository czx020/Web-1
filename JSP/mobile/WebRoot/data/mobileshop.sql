/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : mobileshop

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2018-10-10 16:09:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mobileclassify`
-- ----------------------------
DROP TABLE IF EXISTS `mobileclassify`;
CREATE TABLE `mobileclassify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobileclassify
-- ----------------------------
INSERT INTO `mobileclassify` VALUES ('1', 'iPhone手机');
INSERT INTO `mobileclassify` VALUES ('2', 'Android手机');
INSERT INTO `mobileclassify` VALUES ('3', 'Winphone手机');

-- ----------------------------
-- Table structure for `mobileform`
-- ----------------------------
DROP TABLE IF EXISTS `mobileform`;
CREATE TABLE `mobileform` (
  `mobile_version` varchar(50) NOT NULL DEFAULT '',
  `mobile_name` varchar(60) DEFAULT NULL,
  `mobile_made` varchar(200) DEFAULT NULL,
  `mobile_price` float(8,0) DEFAULT NULL,
  `mobile_mess` varchar(255) DEFAULT NULL,
  `mobile_pic` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mobile_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobileform
-- ----------------------------
INSERT INTO `mobileform` VALUES ('7s', '苹果7s手机', '苹果公司', '6200', '高清大屏幕', 'apple1.jpg', '1');
INSERT INTO `mobileform` VALUES ('c555', '中兴N986', '中兴公司', '3300', '双卡双待', 'a2.jpg', '2');
INSERT INTO `mobileform` VALUES ('note6', '三星note系列手机', '三星公司', '4500', '支持图形效果好', 'apple.jpg', '2');

-- ----------------------------
-- Table structure for `orderform`
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `mess` varchar(255) DEFAULT NULL,
  `sum` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `logname` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('aaa', 'bbb', '222', 'sdfsd', 'ssf');
INSERT INTO `user` VALUES ('abc', 'abc', '222', '广州市', '李四');
INSERT INTO `user` VALUES ('admin', 'admin', '111', '广州商学院', '张三');
