/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : youxinshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-22 14:18:17
*/

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码，加密存储',
  `phone` varchar(20) DEFAULT NULL COMMENT '注册手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '注册邮箱',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='用户表';

INSERT INTO `user`(username,password,phone,email) VALUES ('Tom', 'X03MO1qnZdYdgyfeuILPmQ==', '13756948821', '16347791@163.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('Jerry', 'X03MO1qnZdYdgyfeuILPmQ==', '17864231106', '1721693585@qq.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('Lily', 'ICy5YqxZB1uWSwcVLSNLcA==', '15016927481', '133446988@126.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('Fuyunwang', 'ICy5YqxZB1uWSwcVLSNLcA==', '18236197550', '1561235@sina.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('zhangsan', 'Y6nw6nu5gFB5a2SehUgYRQ==', '15910073245', '2360889945@qq.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('lisi', 'Y6nw6nu5gFB5a2SehUgYRQ==', '17833612017', '2368889945@qq.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('wangwu', 'X03MO1qnZdYdgyfeuILPmQ==', '17862964511', '544233369@qq.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('zhaoliu', 'Y6nw6nu5gFB5a2SehUgYRQ==', '155530122247', '524229379@qq.com');
INSERT INTO `user`(username,password,phone,email) VALUES ('David', 'ICy5YqxZB1uWSwcVLSNLcA==', '18210069481', '2368819945@qq.com');
-- ----------------------------
-- Table structure for yx_manage_user
-- ----------------------------
DROP TABLE IF EXISTS `yx_manage_user`;
CREATE TABLE `yx_manage_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `password` varchar(32) NOT NULL COMMENT '密码，加密存储',
  `phone` varchar(20) DEFAULT NULL COMMENT '注册手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '注册邮箱',
  `job` varchar(50) DEFAULT NULL COMMENT '工作',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Table structure for yx_receiver
-- ----------------------------
DROP TABLE IF EXISTS `yx_receiver`;
CREATE TABLE `yx_receiver` (
  `addr_id` varchar(50) NOT NULL COMMENT '地址ID',
  `user_id` varchar(50) NOT NULL COMMENT '用户ID',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人全名',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `receiver_mobile` varchar(30) DEFAULT NULL COMMENT '移动电话',
  `receiver_state` varchar(10) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(10) DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址，如：xx路xx号',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '邮政编码,如：110000',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收货人信息表';

-- ----------------------------
-- Table structure for yx_content
-- ----------------------------
DROP TABLE IF EXISTS `yx_content`;
CREATE TABLE `yx_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL COMMENT '内容类目ID',
  `title` varchar(200) DEFAULT NULL COMMENT '内容标题',
  `sub_title` varchar(100) DEFAULT NULL COMMENT '子标题',
  `title_desc` varchar(500) DEFAULT NULL COMMENT '标题描述',
  `url` varchar(500) DEFAULT NULL COMMENT '链接',
  `pic` varchar(300) DEFAULT NULL COMMENT '图片绝对路径',
  `pic_second` varchar(300) DEFAULT NULL COMMENT '图片2',
  `content` text COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `updated` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='内容表';


-- ----------------------------
-- Table structure for yx_content_category
-- ----------------------------
DROP TABLE IF EXISTS `yx_content_category`;
CREATE TABLE `yx_content_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父类目ID=0时，代表的是一级的类目',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` int(1) DEFAULT '1' COMMENT '状态。可选值:1(正常),2(删除)',
  `sort_order` int(4) DEFAULT NULL COMMENT '排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `is_parent` tinyint(1) DEFAULT '1' COMMENT '该类目是否为父类目，1为true，0为false',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`status`) USING BTREE,
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='内容分类';


-- ----------------------------
-- Table structure for yx_item_cat
-- ----------------------------
DROP TABLE IF EXISTS `yx_item_cat`;
CREATE TABLE `yx_item_cat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父类目ID=0时，代表的是一级的类目',
  `name` varchar(50) DEFAULT NULL COMMENT '类目名称',
  `status` int(1) DEFAULT '1' COMMENT '状态。可选值:1(正常),2(删除)',
  `sort_order` int(4) DEFAULT NULL COMMENT '排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `is_parent` tinyint(1) DEFAULT '1' COMMENT '该类目是否为父类目，1为true，0为false',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`status`) USING BTREE,
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=1183 DEFAULT CHARSET=utf8 COMMENT='商品类目';

-- ----------------------------
-- Table structure for yx_item
-- ----------------------------
DROP TABLE IF EXISTS `yx_item`;
CREATE TABLE `yx_item` (
  `id` bigint(20) NOT NULL COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) NOT NULL COMMENT '商品标题',
  `sell_point` varchar(500) DEFAULT NULL COMMENT '商品卖点',
  `price` bigint(20) NOT NULL COMMENT '商品价格，单位为：分',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `barcode` varchar(30) DEFAULT NULL COMMENT '商品条形码',
  `image` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `cid` bigint(10) NOT NULL COMMENT '所属类目，叶子类目',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品状态，1-正常，2-下架，3-删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `status` (`status`),
  KEY `updated` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Table structure for yx_item_desc
-- ----------------------------
DROP TABLE IF EXISTS `yx_item_desc`;
CREATE TABLE `yx_item_desc` (
  `item_id` bigint(20) NOT NULL COMMENT '商品ID',
  `item_desc` text COMMENT '商品描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品描述';

-- ----------------------------
-- Table structure for yx_item_param_item
-- ----------------------------
DROP TABLE IF EXISTS `yx_item_param_item`;
CREATE TABLE `yx_item_param_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `param_data` text COMMENT '参数数据，格式为json格式',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品规格和商品的关系表';

-- ----------------------------
-- Table structure for yx_item_param
-- ----------------------------
DROP TABLE IF EXISTS `yx_item_param`;
CREATE TABLE `yx_item_param` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_cat_id` bigint(20) DEFAULT NULL COMMENT '商品类目ID',
  `param_data` text COMMENT '参数数据，格式为json格式',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `item_cat_id` (`item_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品规则参数';


-- ----------------------------
-- Table structure for yx_order
-- ----------------------------
DROP TABLE IF EXISTS `yx_order`;
CREATE TABLE `yx_order` (
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '订单id',
  `payment` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '实付金额。精确到2位小数;单位:元。如:200.07，表示:200元7分',
  `payment_type` int(2) DEFAULT NULL COMMENT '支付类型，1、在线支付，2、货到付款',
  `post_fee` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮费。精确到2位小数;单位:元。如:200.07，表示:200元7分',
  `status` int(10) DEFAULT NULL COMMENT '状态：1、未付款，2、已付款，3、未发货，4、已发货，5、交易成功，6、交易关闭',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '订单更新时间',
  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
  `consign_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流单号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `buyer_message` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
  `buyer_nick` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '买家昵称',
  `buyer_rate` int(2) DEFAULT NULL COMMENT '买家是否已经评价',
  PRIMARY KEY (`order_id`),
  KEY `create_time` (`create_time`),
  KEY `buyer_nick` (`buyer_nick`),
  KEY `status` (`status`),
  KEY `payment_type` (`payment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for yx_order_item
-- ----------------------------
DROP TABLE IF EXISTS `yx_order_item`;
CREATE TABLE `yx_order_item` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `item_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '商品id',
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '订单id',
  `num` int(10) DEFAULT NULL COMMENT '商品购买数量',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品标题',
  `price` bigint(50) DEFAULT NULL COMMENT '商品单价',
  `total_fee` bigint(50) DEFAULT NULL COMMENT '商品总金额',
  `pic_path` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片地址',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for yx_order_shipping
-- ----------------------------
DROP TABLE IF EXISTS `yx_order_shipping`;
CREATE TABLE `yx_order_shipping` (
  `order_id` varchar(50) NOT NULL COMMENT '订单ID',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人全名',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `receiver_mobile` varchar(30) DEFAULT NULL COMMENT '移动电话',
  `receiver_state` varchar(10) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(10) DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址，如：xx路xx号',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '邮政编码,如：310001',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

