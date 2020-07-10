/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : lbis_test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-12-05 14:46:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employee_role`
-- ----------------------------
DROP TABLE IF EXISTS `employee_role`;
CREATE TABLE `employee_role` (
  `employee_id` bigint(20) DEFAULT NULL,
  `sys_role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_role
-- ----------------------------
INSERT INTO `employee_role` VALUES ('1', '1');
INSERT INTO `employee_role` VALUES ('2', '1');

-- ----------------------------
-- Table structure for `lbis_accepting_inquiry_xg`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_accepting_inquiry_xg`;
CREATE TABLE `lbis_accepting_inquiry_xg` (
  `accepting_inquiry_xg_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '受理询价表的主键id',
  `accepting_inquiry_xg_name` varchar(50) DEFAULT NULL COMMENT '受理询价表的商品名称',
  `accepting_inquiry_xg_product_code` varchar(50) DEFAULT NULL COMMENT '受理询价表的商品编号',
  `accepting_inquiry_xg_departure_code` varchar(255) DEFAULT NULL COMMENT '受理询价表的发站代码',
  `accepting_inquiry_xg_arrival_code` varchar(255) DEFAULT NULL COMMENT '受理询价表的到站代码',
  `accepting_inquiry_xg_via_port` varchar(50) DEFAULT NULL COMMENT '受理询价表的经由口岸',
  `accepting_inquiry_xg_land_transportation` int(1) DEFAULT NULL COMMENT '受理询价表的陆运方向（0 :进口 1 :出口）',
  `accepting_inquiry_xg_transport` varchar(50) DEFAULT NULL COMMENT '受理询价表的运输类型',
  `accepting_inquiry_xg_shipping_time` datetime DEFAULT NULL COMMENT '受理询价表的发运时间',
  `accepting_inquiry_xg_remarks` varchar(255) DEFAULT NULL COMMENT '受理询价表的备注',
  `accepting_inquiry_xg_handler` varchar(50) DEFAULT NULL COMMENT '受理询价表受理者',
  `accepting_inquiry_xg_handl_time` datetime DEFAULT NULL COMMENT '受理询价表的受理时间',
  `accepting_inquiry_xg_stauts` int(1) DEFAULT NULL COMMENT '受理询价表的状态',
  `accepting_inquiry_xg_enquiry_number` varchar(50) DEFAULT NULL COMMENT '受理询价表的询单号',
  `accepting_inquiry_xg_original_price` decimal(10,2) DEFAULT NULL COMMENT '受理询价表的原始价格',
  `accepting_inquiry_xg_variable_price` decimal(10,2) DEFAULT NULL COMMENT '受理询价表的变动价格',
  `accepting_inquiry_xg_inquirer` varchar(50) DEFAULT NULL COMMENT '受理询价表的询价者',
  `transport_id` bigint(20) DEFAULT NULL COMMENT '运输表主键id',
  `quotes_id` bigint(20) DEFAULT NULL COMMENT '报价表(箱管)主键id',
  `accepting_inquiry_xg_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `employee_id` bigint(20) DEFAULT NULL COMMENT '员工标识（外键）用于作数据不共享',
  PRIMARY KEY (`accepting_inquiry_xg_id`),
  UNIQUE KEY `transport_id` (`transport_id`),
  UNIQUE KEY `quotes_id` (`quotes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='受理询价表（箱管公司）';

-- ----------------------------
-- Records of lbis_accepting_inquiry_xg
-- ----------------------------
INSERT INTO `lbis_accepting_inquiry_xg` VALUES ('1', '55555555', '111', '武安', '邯郸', '测试口岸', '0', '箱', '2019-12-04 00:00:00', '强无敌群无多申请单', 'zhangsan', '2019-12-05 10:55:05', '3', '9F8439499E63482DA49654DAA2AE98CC', null, null, 'zhangsan', '47', '1', '0', '2');
INSERT INTO `lbis_accepting_inquiry_xg` VALUES ('2', '77777777', '222', '武安', '邯郸', '测试口岸', '0', '箱', '2019-12-04 00:00:00', '安达市大所多驱蚊器无', 'zhangsan', '2019-12-05 11:22:15', '3', '74BF2B136B95450F812D6F4F36FF9C4F', null, null, 'zhangsan', '49', '2', '0', '2');
INSERT INTO `lbis_accepting_inquiry_xg` VALUES ('3', '羊绒大衣', '222', '武安', '邯郸', '测试口岸', '1', '箱', '2019-12-04 00:00:00', '张占行', 'zhangsan', '2019-12-05 11:33:03', '3', 'ECEA257F2F244C589BF060114EE8DE0C', null, null, 'zhangsan', '50', null, '0', '2');

-- ----------------------------
-- Table structure for `lbis_accepting_inquiry_yy`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_accepting_inquiry_yy`;
CREATE TABLE `lbis_accepting_inquiry_yy` (
  `accepting_inquiry_yy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '受理询价表的主键id',
  `accepting_inquiry_yy_name` varchar(50) DEFAULT NULL COMMENT '受理询价表的商品名称',
  `accepting_inquiry_yy_product_code` varchar(50) DEFAULT NULL COMMENT '受理询价表的商品编号',
  `accepting_inquiry_yy_departure_code` varchar(255) DEFAULT NULL COMMENT '受理询价表的发站代码',
  `accepting_inquiry_yy_arrival_code` varchar(255) DEFAULT NULL COMMENT '受理询价表的到站代码',
  `accepting_inquiry_yy_via_port` varchar(50) DEFAULT NULL COMMENT '受理询价表的经由口岸',
  `accepting_inquiry_yy_land_transportation` int(1) DEFAULT NULL COMMENT '受理询价表的陆运方向（0 :进口 1 :出口）',
  `accepting_inquiry_yy_transport` varchar(50) DEFAULT NULL COMMENT '受理询价表的运输类型',
  `accepting_inquiry_yy_shipping_time` datetime DEFAULT NULL COMMENT '受理询价表的发运时间',
  `accepting_inquiry_yy_remarks` varchar(255) DEFAULT NULL COMMENT '受理询价表的备注',
  `accepting_inquiry_yy_handler` varchar(50) DEFAULT NULL COMMENT '受理询价表受理者',
  `accepting_inquiry_yy_handl_time` datetime DEFAULT NULL COMMENT '受理询价表的受理时间',
  `accepting_inquiry_yy_stauts` int(1) DEFAULT NULL COMMENT '受理询价表的状态',
  `accepting_inquiry_yy_enquiry_number` varchar(50) DEFAULT NULL COMMENT '受理询价表的询单号',
  `accepting_inquiry_yy_original_price` decimal(10,2) DEFAULT NULL COMMENT '受理询价表的原始价格',
  `accepting_inquiry_yy_variable_price` decimal(10,2) DEFAULT NULL COMMENT '受理询价表的变动价格',
  `accepting_inquiry_yy_inquirer` varchar(50) DEFAULT NULL COMMENT '受理询价表的询价者',
  `transport_id` bigint(20) DEFAULT NULL COMMENT '运输表主键id',
  `quotes_id` bigint(20) DEFAULT NULL COMMENT '报价表(运营)主键id',
  `accepting_inquiry_yy_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `employee_id` bigint(20) DEFAULT NULL COMMENT '员工标识（外键）用于作数据不共享',
  PRIMARY KEY (`accepting_inquiry_yy_id`),
  UNIQUE KEY `transport_id` (`transport_id`),
  UNIQUE KEY `quotes_id` (`quotes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='受理询价表（运营公司）';

-- ----------------------------
-- Records of lbis_accepting_inquiry_yy
-- ----------------------------
INSERT INTO `lbis_accepting_inquiry_yy` VALUES ('37', '牛肉', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '111111111111', 'zhangsan', '2019-12-04 20:15:19', '8', 'FBBA02CF4B1E4347A380759DB5D59ADF', '500.00', '500.00', 'zhangsan', '42', '32', '0', '2');
INSERT INTO `lbis_accepting_inquiry_yy` VALUES ('38', '羊绒', '222', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '价格被修改', 'zhangsan', '2019-12-04 20:16:56', '8', 'F2492844A57D4CB9B265EF5A82B2301E', '500.00', '500.00', 'zhangsan', '43', '33', '0', '2');
INSERT INTO `lbis_accepting_inquiry_yy` VALUES ('39', '长绒大衣', '0174523205464', '邯郸', '武安', '测试口岸', '0', '车', '2019-12-24 00:00:00', '长绒大衣库存不足', 'zhangsan', '2019-12-05 08:55:56', '3', '58AC4452C57F4CA4A54FDACEB7F0633C', null, null, 'zhangsan', '45', null, '0', '2');
INSERT INTO `lbis_accepting_inquiry_yy` VALUES ('40', '羊绒大衣', '222', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '长绒大衣再次询价', 'zhangsan', '2019-12-05 09:00:47', '8', 'C73D57BBA72C46F6AE64ADB2F2C68D34', '522200.00', '522200.00', 'zhangsan', '46', '34', '0', '2');
INSERT INTO `lbis_accepting_inquiry_yy` VALUES ('41', '444', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '111111111111', 'zhangsan', '2019-12-05 10:53:15', '1', 'FFB0D3B2AD604084A4328940E6C0D14F', null, null, 'zhangsan', '44', '35', '0', '2');
INSERT INTO `lbis_accepting_inquiry_yy` VALUES ('42', '6666666', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '张展行', 'zhangsan', '2019-12-05 11:35:12', '3', '8A4351DF10694847A1C947FC28141C87', null, null, 'zhangsan', '48', null, '0', '2');

