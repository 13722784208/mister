/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : region

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-12-05 14:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lbis_box_ascription`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_box_ascription`;
CREATE TABLE `lbis_box_ascription` (
  `box_ascription_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用箱归属主键',
  `box_ascription_name` varchar(50) DEFAULT NULL COMMENT '用箱归属名称（自备、租箱）',
  `box_ascription_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`box_ascription_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用箱归属表';

-- ----------------------------
-- Records of lbis_box_ascription
-- ----------------------------
INSERT INTO `lbis_box_ascription` VALUES ('1', '自备', '0');
INSERT INTO `lbis_box_ascription` VALUES ('2', '租箱', '0');

-- ----------------------------
-- Table structure for `lbis_box_company`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_box_company`;
CREATE TABLE `lbis_box_company` (
  `box_company_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '租箱公司的主键id',
  `box_company_name` varchar(50) DEFAULT NULL COMMENT '租箱公司的名称（总部，中铁，俄铁，代理）',
  `box_ascription_id` bigint(20) DEFAULT NULL COMMENT '与用箱归属表关联',
  `cooperative_company_id` bigint(20) DEFAULT NULL COMMENT '租箱公司外键（合作公司的外键）',
  `box_company_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`box_company_id`) USING BTREE,
  KEY `fk_lbis_box_company_lbis_box_company_1` (`cooperative_company_id`) USING BTREE,
  KEY `fk_lbis_box_company_lbis_box_company_2` (`box_ascription_id`) USING BTREE,
  CONSTRAINT `fk_lbis_box_company_lbis_box_company_1` FOREIGN KEY (`cooperative_company_id`) REFERENCES `lbis_cooperative_company` (`cooperative_company_id`),
  CONSTRAINT `fk_lbis_box_company_lbis_box_company_2` FOREIGN KEY (`box_ascription_id`) REFERENCES `lbis_box_ascription` (`box_ascription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='租箱公司（就是租箱类型）';

-- ----------------------------
-- Records of lbis_box_company
-- ----------------------------
INSERT INTO `lbis_box_company` VALUES ('1', '总部', '1', null, '0');
INSERT INTO `lbis_box_company` VALUES ('2', '中铁', '2', null, '0');
INSERT INTO `lbis_box_company` VALUES ('3', '俄铁', '2', null, '0');
INSERT INTO `lbis_box_company` VALUES ('4', '代理', '2', null, '0');

-- ----------------------------
-- Table structure for `lbis_box_info`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_box_info`;
CREATE TABLE `lbis_box_info` (
  `box_info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '箱子信息的主键id',
  `box_info_type` varchar(50) DEFAULT NULL COMMENT '箱子的类型（单纯的就是字面意思）',
  `box_info_size` varchar(50) DEFAULT NULL COMMENT '箱子的尺寸（如：1x2x3）',
  `box_company_id` bigint(20) DEFAULT NULL COMMENT '所属租箱公司（及租箱类型的外键）',
  `box_info_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `box_info_state` int(1) DEFAULT NULL COMMENT '箱子的状态（0：维护，1：可用:，2：已用）',
  PRIMARY KEY (`box_info_id`) USING BTREE,
  KEY `fk_lbis_box_info_lbis_box_info_1` (`box_company_id`) USING BTREE,
  CONSTRAINT `fk_lbis_box_info_lbis_box_info_1` FOREIGN KEY (`box_company_id`) REFERENCES `lbis_box_company` (`box_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='箱子的详细（如：类型）在一张表里面添加箱子的类型和尺寸。';

-- ----------------------------
-- Records of lbis_box_info
-- ----------------------------
INSERT INTO `lbis_box_info` VALUES ('1', '铁箱', '1', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('2', '铁箱', '2', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('3', '木箱', '3', '3', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('4', '木箱', '4', '4', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('5', '木箱', '2', '4', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('6', '木箱', '4', '4', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('7', '铁箱', '2', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('8', '木箱', '1', '4', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('9', '铁箱', '1', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('10', '木箱', '1', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('11', '铁箱', '3', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('12', '铁箱', '3', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('13', '铁箱', '7', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('14', '铁箱', '7', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('15', '铁箱', '7', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('16', '木箱', '5', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('17', '铁箱', '7', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('18', '木箱', '2', '3', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('19', '木箱', '2', '2', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('20', '铁箱', '4', '3', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('21', '铁箱', '4', '3', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('22', '铁箱', '2', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('23', '铁箱', '1', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('24', '木箱', '1', '1', '0', '1');
INSERT INTO `lbis_box_info` VALUES ('25', '木箱', '1', '2', '0', '1');

-- ----------------------------
-- Table structure for `lbis_box_orders`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_box_orders`;
CREATE TABLE `lbis_box_orders` (
  `box_orders_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '箱子主键',
  `box_orders_state` int(255) DEFAULT NULL COMMENT '箱子状态  （0存在  1删除）',
  `box_orders_number` int(11) DEFAULT NULL COMMENT '箱子数量',
  `box_orders_size` varchar(50) DEFAULT NULL COMMENT '箱子尺寸',
  `box_company_name` varchar(50) DEFAULT NULL COMMENT '租箱公司',
  `box_orders_details` text COMMENT '箱子详情',
  `box_ascription_name` varchar(255) DEFAULT NULL COMMENT '箱子归属',
  `box_info_type` varchar(255) DEFAULT NULL COMMENT '箱子类型',
  PRIMARY KEY (`box_orders_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lbis_box_orders
-- ----------------------------
INSERT INTO `lbis_box_orders` VALUES ('1', '0', '2', '1', '中铁', '1', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('2', '0', '3', '1', '总部', '123', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('3', '1', '4', null, '俄铁', '123123', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('4', '0', '7', '7', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('5', '0', '5', '3', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('6', '0', '5', '5', '代理', '', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('7', '0', '5', '5', '代理', '', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('8', '0', '5', '7', '代理', '', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('9', '0', '1', '1', '俄铁', '', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('10', '1', '2', '2', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('11', '0', '7', '6', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('12', '0', '1', '1', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('13', '0', '1', '1', '总部', '123123', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('14', '0', '1', '1', '代理', '', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('15', '0', '2', '2', '代理', '', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('16', '0', '1', '1', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('17', '0', '2', '3', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('18', '0', '3', '3', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('19', '0', '2', '1', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('20', '0', '4', '4', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('21', '0', '5', '5', '总部', '123', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('22', '0', '3', '3', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('23', '0', '1', '1', '俄铁', '1', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('24', '0', '1', '1', '总部', '12', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('25', '0', '1', '1', '总部', '1', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('26', '0', '1', '1', '总部', '12', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('27', '0', '1', '1', '中铁', '1', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('28', '0', '7', '7', '中铁', '7777777', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('29', '0', '7', '7', '总部', '自备五个箱子', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('30', '0', '7', '7', '俄铁', '123123', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('31', '0', '5', '1', '代理', '123', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('32', '0', '1', '2', '总部', '123', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('33', '0', '3', '1', '总部', '333', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('34', '1', '2', '3', '中铁', '123', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('35', '1', '3', '7', '中铁', '123', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('36', '1', '1', '5', '总部', '', '自备', null);
INSERT INTO `lbis_box_orders` VALUES ('37', '1', '1', '7', '中铁', '123', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('38', '1', '1', '2', '俄铁', '123', '租箱', null);
INSERT INTO `lbis_box_orders` VALUES ('39', '1', '1', '2', '中铁', '', '租箱', '铁箱');
INSERT INTO `lbis_box_orders` VALUES ('40', '1', '2', '4', '俄铁', '', '租箱', '铁箱');
INSERT INTO `lbis_box_orders` VALUES ('41', '1', '1', '2', '总部', '', '自备', '铁箱');
INSERT INTO `lbis_box_orders` VALUES ('42', '1', '1', '1', '总部', '', '自备', '铁箱');
INSERT INTO `lbis_box_orders` VALUES ('43', '1', '1', '1', '总部', '123', '自备', '木箱');
INSERT INTO `lbis_box_orders` VALUES ('44', '0', '1', '1', '中铁', '1123', '租箱', '木箱');

-- ----------------------------
-- Table structure for `lbis_car_info`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_car_info`;
CREATE TABLE `lbis_car_info` (
  `car_info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '车辆的信息id',
  `car_info_ton` varchar(50) DEFAULT NULL COMMENT '车辆的吨位（吨）',
  `car_info_size` varchar(50) DEFAULT NULL COMMENT '车辆的尺寸（如：1x2x3）',
  `car_type_id` bigint(20) DEFAULT NULL COMMENT '车辆的类型（外键）',
  `car_info_state` int(1) DEFAULT NULL COMMENT '车辆的状态（0：维护，1：可用:，2：已用）',
  `car_info_image` varchar(255) DEFAULT NULL COMMENT '车辆的图片附件',
  `car_info_license` varchar(50) DEFAULT NULL COMMENT '车辆的车牌号',
  `car_info_address` varchar(50) DEFAULT NULL COMMENT '车辆所在地（和地域表关联）',
  `car_info_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`car_info_id`) USING BTREE,
  KEY `fk_lbis_car_info_lbis_car_info_1` (`car_type_id`) USING BTREE,
  CONSTRAINT `fk_lbis_car_info_lbis_car_info_1` FOREIGN KEY (`car_type_id`) REFERENCES `lbis_car_type` (`car_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆信息';

-- ----------------------------
-- Records of lbis_car_info
-- ----------------------------
INSERT INTO `lbis_car_info` VALUES ('1', '100', '100', '2', '2', '/accessory/35ced5ff66ec4afc8ae05835b4aeadc1.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('2', '200', '20', '2', '1', 'http://192.168.21.128/accessory/0024acf27748459295f3edb73f7d3702.png', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('3', '300', '30', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('4', '400', '40', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('5', '500', '50', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('6', '1', '1', '1', '2', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('7', '1', '1', '1', '2', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('8', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('9', '2', '7', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('10', '2', '7', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('11', '2', '7', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('12', '2', '7', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('13', '2', '7', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('14', '2', '7', '3', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('15', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('16', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('17', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('18', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('19', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('20', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('21', '1', '1', '2', '1', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('22', '1', '1', '1', '2', null, null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('23', '1', '1', '1', '2', 'http://192.168.21.128/accessory/9fe74da9d57b4315a397c978e7445d55.png', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('24', '2', '3', '1', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('25', '2', '3', '1', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('26', '1', '1', '1', '2', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('27', '1', '1', '1', '2', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('28', '1', '1', '1', '2', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('29', '1', '1', '1', '2', 'http://192.168.21.128/accessory/27cbac1fa32643f2af5d252244c82b56.jpg', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('30', '1', '1', '2', '1', 'http://192.168.21.128/accessory/ef480edb69264556b290f96051a97f4d.jpg', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('31', '1', '1', '2', '1', 'http://192.168.21.128/accessory/ef480edb69264556b290f96051a97f4d.jpg', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('32', '2', '2', '1', '1', 'http://192.168.21.128/accessory/895fbc9ed81f42028444c0b7b60a1d09.png', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('33', '2', '2', '1', '1', 'http://192.168.21.128/accessory/895fbc9ed81f42028444c0b7b60a1d09.png', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('34', '1', '2', '2', '1', 'http://192.168.21.128/accessory/2174a8e8050e473e860d444045b1759f.png', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('35', '1', '2', '2', '1', 'http://192.168.21.128/accessory/2174a8e8050e473e860d444045b1759f.png', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('36', '1', '1', '1', '2', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('37', '1', '1', '1', '2', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('38', '1', '1', '1', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('39', '1', '1', '1', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('40', '1', '1', '2', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('41', '1', '1', '2', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('42', '1', '1', '1', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('43', '1', '1', '3', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('44', '1', '1', '2', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('45', '1', '1', '1', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('46', '1', '1', '1', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('47', '1', '2', '2', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('48', '1', '2', '2', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('49', '1', '2', '2', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('50', '3', '3', '3', '1', '', null, null, '1');
INSERT INTO `lbis_car_info` VALUES ('51', '3', '3', '3', '1', '/accessory/0dbbff89f31f4ee69d88e687cc21802b.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('53', '2', '2', '1', '1', '/accessory/c67471cb5d2944e28c8a0c86cdc352a5.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('54', '1', '1', '1', '2', 'http://192.168.52.1:8089/accessory/c08a38410c4a4995992890cb732abb88.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('55', '1', '2', '1', '2', 'http://192.168.52.1:8089/accessory/b5d1f1e420fc4ef9a54a1661290fa90f.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('56', '1', '2', '1', '1', 'http://192.168.52.1:8089/accessory/b5d1f1e420fc4ef9a54a1661290fa90f.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('57', '7', '1', '1', '1', null, null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('58', '7', '1', '1', '1', null, null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('59', '7', '1', '1', '1', null, null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('60', '7', '1', '1', '1', null, null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('61', '7', '1', '1', '1', null, null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('62', '7', '1', '1', '1', null, null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('63', '7', '1', '1', '1', null, null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('64', '1', '7', '2', '2', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('65', '1', '7', '2', '2', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('66', '1', '7', '2', '2', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('67', '1', '7', '2', '2', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('68', '1', '7', '2', '2', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('69', '1', '7', '2', '1', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png', null, null, '0');
INSERT INTO `lbis_car_info` VALUES ('70', '1', '7', '2', '1', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png', null, null, '0');

-- ----------------------------
-- Table structure for `lbis_car_orders`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_car_orders`;
CREATE TABLE `lbis_car_orders` (
  `car_orders_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '车辆主键',
  `car_orders_state` int(255) DEFAULT NULL COMMENT '车辆状态  （0维修  1可用    2已用）',
  `car_orders_number` int(11) DEFAULT NULL COMMENT '车辆数量',
  `car_orders_size` varchar(50) DEFAULT NULL COMMENT '车辆尺寸',
  `car_orders_type` varchar(50) DEFAULT NULL COMMENT '车辆类型',
  `car_orders_details` text COMMENT '车辆详情',
  `car_orders_ton` varchar(255) DEFAULT NULL COMMENT '车辆吨位',
  `car_orders_image` varchar(255) DEFAULT NULL COMMENT '车辆附件图',
  PRIMARY KEY (`car_orders_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lbis_car_orders
-- ----------------------------
INSERT INTO `lbis_car_orders` VALUES ('1', '1', '5', '1', '棚车', '123123', '1', null);
INSERT INTO `lbis_car_orders` VALUES ('2', '1', '12', '1', '班车', '123', '1', null);
INSERT INTO `lbis_car_orders` VALUES ('3', '1', '13', '1', '敞车', '33333', '1', null);
INSERT INTO `lbis_car_orders` VALUES ('4', '1', '7', '2', '平板车', '', '4', '');
INSERT INTO `lbis_car_orders` VALUES ('5', '1', '1', '6', '棚车', '', '2', '');
INSERT INTO `lbis_car_orders` VALUES ('6', '1', '4', '1', '平板车', '123123', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('7', '1', '1', '1', '棚车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('8', '1', '1', '1', '棚车', '1`2123', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('9', '1', '1', '1', '平板车', '123', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('10', '1', '1', '1', '敞车', '123123', '2', '');
INSERT INTO `lbis_car_orders` VALUES ('11', '1', '2', '1', '棚车', '123', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('12', '1', '1', '1', '平板车', '123123', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('13', '1', '5', '7', '敞车', '123', '2', '');
INSERT INTO `lbis_car_orders` VALUES ('14', '1', '1', '7', '敞车', '123', '2', '');
INSERT INTO `lbis_car_orders` VALUES ('15', '1', '7', '1', '平板车', '123', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('16', '1', '1', '1', '棚车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('17', '1', '1', '1', '棚车', '', '2', '');
INSERT INTO `lbis_car_orders` VALUES ('18', '1', '1', '1', '敞车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('19', '1', '2', '2', '棚车', '123', '2', '');
INSERT INTO `lbis_car_orders` VALUES ('20', '1', '2', '2', '平板车', '123', '1', 'http://192.168.21.128/accessory/2174a8e8050e473e860d444045b1759f.png');
INSERT INTO `lbis_car_orders` VALUES ('21', '1', '2', '1', '棚车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('22', '1', '1', '1', '棚车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('23', '1', '1', '1', '棚车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('24', '1', '2', '1', '平板车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('25', '1', '1', '1', '棚车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('26', '1', '1', '1', '敞车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('27', '1', '1', '1', '平板车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('28', '1', '2', '1', '棚车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('29', '1', '3', '2', '平板车', '', '1', '');
INSERT INTO `lbis_car_orders` VALUES ('30', '1', '2', '3', '敞车', '', '3', '');
INSERT INTO `lbis_car_orders` VALUES ('31', '1', '1', '2', '棚车', '11', '2', '');
INSERT INTO `lbis_car_orders` VALUES ('32', '1', '1', '1', '棚车', '111', '1', 'http://192.168.52.1:8089/accessory/c08a38410c4a4995992890cb732abb88.png');
INSERT INTO `lbis_car_orders` VALUES ('33', '1', '2', '2', '棚车', '', '1', 'http://192.168.52.1:8089/accessory/b5d1f1e420fc4ef9a54a1661290fa90f.png');
INSERT INTO `lbis_car_orders` VALUES ('34', '1', '7', '1', '棚车', '', '7', '/accessory/48417a07f6f341b38d05bd9ed996ef25.png');
INSERT INTO `lbis_car_orders` VALUES ('35', '1', '7', '7', '平板车', 'aaaa', '1', '/accessory/45bb8c42ceef49e8ad952c720ff47b66.png');

-- ----------------------------
-- Table structure for `lbis_car_type`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_car_type`;
CREATE TABLE `lbis_car_type` (
  `car_type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用车类型的主键',
  `car_type_name` varchar(50) DEFAULT NULL COMMENT '用车类型（分类）',
  `car_type_number` int(11) DEFAULT NULL COMMENT '车类型的总数',
  `car_type_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `car_img_url` varchar(255) DEFAULT NULL COMMENT '图片路径地址',
  `car_details` text COMMENT '描述',
  `car_company` varchar(255) DEFAULT NULL COMMENT '生产公司',
  PRIMARY KEY (`car_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆类型';

-- ----------------------------
-- Records of lbis_car_type
-- ----------------------------
INSERT INTO `lbis_car_type` VALUES ('1', '棚车', '11', '0', null, null, null);
INSERT INTO `lbis_car_type` VALUES ('2', '平板车', '8', '0', null, null, null);
INSERT INTO `lbis_car_type` VALUES ('3', '敞车', '11', '0', null, null, null);

-- ----------------------------
-- Table structure for `lbis_cooperative_company`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_cooperative_company`;
CREATE TABLE `lbis_cooperative_company` (
  `cooperative_company_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '合作公司的主键id',
  `cooperative_company_code` varchar(255) DEFAULT NULL COMMENT '合作公司代码',
  `cooperative_company_phone` varchar(11) DEFAULT NULL COMMENT '合作公司电话',
  `cooperative_company_stauts` int(1) DEFAULT NULL COMMENT '合作公司状态',
  `cooperative_company_address` varchar(50) DEFAULT NULL COMMENT '合作公司的地址',
  `cooperative_company_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`cooperative_company_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合作公司';

-- ----------------------------
-- Records of lbis_cooperative_company
-- ----------------------------
