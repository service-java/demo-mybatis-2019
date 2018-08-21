/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2013-11-25 09:00:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('2', 'admin888', '888888');
INSERT INTO `info` VALUES ('3', 'user003', 'user003');
INSERT INTO `info` VALUES ('4', 'user004', 'user004');
INSERT INTO `info` VALUES ('5', 'user005', 'user005');
INSERT INTO `info` VALUES ('6', 'user006', 'user006');
INSERT INTO `info` VALUES ('7', 'user0088', 'user00800');
INSERT INTO `info` VALUES ('8', 'user0001', 'user0001');
INSERT INTO `info` VALUES ('12', 'user0020', 'user0020');
INSERT INTO `info` VALUES ('20', 'user0020', 'user0020');
INSERT INTO `info` VALUES ('28', 'user100', '123456aa');
INSERT INTO `info` VALUES ('50', 'user50', 'user50');
INSERT INTO `info` VALUES ('100', 'user0020', 'user0020');
INSERT INTO `info` VALUES ('500', 'user500', 'user500');
INSERT INTO `info` VALUES ('1000', 'user0020', 'user0020');
INSERT INTO `info` VALUES ('5000', 'user5000', 'user5000');
INSERT INTO `info` VALUES ('5001', 'hibernate', 'spring');
