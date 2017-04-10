/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2013-11-25 09:01:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2E3AE964ABEAB5` (`typeId`),
  CONSTRAINT `FK2E3AE964ABEAB5` FOREIGN KEY (`typeId`) REFERENCES `type` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '1', 'Java', '王华');
INSERT INTO `book` VALUES ('2', '2', '高等数学', '李明新');
INSERT INTO `book` VALUES ('3', '3', '医药大全', '孙思');
INSERT INTO `book` VALUES ('4', '1', 'C++', '王华');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '计算机');
INSERT INTO `type` VALUES ('2', '数学');
INSERT INTO `type` VALUES ('3', '医学');
