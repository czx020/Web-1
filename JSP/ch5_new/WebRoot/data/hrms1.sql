/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : hrms1

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2018-11-20 13:04:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EmployeeID` char(6) DEFAULT NULL,
  `UserName` char(20) DEFAULT NULL,
  `Sex` char(10) DEFAULT NULL,
  `Branch` char(20) DEFAULT NULL,
  `Birthday` char(20) DEFAULT NULL,
  `NativePlace` char(20) DEFAULT NULL,
  `Marriage` char(10) DEFAULT NULL,
  `IdentityID` char(50) DEFAULT NULL,
  `Politics` char(20) DEFAULT NULL,
  `Folk` char(50) DEFAULT NULL,
  `Education` char(50) DEFAULT NULL,
  `Department` char(30) DEFAULT NULL,
  `GraduateDate` char(50) DEFAULT NULL,
  `University` char(50) DEFAULT NULL,
  `Position` char(50) DEFAULT NULL,
  `Incumbency` char(20) DEFAULT NULL,
  `IncumbencyType` char(20) DEFAULT NULL,
  `Resume` char(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('000001', '刘素芳', '女', '总经理室', '1980-01-01', '福建省福州市', '已婚', '350101000000000000', '群众', '汉族', '本科', '信息管理与信息系统', '2003-07-01', '福州大学', '工程师', '在职', '正式工', '个人简历个人简历1');
INSERT INTO `employee` VALUES ('100003', ' 王五', '男', '总经理室', '2000-10-1', '广州市', '未婚', '546456454564646', '党员', '汉', '本科', '计算机', '2013', '中大', '助理工程师', '在职', '正式工', '简历');
INSERT INTO `employee` VALUES ('100004', ' 张明', '男', '总经理室', '2010-10-1', '湖南', '未婚', '1321231331', '党员', '汉', '本科', '计算机', '2000', '广商', '助理工程师', '在职', '正式工', '简历');
INSERT INTO `employee` VALUES ('100002', '张三', '男', '总经理室', '2018-10-1', '广东', '未婚', '546456454564646', '党员', '汉', '本科', '计算机', '2018', '华师', '助理工程师', '在职', '正式工', '简历');
INSERT INTO `employee` VALUES ('100005', ' 张生', '男', '总经理室', '1999-10-1', '湖南', '未婚', '787878', '党员', '汉', '本科', '计算机', '2000', '广外', '助理工程师', '在职', '正式工', '简历');
INSERT INTO `employee` VALUES ('100000', '李海', '男', '总经理室', '1999-10-2', '四川', '未婚', '644465645654654', '党员', '汉', '本科', '外语', '2000-1-1', '华南理工大学', '高级经济师', '退休', '正式工', '写简历');
INSERT INTO `employee` VALUES ('200001', '张月', '女', '生产部', '2000-1-14', '广西', '已婚', '24324232423', '团员', '汉', '高中', '计算机', '2006', '湖南工学院', '工程师', '在职', '合同工', '一份简历');
INSERT INTO `employee` VALUES ('200004', '王海', '男', '财务部', '1996', '广州市', '未婚', '23423424', '党员', '汉', '本科', '', '', '', '助理工程师', '在职', '正式工', '');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserName` char(50) DEFAULT NULL,
  `Password` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '123456');
INSERT INTO `users` VALUES ('liu', '123456');