-- ----------------------------
-- Table structure for `lbis_box_orders`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_box_orders`;
CREATE TABLE `lbis_box_orders` (
  `box_orders_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '租箱详情单主键id',
  `box_orders_ascription_name` varchar(50) DEFAULT NULL COMMENT '租箱详情单之用箱归属',
  `box_orders_company` varchar(50) DEFAULT NULL COMMENT '租箱详情单之租箱公司（及租箱类型）',
  `box_orders_box_info_type` varchar(50) DEFAULT NULL COMMENT '租箱详情单之用箱类型',
  `box_orders_box_info_size` varchar(50) DEFAULT NULL COMMENT '租箱详情单之用箱尺寸',
  `box_orders_number` int(11) DEFAULT NULL COMMENT '租箱详情单之用箱数量',
  `transport_id` bigint(20) DEFAULT NULL COMMENT '运输表外键',
  `box_orders_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`box_orders_id`),
  UNIQUE KEY `transport_id` (`transport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='租箱信息详细单';

-- ----------------------------
-- Records of lbis_box_orders
-- ----------------------------
INSERT INTO `lbis_box_orders` VALUES ('1', '总部', '自备', '木箱', '1', '1', '47', '0');
INSERT INTO `lbis_box_orders` VALUES ('2', '总部', '自备', '木箱', '1', '1', '49', '0');
INSERT INTO `lbis_box_orders` VALUES ('3', '总部', '自备', '铁箱', '1', '1', '50', '0');
INSERT INTO `lbis_box_orders` VALUES ('4', '俄铁', '租箱', '铁箱', '4', '1', '51', '0');

-- ----------------------------
-- Table structure for `lbis_car_orders`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_car_orders`;
CREATE TABLE `lbis_car_orders` (
  `car_orders_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '车辆信息单之主键id',
  `car_orders_car_type` varchar(50) DEFAULT NULL COMMENT '车辆信息单之车辆类型',
  `car_orders_car_ton` varchar(50) DEFAULT NULL COMMENT '车辆信息单之车辆吨位',
  `car_orders_car_size` varchar(50) DEFAULT NULL COMMENT '车辆信息单之车辆尺寸',
  `car_orders_number` int(11) DEFAULT NULL COMMENT '车辆信息单之用车数量',
  `transport_id` bigint(20) DEFAULT NULL COMMENT '运输单的外键（与运输表联系）',
  `car_orders_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`car_orders_id`),
  UNIQUE KEY `transport_id` (`transport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='用车表的租赁单';

-- ----------------------------
-- Records of lbis_car_orders
-- ----------------------------
INSERT INTO `lbis_car_orders` VALUES ('33', '棚车', '1', '1', '1', '42', '0');
INSERT INTO `lbis_car_orders` VALUES ('34', '棚车', '1', '2', '1', '43', '0');
INSERT INTO `lbis_car_orders` VALUES ('35', '棚车', '1', '1', '1', '44', '0');
INSERT INTO `lbis_car_orders` VALUES ('36', '棚车', '2', '2', '1', '45', '0');
INSERT INTO `lbis_car_orders` VALUES ('37', '平板车', '1', '7', '5', '46', '0');
INSERT INTO `lbis_car_orders` VALUES ('38', '棚车', '1', '1', '1', '48', '0');

-- ----------------------------
-- Table structure for `lbis_company`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_company`;
CREATE TABLE `lbis_company` (
  `company_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL COMMENT '公司表名称',
  `company_code` varchar(255) DEFAULT NULL COMMENT '公司代码',
  `company_phone` varchar(11) DEFAULT NULL COMMENT '公司电话',
  `company_stauts` int(1) DEFAULT NULL COMMENT '公司状态',
  `company_address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `area_id` bigint(20) DEFAULT NULL COMMENT '地域表主键id',
  `company_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公司表';

-- ----------------------------
-- Records of lbis_company
-- ----------------------------
INSERT INTO `lbis_company` VALUES ('1', '运营', null, null, '1', null, null, '0');
INSERT INTO `lbis_company` VALUES ('2', '箱管', null, null, '1', null, null, '0');

-- ----------------------------
-- Table structure for `lbis_delegation`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_delegation`;
CREATE TABLE `lbis_delegation` (
  `delegation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '委托表的id',
  `delegation_name` varchar(50) DEFAULT NULL COMMENT '委托表姓名',
  `delegation_product_code` varchar(50) DEFAULT NULL COMMENT '委托表的商品名称',
  `delegation_arrival_code` varchar(255) DEFAULT NULL COMMENT '委托表的到达代码',
  `delegation_departure_code` varchar(255) DEFAULT NULL COMMENT '委托表的发站代码',
  `delegation_via_port` varchar(50) DEFAULT NULL COMMENT '委托表经由口岸',
  `delegation_land_transportation` varchar(50) DEFAULT NULL COMMENT '委托表陆运方向',
  `delegation_transport` varchar(50) DEFAULT NULL COMMENT '委托表运输类型',
  `delegation_shipping_time` datetime DEFAULT NULL COMMENT '委托表发运时间',
  `delegation_remarks` varchar(255) DEFAULT NULL COMMENT '委托表备注',
  `delegation_admissibility` varchar(50) DEFAULT NULL COMMENT '委托表受理者',
  `delegation_commission_time` datetime DEFAULT NULL COMMENT '委托表委托时间',
  `delegation_stauts` int(1) DEFAULT NULL COMMENT '委托表状态',
  `delegation_enquiry_number` varchar(50) DEFAULT NULL COMMENT '委托表询单号',
  `delegation_commission_number` varchar(50) DEFAULT NULL COMMENT '委托表委托单号',
  `delegation_original_price` decimal(10,2) DEFAULT NULL COMMENT '委托表原始价格',
  `delegation_variable_price` decimal(10,2) DEFAULT NULL COMMENT '委托表变动价格',
  `inquiry_id` bigint(20) DEFAULT NULL COMMENT '询价表主键',
  `accepting_inquiry_yy_id` bigint(20) DEFAULT NULL COMMENT '委托表之运营公司的受理询价表的外键',
  `accepting_inquiry_xg_id` bigint(20) DEFAULT NULL COMMENT '委托表之箱管公司的受理询价表的外键',
  `delegation_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `employee_id` bigint(20) DEFAULT NULL COMMENT '员工标识（外键）用于作数据不共享',
  PRIMARY KEY (`delegation_id`),
  UNIQUE KEY `accepting_inquiry_yy_id` (`accepting_inquiry_yy_id`),
  UNIQUE KEY `accepting_inquiry_xg_id` (`accepting_inquiry_xg_id`),
  KEY `inquiry_id` (`inquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='委托表';

-- ----------------------------
-- Records of lbis_delegation
-- ----------------------------
INSERT INTO `lbis_delegation` VALUES ('4', '牛肉', '111', '邯郸', '武安', '测试口岸', '0', '车', '2019-12-04 00:00:00', '111111111111', 'zhangsan', '2019-12-04 20:16:18', '8', 'FBBA02CF4B1E4347A380759DB5D59ADF', 'W8B4BDB6D9034415D8FCA67C9579A6363', '500.00', '500.00', '1068', '37', null, '0', '2');
INSERT INTO `lbis_delegation` VALUES ('5', '羊绒', '222', '邯郸', '武安', '测试口岸', '0', '车', '2019-12-04 00:00:00', '价格被修改', 'zhangsan', '2019-12-04 20:19:12', '8', 'F2492844A57D4CB9B265EF5A82B2301E', 'W8D8FA3094AB347E0ACE08C7F0C0C5195', '500.00', '500.00', '1069', '38', null, '0', '2');
INSERT INTO `lbis_delegation` VALUES ('6', '羊绒大衣', '222', '邯郸', '武安', '测试口岸', '0', '车', '2019-12-04 00:00:00', '长绒大衣再次询价', 'zhangsan', '2019-12-05 09:06:22', '8', 'C73D57BBA72C46F6AE64ADB2F2C68D34', 'WD345B54D53D14EE28D0B358347ED8ADA', '522200.00', '522200.00', '1072', '40', null, '0', '2');

-- ----------------------------
-- Table structure for `lbis_employee`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_employee`;
CREATE TABLE `lbis_employee` (
  `employee_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '员工的主键id',
  `employee_name` varchar(50) DEFAULT NULL COMMENT '员工姓名',
  `employee_login_name` varchar(50) DEFAULT NULL COMMENT '员工登录名',
  `employee_password` varchar(50) DEFAULT NULL COMMENT '员工密码',
  `employee_phone` varchar(11) DEFAULT NULL COMMENT '员工手机号',
  `employee_email` varchar(32) DEFAULT NULL COMMENT '员工邮件',
  `employee_sex` char(1) DEFAULT NULL COMMENT '员工性别',
  `employee_birthday` datetime DEFAULT NULL COMMENT '员工生日',
  `employee_hiredate` datetime DEFAULT NULL COMMENT '员工入职时间',
  `employee_leavedate` datetime DEFAULT NULL COMMENT '员工离职时间',
  `employee_stauts` int(1) DEFAULT NULL COMMENT '员工状态',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司表的主键id',
  `employee_number` varchar(255) DEFAULT NULL COMMENT '员工编号',
  `employee_idcard` varchar(18) DEFAULT NULL COMMENT '员工身份证号',
  `employee_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`employee_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='员工表';

