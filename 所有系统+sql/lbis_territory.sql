/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : lbis_territory

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-12-05 14:47:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `port`
-- ----------------------------
DROP TABLE IF EXISTS `port`;
CREATE TABLE `port` (
  `port_id` int(11) NOT NULL AUTO_INCREMENT,
  `port_name` varchar(255) DEFAULT NULL,
  `port_territory_id` varchar(255) DEFAULT NULL COMMENT 'n,m',
  PRIMARY KEY (`port_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of port
-- ----------------------------
INSERT INTO `port` VALUES ('1', '满洲里', '1,6');
INSERT INTO `port` VALUES ('2', '二卡', '1,7');
INSERT INTO `port` VALUES ('3', '黑头山', '1,8');
INSERT INTO `port` VALUES ('4', '室韦', '1,9');
INSERT INTO `port` VALUES ('5', '满洲里', '2,6');
INSERT INTO `port` VALUES ('6', '二卡', '2,7');
INSERT INTO `port` VALUES ('7', '黑头山', '2,8');
INSERT INTO `port` VALUES ('8', '室韦', '2,9');
INSERT INTO `port` VALUES ('9', '满洲里', '4,6');
INSERT INTO `port` VALUES ('10', '二卡', '4,7');
INSERT INTO `port` VALUES ('11', '黑头山', '4,8');
INSERT INTO `port` VALUES ('12', '室韦', '4,9');
INSERT INTO `port` VALUES ('13', '满洲里', '5,6');
INSERT INTO `port` VALUES ('14', '二卡', '5,7');
INSERT INTO `port` VALUES ('15', '黑头山', '5,8');
INSERT INTO `port` VALUES ('16', '室韦', '5,9');

-- ----------------------------
-- Table structure for `territory`
-- ----------------------------
DROP TABLE IF EXISTS `territory`;
CREATE TABLE `territory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entrepot` varchar(255) DEFAULT NULL COMMENT '仓库',
  `code` varchar(255) DEFAULT NULL COMMENT '邮编',
  `territory_code` varchar(255) DEFAULT NULL COMMENT '地域编码',
  `coding` varchar(255) DEFAULT NULL COMMENT '编码',
  `pid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of territory
-- ----------------------------
INSERT INTO `territory` VALUES ('1', '根目录', null, null, null, null, '0', '0');
INSERT INTO `territory` VALUES ('2', '中国', null, null, null, null, '1', '1');
INSERT INTO `territory` VALUES ('3', '河北', null, null, null, null, '2', '2');
INSERT INTO `territory` VALUES ('4', '邯郸', null, null, null, '1', '3', '3');
INSERT INTO `territory` VALUES ('5', '武安', null, null, null, '2', '3', '3');
INSERT INTO `territory` VALUES ('6', '河南', null, null, null, '', '2', '2');
INSERT INTO `territory` VALUES ('7', '驻马店', null, null, null, '4', '6', '3');
INSERT INTO `territory` VALUES ('8', '洛阳', null, null, null, '5', '6', '3');
INSERT INTO `territory` VALUES ('9', '俄罗斯', null, null, null, null, '1', '1');
INSERT INTO `territory` VALUES ('10', '莫斯科', null, null, null, '6', '9', '3');
INSERT INTO `territory` VALUES ('11', '圣彼得堡', null, null, null, '7', '9', '3');
INSERT INTO `territory` VALUES ('12', '叶卡捷琳堡', null, null, null, '8', '9', '3');
INSERT INTO `territory` VALUES ('13', '伏尔加格勒', null, null, null, '9', '9', '3');
