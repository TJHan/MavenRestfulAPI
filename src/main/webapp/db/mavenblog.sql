/*
Navicat MySQL Data Transfer

Source Server         : 222
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : mavenblog

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-03-16 22:36:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mb_article`
-- ----------------------------
DROP TABLE IF EXISTS `mb_article`;
CREATE TABLE `mb_article` (
  `ArticleID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) DEFAULT NULL,
  `Content` text,
  `EnteredDate` datetime DEFAULT NULL,
  `Visits` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ArticleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_article
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_articlecollect`
-- ----------------------------
DROP TABLE IF EXISTS `mb_articlecollect`;
CREATE TABLE `mb_articlecollect` (
  `ArticleCollectID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `ArticleID` int(11) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ArticleCollectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_articlecollect
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_articlefavour`
-- ----------------------------
DROP TABLE IF EXISTS `mb_articlefavour`;
CREATE TABLE `mb_articlefavour` (
  `ArticleFavourID` int(11) NOT NULL AUTO_INCREMENT,
  `ArticleID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ArticleFavourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_articlefavour
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_articlegroup`
-- ----------------------------
DROP TABLE IF EXISTS `mb_articlegroup`;
CREATE TABLE `mb_articlegroup` (
  `ArticleGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(100) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ArticleGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_articlegroup
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_articlelabel`
-- ----------------------------
DROP TABLE IF EXISTS `mb_articlelabel`;
CREATE TABLE `mb_articlelabel` (
  `ArticleLabelID` int(11) NOT NULL AUTO_INCREMENT,
  `ArticleLabel` varchar(100) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ArticleLabelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_articlelabel
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_articlelabels`
-- ----------------------------
DROP TABLE IF EXISTS `mb_articlelabels`;
CREATE TABLE `mb_articlelabels` (
  `ArticleLabelsID` int(11) NOT NULL AUTO_INCREMENT,
  `ArticleLabelID` int(11) DEFAULT NULL,
  `ArticleID` int(11) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ArticleLabelsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_articlelabels
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_articlesubgroup`
-- ----------------------------
DROP TABLE IF EXISTS `mb_articlesubgroup`;
CREATE TABLE `mb_articlesubgroup` (
  `ArticleSubGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `SubGroupName` varchar(100) DEFAULT NULL,
  `ArticleGroupID` int(11) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ArticleSubGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_articlesubgroup
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_log`
-- ----------------------------
DROP TABLE IF EXISTS `mb_log`;
CREATE TABLE `mb_log` (
  `LogID` int(11) NOT NULL AUTO_INCREMENT,
  `RequestIP` varchar(100) DEFAULT NULL,
  `Message` text,
  `LogType` varchar(50) DEFAULT NULL,
  `Module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_log
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_rights`
-- ----------------------------
DROP TABLE IF EXISTS `mb_rights`;
CREATE TABLE `mb_rights` (
  `RightID` int(11) NOT NULL AUTO_INCREMENT,
  `RightName` varchar(100) DEFAULT NULL,
  `RightKey` varchar(100) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_rights
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_rightssetting`
-- ----------------------------
DROP TABLE IF EXISTS `mb_rightssetting`;
CREATE TABLE `mb_rightssetting` (
  `RightSettingID` int(11) NOT NULL AUTO_INCREMENT,
  `ModelID` int(11) DEFAULT NULL COMMENT '类型主键ID\r\n账户表主键ID或者角色表主键ID',
  `RightID` int(11) DEFAULT NULL,
  `ModelType` char(255) DEFAULT NULL COMMENT '类型主键ID的分类\r\n值为 u 或 r\r\nu:账户表mb_Users\r\nr:角色表mb_Role',
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RightSettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_rightssetting
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_role`
-- ----------------------------
DROP TABLE IF EXISTS `mb_role`;
CREATE TABLE `mb_role` (
  `RoleID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(100) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_role
-- ----------------------------

-- ----------------------------
-- Table structure for `mb_users`
-- ----------------------------
DROP TABLE IF EXISTS `mb_users`;
CREATE TABLE `mb_users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RoleID` int(11) DEFAULT NULL,
  `PhoneNum` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `EnteredDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `NickName` varchar(100) DEFAULT NULL,
  `HeadIcon` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_users
-- ----------------------------
