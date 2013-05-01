/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : db_test

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2013-05-01 20:28:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_file`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_file
-- ----------------------------
INSERT INTO `t_file` VALUES ('a9bcc1de0ce34b2ea8c52f11ba4efdbb', '2013-04-24 21:52:18', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '339160');
INSERT INTO `t_file` VALUES ('2b818d4eaad74c318ac832fcfc281b16', '2013-04-24 21:52:18', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '138591');
INSERT INTO `t_file` VALUES ('a2ef09cf7ed54b62bb12288a7df3ddea', '2013-04-24 21:52:28', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('6975d9a5cd754ac381788ec070ae7d76', '2013-04-24 21:52:28', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '478202');
INSERT INTO `t_file` VALUES ('b637c594010840b7823371a40f1c0170', '2013-04-24 21:52:33', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '154808');
INSERT INTO `t_file` VALUES ('8862a6fafde147f698ee1f527c33de2b', '2013-04-24 21:52:33', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '73573');
INSERT INTO `t_file` VALUES ('9d75ce7db7f94352a2fe3835567eb7ed', '2013-04-24 21:54:32', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '339160');
INSERT INTO `t_file` VALUES ('2c4ca3eeece94772a8b814149dfc0b48', '2013-04-24 21:55:18', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '362044');
INSERT INTO `t_file` VALUES ('439ab6519ac549f0b0ec36cc43a1b2b0', '2013-04-24 21:55:18', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '138591');
INSERT INTO `t_file` VALUES ('29133077d71f44d793c24c3fa24d52c3', '2013-04-24 21:55:18', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '478202');
INSERT INTO `t_file` VALUES ('f8e9404973c54820bacdd140fe0908b4', '2013-04-24 21:55:18', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '339160');
INSERT INTO `t_file` VALUES ('157d10a3e284415bb4162c82fe2a09bf', '2013-04-24 21:55:22', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '339160');
INSERT INTO `t_file` VALUES ('4d5d4a1dbfa84cfdb2d5239dda515749', '2013-04-24 21:55:27', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '73573');
INSERT INTO `t_file` VALUES ('a403520721134196988c00abd74b6767', '2013-04-24 21:55:40', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042414.jpg', '362044');
INSERT INTO `t_file` VALUES ('84f1d44537204420a39fd4b7aa79dc54', '2013-04-24 21:55:40', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042415.jpg', '138591');
INSERT INTO `t_file` VALUES ('a07553b40f4c4ff0901994dbd50cf650', '2013-04-24 21:55:40', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042416.jpg', '478202');
INSERT INTO `t_file` VALUES ('4eb10092576f4fa09ae7d65c8db8516f', '2013-04-24 21:55:40', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042417.jpg', '339160');
INSERT INTO `t_file` VALUES ('707f1a715725431da75174dd6da4b227', '2013-04-24 21:55:48', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042418.jpg', '135408');
INSERT INTO `t_file` VALUES ('129055e239764c6dba02d5a302009af9', '2013-04-24 21:55:51', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042419.jpg', '478202');
INSERT INTO `t_file` VALUES ('2f165785c36245428235c3781528614a', '2013-04-24 21:58:03', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042420.jpg', '362044');
INSERT INTO `t_file` VALUES ('f37f0af0e2364c01aef6a8287e3dc4cb', '2013-04-24 21:58:03', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042421.jpg', '138591');
INSERT INTO `t_file` VALUES ('5cc78d49f318469d91d6c99a909c2b85', '2013-04-24 21:58:03', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042422.jpg', '478202');
INSERT INTO `t_file` VALUES ('90584e5894ba4b43b4e63a3d6adae6d4', '2013-04-24 21:58:03', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042423.jpg', '339160');
INSERT INTO `t_file` VALUES ('d0c26554ca2647558990b7ee73bd1980', '2013-04-24 21:58:36', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042424.jpg', '362044');
INSERT INTO `t_file` VALUES ('c1bf95a3ea47405ca99490a0151bab64', '2013-04-24 21:58:36', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042425.jpg', '138591');
INSERT INTO `t_file` VALUES ('806e282c43644714b5d8362b78350f3c', '2013-04-24 21:58:36', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042426.jpg', '478202');
INSERT INTO `t_file` VALUES ('12772c3a975e4c12a12284c5f1ca7d53', '2013-04-24 21:58:36', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042427.jpg', '339160');
INSERT INTO `t_file` VALUES ('364f9107a579415ba49df9c81c2593e5', '2013-04-24 22:01:03', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042428.jpg', '73573');
INSERT INTO `t_file` VALUES ('8d5a489a5f344f28b4f35ebd8e24d40c', '2013-04-24 22:01:04', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042429.jpg', '82916');
INSERT INTO `t_file` VALUES ('61dc24b0161045769d9f4b426064e473', '2013-04-24 22:01:04', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042430.jpg', '135408');
INSERT INTO `t_file` VALUES ('d9656bfe897847b28d0c37c1b50192ab', '2013-04-24 22:01:11', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042431.jpg', '135408');
INSERT INTO `t_file` VALUES ('060fec67bd7944308585d53a3b05d60e', '2013-04-24 22:01:24', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042432.jpg', '339160');
INSERT INTO `t_file` VALUES ('76169a0b3861476ab102aed1207445be', '2013-04-24 22:01:41', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042433.jpg', '362044');
INSERT INTO `t_file` VALUES ('257ac722be744317875f8185aa1d4aeb', '2013-04-24 22:01:41', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042434.jpg', '138591');
INSERT INTO `t_file` VALUES ('f1319448bc3f4b138661e4358504d323', '2013-04-24 22:01:41', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042435.jpg', '478202');
INSERT INTO `t_file` VALUES ('a05651a6c7b0425eac44b231d8e30817', '2013-04-24 22:01:41', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042436.jpg', '339160');
INSERT INTO `t_file` VALUES ('8c77de53fff44099a424c69e9a5fe797', '2013-04-24 22:01:48', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042437.jpg', '339160');
INSERT INTO `t_file` VALUES ('6793f96de49c405dad2c134af5f77e62', '2013-04-24 22:01:48', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042438.jpg', '478202');
INSERT INTO `t_file` VALUES ('fa2c6dcd50fa40038e17f10ff152d243', '2013-04-24 22:01:54', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042439.jpg', '138591');
INSERT INTO `t_file` VALUES ('32439b5c665f410a85a1dffdb12839a4', '2013-04-24 22:03:47', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '339160');
INSERT INTO `t_file` VALUES ('bf42dd97712b4a99b646c43223d3452c', '2013-04-24 22:03:50', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '138591');
INSERT INTO `t_file` VALUES ('6980e7fa6da5448b881aa0d3e83f7152', '2013-04-24 22:04:59', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('44f194a4ad2844c6a4a17835d4d227e0', '2013-04-24 22:04:59', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('ccc211ebd4fc4323b55cd0fa514dcdd9', '2013-04-24 22:05:16', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '478202');
INSERT INTO `t_file` VALUES ('f7e4cd60aa7b47fbb4ec4dccacfbaed8', '2013-04-24 22:07:43', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '339160');
INSERT INTO `t_file` VALUES ('1bed823453a349d4bbffc74ddc0a62d0', '2013-04-24 22:07:55', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '339160');
INSERT INTO `t_file` VALUES ('7f601c96e000475f94e201cde034c43f', '2013-04-24 22:09:22', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '339160');
INSERT INTO `t_file` VALUES ('4c0e9b5413cf4fa4b908b8af4e045588', '2013-04-24 22:10:27', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('34620c66aac64d6ca5c7f2af4c86bebe', '2013-04-24 22:10:27', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '339160');
INSERT INTO `t_file` VALUES ('718e5d2e9b8e4e3183ba4c54769d931c', '2013-04-24 22:10:30', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('455142ffc938471d8cf6db96a8568073', '2013-04-24 22:10:33', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '138591');
INSERT INTO `t_file` VALUES ('9856fba8b8de47e3899d9714f31f1263', '2013-04-24 22:10:37', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '362044');
INSERT INTO `t_file` VALUES ('cede83deb4284e2480c31dbd12bf899c', '2013-04-24 22:11:54', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '73573');
INSERT INTO `t_file` VALUES ('2398854432834b78a9c2dccbb537faec', '2013-04-24 22:11:54', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '82916');
INSERT INTO `t_file` VALUES ('fd56b224c3a3460f80a68e5bd4952c02', '2013-04-24 22:11:54', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '135408');
INSERT INTO `t_file` VALUES ('a122e7ec05ee43779d08f70f7a98fb7c', '2013-04-24 22:11:54', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '478202');
INSERT INTO `t_file` VALUES ('575e13ba232948f98264231061faedf5', '2013-04-24 22:11:57', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '138591');
INSERT INTO `t_file` VALUES ('2407e04b6edf46408e570a831dbd685a', '2013-04-24 22:11:59', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '339160');
INSERT INTO `t_file` VALUES ('22b9f27c5f9b486e82121751838366b1', '2013-04-24 22:12:04', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '478202');
INSERT INTO `t_file` VALUES ('057f883b8c8c4c919d4d7bc102b79913', '2013-04-24 22:12:04', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '339160');
INSERT INTO `t_file` VALUES ('da1c56bc95d8461aac180e32f4b4ae5f', '2013-04-24 22:12:09', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042414.jpg', '138591');
INSERT INTO `t_file` VALUES ('f17280e2770b42ab9a4e1c90e00af874', '2013-04-24 22:12:51', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042415.jpg', '73573');
INSERT INTO `t_file` VALUES ('1270e0c919684ca29bc93c22e9ad09b9', '2013-04-24 22:12:51', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042416.jpg', '138591');
INSERT INTO `t_file` VALUES ('dbad499da9fa416fa06011a829d0c538', '2013-04-24 22:12:51', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042417.jpg', '478202');
INSERT INTO `t_file` VALUES ('f2f25c4b511f4644ae09cf31ae1a70a0', '2013-04-24 22:12:51', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042418.jpg', '339160');
INSERT INTO `t_file` VALUES ('6d921701c5e94129b794d534304b2a25', '2013-04-24 22:12:51', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042419.jpg', '73573');
INSERT INTO `t_file` VALUES ('3dae536d89af4939b70e239fe4af59b9', '2013-04-24 22:12:55', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042420.jpg', '154808');
INSERT INTO `t_file` VALUES ('ba4467f188de4a269c38c515c00939a2', '2013-04-24 22:14:31', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '362044');
INSERT INTO `t_file` VALUES ('ee81212f2c2a4ce59041b446b6b211db', '2013-04-24 22:14:31', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '138591');
INSERT INTO `t_file` VALUES ('90d710968c8c4c74afdca0321316d5f9', '2013-04-24 22:14:31', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('af7d46737d7c48d5bed15fbc96bc5ed6', '2013-04-24 22:14:31', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('0ca429f2a1be42e3acb4f2128bcea953', '2013-04-24 22:14:55', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '362044');
INSERT INTO `t_file` VALUES ('962c9de4bfe14a01a3e883b8d85f7c87', '2013-04-24 22:14:55', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '138591');
INSERT INTO `t_file` VALUES ('88d8d2c8c678472abf9adbd8ffa81765', '2013-04-24 22:14:55', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('5efad39ce68d40a6b1fc9d560de356c1', '2013-04-24 22:14:55', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('e8deec07668e40b49772748a3aa750d9', '2013-04-24 22:15:11', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '73573');
INSERT INTO `t_file` VALUES ('38245578c68e46e39d4193eea68fd6d5', '2013-04-24 22:15:11', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '82916');
INSERT INTO `t_file` VALUES ('b1aa0a38522847b39692b2290e19863c', '2013-04-24 22:15:11', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '135408');
INSERT INTO `t_file` VALUES ('77941719bff44a7b8fd11fba4fa42d28', '2013-04-24 22:15:11', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '478202');
INSERT INTO `t_file` VALUES ('96aed626ebef4c0095cbb032a012e667', '2013-04-24 22:15:33', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '362044');
INSERT INTO `t_file` VALUES ('28c70126f7e54d8ab93bbf34f6b7af3f', '2013-04-24 22:15:33', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '138591');
INSERT INTO `t_file` VALUES ('a05bfb2d5d26493088688cea4e3a4f98', '2013-04-24 22:15:33', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '478202');
INSERT INTO `t_file` VALUES ('cdf2f07d575b44309b6d45e604383d8b', '2013-04-24 22:15:33', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '339160');
INSERT INTO `t_file` VALUES ('3932d8b3d19d4c84a9d1dae826a2287a', '2013-04-24 22:16:03', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '362044');
INSERT INTO `t_file` VALUES ('c398dea2099147ba97a47368c1ae2f82', '2013-04-24 22:16:03', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '138591');
INSERT INTO `t_file` VALUES ('0f0b771ac51f43949ba235db6b434ec4', '2013-04-24 22:16:03', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('0723f909b43a44b1ace8bd53f25c26c5', '2013-04-24 22:16:03', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('9e6d4ba561b442218225d75b5ef39c64', '2013-04-24 22:20:13', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '339160');
INSERT INTO `t_file` VALUES ('72d2a9241b8e4097a7cfd034d5024fa7', '2013-04-24 22:20:16', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '138591');
INSERT INTO `t_file` VALUES ('6dcd1c5eba9145c0bbeeb615e34bb5a6', '2013-04-24 22:20:18', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '138591');
INSERT INTO `t_file` VALUES ('55c0ce668f1d40e7a645716cb4d13d27', '2013-04-24 22:20:21', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '82916');
INSERT INTO `t_file` VALUES ('f36ff3fea3de4c73837e19ba64f0f8c7', '2013-04-24 22:20:23', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '154808');
INSERT INTO `t_file` VALUES ('0ae53c169db04da49d63823114eb96c6', '2013-04-24 22:20:45', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '362044');
INSERT INTO `t_file` VALUES ('d92cc813aaf8432784391dcc8f8af250', '2013-04-24 22:20:45', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '138591');
INSERT INTO `t_file` VALUES ('b04d39afdbd44a88a9208938275c1008', '2013-04-24 22:20:45', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '478202');
INSERT INTO `t_file` VALUES ('b58d935c76604b5288d6a91e288eb798', '2013-04-24 22:20:45', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '339160');
INSERT INTO `t_file` VALUES ('203d00b4cc1f4e388a0e087497698671', '2013-04-24 22:22:37', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '362044');
INSERT INTO `t_file` VALUES ('ea5b6f82f1ab4b53b942af0dfcf0a01f', '2013-04-24 22:22:37', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '138591');
INSERT INTO `t_file` VALUES ('b226f1ce5acd4b1f8e94f82d3deff3ee', '2013-04-24 22:22:37', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('29ebf51eea5741648183dfa9f5ac923b', '2013-04-24 22:22:37', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('9fb4d710b6c44073bf17271c3584d069', '2013-04-24 22:22:41', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '138591');
INSERT INTO `t_file` VALUES ('62a3774d38ea47f1b97334e9b1fc241a', '2013-04-24 22:22:47', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '135408');
INSERT INTO `t_file` VALUES ('70ac46888dde4b64a801fc739fe06e6b', '2013-04-24 22:22:54', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '154808');
INSERT INTO `t_file` VALUES ('4c777946f88645fd81fd823eed50d471', '2013-04-24 22:22:55', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '73573');
INSERT INTO `t_file` VALUES ('c4584fe081ef4062866978b22f2b4179', '2013-04-24 22:22:55', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '82916');
INSERT INTO `t_file` VALUES ('4508edd5eb0d447b808f8dd530421d73', '2013-04-24 22:22:55', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '135408');
INSERT INTO `t_file` VALUES ('36b3484c9ff84794a05a47287ec2e41c', '2013-04-24 22:23:11', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '73573');
INSERT INTO `t_file` VALUES ('54677f2bd4e74a3ab2aafd24625c544e', '2013-04-24 22:23:11', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '82916');
INSERT INTO `t_file` VALUES ('7d1cfba3c4fa4ffb91fc0a90999415a3', '2013-04-24 22:23:12', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '478202');
INSERT INTO `t_file` VALUES ('4f18bcf1711e46a68ed94262097b5089', '2013-04-24 22:23:12', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042414.jpg', '339160');
INSERT INTO `t_file` VALUES ('28e23ae91f9548ab847e2f459bd1c26e', '2013-04-24 22:24:00', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '73573');
INSERT INTO `t_file` VALUES ('5c18d36869a74bdf8ade089f761cf8d7', '2013-04-24 22:24:00', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '82916');
INSERT INTO `t_file` VALUES ('e4624cee91c342d59768d5dde9d62a5a', '2013-04-24 22:24:00', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('f2919dcb96a3434eb3ea7f3af9a479f0', '2013-04-24 22:24:00', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('756e7107297a48459705295a9021ea3f', '2013-04-24 22:24:09', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '478202');
INSERT INTO `t_file` VALUES ('44ccf0ca8e884e4ca8d91d73fdc1b3cd', '2013-04-24 22:24:14', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '339160');
INSERT INTO `t_file` VALUES ('4ba270a07b9d49fc8971f4ff6ebbf7e4', '2013-04-24 22:24:16', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '138591');
INSERT INTO `t_file` VALUES ('be6ae0f2607c46c292f8d82aa67369da', '2013-04-24 22:24:18', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '478202');
INSERT INTO `t_file` VALUES ('ea01bdac8101499aa5b04935137b2f8e', '2013-04-24 22:24:21', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '362044');
INSERT INTO `t_file` VALUES ('d1fb4ce339cb4939bda5cee352309b35', '2013-04-24 22:24:27', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '362044');
INSERT INTO `t_file` VALUES ('37e83d656f34482f8eba094f36fe21d4', '2013-04-24 22:24:39', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '73573');
INSERT INTO `t_file` VALUES ('a83527b384b34f4f85a184f323254851', '2013-04-24 22:24:39', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '82916');
INSERT INTO `t_file` VALUES ('fcc7b4ca315e454ba193a611c207bb17', '2013-04-24 22:24:39', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '138591');
INSERT INTO `t_file` VALUES ('ab505203151144d28f0b2069f2582047', '2013-04-24 22:24:39', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042414.jpg', '478202');
INSERT INTO `t_file` VALUES ('fd59ebc3db9845eb85d756029836e3c9', '2013-04-24 22:24:39', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042415.jpg', '339160');
INSERT INTO `t_file` VALUES ('df07fc2016e34ef6991ad82b5b519bf4', '2013-04-24 22:24:52', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042416.jpg', '339160');
INSERT INTO `t_file` VALUES ('4aaf5e34a1e84392b5441a38cbe4d14e', '2013-04-24 22:25:00', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042417.jpg', '73573');
INSERT INTO `t_file` VALUES ('190adc6e902c44b79495ef69d576c470', '2013-04-24 22:25:00', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042418.jpg', '138591');
INSERT INTO `t_file` VALUES ('a3ee82bc1a7847bb9848e2bd58c2e43f', '2013-04-24 22:25:01', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042419.jpg', '478202');
INSERT INTO `t_file` VALUES ('02a6c8d6c0094f5cacfd1f0236815f3f', '2013-04-24 22:25:01', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042420.jpg', '339160');
INSERT INTO `t_file` VALUES ('684836ee7cef4de99ac92cdaede3a408', '2013-04-24 22:25:27', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042421.jpg', '82916');
INSERT INTO `t_file` VALUES ('dd216f0bb3d44577ad6c75a383ea443b', '2013-04-24 22:25:27', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042422.jpg', '478202');
INSERT INTO `t_file` VALUES ('f2b7d7a4e323400fa0d975aa0dc84ec3', '2013-04-24 22:26:53', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042423.jpg', '339160');
INSERT INTO `t_file` VALUES ('5bc136acb5c54b95bf079038a7b239f3', '2013-04-24 22:27:59', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042424.jpg', '339160');
INSERT INTO `t_file` VALUES ('a6e89b4ce4a24866ad6a474fb69d2539', '2013-04-24 22:30:12', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '339160');
INSERT INTO `t_file` VALUES ('9de9c582c41a45609603b9aabd0ab0df', '2013-04-24 22:31:02', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '339160');
INSERT INTO `t_file` VALUES ('a6a940bad03240ffb37e7a3f4df86d24', '2013-04-24 22:34:02', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('70af5fbf0703458cac922bd430120ff4', '2013-04-24 22:34:02', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '135408');
INSERT INTO `t_file` VALUES ('e5e46bbb6d854a93adeb0c5875c2c0b8', '2013-04-24 22:34:02', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('3595abe7cf3c4a328c06a41b49aa49c7', '2013-04-24 22:34:02', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('bffc7d670c2947378618face4c155262', '2013-04-24 22:34:11', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '339160');
INSERT INTO `t_file` VALUES ('301015102e0f42768a46bf4e10cbf614', '2013-04-24 22:34:15', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '339160');
INSERT INTO `t_file` VALUES ('98ed90c69eb841d59e9aa79711bceb20', '2013-04-24 22:34:42', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '73573');
INSERT INTO `t_file` VALUES ('85734932d0b241feba3edc032668ab5e', '2013-04-24 22:34:43', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '82916');
INSERT INTO `t_file` VALUES ('b3e28bbd2b47440784419f286c60da70', '2013-04-24 22:34:43', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '135408');
INSERT INTO `t_file` VALUES ('db5594c11afc49b3bc7375f298bdff39', '2013-04-24 22:34:43', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '339160');
INSERT INTO `t_file` VALUES ('2caefd235b214391bb434638c6ee7b63', '2013-04-24 22:36:07', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '362044');
INSERT INTO `t_file` VALUES ('ab33cb282ded47e98d4358391e8c903c', '2013-04-24 22:36:07', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '82916');
INSERT INTO `t_file` VALUES ('95d0188cc8cd46d18dffdd8daecd74cc', '2013-04-24 22:36:07', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '138591');
INSERT INTO `t_file` VALUES ('7caa36cc1df94dacb87f841d06e0b3d0', '2013-04-24 22:36:07', 'jpg', '2 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '135408');
INSERT INTO `t_file` VALUES ('4ecf4dadbbe84a4abf939b79210d9719', '2013-04-24 22:36:14', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '478202');
INSERT INTO `t_file` VALUES ('6609a07097af48cab1fb49e7f70b2d8e', '2013-04-24 22:36:16', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '362044');
INSERT INTO `t_file` VALUES ('1ec2fe343d5d4e0a9495f7c6cd230c49', '2013-04-24 22:38:37', 'jpg', '2 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '135408');
INSERT INTO `t_file` VALUES ('e42d32e85598433e82df58be964b70d7', '2013-04-24 22:38:40', 'jpg', '2 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '135408');
INSERT INTO `t_file` VALUES ('011e71ec2fc64622a1465475b3ef5bc2', '2013-04-24 22:38:51', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('05439d8834ab4404bff9333f43147ee4', '2013-04-24 22:38:51', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '138591');
INSERT INTO `t_file` VALUES ('9d9dd7b97b084482a713d95f68fba4d1', '2013-04-24 22:38:51', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '478202');
INSERT INTO `t_file` VALUES ('694196ca2e9f4772b245845abd487920', '2013-04-24 22:38:56', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '138591');
INSERT INTO `t_file` VALUES ('7aa0147930934717b7919ae22be2dcbc', '2013-04-24 22:39:00', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '82916');
INSERT INTO `t_file` VALUES ('754813246fdd42c18169a67aa6aa0446', '2013-04-24 22:39:00', 'jpg', '2 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '135408');
INSERT INTO `t_file` VALUES ('a5ea7bfde2a9465aa274e2193db3d933', '2013-04-24 22:39:01', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '478202');
INSERT INTO `t_file` VALUES ('1d497508b5844e5e892bee688f28e498', '2013-04-24 22:39:12', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '82916');
INSERT INTO `t_file` VALUES ('484c1786efef4ad8b0443f10ac27353b', '2013-04-24 22:39:12', 'jpg', '2 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '135408');
INSERT INTO `t_file` VALUES ('323ee969fb8b4ba09cc03965167155c7', '2013-04-24 22:39:12', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '478202');
INSERT INTO `t_file` VALUES ('676acf8de0c54153bc3b3c0515d2a83e', '2013-04-24 22:41:03', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '73573');
INSERT INTO `t_file` VALUES ('28e84098bd344e90b1ddc8c8c23ba8a5', '2013-04-24 22:41:03', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042414.jpg', '82916');
INSERT INTO `t_file` VALUES ('58f377f059044e8e9ccfb2cad648c6ca', '2013-04-24 22:41:03', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042415.jpg', '138591');
INSERT INTO `t_file` VALUES ('dcfe4ce4675a483bb0d01514b4b2f08b', '2013-04-24 22:41:03', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042416.jpg', '478202');
INSERT INTO `t_file` VALUES ('deb42844a5cd420ab342ed16276bedaf', '2013-04-24 22:41:06', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042417.jpg', '138591');
INSERT INTO `t_file` VALUES ('944efec66d3c4421869ee2b48d27c7ed', '2013-04-24 22:41:11', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042418.jpg', '362044');
INSERT INTO `t_file` VALUES ('05a6a0ef14a744da82f65579338596ff', '2013-04-24 22:41:27', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042419.jpg', '478202');
INSERT INTO `t_file` VALUES ('012b94a2290e4ccab7c4036b0a956b0a', '2013-04-24 22:44:08', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '138591');
INSERT INTO `t_file` VALUES ('26b22350cef74dc0b5da5cb9a4df5f80', '2013-04-24 22:44:08', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '478202');
INSERT INTO `t_file` VALUES ('d7252c1553444d7ca80ad26a3f7f9857', '2013-04-24 22:47:52', 'jpg', '2.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '135408');
INSERT INTO `t_file` VALUES ('c6f6f0c0114f4e70bac9a16a384b454f', '2013-04-24 22:47:52', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '362044');
INSERT INTO `t_file` VALUES ('6bac16a40282433daf1bb1a3fde58475', '2013-04-24 22:47:52', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '138591');
INSERT INTO `t_file` VALUES ('67982b361e78421a8d45ed8ecab4b7ab', '2013-04-24 22:47:52', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '362044');
INSERT INTO `t_file` VALUES ('9a8727baa6e7476896261c782a4a63ab', '2013-04-24 22:47:59', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '82916');
INSERT INTO `t_file` VALUES ('7f2299fc99ec4f1f9a0bc8d6289be56f', '2013-04-24 22:47:59', 'jpg', '2 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '135408');
INSERT INTO `t_file` VALUES ('97a5ca2a4424423fbfe25a0456923ea2', '2013-04-24 22:48:05', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '362044');
INSERT INTO `t_file` VALUES ('25722282fe9847baa5a39a660cb56edc', '2013-04-24 22:48:05', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '138591');
INSERT INTO `t_file` VALUES ('9c7604e7f01d43db98aebceb300ccbac', '2013-04-24 22:48:23', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '154808');
INSERT INTO `t_file` VALUES ('982f4f27c9064e63b6d417afc89aafdb', '2013-04-24 22:48:23', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '73573');
INSERT INTO `t_file` VALUES ('e81de418a8374060a5dcdfbccbddf844', '2013-04-24 22:48:23', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '82916');
INSERT INTO `t_file` VALUES ('89ac9cda0bbb4cd499ed8a78ff57258d', '2013-04-24 22:48:24', 'jpg', '2 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042414.jpg', '135408');
INSERT INTO `t_file` VALUES ('00b5f73ede1342f19622f54c286eddb8', '2013-04-24 22:52:22', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '478202');
INSERT INTO `t_file` VALUES ('cda69dd1e08c40259bcc19be969415a4', '2013-04-24 22:52:51', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '82916');
INSERT INTO `t_file` VALUES ('b1cde3fa29e44e25a07d019e638d6413', '2013-04-24 22:52:51', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '138591');
INSERT INTO `t_file` VALUES ('20b6e6e3a94a42a985c1fea3f9173f07', '2013-04-24 22:52:51', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '478202');
INSERT INTO `t_file` VALUES ('95d107bd290c4869aca8e4fb7b6ad162', '2013-04-24 22:55:22', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('285f003209b14cdfa45dab163c890b50', '2013-04-24 22:55:23', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '138591');
INSERT INTO `t_file` VALUES ('15cb79a594854da2b677d7f430d5e8d0', '2013-04-24 22:55:23', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('7723f3a8bb834abba07bfcec36ca1074', '2013-04-24 22:55:30', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '478202');
INSERT INTO `t_file` VALUES ('91769bac77ed4ceb8e38c078460c38a1', '2013-04-24 22:56:32', 'jpg', '1 - 副本 (2).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('e48c579d3a2d4ff79755e606e7a4f370', '2013-04-24 22:56:32', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '478202');
INSERT INTO `t_file` VALUES ('eaf74c3797d54defa81fa367adc0e8cc', '2013-04-24 22:56:32', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '73573');
INSERT INTO `t_file` VALUES ('e0d8fb9861034f6290794d606f088922', '2013-04-24 22:56:32', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '82916');
INSERT INTO `t_file` VALUES ('744ef6c8691347f0ac72d81a67abfaa6', '2013-04-24 22:56:32', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '73573');
INSERT INTO `t_file` VALUES ('b9f9b52751264b4d8fac1750966a788a', '2013-04-24 22:58:08', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '478202');
INSERT INTO `t_file` VALUES ('c14fadb5420e44749e2b562d68f4d8b1', '2013-04-24 22:58:08', 'jpg', '1 - 副本 (2).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '82916');
INSERT INTO `t_file` VALUES ('36b8e08959b94a3bbbf94a8a2a0945ee', '2013-04-24 22:58:08', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('07b77dcd36704ef28db37f245f7343c4', '2013-04-24 22:59:54', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '478202');
INSERT INTO `t_file` VALUES ('a0b2460b015d4a598b38cf42b1b41612', '2013-04-24 22:59:54', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '478202');
INSERT INTO `t_file` VALUES ('c4bc78a1e6f1490680f34b567b15c6b1', '2013-04-24 22:59:54', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('39b112bbcc004baa802c5248d933bda4', '2013-04-24 22:59:55', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '73573');
INSERT INTO `t_file` VALUES ('d85926a6d88341e1a83372126829e982', '2013-04-24 23:00:00', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '73573');
INSERT INTO `t_file` VALUES ('5a3c8b7823b54b87a568033ece437560', '2013-04-24 23:01:31', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '73573');
INSERT INTO `t_file` VALUES ('46a5888980b9419cb68197af7d6ee4f5', '2013-04-24 23:01:34', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '478202');
INSERT INTO `t_file` VALUES ('8a81ae1398c54c2fb995da5b2cefd41d', '2013-04-24 23:01:41', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '73573');
INSERT INTO `t_file` VALUES ('d43bdaeb305e4a95bbdf435449b4cd74', '2013-04-24 23:02:48', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('aefc23298e154053bf9cfe8e074d4c8d', '2013-04-24 23:02:53', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '478202');
INSERT INTO `t_file` VALUES ('d19c2c544c9549f69757c52e8ded4782', '2013-04-24 23:02:53', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('a546ea77e328495787a37822bff84f6d', '2013-04-24 23:02:53', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '73573');
INSERT INTO `t_file` VALUES ('f5afe5cfff4b4986ad702adc83fecefa', '2013-04-24 23:03:30', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('cb9220cdb47640ddae8ea6fb480ee147', '2013-04-24 23:03:30', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '73573');
INSERT INTO `t_file` VALUES ('0a951de0ec134afea05ed8970e16cd04', '2013-04-24 23:03:33', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('75c5873d1c1f4d5599d21c9d29c9b70d', '2013-04-24 23:03:54', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '478202');
INSERT INTO `t_file` VALUES ('b336627d289546d2ad4ef8539c2a19cc', '2013-04-24 23:03:54', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '73573');
INSERT INTO `t_file` VALUES ('af66895c82094dfca5ead9530ce0d5b4', '2013-04-24 23:03:54', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '82916');
INSERT INTO `t_file` VALUES ('d4334b1d3d9f4b6cbab2325ef8349db9', '2013-04-24 23:05:55', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '73573');
INSERT INTO `t_file` VALUES ('60cdd67080c14c5ca6a27afc40d2f3d5', '2013-04-24 23:05:58', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '73573');
INSERT INTO `t_file` VALUES ('ec0dfdf807874fdf81791279fe562359', '2013-04-24 23:06:01', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('029daa9afff74d61ab9df6b38aa612cc', '2013-04-24 23:06:13', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '82916');
INSERT INTO `t_file` VALUES ('5a757b48f0d2439093bf4e9a7f648f16', '2013-04-24 23:06:15', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '478202');
INSERT INTO `t_file` VALUES ('6dce7729eeac4a18b6961ec358f90995', '2013-04-24 23:06:28', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '73573');
INSERT INTO `t_file` VALUES ('560b0ff8e66341dab707c6877938b2da', '2013-04-24 23:06:32', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '478202');
INSERT INTO `t_file` VALUES ('3b203a1bdd7849e89798364eed017b03', '2013-04-24 23:06:37', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '478202');
INSERT INTO `t_file` VALUES ('c2a8177bf05c4b0fad51d92d598d8f15', '2013-04-24 23:07:19', 'jpg', '1 - 副本 (2).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304249.jpg', '82916');
INSERT INTO `t_file` VALUES ('38371574715e4a50abfc4a950a5cf052', '2013-04-24 23:07:42', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042410.jpg', '73573');
INSERT INTO `t_file` VALUES ('460e44d01adb4ecfa95318c7caaa8fcd', '2013-04-24 23:07:44', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042411.jpg', '82916');
INSERT INTO `t_file` VALUES ('017459c03b694969b69a95706b0bf420', '2013-04-24 23:07:46', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042412.jpg', '478202');
INSERT INTO `t_file` VALUES ('26d10661ab984f43aacfe49826ebfadf', '2013-04-24 23:07:51', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042413.jpg', '478202');
INSERT INTO `t_file` VALUES ('e9cd7f2625ea4a86aca7681830c3eeb5', '2013-04-24 23:07:51', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042414.jpg', '73573');
INSERT INTO `t_file` VALUES ('5958c1e22e784cc68dee186806e6d389', '2013-04-24 23:07:51', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042415.jpg', '82916');
INSERT INTO `t_file` VALUES ('d6ef1edbe92643e4bf40485ddc51b318', '2013-04-24 23:07:59', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042416.jpg', '154808');
INSERT INTO `t_file` VALUES ('348caa236fc5411ea7544ec35fcac3ca', '2013-04-24 23:07:59', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042417.jpg', '478202');
INSERT INTO `t_file` VALUES ('29d72738774044459c8cdd5fb79661a4', '2013-04-24 23:07:59', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042418.jpg', '73573');
INSERT INTO `t_file` VALUES ('8532f3afbe264d3182df840d96674834', '2013-04-24 23:08:15', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042419.jpg', '478202');
INSERT INTO `t_file` VALUES ('9cecf49661294aa097c6f23572a65c41', '2013-04-24 23:08:15', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042420.jpg', '73573');
INSERT INTO `t_file` VALUES ('7b6baa438595419b958adbe6c662d935', '2013-04-24 23:08:15', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042421.jpg', '82916');
INSERT INTO `t_file` VALUES ('8f5ce146c51240de8ed6ba4a95f518ea', '2013-04-24 23:08:18', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042422.jpg', '478202');
INSERT INTO `t_file` VALUES ('efbb0a399ea24961ac3fd21827762437', '2013-04-24 23:08:20', 'jpg', '1 - 副本 (2).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042423.jpg', '82916');
INSERT INTO `t_file` VALUES ('c05070bdd41949ba871c980ab1905871', '2013-04-24 23:08:52', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042424.jpg', '154808');
INSERT INTO `t_file` VALUES ('df2973b3abad47899a745e40019b3838', '2013-04-24 23:08:53', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042425.jpg', '478202');
INSERT INTO `t_file` VALUES ('7c772812748e4c99a08b2d08c3e5b2b6', '2013-04-24 23:08:53', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042426.jpg', '73573');
INSERT INTO `t_file` VALUES ('59e2d294eb1f409384b1b31fd15621e0', '2013-04-24 23:08:53', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042427.jpg', '82916');
INSERT INTO `t_file` VALUES ('d60c0d000e4c4a44b209434eec33621c', '2013-04-24 23:08:53', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042428.jpg', '82916');
INSERT INTO `t_file` VALUES ('22ba5971c1854c4790b821ce4526ec02', '2013-04-24 23:09:03', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042429.jpg', '73573');
INSERT INTO `t_file` VALUES ('99e823e2253f42c085f4569a013ca824', '2013-04-24 23:09:07', 'jpg', '1 - 副本 (2).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042430.jpg', '82916');
INSERT INTO `t_file` VALUES ('5fe14dcc6e5b4bdfad15ee7163b013aa', '2013-04-24 23:09:28', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042431.jpg', '478202');
INSERT INTO `t_file` VALUES ('824834e98d804401b40efc9b8eb20ebf', '2013-04-24 23:09:28', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042432.jpg', '73573');
INSERT INTO `t_file` VALUES ('bba24fa7165549be93c5888c4a7583b3', '2013-04-24 23:09:28', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042433.jpg', '82916');
INSERT INTO `t_file` VALUES ('813ae3c712b242f6bd61accf12e32be0', '2013-04-24 23:09:28', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042434.jpg', '73573');
INSERT INTO `t_file` VALUES ('a09f02bdab304c4792ced989bd1641ed', '2013-04-24 23:09:31', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042435.jpg', '82916');
INSERT INTO `t_file` VALUES ('b8b838cb27764cce968533281df888e5', '2013-04-24 23:09:36', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042436.jpg', '73573');
INSERT INTO `t_file` VALUES ('57fe89c9a8e345c3af973304d00740e6', '2013-04-24 23:09:36', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042437.jpg', '82916');
INSERT INTO `t_file` VALUES ('8f0886a8563a434a814e7bea931f5266', '2013-04-24 23:09:36', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042438.jpg', '73573');
INSERT INTO `t_file` VALUES ('6c4a0b753bc84ee7adef80ed95e9522a', '2013-04-24 23:09:52', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042439.jpg', '478202');
INSERT INTO `t_file` VALUES ('c81a3bd3332b46bea38053cd1094574c', '2013-04-24 23:09:52', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042440.jpg', '82916');
INSERT INTO `t_file` VALUES ('c9e1c3bd1cb44f90ad358c0f575846a1', '2013-04-24 23:09:52', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042441.jpg', '73573');
INSERT INTO `t_file` VALUES ('e641508cda0649439a6c83b5b029ff2d', '2013-04-24 23:09:54', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042442.jpg', '478202');
INSERT INTO `t_file` VALUES ('8c083928a147427d8d78a7a828db0bac', '2013-04-24 23:09:58', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042443.jpg', '478202');
INSERT INTO `t_file` VALUES ('73b24aca729a4cc6be20aaa2593c4823', '2013-04-24 23:11:10', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042444.jpg', '82916');
INSERT INTO `t_file` VALUES ('5779aeb182d7493abed4c07d4a337193', '2013-04-24 23:11:12', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042445.jpg', '82916');
INSERT INTO `t_file` VALUES ('83c07ef6404249e7a3ad17227a208021', '2013-04-24 23:11:14', 'jpg', '1 - 副本 (2).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042446.jpg', '82916');
INSERT INTO `t_file` VALUES ('b770ca9964224717a4da01c6c9785226', '2013-04-24 23:11:17', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042447.jpg', '154808');
INSERT INTO `t_file` VALUES ('30729877f23b4c859fb0cafeb9354e48', '2013-04-24 23:11:24', 'zip', '上传图片.zip', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042448.zip', '4364680');
INSERT INTO `t_file` VALUES ('7d9bdef42fab4d40bc107e90da1cfc00', '2013-04-24 23:11:28', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042449.jpg', '82916');
INSERT INTO `t_file` VALUES ('ab54095710714863af7613124617c067', '2013-04-24 23:11:42', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042450.jpg', '73573');
INSERT INTO `t_file` VALUES ('3f728bc76159410f9e90f765c8b5935f', '2013-04-24 23:11:53', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\2013042451.jpg', '154808');
INSERT INTO `t_file` VALUES ('63dfccaedc784d6a8da0d471a1d7d894', '2013-04-24 23:19:04', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('601abd16d0134aa4b4eaaaeea40f5f95', '2013-04-24 23:19:09', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '73573');
INSERT INTO `t_file` VALUES ('64122d1e3de64935b663675ef05a7de3', '2013-04-24 23:19:09', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('08019a402cc545848ce62c328189229d', '2013-04-24 23:19:09', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '82916');
INSERT INTO `t_file` VALUES ('e2cef89f027f4aaeb118b5b1da91bf2c', '2013-04-24 23:19:10', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '73573');
INSERT INTO `t_file` VALUES ('ffb01c74385049b68d2d78fc85846c94', '2013-04-24 23:20:20', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '73573');
INSERT INTO `t_file` VALUES ('01b55a8340444062985e1f6302ba4c4c', '2013-04-24 23:20:42', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '478202');
INSERT INTO `t_file` VALUES ('7343b26cb61b4d0faaaed0112bb7c612', '2013-04-24 23:20:42', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('5d8443bcbec44ac898b3728e5e8dcb09', '2013-04-24 23:20:43', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '73573');
INSERT INTO `t_file` VALUES ('30588e2db4964fa885782761bcc81617', '2013-04-24 23:36:53', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '73573');
INSERT INTO `t_file` VALUES ('5ad354f893c141b2ab70f0d0cba08fcb', '2013-04-24 23:36:55', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '82916');
INSERT INTO `t_file` VALUES ('8edb37b923f242d581fa261bcd3eeb50', '2013-04-24 23:37:55', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '478202');
INSERT INTO `t_file` VALUES ('dded5203cc0b4d5dab5c5898edd56ae6', '2013-04-24 23:37:55', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '82916');
INSERT INTO `t_file` VALUES ('97f7c00e74414682a022dc97f2b71bb1', '2013-04-24 23:37:55', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '73573');
INSERT INTO `t_file` VALUES ('1128bd7d71bd408999b2887f79e3718f', '2013-04-24 23:38:11', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.jpg', '478202');
INSERT INTO `t_file` VALUES ('3b953b2c83444947b337cb0164ce75eb', '2013-04-24 23:38:11', 'jpg', '0 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304247.jpg', '73573');
INSERT INTO `t_file` VALUES ('aecdacf65cc54159b56ecf19c9dbc12d', '2013-04-24 23:38:11', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304248.jpg', '82916');
INSERT INTO `t_file` VALUES ('3b9d1ce5ba89450fbbe56e46cd8871aa', '2013-04-24 23:52:56', 'jpg', '1 - 副本 (2).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304241.jpg', '82916');
INSERT INTO `t_file` VALUES ('545326ffa7ea45129de835561b977009', '2013-04-24 23:52:56', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304242.jpg', '82916');
INSERT INTO `t_file` VALUES ('b27c4425d7fe49a8a0eb463b48b11564', '2013-04-24 23:52:56', 'jpg', '1.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304243.jpg', '82916');
INSERT INTO `t_file` VALUES ('dc23bae840944e7cb7cd0cc8a67fcfb5', '2013-04-24 23:53:27', 'jpg', '0 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304244.jpg', '73573');
INSERT INTO `t_file` VALUES ('96765f35d8394e399b3f0c348c3dd0d0', '2013-04-24 23:54:56', 'jpg', '1 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304245.jpg', '82916');
INSERT INTO `t_file` VALUES ('f7237f3b2e5b431388ae750ebe0c63c7', '2013-04-24 23:55:00', 'zip', '上传图片.zip', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0424\\201304246.zip', '4364680');
INSERT INTO `t_file` VALUES ('98137198e0e449e0a9d43e9b68351e2a', '2013-04-25 00:26:47', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304251.jpg', '478202');
INSERT INTO `t_file` VALUES ('10dd1887beeb4951a40a33a06895bfb9', '2013-04-25 00:26:51', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304252.jpg', '138591');
INSERT INTO `t_file` VALUES ('2abb9a99640e4a7187343cad4f2ca3d3', '2013-04-25 00:26:51', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304253.jpg', '478202');
INSERT INTO `t_file` VALUES ('301448221d994f019232520389d7168f', '2013-04-25 00:26:51', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304254.jpg', '339160');
INSERT INTO `t_file` VALUES ('3461d27b8d674e0784b904987cdf0cb3', '2013-04-25 00:27:23', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304255.jpg', '82916');
INSERT INTO `t_file` VALUES ('ba407e293c6d4778941b70f6cc83ee14', '2013-04-25 00:27:23', 'jpg', '0.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304256.jpg', '73573');
INSERT INTO `t_file` VALUES ('06197448b9984edab3c0d2c34514c3b2', '2013-04-25 00:27:23', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304257.jpg', '478202');
INSERT INTO `t_file` VALUES ('b8d3d59a50c0453c8a38bae1f339785a', '2013-04-25 00:27:23', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304258.jpg', '339160');
INSERT INTO `t_file` VALUES ('3c7c439cf14c45c2ada11dc2c6427508', '2013-04-25 00:27:27', 'jpg', 'psb3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\201304259.jpg', '55275');
INSERT INTO `t_file` VALUES ('5ca75b9cb8824ec291b2a97ce46742ab', '2013-04-25 00:33:06', 'jpg', '9806765694eef01f47f1de56e0fe9925be317dcc.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0425\\2013042510.jpg', '339160');
INSERT INTO `t_file` VALUES ('860e29628a724b2d83d8f5cfbe807342', '2013-04-28 23:20:35', 'pdf', 'Activiti 5.8 用户指南（中文版）.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304281.pdf', '3591040');
INSERT INTO `t_file` VALUES ('157b2234a1c44584b4b8fad6aba8bbc6', '2013-04-28 23:20:38', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304282.jpg', '154808');
INSERT INTO `t_file` VALUES ('5ac37fb0895f48e4937c7da490850d71', '2013-04-28 23:20:48', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304283.jpg', '82916');
INSERT INTO `t_file` VALUES ('3071b02570ca40ccbf4b3d40feb07eb4', '2013-04-28 23:20:48', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304284.jpg', '138591');
INSERT INTO `t_file` VALUES ('a6f4be5b679b4e2b9a844abe79168009', '2013-04-28 23:20:48', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304285.jpg', '478202');
INSERT INTO `t_file` VALUES ('1cd14f8c046746c58d8573f37f7e49db', '2013-04-28 23:24:21', 'png', 'P1070125.png', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304281.png', '400284');
INSERT INTO `t_file` VALUES ('80cf112a3c90454380997020a64064f5', '2013-04-28 23:24:21', 'jpg', '1 - 副本 - 副本.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304282.jpg', '82916');
INSERT INTO `t_file` VALUES ('1e201c2f66a44981bbdd780946575ecf', '2013-04-28 23:24:21', 'jpg', '5c46c1c59f3df8dc7bd74902cd11728b451028c3.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304283.jpg', '362044');
INSERT INTO `t_file` VALUES ('4a441c8ac7af4e0ca36b14ccee206333', '2013-04-28 23:24:21', 'jpg', '8.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304284.jpg', '138591');
INSERT INTO `t_file` VALUES ('51841d4d127944f1be75828f0b724345', '2013-04-28 23:24:21', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304285.jpg', '478202');
INSERT INTO `t_file` VALUES ('f0589c6abd90442fbf0260d736e6d813', '2013-04-28 23:24:26', 'pdf', 'OrbitPlus Database Model.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0428\\201304286.pdf', '1852760');
INSERT INTO `t_file` VALUES ('31fbe8c6c44344908ca58419abe1376e', '2013-04-30 15:29:47', 'jpg', '2013-04-30_143904.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304301.jpg', '91854');
INSERT INTO `t_file` VALUES ('c71ea5b5523d47b6a692b2ce4de7a1b5', '2013-04-30 15:29:51', 'jpg', '0 (1).jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304302.jpg', '154808');
INSERT INTO `t_file` VALUES ('2a9c3bab469a4b01880f49324c805e3a', '2013-04-30 15:29:54', 'jpg', '8a9752d1fd1f4134e10b29ea251f95cad0c85ef5.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304303.jpg', '478202');
INSERT INTO `t_file` VALUES ('c70090c418184ecc9a36b5d435b5e046', '2013-04-30 15:29:57', 'jpg', 'fa8be5da65fa7f09f79fb91103f8666c.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304304.jpg', '141315');
INSERT INTO `t_file` VALUES ('ed60ef119e4a484eab9946a8afff1e4b', '2013-04-30 15:30:43', 'zip', '上传图片.zip', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304305.zip', '2767500');
INSERT INTO `t_file` VALUES ('af669b1e53ba4685befeb01a4c22aa7e', '2013-04-30 17:25:32', 'pdf', 'Apache_Shiro开发文档.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304301.pdf', '1177200');
INSERT INTO `t_file` VALUES ('90c4da3c2bda4b4c87f70ce8b47fd500', '2013-04-30 17:26:11', 'pdf', 'OrbitPlus Database Model.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304302.pdf', '1852760');
INSERT INTO `t_file` VALUES ('7ab17c0a71f14ed39eb51deb233a461f', '2013-04-30 17:26:25', 'pdf', 'OrbitPlus Database Model.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304303.pdf', '1852760');
INSERT INTO `t_file` VALUES ('defc6d7b47d44fbb8672c50819220af9', '2013-04-30 17:26:25', 'pdf', 'Activiti 5.8 用户指南（中文版）.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304304.pdf', '3591040');
INSERT INTO `t_file` VALUES ('7c99e0d705da4a459e9b5e2b34a5da90', '2013-04-30 17:26:25', 'pdf', 'Apache_Shiro开发文档.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304305.pdf', '1177200');
INSERT INTO `t_file` VALUES ('070eef4f03444b63a2cdab554507e121', '2013-04-30 17:26:45', 'pdf', 'OrbitPlus Database Model.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304301.pdf', '1852760');
INSERT INTO `t_file` VALUES ('abba4396ebe44ccd9a86c5d42debc00f', '2013-04-30 17:27:26', 'pdf', 'Apache_Shiro开发文档.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304301.pdf', '1177200');
INSERT INTO `t_file` VALUES ('1435dcb013014e488031d35a74772ea1', '2013-04-30 17:28:09', 'txt', '00.txt', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304302.txt', '122');
INSERT INTO `t_file` VALUES ('2695ff4f12e64e2aa295e558baefb296', '2013-04-30 17:28:09', 'txt', '01.txt', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304303.txt', '54');
INSERT INTO `t_file` VALUES ('19b8a502e4854c4c849b86e3eda8d462', '2013-04-30 17:28:09', 'jpg', '2013-04-30_143904.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304304.jpg', '91854');
INSERT INTO `t_file` VALUES ('4cff6867fe6c45c3abfaff35d8a1fa05', '2013-04-30 17:28:09', 'jpg', '2013-04-30_151121.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304305.jpg', '271513');
INSERT INTO `t_file` VALUES ('192b9e8980164f1f86894f493edb3445', '2013-04-30 17:28:09', 'pdf', 'Activiti 5.8 用户指南（中文版）.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304306.pdf', '3591040');
INSERT INTO `t_file` VALUES ('d55d1d85824e4f9cad1bc3758f9887e5', '2013-04-30 17:28:09', 'pdf', 'Apache_Shiro开发文档.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304307.pdf', '1177200');
INSERT INTO `t_file` VALUES ('8b80cf5520fb4a0c8fc983e7b87a627c', '2013-04-30 17:28:09', 'pdf', 'git-manual.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304308.pdf', '311120');
INSERT INTO `t_file` VALUES ('be24f48f966646ec977acaef909d4232', '2013-04-30 17:28:09', 'pdf', 'hibernate_validator_reference.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304309.pdf', '1782540');
INSERT INTO `t_file` VALUES ('18cd7e39cad741afbd8ebe14dab9eb22', '2013-04-30 17:28:09', 'pdf', 'OrbitPlus Database Model.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043010.pdf', '1852760');
INSERT INTO `t_file` VALUES ('b8e8dc37ec6e4539a29eb0bde4915603', '2013-04-30 17:28:20', 'pdf', 'git-manual.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043011.pdf', '311120');
INSERT INTO `t_file` VALUES ('9dfc3102f3c34c4fa12fe91ced9cc30f', '2013-04-30 17:28:20', 'pdf', 'hibernate_validator_reference.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043012.pdf', '1782540');
INSERT INTO `t_file` VALUES ('e360f84b97f84d508e29f8be1b96ba22', '2013-04-30 17:28:20', 'pdf', 'OrbitPlus Database Model.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043013.pdf', '1852760');
INSERT INTO `t_file` VALUES ('a569b3bd57eb45dfb0327abc8a780a3c', '2013-04-30 17:28:33', 'txt', '01.txt', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043014.txt', '54');
INSERT INTO `t_file` VALUES ('91292eae36094265a0ad2f0394bfdd12', '2013-04-30 17:28:34', 'jpg', '2013-04-30_143904.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043015.jpg', '91854');
INSERT INTO `t_file` VALUES ('ca41642d3c9f4a0ca8d9fe2c6b578060', '2013-04-30 17:28:34', 'pdf', 'Apache_Shiro开发文档.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043016.pdf', '1177200');
INSERT INTO `t_file` VALUES ('06c0c7de20504da7af61237eddca389d', '2013-04-30 17:28:34', 'pdf', 'git-manual.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\2013043017.pdf', '311120');
INSERT INTO `t_file` VALUES ('ff0d1dd00e8b4ba8aa96dd25d5d06f50', '2013-04-30 23:18:45', 'txt', '00.txt', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304301.txt', '122');
INSERT INTO `t_file` VALUES ('c4e276731c7c4d88a2ae7e8ba707cbc2', '2013-04-30 23:18:45', 'txt', '01.txt', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304302.txt', '54');
INSERT INTO `t_file` VALUES ('2a11061060904308b34b3b983fbd2be8', '2013-04-30 23:18:45', 'jpg', '2013-04-30_143904.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0430\\201304303.jpg', '91854');
INSERT INTO `t_file` VALUES ('a0192f9f7956421ca27750a96a88e713', '2013-05-01 17:01:34', 'txt', '01.txt', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0501\\201305011.txt', '49');
INSERT INTO `t_file` VALUES ('ece45ee16429494f8b9041cfa7646825', '2013-05-01 17:01:34', 'txt', '02.txt', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0501\\201305012.txt', '2044');
INSERT INTO `t_file` VALUES ('2e1d48fbf8e84cf6a56908d83edfb0a4', '2013-05-01 17:01:34', 'pdf', 'git-manual.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0501\\201305013.pdf', '311120');
INSERT INTO `t_file` VALUES ('3bafea8cec3f4b1694179167ddd8d922', '2013-05-01 17:01:34', 'pdf', 'hibernate_validator_reference.pdf', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0501\\201305014.pdf', '1782540');
INSERT INTO `t_file` VALUES ('328d26967e3248f59a881927c98c32ee', '2013-05-01 17:01:40', 'jpg', '2013-05-01_144818.jpg', '/D:/work_purehttp/target/classes\\uploadFiles/\\2013\\0501\\201305015.jpg', '288332');

-- ----------------------------
-- Table structure for `t_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `objid_` varchar(32) NOT NULL DEFAULT '',
  `title_` varchar(100) DEFAULT NULL,
  `content_` varchar(2000) DEFAULT NULL,
  `modifyDate_` datetime DEFAULT NULL,
  `order_` int(32) DEFAULT NULL,
  PRIMARY KEY (`objid_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('9bbfb32da2b84da3a21e20b797a8936f', '中文java', '<p>\n	中文java中文java中文java中文java\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	中文java中文java中文java中文java\n</p>', '2013-05-01 20:24:06', '1');
INSERT INTO `t_news` VALUES ('2b4e3205907d47799836475d0716df6c', '小破孩', '<p>\n	小破孩小破孩小破孩小破孩\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	小破孩小破孩小破孩小破孩小破孩小破孩小破孩\n</p>', '2013-05-01 20:24:16', '1');
INSERT INTO `t_news` VALUES ('d6d842337b3c498d9699272e433120d9', '数据库', '数据库数据库数据库', '2013-05-01 20:23:54', '1');

-- ----------------------------
-- Table structure for `t_pet`
-- ----------------------------
DROP TABLE IF EXISTS `t_pet`;
CREATE TABLE `t_pet` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `color` varchar(50) DEFAULT NULL,
  `age` int(32) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pet
-- ----------------------------
INSERT INTO `t_pet` VALUES ('xiaomao', '黑白', '2');
