/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : jsp

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-06-15 18:51:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '高洁', '20', '女', '软件');
INSERT INTO `student` VALUES ('2', '郭小', '22', '女', '旅游');
INSERT INTO `student` VALUES ('3', '晴晴', '21', '女', '软件');
INSERT INTO `student` VALUES ('21', '小凡', '23', '男', '化工');
INSERT INTO `student` VALUES ('22', '晓艾', '22', '女', '化工');
INSERT INTO `student` VALUES ('30', '吕布', '20', '男', '核能学');
INSERT INTO `student` VALUES ('44', '李玲', '22', '女', '金融');
INSERT INTO `student` VALUES ('100', '安世聪', '20', '男', '数学');

-- ----------------------------
-- Table structure for usertable
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `username` char(20) NOT NULL,
  `password` char(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO `usertable` VALUES ('1000', '1000');