-- ----------------------------
-- Records of lbis_employee
-- ----------------------------
INSERT INTO `lbis_employee` VALUES ('1', '测试', 'ggg', '123456', '18612393719', '110@qq.com', '1', '2019-11-06 00:00:00', '2019-11-27 00:00:00', '2019-11-27 00:00:00', '1', '2', '456', '4251549684418', '0');
INSERT INTO `lbis_employee` VALUES ('2', 'zhangsan', '张三', '123456', '15138790757', '1978805993@qq.com', '1', '2019-11-06 00:00:00', '2019-10-31 00:00:00', null, '1', '1', null, '410252584585965225', '0');
INSERT INTO `lbis_employee` VALUES ('3', '张三', '张三2', '123456', '15138790758', '1978805993@qq.com', '1', '2019-11-29 00:00:00', '2019-11-22 00:00:00', null, '1', '1', '789', '412025152548565225', '0');
INSERT INTO `lbis_employee` VALUES ('5', null, null, '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lbis_employee` VALUES ('6', null, null, '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lbis_employee` VALUES ('7', null, null, '', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lbis_employee` VALUES ('8', null, 'q936527229', 'daxue55hen', '13137241310', null, null, null, null, null, '1', null, null, null, '0');

-- ----------------------------
-- Table structure for `lbis_inquiry`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_inquiry`;
CREATE TABLE `lbis_inquiry` (
  `inquiry_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '询价表的主键id',
  `inquiry_name` varchar(50) DEFAULT NULL COMMENT '询价表的商品名称',
  `inquiry_product_code` varchar(50) DEFAULT NULL COMMENT '询价表的商品编号',
  `inquiry_departure_code` varchar(255) DEFAULT NULL COMMENT '询价表的发站代码',
  `inquiry_arrival_code` varchar(255) DEFAULT NULL COMMENT '询价表的到站代码',
  `inquiry_via_port` varchar(50) DEFAULT NULL COMMENT '询价表的经由口岸（由发站与到站关联）',
  `inquiry_land_transportation` int(1) DEFAULT NULL COMMENT '询价表的陆运方向(0：出口 1：进口)',
  `inquiry_transport` varchar(50) DEFAULT NULL COMMENT '询价表的运输类型',
  `inquiry_shipping_time` datetime DEFAULT NULL COMMENT '询价表的发运时间',
  `inquiry_remarks` varchar(255) DEFAULT NULL COMMENT '询价表的备注',
  `inquiry_operator` varchar(50) DEFAULT NULL COMMENT '询价表操作者',
  `inquiry_time` datetime DEFAULT NULL COMMENT '询价表的询价时间',
  `inquiry_stauts` int(1) DEFAULT NULL COMMENT '询价表的状态',
  `inquiry_enquiry_number` varchar(50) DEFAULT NULL COMMENT '询价表的询单号',
  `inquiry_original_price` decimal(10,2) DEFAULT NULL COMMENT '询价表的原始价格',
  `inquiry_variable_price` decimal(10,2) DEFAULT NULL COMMENT '询价表的变动价格',
  `transport_id` bigint(20) DEFAULT NULL COMMENT '运输表主键',
  `inquiry_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `employee_id` bigint(20) DEFAULT NULL COMMENT '员工标识（外键）用于作数据不共享',
  PRIMARY KEY (`inquiry_id`),
  UNIQUE KEY `transport_id` (`transport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1078 DEFAULT CHARSET=utf8 COMMENT='询价表';

-- ----------------------------
-- Records of lbis_inquiry
-- ----------------------------
INSERT INTO `lbis_inquiry` VALUES ('1068', '牛肉', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '111111111111', 'zhangsan', '2019-12-04 20:07:31', '8', 'FBBA02CF4B1E4347A380759DB5D59ADF', '500.00', null, '42', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1069', '羊绒', '222', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '价格被修改', 'zhangsan', '2019-12-04 20:16:42', '8', 'F2492844A57D4CB9B265EF5A82B2301E', '500.00', null, '43', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1070', '444', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '111111111111', 'zhangsan', '2019-12-04 21:02:28', '2', 'FFB0D3B2AD604084A4328940E6C0D14F', null, null, '44', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1071', '长绒大衣', '0174523205464', '邯郸', '武安', '测试口岸', '0', '车', '2019-12-24 00:00:00', '长绒大衣库存不足', 'zhangsan', '2019-12-05 08:53:09', '9', '58AC4452C57F4CA4A54FDACEB7F0633C', null, null, '45', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1072', '羊绒大衣', '222', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '长绒大衣再次询价', 'zhangsan', '2019-12-05 08:59:57', '8', 'C73D57BBA72C46F6AE64ADB2F2C68D34', '522200.00', null, '46', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1073', '55555555', '111', '武安', '邯郸', '测试口岸', '0', '箱', '2019-12-04 00:00:00', '强无敌群无多申请单', 'zhangsan', '2019-12-05 10:54:23', '9', '9F8439499E63482DA49654DAA2AE98CC', null, null, '47', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1074', '6666666', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '张展行', 'zhangsan', '2019-12-05 11:20:37', '3', '8A4351DF10694847A1C947FC28141C87', null, null, '48', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1075', '77777777', '222', '武安', '邯郸', '测试口岸', '0', '箱', '2019-12-04 00:00:00', '安达市大所多驱蚊器无', 'zhangsan', '2019-12-05 11:22:06', '9', '74BF2B136B95450F812D6F4F36FF9C4F', null, null, '49', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1076', '羊绒大衣', '222', '武安', '邯郸', '测试口岸', '1', '箱', '2019-12-04 00:00:00', '张占行', 'zhangsan', '2019-12-05 11:32:07', '3', 'ECEA257F2F244C589BF060114EE8DE0C', null, null, '50', '0', '2');
INSERT INTO `lbis_inquiry` VALUES ('1077', '羊绒', '222', '武安', '邯郸', '测试口岸', '0', '箱', '2019-12-04 00:00:00', '价格被修改', 'zhangsan', '2019-12-05 11:33:45', null, '83F45E7214B4455080768C48807B5CED', null, null, '51', '0', '2');

-- ----------------------------
-- Table structure for `lbis_quotes_xg`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_quotes_xg`;
CREATE TABLE `lbis_quotes_xg` (
  `quotes_xg_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报价表的主键id',
  `quotes_xg_name` varchar(50) DEFAULT NULL COMMENT '报价表的商品名称',
  `quotes_xg_product_code` varchar(50) DEFAULT NULL COMMENT '报价表的商品编号',
  `quotes_xg_departure_code` varchar(255) DEFAULT NULL COMMENT '报价表的发站代码',
  `quotes_xg_arrival_code` varchar(255) DEFAULT NULL COMMENT '报价表的到站代码',
  `quotes_xg_via_port` varchar(50) DEFAULT NULL COMMENT '报价表的经由口岸',
  `quotes_xg_land_transportation` int(1) DEFAULT NULL COMMENT '报价表的陆运方向(0:出口 1:进口)',
  `quotes_xg_transport` varchar(50) DEFAULT NULL COMMENT '报价表的运输类型',
  `quotes_xg_shipping_time` datetime DEFAULT NULL COMMENT '报价表的发运时间',
  `quotes_xg_remarks` varchar(255) DEFAULT NULL COMMENT '报价表的备注',
  `quotes_xg_offer_bidder` varchar(50) DEFAULT NULL COMMENT '报价表报价者',
  `quotes_xg_time` datetime DEFAULT NULL COMMENT '报价表的报价时间',
  `quotes_xg_stauts` int(1) DEFAULT NULL COMMENT '报价表的状态',
  `quotes_xg_enquiry_number` varchar(50) DEFAULT NULL COMMENT '报价表的询单号',
  `quotes_xg_original_price` decimal(10,2) DEFAULT NULL COMMENT '报价表的原始价格',
  `quotes_xg_variable_price` decimal(10,2) DEFAULT NULL COMMENT '报价表的变动价格',
  `quotes_xg_handler` varchar(50) DEFAULT NULL COMMENT '报价表的受理者',
  `company_id` bigint(20) DEFAULT NULL COMMENT '报价表之箱管公司与公司表关联（作为外键）',
  `quotes_xg_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `employee_id` bigint(20) DEFAULT NULL COMMENT '员工标识（外键）用于作数据不共享',
  PRIMARY KEY (`quotes_xg_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='报价表（箱管公司）';

-- ----------------------------
-- Records of lbis_quotes_xg
-- ----------------------------
INSERT INTO `lbis_quotes_xg` VALUES ('1', '55555555', '111', '武安', '邯郸', '测试口岸', '0', '箱', '2019-12-04 00:00:00', '强无敌群无多申请单', null, null, '3', '9F8439499E63482DA49654DAA2AE98CC', null, null, 'zhangsan', null, '0', '2');
INSERT INTO `lbis_quotes_xg` VALUES ('2', '77777777', '222', '武安', '邯郸', '测试口岸', '0', '箱', '2019-12-04 00:00:00', '安达市大所多驱蚊器无', null, null, '3', '74BF2B136B95450F812D6F4F36FF9C4F', null, null, 'zhangsan', null, '0', '2');

-- ----------------------------
-- Table structure for `lbis_quotes_yy`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_quotes_yy`;
CREATE TABLE `lbis_quotes_yy` (
  `quotes_yy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '报价表的主键id',
  `quotes_yy_name` varchar(50) DEFAULT NULL COMMENT '报价表的商品名称',
  `quotes_yy_product_code` varchar(50) DEFAULT NULL COMMENT '报价表的商品编号',
  `quotes_yy_departure_code` varchar(255) DEFAULT NULL COMMENT '报价表的发站代码',
  `quotes_yy_arrival_code` varchar(255) DEFAULT NULL COMMENT '报价表的到站代码',
  `quotes_yy_via_port` varchar(50) DEFAULT NULL COMMENT '报价表的经由口岸',
  `quotes_yy_land_transportation` int(1) DEFAULT NULL COMMENT '报价表的陆运方向（0 :进口 1 :出口）',
  `quotes_yy_transport` varchar(50) DEFAULT NULL COMMENT '报价表的运输类型',
  `quotes_yy_shipping_time` datetime DEFAULT NULL COMMENT '报价表的发运时间',
  `quotes_yy_remarks` varchar(255) DEFAULT NULL COMMENT '报价表的备注',
  `quotes_yy_offer_bidder` varchar(50) DEFAULT NULL COMMENT '报价表报价者',
  `quotes_yy_time` datetime DEFAULT NULL COMMENT '报价表的报价时间',
  `quotes_yy_stauts` int(1) DEFAULT NULL COMMENT '报价表的状态',
  `quotes_yy_enquiry_number` varchar(50) DEFAULT NULL COMMENT '报价表的询单号',
  `quotes_yy_original_price` decimal(10,2) DEFAULT NULL COMMENT '报价表的原始价格',
  `quotes_yy_variable_price` decimal(10,2) DEFAULT NULL COMMENT '报价表的变动价格',
  `quotes_yy_handler` varchar(50) DEFAULT NULL COMMENT '报价表的受理者',
  `company_id` bigint(20) DEFAULT NULL COMMENT '报价表之运营公司与公司表关联（作为外键）',
  `quotes_yy_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  `employee_id` bigint(20) DEFAULT NULL COMMENT '员工标识（外键）用于作数据不共享',
  PRIMARY KEY (`quotes_yy_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='报价表（运营公司）';

-- ----------------------------
-- Records of lbis_quotes_yy
-- ----------------------------
INSERT INTO `lbis_quotes_yy` VALUES ('32', '牛肉', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '111111111111', null, null, '8', 'FBBA02CF4B1E4347A380759DB5D59ADF', '500.00', '500.00', 'zhangsan', null, '0', '2');
INSERT INTO `lbis_quotes_yy` VALUES ('33', '羊绒', '222', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '价格被修改', null, null, '8', 'F2492844A57D4CB9B265EF5A82B2301E', '500.00', '500.00', 'zhangsan', null, '0', '2');
INSERT INTO `lbis_quotes_yy` VALUES ('34', '羊绒大衣', '222', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '长绒大衣再次询价', null, null, '8', 'C73D57BBA72C46F6AE64ADB2F2C68D34', '522200.00', '522200.00', 'zhangsan', null, '0', '2');
INSERT INTO `lbis_quotes_yy` VALUES ('35', '444', '111', '武安', '邯郸', '测试口岸', '0', '车', '2019-12-04 00:00:00', '111111111111', null, null, '1', 'FFB0D3B2AD604084A4328940E6C0D14F', null, null, 'zhangsan', null, '0', null);

-- ----------------------------
-- Table structure for `lbis_stauts`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_stauts`;
CREATE TABLE `lbis_stauts` (
  `stauts_code` int(1) DEFAULT NULL COMMENT '状态码(0:询价,1:待报价,2:已报价,3:已确认报价,4:待确认生成委托,5:已确认报价并生成委托,6:已退回,7:待委托,8:草稿(定时器))',
  `stauts_desc` varchar(50) DEFAULT NULL COMMENT '状态描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='状态表';

-- ----------------------------
-- Records of lbis_stauts
-- ----------------------------
INSERT INTO `lbis_stauts` VALUES ('1', '待处理');
INSERT INTO `lbis_stauts` VALUES ('2', '询价中');
INSERT INTO `lbis_stauts` VALUES ('3', '已退回');
INSERT INTO `lbis_stauts` VALUES ('4', '待报价');
INSERT INTO `lbis_stauts` VALUES ('5', '已报价');
INSERT INTO `lbis_stauts` VALUES ('6', '已确认');
INSERT INTO `lbis_stauts` VALUES ('7', '待委托');
INSERT INTO `lbis_stauts` VALUES ('8', '已确认并生成委托');
INSERT INTO `lbis_stauts` VALUES ('9', '处理中');
INSERT INTO `lbis_stauts` VALUES ('10', '第一次报价已完成');

-- ----------------------------
-- Table structure for `lbis_transport`
-- ----------------------------
DROP TABLE IF EXISTS `lbis_transport`;
CREATE TABLE `lbis_transport` (
  `transport_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '运输表的主键id',
  `transport_way` varchar(50) DEFAULT NULL COMMENT '运输表的运输方式',
  `transport_name` varchar(50) DEFAULT NULL COMMENT '运输名称',
  `transport_del` int(1) DEFAULT NULL COMMENT '是否删除（1：代表删除，0：存在）',
  PRIMARY KEY (`transport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='运输表（市场部）';

-- ----------------------------
-- Records of lbis_transport
-- ----------------------------
INSERT INTO `lbis_transport` VALUES ('42', '车', '牛肉', '0');
INSERT INTO `lbis_transport` VALUES ('43', '车', '羊绒', '0');
INSERT INTO `lbis_transport` VALUES ('44', '车', '444', '0');
INSERT INTO `lbis_transport` VALUES ('45', '车', '长绒大衣', '0');
INSERT INTO `lbis_transport` VALUES ('46', '车', '羊绒大衣', '0');
INSERT INTO `lbis_transport` VALUES ('47', '箱', '55555555', '0');
INSERT INTO `lbis_transport` VALUES ('48', '车', '6666666', '0');
INSERT INTO `lbis_transport` VALUES ('49', '箱', '77777777', '0');
INSERT INTO `lbis_transport` VALUES ('50', '箱', '羊绒大衣', '0');
INSERT INTO `lbis_transport` VALUES ('51', '箱', '羊绒', '0');

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `p_url` text COMMENT '资源路径',
  `p_desc_info` text COMMENT '对当前权限的描述信息',
  `p_parent_id` int(11) DEFAULT NULL COMMENT '父节点的id',
  `p_level` int(11) DEFAULT NULL COMMENT '级别（排序）',
  `p_status` int(1) DEFAULT NULL COMMENT '是否为导航部分（1:代表菜单，2:代表按钮,3:代表子页面,4:代表（未知））',
  `p_life` int(1) DEFAULT NULL COMMENT '是否可删除：1.不可、2.可删除',
  `p_ident` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `p_icon` varchar(50) DEFAULT NULL COMMENT '字体图标',
  `p_font_family` varchar(50) DEFAULT NULL COMMENT '字体类型',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '导航', '', '', '0', '0', '1', '1', 'login:index', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('11', '系统管理', '', '设置', '1', '8', '1', null, null, '&#xe889;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('12', '权限列表', 'sys/menu/getListPage.html', '得到菜单页的列表数据', '11', '0', '1', null, 'per:*', '&#xe640;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('13', '定时任务', '', '', '1', '0', '1', null, null, '&#xe6b2;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('14', '代码生成', '', '', '1', '0', '1', null, null, '&#xe649;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('15', '员工列表', 'employee/restful/employee.html', '查询显示员工数据', '11', '0', '1', null, 'employee:inquire', '&#xe6cc;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('16', '用户列表', 'sys/user/getListPage.html', '用户列表', '11', '0', '1', null, 'user:*', '&#xe7be;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('18', '角色列表', 'sys/role/getListPage.html', '角色列表', '11', '0', '1', null, 'role:getRolesList', '&#xe737;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('71', '公司信息', 'company/restful/company.html', '查询公司信息显示到页面', '1', '9', '1', null, 'company:inquire', '&#xe6b8;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('72', '批量启用', '', '批量启动员工信息', '15', null, '2', null, 'employee:employeeOneStauts', null, null);
INSERT INTO `sys_permission` VALUES ('73', '批量停用', '', '批量停用员工信息', '15', null, '2', null, 'employee:employeeZeroStauts', null, null);
INSERT INTO `sys_permission` VALUES ('74', '批量删除', '', '批量假删除员工信息', '15', null, '2', null, 'employee:deleteMore', null, null);
INSERT INTO `sys_permission` VALUES ('75', '添加员工', '', '查询显示员工数据', '15', null, '3', null, 'employee:*', null, null);
INSERT INTO `sys_permission` VALUES ('76', '员工修改', '', '员工回显', '15', null, '3', null, 'employee:echoEmployee', null, null);
INSERT INTO `sys_permission` VALUES ('77', '员工删除', '', '假删除员工信息', '15', null, '2', null, 'employee:employeeDelete', null, null);
INSERT INTO `sys_permission` VALUES ('78', '员工授权', '', '查询员工角色', '15', null, '3', null, 'employee:getRoles', null, null);
INSERT INTO `sys_permission` VALUES ('79', '添加', '', '添加员工信息', '75', null, '2', null, 'employee:employeeAdd', null, null);
INSERT INTO `sys_permission` VALUES ('80', '修改', '', '修改员工信息', '76', null, '2', null, 'employee:employeeUpdate', null, null);
INSERT INTO `sys_permission` VALUES ('82', '授权', '', '设置员工角色', '78', null, '2', null, 'employee:addEmployeeRole', null, null);
INSERT INTO `sys_permission` VALUES ('83', '权限添加', '', '添加菜单', '12', null, '3', null, 'per:add', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('84', '添加', '', '添加菜单', '83', null, '2', null, 'per:add', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('85', '权限编辑', '', '修改权限（菜单）- 回显', '12', null, '3', null, 'per:edit', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('86', '编辑', '', '修改权限（菜单）- 修改', '85', null, '2', null, 'per:show', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('87', '权限删除', '', '删除权限（菜单）', '12', null, '2', null, 'per:del', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('88', '角色添加', '', '角色添加', '18', null, '3', null, 'role:addRole', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('89', '角色删除', '', '角色删除', '18', null, '2', null, 'role:delRole', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('90', '角色修改', '', '角色修改-回显', '18', null, '3', null, 'role:editRole', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('91', '角色授权', '', '角色授权权限-回显', '18', null, '3', null, 'role:getPers', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('92', '添加', '', '角色添加', '88', null, '2', null, 'role:addRole', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('93', '修改', '', '角色修改-修改', '90', null, '2', null, 'role:showRole', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('94', '授权', '', '角色授权权限', '91', null, '2', null, 'role:addRolePer', null, 'ok-icon');
INSERT INTO `sys_permission` VALUES ('95', '批量启用', '', '批量启用公司信息', '71', null, '2', null, 'company:operations', null, null);
INSERT INTO `sys_permission` VALUES ('96', '批量停用', '', '批量停用公司信息', '71', null, '2', null, 'company:blockUps', null, null);
INSERT INTO `sys_permission` VALUES ('97', '批量删除', '', '批量假删除公司信息', '71', null, '2', null, 'company:deleteMore', null, null);
INSERT INTO `sys_permission` VALUES ('98', '公司添加', '', '公司列表，添加，修改页面', '71', null, '3', null, 'company:*', null, null);
INSERT INTO `sys_permission` VALUES ('99', '添加', '', '添加公司信息', '98', null, '2', null, 'company:addCompany', null, null);
INSERT INTO `sys_permission` VALUES ('100', '公司修改', '', '公司信息回显', '71', null, '3', null, 'company:personage', null, null);
INSERT INTO `sys_permission` VALUES ('101', '修改', '', '修改公司信息', '100', null, '2', null, 'company:updateCompany', null, null);
INSERT INTO `sys_permission` VALUES ('102', '公司删除', '', '假删除公司信息', '71', null, '2', null, 'company:deleteSingle', null, null);
INSERT INTO `sys_permission` VALUES ('103', '控制台', 'console', '', '1', '10', '1', null, null, '&#xe654;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('105', '询价列表', 'inquiry/inquiry.html', '询价列表', '1', null, '1', null, 'inquiry:list', '&#xe6ff;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('106', '境外-箱管列表', 'javascript:;', '', '116', null, '1', null, null, '&#xe614;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('107', '境外-箱管-待受理列表', 'quotationController/toQuotationXg', '', '106', null, '1', null, 'quotation:toQuotationXg', null, null);
INSERT INTO `sys_permission` VALUES ('108', '境外-箱管-已受理列表', 'quotationController/toMyseltQuotation_Xg', '', '106', null, '1', null, 'quotation:selectXgMySelefOrder', null, null);
INSERT INTO `sys_permission` VALUES ('109', '境外-运营列表', 'javascript:;', '', '116', null, '1', null, null, '&#xe614;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('110', '境外-运营-待受理列表', 'quotationController/toQuotationYy', '', '109', null, '1', null, 'quotation:toQuotationYy', null, null);
INSERT INTO `sys_permission` VALUES ('111', '境外-运营-已受理列表', 'quotationController/toMyseltQuotation_Yy', '', '109', null, '1', null, 'quotation:selectYyMySelefOrder', null, null);
INSERT INTO `sys_permission` VALUES ('112', '委托列表', 'delegation/delegation', '去委托列表', '1', null, '1', null, 'delegation:list', '&#xe742;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('113', '业务列表', 'javascript:;', '', '1', null, '1', null, null, '&#xe6bf;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('114', '业务-箱管列表', 'acceptance/article-xg.jp', '', '113', null, '1', null, null, '&#xe614;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('115', '业务-运营列表', 'acceptance/article-yy.jp', '', '113', null, '1', null, null, '&#xe614;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('116', '境外列表', 'javascript;', '', '1', null, '1', null, null, '&#xe6ff;', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('117', '箱管受理二次询价', '', '箱管受理二次询价', '114', null, '2', null, 'accept:inquiryXgAgain', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('118', '运营受理二次询价', '', '运营受理二次询价', '115', null, '2', null, 'accept:inquiryYyAgain', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('119', '返回箱管所有 询价单状态为“询价”的所有数据', '', '返回箱管所有 询价单状态为“询价”的所有数据', '114', null, '2', null, 'accept:viewXgInquiry', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('120', '返回运营所有 询价单状态为“询价”的所有数据', '', '返回运营所有 询价单状态为“询价”的所有数据', '115', null, '2', null, 'accept:viewYyInquiry', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('121', '箱管受理生成委托', '', '箱管受理生成委托', '114', null, '2', null, 'accept:generateXgDelegate', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('122', '运营受理生成委托', '', '运营受理生成委托', '115', null, '2', null, 'accept:generateYyDelegate', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('123', '箱管受理按钮', '', '箱管受理按钮', '114', null, '2', null, 'accept:whetherXgToAccept', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('124', '运营受理按钮', '', '运营受理按钮', '115', null, '2', null, 'accept:whetherYyToAccept', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('125', '箱管驳回', '', '箱管驳回', '114', null, '2', null, 'accept:rejectXgInquiry', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('126', '运营驳回', '', '运营驳回', '115', null, '2', null, 'accept:rejectYyInquiry', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('127', '箱管受理回价', '', '箱管受理回价', '114', null, '2', null, 'accept:returnXgPrice', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('128', '运营受理回价', '', '运营受理回价', '115', null, '2', null, 'accept:returnYyPrice', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('129', '箱管受理去询价', '', '箱管受理去询价', '114', null, '2', null, 'accept:toXgQuote', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('130', '运营受理去询价', '', '运营受理去询价', '115', null, '2', null, 'accept:toYyQuote', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('131', '委托详情', '', '委托详情', '112', null, '3', null, 'delegation:delegation_detail', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('132', '委托列表数据', '', '委托列表数据', '112', null, '2', null, 'delegation:selectDelegation', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('133', '询价添加', '', '询价添加', '105', null, '2', null, 'inquiry:add', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('134', '二次报价', '', '二次报价', '105', null, '2', null, 'inquiry:ercibaojia', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('135', '不接受二次报价', '', '不接受二次报价', '105', null, '2', null, 'inquiry:noercibaojia', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('136', '编辑询价单-回显', '', '', '105', null, '3', null, 'inquiry:echoInquity', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('137', '修改询价单', '', '', '136', null, '2', null, 'inquiry:editInquity', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('138', '确认报价', '', '确认报价', '105', null, '2', null, 'inquiry:querenbaojia', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('139', '申请委托', '', '申请委托', '105', null, '2', null, 'inquiry:shenqingweituo', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('140', '不接受一次报价', '', '不接受一次报价', '105', null, '2', null, 'inquiry:bujieshou', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('141', '询价页面', '', '询价页面', '105', null, '3', null, 'inquiry:*', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('142', '询价按钮', '', '询价按钮', '105', null, '2', null, 'inquiry:xunjia', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('143', '登录首页', '', '登录首页', '1', null, '2', null, 'login:index', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('144', '个人信息', '', '个人信息父目录', '1', null, '2', null, 'login:', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('145', '个人资料信息', '', '个人资料信息', '144', null, '3', null, 'login:personageEcho', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('146', '修改个人资料信息', '', '修改个人资料信息', '145', null, '2', null, 'login:personageUpdate', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('147', '修改密码回显', '', '修改密码回显', '144', null, '3', null, 'login:personageEchoPwd', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('148', '确认修改密码', '', '确认修改密码', '147', null, '2', null, 'login:personageUpdatePwd', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('149', '去运营已受理列表', '', '去运营已受理列表报价页面', '111', null, '3', null, 'quotation:toMyseltQuotation_Yy', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('150', '一次报价按钮', '', '箱管报价并修改状态', '108', null, '2', null, 'quotation:getQuotes_xg_price', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('151', '开始报价', '', '去开始报价页面', '108', null, '3', null, 'quotation:toMyseltQuotation_Xg', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('152', '运营报价受理', '', '运营报价受理', '110', null, '2', null, 'quotation:updateStatusAndAddId_yy', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('153', '未处理箱管列表', '', '未处理箱管列表数据', '107', null, '2', null, 'quotation:findquotationXglist', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('154', '箱管报价受理', '', '箱管报价受理', '108', null, '2', null, 'quotation:updateStatusAndAddId', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('155', '箱管报价页面', '', '箱管报价页面', '108', null, '3', null, 'quotation:toMyseltQuotation_XgPage', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('156', '去报价页面', '', '营根据订单id查出此订单的所有信息', '149', null, '3', null, 'quotation:toMyseltQuotation_YyPage', null, null);
INSERT INTO `sys_permission` VALUES ('157', '运营订单查看页面', '', '运营订单查看页面', '109', null, '3', null, 'quotation:MyseltQuotation_YyPage', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('158', '箱管详情页面', '', '箱管详情页面', '106', null, '3', null, 'quotation:MyseltQuotation_XgPage', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('159', '运营报价', '', '运营报价并修改状态(为5已报价)', '149', null, '2', null, 'quotation:getQuotes_yy_price', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('160', '运营回显', '', '运营回显', '109', null, '3', null, 'quotation:getOneOrderYy', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('161', '箱管回显', '', '箱管回显', '106', null, '3', null, 'quotation:getOneOrder', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('162', '生成树结构', '', '生成权限树结构', '12', null, '2', null, 'per:getZtree', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('163', '动态生成导航栏', '', '根据登录的用户去判断来动态生成导航栏', '12', null, '2', null, 'per:getNav', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('164', '境外代理-待处理页面数据', '', '境外代理-待处理页面数据', '110', null, '2', null, 'quotation:findquotationYylist', '', 'ok-icon');
INSERT INTO `sys_permission` VALUES ('165', '运输子系统', 'http://127.0.0.1:8087/car/carInfo', '', '1', null, '1', null, '123', '', 'ok-icon');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `role_ident` varchar(50) DEFAULT NULL COMMENT '角色标识',
  `role_desc_info` text COMMENT '角色的描述信息',
  `role_del` int(1) DEFAULT NULL COMMENT '1保留、0不保留，默认1',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'super_administrator', '拥有志高无上的权利2', '0');
INSERT INTO `sys_role` VALUES ('2', '校长', 'principal', '学校行政负责人', '0');
INSERT INTO `sys_role` VALUES ('3', '班主任', 'headmaster', '教学、教育工作的协调者', '0');
INSERT INTO `sys_role` VALUES ('4', '教师', 'teacher', '教书育人', '0');
INSERT INTO `sys_role` VALUES ('5', '组长', 'group_leader', '组织、生活中的领导人', '0');
INSERT INTO `sys_role` VALUES ('6', '组员', 'team_member', '负责工作', '0');
INSERT INTO `sys_role` VALUES ('7', '普通', 'general', '普通用户', '0');
INSERT INTO `sys_role` VALUES ('8', '默认', 'default', '每一个用户拥有的最基本角色', '0');
INSERT INTO `sys_role` VALUES ('9', 'a', 'a', '', '1');
INSERT INTO `sys_role` VALUES ('11', 'b', '2', '', '1');
INSERT INTO `sys_role` VALUES ('12', 'd', 'd', '大大大大', '0');
INSERT INTO `sys_role` VALUES ('13', 'aa', 'aa', 'a', '0');
INSERT INTO `sys_role` VALUES ('14', '1', '3', '', '0');
INSERT INTO `sys_role` VALUES ('15', 'test', 'test', '用于查看效果，不可以做修改', '0');
INSERT INTO `sys_role` VALUES ('16', 'aaa', 'aaa', 'a', '0');
INSERT INTO `sys_role` VALUES ('17', 's', 's', '', '1');
INSERT INTO `sys_role` VALUES ('18', '3', 'a3', 'a', '1');

-- ----------------------------
-- Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `sys_role_id` int(11) DEFAULT NULL COMMENT '角色表的id',
  `sys_permission_id` int(11) DEFAULT NULL COMMENT '权限表的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('2', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '2');
INSERT INTO `sys_role_permission` VALUES ('2', '61');
INSERT INTO `sys_role_permission` VALUES ('2', '62');
INSERT INTO `sys_role_permission` VALUES ('2', '63');
INSERT INTO `sys_role_permission` VALUES ('2', '6');
INSERT INTO `sys_role_permission` VALUES ('2', '7');
INSERT INTO `sys_role_permission` VALUES ('2', '40');
INSERT INTO `sys_role_permission` VALUES ('2', '45');
INSERT INTO `sys_role_permission` VALUES ('2', '46');
INSERT INTO `sys_role_permission` VALUES ('2', '43');
INSERT INTO `sys_role_permission` VALUES ('2', '41');
INSERT INTO `sys_role_permission` VALUES ('2', '44');
INSERT INTO `sys_role_permission` VALUES ('3', '1');
INSERT INTO `sys_role_permission` VALUES ('3', '2');
INSERT INTO `sys_role_permission` VALUES ('3', '61');
INSERT INTO `sys_role_permission` VALUES ('3', '62');
INSERT INTO `sys_role_permission` VALUES ('3', '63');
INSERT INTO `sys_role_permission` VALUES ('3', '6');
INSERT INTO `sys_role_permission` VALUES ('3', '7');
INSERT INTO `sys_role_permission` VALUES ('3', '40');
INSERT INTO `sys_role_permission` VALUES ('3', '41');
INSERT INTO `sys_role_permission` VALUES ('3', '44');
INSERT INTO `sys_role_permission` VALUES ('3', '57');
INSERT INTO `sys_role_permission` VALUES ('3', '47');
INSERT INTO `sys_role_permission` VALUES ('3', '59');
INSERT INTO `sys_role_permission` VALUES ('3', '60');
INSERT INTO `sys_role_permission` VALUES ('8', '1');
INSERT INTO `sys_role_permission` VALUES ('8', '2');
INSERT INTO `sys_role_permission` VALUES ('8', '61');
INSERT INTO `sys_role_permission` VALUES ('8', '62');
INSERT INTO `sys_role_permission` VALUES ('8', '63');
INSERT INTO `sys_role_permission` VALUES ('8', '40');
INSERT INTO `sys_role_permission` VALUES ('8', '41');
INSERT INTO `sys_role_permission` VALUES ('8', '44');
INSERT INTO `sys_role_permission` VALUES ('8', '57');
INSERT INTO `sys_role_permission` VALUES ('8', '47');
INSERT INTO `sys_role_permission` VALUES ('8', '59');
INSERT INTO `sys_role_permission` VALUES ('8', '60');
INSERT INTO `sys_role_permission` VALUES ('7', '1');
INSERT INTO `sys_role_permission` VALUES ('7', '2');
INSERT INTO `sys_role_permission` VALUES ('7', '61');
INSERT INTO `sys_role_permission` VALUES ('7', '62');
INSERT INTO `sys_role_permission` VALUES ('7', '63');
INSERT INTO `sys_role_permission` VALUES ('7', '6');
INSERT INTO `sys_role_permission` VALUES ('7', '10');
INSERT INTO `sys_role_permission` VALUES ('7', '11');
INSERT INTO `sys_role_permission` VALUES ('7', '16');
INSERT INTO `sys_role_permission` VALUES ('5', '1');
INSERT INTO `sys_role_permission` VALUES ('5', '2');
INSERT INTO `sys_role_permission` VALUES ('5', '61');
INSERT INTO `sys_role_permission` VALUES ('5', '62');
INSERT INTO `sys_role_permission` VALUES ('5', '63');
INSERT INTO `sys_role_permission` VALUES ('5', '40');
INSERT INTO `sys_role_permission` VALUES ('5', '45');
INSERT INTO `sys_role_permission` VALUES ('5', '46');
INSERT INTO `sys_role_permission` VALUES ('5', '53');
INSERT INTO `sys_role_permission` VALUES ('5', '43');
INSERT INTO `sys_role_permission` VALUES ('5', '41');
INSERT INTO `sys_role_permission` VALUES ('5', '44');
INSERT INTO `sys_role_permission` VALUES ('5', '57');
INSERT INTO `sys_role_permission` VALUES ('5', '47');
INSERT INTO `sys_role_permission` VALUES ('5', '59');
INSERT INTO `sys_role_permission` VALUES ('5', '60');
INSERT INTO `sys_role_permission` VALUES ('6', '1');
INSERT INTO `sys_role_permission` VALUES ('6', '2');
INSERT INTO `sys_role_permission` VALUES ('6', '61');
INSERT INTO `sys_role_permission` VALUES ('6', '62');
INSERT INTO `sys_role_permission` VALUES ('6', '63');
INSERT INTO `sys_role_permission` VALUES ('6', '40');
INSERT INTO `sys_role_permission` VALUES ('6', '41');
INSERT INTO `sys_role_permission` VALUES ('6', '44');
INSERT INTO `sys_role_permission` VALUES ('6', '57');
INSERT INTO `sys_role_permission` VALUES ('6', '47');
INSERT INTO `sys_role_permission` VALUES ('6', '59');
INSERT INTO `sys_role_permission` VALUES ('6', '60');
INSERT INTO `sys_role_permission` VALUES ('4', '1');
INSERT INTO `sys_role_permission` VALUES ('4', '2');
INSERT INTO `sys_role_permission` VALUES ('4', '61');
INSERT INTO `sys_role_permission` VALUES ('4', '62');
INSERT INTO `sys_role_permission` VALUES ('4', '63');
INSERT INTO `sys_role_permission` VALUES ('4', '6');
INSERT INTO `sys_role_permission` VALUES ('4', '7');
INSERT INTO `sys_role_permission` VALUES ('15', '1');
INSERT INTO `sys_role_permission` VALUES ('15', '2');
INSERT INTO `sys_role_permission` VALUES ('15', '61');
INSERT INTO `sys_role_permission` VALUES ('15', '62');
INSERT INTO `sys_role_permission` VALUES ('15', '6');
INSERT INTO `sys_role_permission` VALUES ('15', '7');
INSERT INTO `sys_role_permission` VALUES ('15', '10');
INSERT INTO `sys_role_permission` VALUES ('15', '11');
INSERT INTO `sys_role_permission` VALUES ('15', '15');
INSERT INTO `sys_role_permission` VALUES ('15', '16');
INSERT INTO `sys_role_permission` VALUES ('15', '12');
INSERT INTO `sys_role_permission` VALUES ('15', '18');
INSERT INTO `sys_role_permission` VALUES ('15', '13');
INSERT INTO `sys_role_permission` VALUES ('15', '40');
INSERT INTO `sys_role_permission` VALUES ('15', '45');
INSERT INTO `sys_role_permission` VALUES ('15', '53');
INSERT INTO `sys_role_permission` VALUES ('15', '41');
INSERT INTO `sys_role_permission` VALUES ('15', '57');
INSERT INTO `sys_role_permission` VALUES ('15', '47');
INSERT INTO `sys_role_permission` VALUES ('15', '59');
INSERT INTO `sys_role_permission` VALUES ('15', '60');
INSERT INTO `sys_role_permission` VALUES ('16', '1');
INSERT INTO `sys_role_permission` VALUES ('16', '2');
INSERT INTO `sys_role_permission` VALUES ('16', '61');
INSERT INTO `sys_role_permission` VALUES ('16', '62');
INSERT INTO `sys_role_permission` VALUES ('16', '63');
INSERT INTO `sys_role_permission` VALUES ('16', '6');
INSERT INTO `sys_role_permission` VALUES ('16', '7');
INSERT INTO `sys_role_permission` VALUES ('16', '10');
INSERT INTO `sys_role_permission` VALUES ('16', '11');
INSERT INTO `sys_role_permission` VALUES ('16', '15');
INSERT INTO `sys_role_permission` VALUES ('16', '16');
INSERT INTO `sys_role_permission` VALUES ('16', '12');
INSERT INTO `sys_role_permission` VALUES ('16', '18');
INSERT INTO `sys_role_permission` VALUES ('16', '13');
INSERT INTO `sys_role_permission` VALUES ('16', '40');
INSERT INTO `sys_role_permission` VALUES ('16', '45');
INSERT INTO `sys_role_permission` VALUES ('16', '46');
INSERT INTO `sys_role_permission` VALUES ('16', '53');
INSERT INTO `sys_role_permission` VALUES ('16', '43');
INSERT INTO `sys_role_permission` VALUES ('16', '41');
INSERT INTO `sys_role_permission` VALUES ('16', '44');
INSERT INTO `sys_role_permission` VALUES ('16', '57');
INSERT INTO `sys_role_permission` VALUES ('16', '47');
INSERT INTO `sys_role_permission` VALUES ('16', '59');
INSERT INTO `sys_role_permission` VALUES ('16', '60');
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '103');
INSERT INTO `sys_role_permission` VALUES ('1', '71');
INSERT INTO `sys_role_permission` VALUES ('1', '95');
INSERT INTO `sys_role_permission` VALUES ('1', '96');
INSERT INTO `sys_role_permission` VALUES ('1', '97');
INSERT INTO `sys_role_permission` VALUES ('1', '98');
INSERT INTO `sys_role_permission` VALUES ('1', '99');
INSERT INTO `sys_role_permission` VALUES ('1', '100');
INSERT INTO `sys_role_permission` VALUES ('1', '101');
INSERT INTO `sys_role_permission` VALUES ('1', '102');
INSERT INTO `sys_role_permission` VALUES ('1', '11');
INSERT INTO `sys_role_permission` VALUES ('1', '12');
INSERT INTO `sys_role_permission` VALUES ('1', '83');
INSERT INTO `sys_role_permission` VALUES ('1', '84');
INSERT INTO `sys_role_permission` VALUES ('1', '85');
INSERT INTO `sys_role_permission` VALUES ('1', '86');
INSERT INTO `sys_role_permission` VALUES ('1', '87');
INSERT INTO `sys_role_permission` VALUES ('1', '162');
INSERT INTO `sys_role_permission` VALUES ('1', '163');
INSERT INTO `sys_role_permission` VALUES ('1', '15');
INSERT INTO `sys_role_permission` VALUES ('1', '72');
INSERT INTO `sys_role_permission` VALUES ('1', '73');
INSERT INTO `sys_role_permission` VALUES ('1', '74');
INSERT INTO `sys_role_permission` VALUES ('1', '75');
INSERT INTO `sys_role_permission` VALUES ('1', '79');
INSERT INTO `sys_role_permission` VALUES ('1', '76');
INSERT INTO `sys_role_permission` VALUES ('1', '80');
INSERT INTO `sys_role_permission` VALUES ('1', '77');
INSERT INTO `sys_role_permission` VALUES ('1', '78');
INSERT INTO `sys_role_permission` VALUES ('1', '82');
INSERT INTO `sys_role_permission` VALUES ('1', '18');
INSERT INTO `sys_role_permission` VALUES ('1', '88');
INSERT INTO `sys_role_permission` VALUES ('1', '92');
INSERT INTO `sys_role_permission` VALUES ('1', '89');
INSERT INTO `sys_role_permission` VALUES ('1', '90');
INSERT INTO `sys_role_permission` VALUES ('1', '93');
INSERT INTO `sys_role_permission` VALUES ('1', '91');
INSERT INTO `sys_role_permission` VALUES ('1', '94');
INSERT INTO `sys_role_permission` VALUES ('1', '105');
INSERT INTO `sys_role_permission` VALUES ('1', '133');
INSERT INTO `sys_role_permission` VALUES ('1', '134');
INSERT INTO `sys_role_permission` VALUES ('1', '135');
INSERT INTO `sys_role_permission` VALUES ('1', '136');
INSERT INTO `sys_role_permission` VALUES ('1', '137');
INSERT INTO `sys_role_permission` VALUES ('1', '138');
INSERT INTO `sys_role_permission` VALUES ('1', '139');
INSERT INTO `sys_role_permission` VALUES ('1', '140');
INSERT INTO `sys_role_permission` VALUES ('1', '141');
INSERT INTO `sys_role_permission` VALUES ('1', '142');
INSERT INTO `sys_role_permission` VALUES ('1', '112');
INSERT INTO `sys_role_permission` VALUES ('1', '131');
INSERT INTO `sys_role_permission` VALUES ('1', '132');
INSERT INTO `sys_role_permission` VALUES ('1', '113');
INSERT INTO `sys_role_permission` VALUES ('1', '114');
INSERT INTO `sys_role_permission` VALUES ('1', '117');
INSERT INTO `sys_role_permission` VALUES ('1', '119');
INSERT INTO `sys_role_permission` VALUES ('1', '121');
INSERT INTO `sys_role_permission` VALUES ('1', '123');
INSERT INTO `sys_role_permission` VALUES ('1', '125');
INSERT INTO `sys_role_permission` VALUES ('1', '127');
INSERT INTO `sys_role_permission` VALUES ('1', '129');
INSERT INTO `sys_role_permission` VALUES ('1', '115');
INSERT INTO `sys_role_permission` VALUES ('1', '118');
INSERT INTO `sys_role_permission` VALUES ('1', '120');
INSERT INTO `sys_role_permission` VALUES ('1', '122');
INSERT INTO `sys_role_permission` VALUES ('1', '124');
INSERT INTO `sys_role_permission` VALUES ('1', '126');
INSERT INTO `sys_role_permission` VALUES ('1', '128');
INSERT INTO `sys_role_permission` VALUES ('1', '130');
INSERT INTO `sys_role_permission` VALUES ('1', '116');
INSERT INTO `sys_role_permission` VALUES ('1', '106');
INSERT INTO `sys_role_permission` VALUES ('1', '107');
INSERT INTO `sys_role_permission` VALUES ('1', '153');
INSERT INTO `sys_role_permission` VALUES ('1', '108');
INSERT INTO `sys_role_permission` VALUES ('1', '150');
INSERT INTO `sys_role_permission` VALUES ('1', '151');
INSERT INTO `sys_role_permission` VALUES ('1', '154');
INSERT INTO `sys_role_permission` VALUES ('1', '155');
INSERT INTO `sys_role_permission` VALUES ('1', '158');
INSERT INTO `sys_role_permission` VALUES ('1', '161');
INSERT INTO `sys_role_permission` VALUES ('1', '109');
INSERT INTO `sys_role_permission` VALUES ('1', '110');
INSERT INTO `sys_role_permission` VALUES ('1', '152');
INSERT INTO `sys_role_permission` VALUES ('1', '164');
INSERT INTO `sys_role_permission` VALUES ('1', '111');
INSERT INTO `sys_role_permission` VALUES ('1', '149');
INSERT INTO `sys_role_permission` VALUES ('1', '156');
INSERT INTO `sys_role_permission` VALUES ('1', '159');
INSERT INTO `sys_role_permission` VALUES ('1', '157');
INSERT INTO `sys_role_permission` VALUES ('1', '160');
INSERT INTO `sys_role_permission` VALUES ('1', '143');
INSERT INTO `sys_role_permission` VALUES ('1', '144');
INSERT INTO `sys_role_permission` VALUES ('1', '145');
INSERT INTO `sys_role_permission` VALUES ('1', '146');
INSERT INTO `sys_role_permission` VALUES ('1', '147');
INSERT INTO `sys_role_permission` VALUES ('1', '148');
INSERT INTO `sys_role_permission` VALUES ('1', '165');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login_name` varchar(50) DEFAULT NULL COMMENT '用户登录名',
  `user_pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `user_username` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `user_sex` int(1) DEFAULT NULL COMMENT '性别',
  `user_birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `user_join_date` datetime DEFAULT NULL COMMENT '入司日期',
  `user_leave_date` datetime DEFAULT NULL COMMENT '离职时间',
  `user_email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `user_mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `user_card_id` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `user_customer_type` int(1) DEFAULT NULL COMMENT '用户类型（试用0，正式员工1，离职2，实习3）',
  `user_past` text COMMENT '过往经历',
  `user_educ` text COMMENT '教育经历',
  `user_baoliu` int(1) DEFAULT NULL COMMENT '1保留、0不保留，默认1',
  `user_life` varchar(50) DEFAULT NULL COMMENT '是否在线（根据sessionid来判断）',
  `user_job` varchar(50) DEFAULT NULL COMMENT '职位',
  `user_job_type` varchar(50) DEFAULT NULL COMMENT '职位类型',
  `user_salary` decimal(19,2) DEFAULT NULL COMMENT '薪水',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', 'admin', '1', '2019-06-19 00:00:00', '2019-06-19 00:00:00', '2019-06-19 00:00:00', '1978805993@qq.com', '15138790757', '410381199910296552', null, '暂无23', '程序员', '1', '0', '超级管理员', '超级管理员', '465564554.00');
INSERT INTO `sys_user` VALUES ('2', 'zhangsan', '123456', '张三', '1', '2019-05-30 00:00:00', '2019-05-30 00:00:00', '2019-05-30 00:00:00', '1952@qq.cpm', '15624585632', '383838373737373737', null, '', '', '1', '0', '', '', '6516.00');
INSERT INTO `sys_user` VALUES ('4', 'a', '123456', '王盛毅', null, null, null, null, 'aaa', null, null, null, null, null, '1', '0', null, null, '156.00');
INSERT INTO `sys_user` VALUES ('5', null, '123123', 'wsy', null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, '165.00');
INSERT INTO `sys_user` VALUES ('12', '孙慧慧', '123456', '孙慧慧', '0', '2019-06-19 00:00:00', null, null, '1978805993@qq.com', '18612393719', '410381199910296552', null, '', '', '1', '0', '超级管理员', '超级管理员', '98765432100000.00');
INSERT INTO `sys_user` VALUES ('13', 'lishi', 's', '李四', '0', '2019-05-06 00:00:00', '2019-05-06 00:00:00', '2019-05-06 00:00:00', '62226@qq.com', '15245689585', '626262626251515151', null, '6262', 'dd', '1', '0', null, null, '15.00');
INSERT INTO `sys_user` VALUES ('14', 'wangwu', '', '王五', '0', '2019-05-29 00:00:00', '2019-05-29 00:00:00', '2019-05-29 00:00:00', '15151@qq.com', '15138790757', '258456855235985665', null, '', '', '1', '0', '', 'd', '1.00');
INSERT INTO `sys_user` VALUES ('15', 'mima', 'mima', 'zeshi', '1', '2019-05-14 00:00:00', '2019-05-14 00:00:00', '2019-05-14 00:00:00', '48548@qq.com', '15235896584', '848541515616541815', null, '', '', '0', '0', null, null, '351.00');
INSERT INTO `sys_user` VALUES ('16', 'zhsang', '', 'ceshi', '1', '2019-05-14 00:00:00', '2019-05-14 00:00:00', null, '1978805993@qq.com', '15138790757', '848541515616541815', null, '', '', '1', '0', null, null, '35.00');
INSERT INTO `sys_user` VALUES ('17', 'aa', 'aaaaaa', 'aa22', '1', '2019-05-29 00:00:00', '2019-05-29 00:00:00', null, '15985@qq.com', '15236587458', '855145358568526554', null, 's', 's2', '1', '0', '', 'c', '13.00');
INSERT INTO `sys_user` VALUES ('18', 'bb', 'bbbbbb', 'bbbbb', '1', '2019-05-16 00:00:00', '2019-05-16 00:00:00', null, '21@qq.com', '12356859652', '452152658958745655', null, '', '', '0', '0', null, null, '513.00');
INSERT INTO `sys_user` VALUES ('19', 'aaa', 'aaaaaa', 'aaaaaa', '1', '2019-05-10 00:00:00', '2019-05-10 00:00:00', '2019-05-10 00:00:00', '58412@qq.com', '15241585965', '410235487458965524', null, 'dd', 'dd', '1', '0', null, null, '51.00');
INSERT INTO `sys_user` VALUES ('20', 'aaaa', 'aaaaaa', 'aaaaaa', '1', '2019-05-03 00:00:00', '2019-05-02 00:00:00', '2019-05-03 00:00:00', '185541@qq.com', '15248598565', '412523585998547885', null, '\r\n\r\nd\r\n\r\n', '\r\nd\r\n\r\n', '1', '0', null, null, '3.00');
INSERT INTO `sys_user` VALUES ('21', 'aaaaa', 'aaaaaa', null, null, null, null, null, '1978805993@qq.com', null, null, null, null, null, '1', '0', null, null, '135.00');
INSERT INTO `sys_user` VALUES ('22', 'aaaaaa', 'aaaaaa', null, null, null, null, null, '1978805993@qq.com', null, null, null, null, null, '1', '0', null, null, '13.00');
INSERT INTO `sys_user` VALUES ('23', 'b', 'bbbbbb', null, null, null, null, null, '1978805993@qq.com', null, null, null, null, null, '1', '0', null, null, '51.00');
INSERT INTO `sys_user` VALUES ('24', 'c', 'cccccc', null, null, null, null, null, '1978805993@qq.com', null, null, null, null, null, '1', '0', null, null, '31.00');
INSERT INTO `sys_user` VALUES ('25', 'f', 'ffffff', 'ffffff', '1', '2019-06-06 00:00:00', '2019-03-06 00:00:00', null, '95295@qq.com', '15235847853', '412545854854857885', null, '', '', '1', '0', null, null, '31.00');
INSERT INTO `sys_user` VALUES ('26', 'ryea', '1807ad', '段书显', '0', '2019-05-17 00:00:00', '2019-05-17 00:00:00', null, '1961430451@qq.com', '15538818257', '411322200012120236', null, '', '', '1', '0', null, null, '3.00');
INSERT INTO `sys_user` VALUES ('27', 'aaaaaaa', 'aaaaaa', 'aaaaaa', '1', '2019-05-27 00:00:00', '2019-05-27 00:00:00', '2019-05-27 00:00:00', '1978805993@qq.com', '15138790757', '410381199516415154', null, 'ab\r\n', 'ab', '1', null, 'b', 'b', '13.00');
INSERT INTO `sys_user` VALUES ('28', '3363572531m', '123456', null, null, null, null, null, '3363572531@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('29', 'a123123', '123123123', null, null, null, null, null, '2642359302@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('30', '灰太狼', '123456789', null, null, null, null, null, '1974565230@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('31', '赵厅', '123456', null, null, null, null, null, '1065928448@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('32', '唱跳rap篮球', '123456', null, null, null, null, null, '1398545023@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('36', null, '1234', '张三', null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('37', 'admin2', '123456', null, null, null, null, null, '1978805993@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('38', 'aaaaaaaa', 'aaaaaa', 'a', '1', '2019-06-11 00:00:00', null, null, '1545641@qq.com', '15138790586', '548595856523568552', null, '', '', '1', null, '', '', '0.00');
INSERT INTO `sys_user` VALUES ('39', 'cnll', '123456789', 'ck', '1', '2019-06-11 00:00:00', null, null, '1766497532@qq.com', '15210843302', '130184199907303019', null, '', '', '1', null, '', '', '0.00');
INSERT INTO `sys_user` VALUES ('40', 'aaaaaaaaa', 'aaaaaa', 'aaaaaa', '1', '2019-06-29 00:00:00', null, null, 'owauijd@qq.com', '15165165165', '453456345645445', null, '', '', '1', null, '', '', '0.00');
INSERT INTO `sys_user` VALUES ('41', 'test', 'test', 'Test', '1', '2019-06-14 00:00:00', '2019-06-14 00:00:00', null, '1970000@qq.com', '15111111111', '410558585858587454', null, '', '', '1', null, '测试', '给他人观看', '1000.00');
INSERT INTO `sys_user` VALUES ('42', 'dddd', 'aaaaaa', null, null, null, null, null, '1978805993@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('43', 'tt', 'tttttt', 'tttttt', '1', '2019-07-02 00:00:00', null, null, '1978805993@qq.com', '15138790757', '410358458574585223', null, '', '', '0', null, 'asdf', 'asdf', '124124124.00');
INSERT INTO `sys_user` VALUES ('44', 'gg', 'aaaaaa', null, null, null, null, null, '1978805993@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('45', 'shan', 'SHANzeyu', null, null, null, null, null, 'www.595045736@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('46', 'Chenwang', 'wang19951009', null, null, null, null, null, '443346995@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('47', 'xin780114091', '19951028xin', null, null, null, null, null, '780114091@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('48', 'ljw', '123580', null, null, null, null, null, '1547751619@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('49', 'chenliang', '150690', null, null, null, null, null, '3108434520@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('50', '赵大锤', 'ZYY14yhl9t', null, null, null, null, null, '1656526043@qq.com', null, null, null, null, null, '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('51', 'q936527229', 'daxue55hen', null, null, null, null, null, '936527229@qq.com', null, null, null, null, null, '1', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `sys_user_id` int(11) DEFAULT NULL COMMENT '用户名的id',
  `sys_role_id` int(11) DEFAULT NULL COMMENT '角色表的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('1', '3');
INSERT INTO `sys_user_role` VALUES ('1', '4');
INSERT INTO `sys_user_role` VALUES ('1', '5');
INSERT INTO `sys_user_role` VALUES ('1', '6');

-- ----------------------------
-- Table structure for `tb_per`
-- ----------------------------
DROP TABLE IF EXISTS `tb_per`;
CREATE TABLE `tb_per` (
  `name` varchar(255) DEFAULT NULL,
  `ident` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_per
-- ----------------------------
