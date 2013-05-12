/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : db_test

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2013-05-13 00:43:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_columns
-- ----------------------------
DROP TABLE IF EXISTS `t_columns`;
CREATE TABLE `t_columns` (
  `objid_` varchar(32) NOT NULL DEFAULT '',
  `modifydate_` datetime DEFAULT NULL,
  `tb_objid_` varchar(32) DEFAULT NULL,
  `tb_name_` varchar(50) DEFAULT NULL,
  `comments_` varchar(1000) DEFAULT NULL,
  `label_` varchar(100) DEFAULT NULL,
  `type_` varchar(20) DEFAULT NULL,
  `width_` int(32) DEFAULT NULL,
  `precision_` int(32) DEFAULT NULL,
  `key_` tinyint(1) DEFAULT NULL,
  `validation_regex_` varchar(100) DEFAULT NULL,
  `validation_msg_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_columns
-- ----------------------------

-- ----------------------------
-- Table structure for t_dbs
-- ----------------------------
DROP TABLE IF EXISTS `t_dbs`;
CREATE TABLE `t_dbs` (
  `objid_` varchar(32) NOT NULL DEFAULT '',
  `coderid_` varchar(32) DEFAULT NULL,
  `ip_` varchar(30) DEFAULT NULL,
  `port_` int(32) DEFAULT NULL,
  `dbname_` varchar(30) DEFAULT NULL,
  `username_` varchar(50) DEFAULT NULL,
  `password_` varchar(50) DEFAULT NULL,
  `dbtype_` varchar(20) DEFAULT NULL,
  `modifydate_` datetime DEFAULT NULL,
  PRIMARY KEY (`objid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dbs
-- ----------------------------
INSERT INTO `t_dbs` VALUES ('1111', 'admin', '127.0.0.1', '3306', 'db_target', 'root', 'root', 'MYSQL', '2013-05-13 00:12:55');

-- ----------------------------
-- Table structure for t_file
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `objid_` varchar(32) NOT NULL DEFAULT '',
  `modifydate` datetime DEFAULT NULL,
  `suffix_` varchar(50) DEFAULT NULL COMMENT '文件后缀',
  `filename_` varchar(100) DEFAULT NULL,
  `savapath_` varchar(100) DEFAULT NULL,
  `filesize_` float DEFAULT NULL,
  PRIMARY KEY (`objid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_file
-- ----------------------------

-- ----------------------------
-- Table structure for t_logon
-- ----------------------------
DROP TABLE IF EXISTS `t_logon`;
CREATE TABLE `t_logon` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logon
-- ----------------------------

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `objid_` varchar(32) NOT NULL DEFAULT '',
  `title_` varchar(100) DEFAULT NULL,
  `content_` varchar(2000) DEFAULT NULL,
  `modifyDate_` datetime DEFAULT NULL,
  `order_` int(32) DEFAULT NULL,
  PRIMARY KEY (`objid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------

-- ----------------------------
-- Table structure for t_pet
-- ----------------------------
DROP TABLE IF EXISTS `t_pet`;
CREATE TABLE `t_pet` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `color` varchar(50) DEFAULT NULL,
  `age` int(32) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pet
-- ----------------------------

-- ----------------------------
-- Table structure for t_tables
-- ----------------------------
DROP TABLE IF EXISTS `t_tables`;
CREATE TABLE `t_tables` (
  `objid_` varchar(32) NOT NULL DEFAULT '',
  `tablename_` varchar(50) DEFAULT NULL,
  `modifydate_` datetime DEFAULT NULL,
  `label_` varchar(50) DEFAULT NULL,
  `db_objid_` varchar(32) DEFAULT NULL,
  `ref_tables_` varchar(1000) DEFAULT NULL,
  `refed_tableds_` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`objid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tables
-- ----------------------------

-- ----------------------------
-- Procedure structure for dowhile100w
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile100w`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `dowhile100w`()
BEGIN
  DECLARE v1 INT DEFAULT 1000000;
 
  WHILE v1 > 0 DO
					
		INSERT  into t_test(t)VALUES(NOW());

  SET v1 = v1 - 1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for dowhile700w
-- ----------------------------
DROP PROCEDURE IF EXISTS `dowhile700w`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `dowhile700w`()
BEGIN
  DECLARE v1 INT DEFAULT 7000000;
 
  WHILE v1 > 0 DO
					
		INSERT  into t_test(t)VALUES(NOW());

  SET v1 = v1 - 1;
  END WHILE;
END
;;
DELIMITER ;
