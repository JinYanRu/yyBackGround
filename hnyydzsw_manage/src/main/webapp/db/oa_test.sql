create database oa_test;
use oa_test;
/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : oa_test

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2017-12-29 23:08:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `comm`
-- ----------------------------
DROP TABLE IF EXISTS `comm`;
CREATE TABLE `comm` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sex` int(20) DEFAULT NULL,
  `place` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comm
-- ----------------------------
INSERT INTO `comm` VALUES ('13', '2', '0', '2', '2', '2');
INSERT INTO `comm` VALUES ('16', '4', '0', '4', '4', '4');
INSERT INTO `comm` VALUES ('17', '5', '0', '5', '5', '5');
INSERT INTO `comm` VALUES ('18', '3', '0', '3', '3', '3');
INSERT INTO `comm` VALUES ('20', '1', '0', '1', '2', '2');
INSERT INTO `comm` VALUES ('21', '3', '0', '5', '4', '9');

-- ----------------------------
-- Table structure for `file`
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of file
-- ----------------------------

-- ----------------------------
-- Table structure for `node`
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO `node` VALUES ('2', '02', 'zhang', '1');
INSERT INTO `node` VALUES ('8', '00004', '党务中心', '1');
INSERT INTO `node` VALUES ('9', '002', '党员之家', '1');
INSERT INTO `node` VALUES ('10', '00056', '软件学院', '1');
INSERT INTO `node` VALUES ('25', '999', '市场部', '1');
INSERT INTO `node` VALUES ('26', '1', '1', '1');
INSERT INTO `node` VALUES ('27', '1', '1', '1');
INSERT INTO `node` VALUES ('28', '1', '1', '1');
INSERT INTO `node` VALUES ('29', '555', '555', '1');
INSERT INTO `node` VALUES ('30', '22', 'qq', '1');
INSERT INTO `node` VALUES ('31', '111', '111', '1');
INSERT INTO `node` VALUES ('32', '666', '666', '1');
INSERT INTO `node` VALUES ('33', 'rrr', 'rrr', '1');
INSERT INTO `node` VALUES ('34', 'ttt', 'ttt', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `status` int(20) DEFAULT NULL,
  `nid` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', '888', '888', '88', '888', '1', '2');
INSERT INTO `user` VALUES ('10', 'username', '123', '张三', '222@163.com', '1', '10');
INSERT INTO `user` VALUES ('12', '111', '2', '2', '33', '1', '0');
INSERT INTO `user` VALUES ('14', '10', '456', '李四', '222333444@163.com', '1', '0');
INSERT INTO `user` VALUES ('17', '1', '', '88', '', '1', '0');
INSERT INTO `user` VALUES ('18', '666', '555', '88', '555', '1', '0');
INSERT INTO `user` VALUES ('19', '66', '66', '66', '666', '0', '29');
INSERT INTO `user` VALUES ('20', null, null, null, null, null, '1');
INSERT INTO `user` VALUES ('21', '33', '77', '77', '33', '1', '0');
INSERT INTO `user` VALUES ('22', '55', '55', '55', '55', '1', '0');
INSERT INTO `user` VALUES ('23', null, null, null, null, null, '2');
INSERT INTO `user` VALUES ('24', '33', '33', '33', '33', '1', '2');
INSERT INTO `user` VALUES ('25', null, null, null, null, null, '2');
INSERT INTO `user` VALUES ('27', null, null, null, null, null, '1');
INSERT INTO `user` VALUES ('29', null, null, null, null, null, '1');
INSERT INTO `user` VALUES ('30', '00', '0', '0', '0', '0', '1');
INSERT INTO `user` VALUES ('31', null, null, null, null, null, '2');
INSERT INTO `user` VALUES ('32', 'g', 'g', 'g', 'g', '1', '2');
INSERT INTO `user` VALUES ('36', 'a', 'a', 'a', '', '1', '0');
INSERT INTO `user` VALUES ('37', null, null, null, null, null, '2');
INSERT INTO `user` VALUES ('38', 'b', 'b', 'b', 'b', '1', '2');
INSERT INTO `user` VALUES ('39', '222', 'l', 'l', 'l', '1', '2');
