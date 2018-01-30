/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : youxinshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-30 21:48:46
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容表';

-- ----------------------------
-- Records of yx_content
-- ----------------------------

-- ----------------------------
-- Table structure for yx_content_category
-- ----------------------------
DROP TABLE IF EXISTS `yx_content_category`;
CREATE TABLE `yx_content_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父类目ID=0时，代表的是一级的类目',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `url` varchar(200) DEFAULT NULL COMMENT '该分类对应的页面',
  `status` int(1) DEFAULT '1' COMMENT '状态。可选值:1(正常),2(删除)',
  `sort_order` int(4) DEFAULT NULL COMMENT '排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `is_parent` tinyint(1) DEFAULT '1' COMMENT '该类目是否为父类目，1为true，0为false',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`status`) USING BTREE,
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='内容分类';

-- ----------------------------
-- Records of yx_content_category
-- ----------------------------
INSERT INTO `yx_content_category` VALUES ('103', '0', '家用电器', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:50');
INSERT INTO `yx_content_category` VALUES ('104', '0', '手机/运营商/数码', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:52');
INSERT INTO `yx_content_category` VALUES ('105', '0', '电脑办公', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:54');
INSERT INTO `yx_content_category` VALUES ('106', '0', '家居/家具/家装/厨具', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:56');
INSERT INTO `yx_content_category` VALUES ('107', '0', ' 装/女装/童装/内衣', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:57');
INSERT INTO `yx_content_category` VALUES ('108', '0', '个护化妆/清洁用品/宠物', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:59');
INSERT INTO `yx_content_category` VALUES ('109', '0', '鞋靴/箱包/珠宝/奢侈品', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:01');
INSERT INTO `yx_content_category` VALUES ('110', '0', '汽车/汽车用品', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:02');
INSERT INTO `yx_content_category` VALUES ('111', '0', '母婴/玩具乐器', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:04');
INSERT INTO `yx_content_category` VALUES ('112', '0', '食品/酒类/生鲜/特产', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:06');
INSERT INTO `yx_content_category` VALUES ('113', '0', '医药保健', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:08');
INSERT INTO `yx_content_category` VALUES ('114', '0', '图书/音像/电子书', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:10');
INSERT INTO `yx_content_category` VALUES ('115', '0', '机票/酒店/旅游/生活', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:11');

-- ----------------------------
-- Table structure for yx_content_category_image
-- ----------------------------
DROP TABLE IF EXISTS `yx_content_category_image`;
CREATE TABLE `yx_content_category_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `parent_id` bigint(20) NOT NULL DEFAULT '103' COMMENT '分类的父id',
  `name` varchar(200) DEFAULT NULL COMMENT '名字',
  `url` varchar(200) DEFAULT NULL COMMENT '网址或网页id',
  `is_big` int(1) DEFAULT '1' COMMENT '图片状态。可选值:1(little),2(big)',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态。可选值:1(正常),2(删除)',
  `image_url` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `sort_order` int(4) NOT NULL DEFAULT '1' COMMENT '排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COMMENT='分类图片';

-- ----------------------------
-- Records of yx_content_category_image
-- ----------------------------
INSERT INTO `yx_content_category_image` VALUES ('180', '103', '海信', '', '1', '1', '', '1', '2018-01-22 17:27:55', '2018-01-22 17:27:55');
INSERT INTO `yx_content_category_image` VALUES ('181', '103', '扬子', '', '1', '1', '', '1', '2018-01-22 17:27:55', '2018-01-22 17:27:55');
INSERT INTO `yx_content_category_image` VALUES ('182', '103', '格力', '', '1', '1', '', '1', '2018-01-22 17:27:55', '2018-01-22 17:27:55');
INSERT INTO `yx_content_category_image` VALUES ('183', '103', '海尔', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('184', '103', '九阳', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('185', '103', '飞利浦', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('186', '103', '西门子', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('187', '103', '奥克斯', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('188', '103', '美的', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('189', '103', 'TCL', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('190', '103', '康佳', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('191', '104', '华为', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('192', '104', 'Vivo', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('193', '104', '联想', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('194', '104', '魅族', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('195', '104', '锤子', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('196', '104', '索尼', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('197', '104', 'iPhone8S', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('198', '104', 'iPhoneX', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('199', '104', '三星', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('200', '104', '佳能', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('201', '105', '罗技', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('202', '105', '华硕', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('203', '105', 'ThinkPad', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('204', '105', '戴尔', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('205', '105', 'SAMSUNG', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('206', '105', '神舟', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('207', '105', '惠普', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('208', '105', '雷柏', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('209', '106', '网易严选', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('210', '106', '也雅塑', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('211', '106', '禧天龙', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('212', '106', '百露', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('213', '106', '爱丽思', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('214', '106', '金浩家纺', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('215', '106', '水星家纺', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('216', '106', '绝恋床具', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('217', '107', 'AK男装', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('218', '107', '红豆', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('219', '107', '班路尼', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('220', '107', '九牧王', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('221', '107', 'KAMA', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('222', '107', 'KINC', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('223', '107', 'Betu', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('224', '107', 'Evona', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('225', '107', 'MANGO', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('226', '107', '雪莲', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('227', '107', '欧莎', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('228', '107', '谜秀', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('229', '107', '衣池宴', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('230', '108', '雅诗兰黛', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('231', '108', '珂莱欧', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_content_category_image` VALUES ('232', '108', 'LG', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('233', '108', '婷美', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('234', '108', '阿道夫', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('235', '108', 'OLay', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('236', '108', '清扬', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('237', '108', '欧莱雅', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('238', '109', '红蜻蜓', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('239', '109', '奥康', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('240', '109', '卖哲', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('241', '109', '皓顿', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('242', '109', '将肯', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('243', '109', '纵邦', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('244', '109', '路派', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('245', '109', '飞跃', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('246', '109', '强人', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('247', '109', '奥伦', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('248', '109', '稻草人', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_content_category_image` VALUES ('249', '109', '飞跃', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');

-- ----------------------------
-- Table structure for yx_hot_words
-- ----------------------------
DROP TABLE IF EXISTS `yx_hot_words`;
CREATE TABLE `yx_hot_words` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `degreee` varchar(3) DEFAULT NULL COMMENT '火热程度,数字越大代表越火热',
  `name` varchar(200) DEFAULT NULL COMMENT '热门词',
  `url` varchar(100) DEFAULT NULL COMMENT '跳转网页',
  `search` tinyint(4) NOT NULL DEFAULT '2' COMMENT '热门词状态，1-搜索，2-指定网页',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yx_hot_words
-- ----------------------------
INSERT INTO `yx_hot_words` VALUES ('101', '10', '清仓处理', '', '2', '2018-01-30 21:24:30', '2018-01-30 21:25:00');
INSERT INTO `yx_hot_words` VALUES ('102', '11', '家电下乡', '', '2', '2018-01-30 21:24:30', '2018-01-30 21:25:00');
INSERT INTO `yx_hot_words` VALUES ('103', '12', '5折神券', '', '2', '2018-01-30 21:24:30', '2018-01-30 21:25:00');
INSERT INTO `yx_hot_words` VALUES ('104', '13', '走心年货', '', '2', '2018-01-30 21:24:30', '2018-01-30 21:25:00');
INSERT INTO `yx_hot_words` VALUES ('105', '14', '农资年货', '', '2', '2018-01-30 21:24:30', '2018-01-30 21:25:00');
INSERT INTO `yx_hot_words` VALUES ('106', '11', '潮流服饰', '', '2', '2018-01-30 21:24:30', '2018-01-30 21:25:00');
INSERT INTO `yx_hot_words` VALUES ('107', '15', '京东秒杀', '', '2', '2018-01-30 21:24:30', '2018-01-30 21:25:00');

-- ----------------------------
-- Table structure for yx_item
-- ----------------------------
DROP TABLE IF EXISTS `yx_item`;
CREATE TABLE `yx_item` (
  `id` bigint(20) NOT NULL COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) NOT NULL COMMENT '商品标题',
  `sell_point` varchar(500) DEFAULT NULL COMMENT '商品卖点',
  `promotion` varchar(400) DEFAULT NULL COMMENT '促销信息',
  `specifications` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `price` bigint(20) NOT NULL COMMENT '商品价格，单位为：分',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `barcode` varchar(30) DEFAULT NULL COMMENT '商品条形码',
  `image` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `cid` bigint(10) NOT NULL COMMENT '所属商品主类目',
  `brand` bigint(10) NOT NULL COMMENT '所属品牌的类目',
  `hot_id` bigint(10) DEFAULT NULL COMMENT '所属热门分类,为null表示不是热门的分类商品',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品状态，1-正常，2-下架，3-删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `status` (`status`),
  KEY `updated` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of yx_item
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品类目';

-- ----------------------------
-- Records of yx_item_cat
-- ----------------------------

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
-- Records of yx_item_desc
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规则参数';

-- ----------------------------
-- Records of yx_item_param
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格和商品的关系表';

-- ----------------------------
-- Records of yx_item_param_item
-- ----------------------------

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
-- Records of yx_manage_user
-- ----------------------------

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
-- Records of yx_order
-- ----------------------------

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
-- Records of yx_order_item
-- ----------------------------

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

-- ----------------------------
-- Records of yx_order_shipping
-- ----------------------------

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
-- Records of yx_receiver
-- ----------------------------

-- ----------------------------
-- Table structure for yx_user
-- ----------------------------
DROP TABLE IF EXISTS `yx_user`;
CREATE TABLE `yx_user` (
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of yx_user
-- ----------------------------
INSERT INTO `yx_user` VALUES ('60', 'Tom', 'X03MO1qnZdYdgyfeuILPmQ==', '13756948821', '16347791@163.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('61', 'Jerry', 'X03MO1qnZdYdgyfeuILPmQ==', '17864231106', '1721693585@qq.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('62', 'Lily', 'ICy5YqxZB1uWSwcVLSNLcA==', '15016927481', '133446988@126.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('63', 'Fuyunwang', 'ICy5YqxZB1uWSwcVLSNLcA==', '18236197550', '1561235@sina.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('64', 'zhangsan', 'Y6nw6nu5gFB5a2SehUgYRQ==', '15910073245', '2360889945@qq.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('65', 'lisi', 'Y6nw6nu5gFB5a2SehUgYRQ==', '17833612017', '2368889945@qq.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('66', 'wangwu', 'X03MO1qnZdYdgyfeuILPmQ==', '17862964511', '544233369@qq.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('67', 'zhaoliu', 'Y6nw6nu5gFB5a2SehUgYRQ==', '155530122247', '524229379@qq.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
INSERT INTO `yx_user` VALUES ('68', 'David', 'ICy5YqxZB1uWSwcVLSNLcA==', '18210069481', '2368819945@qq.com', '2018-01-22 15:25:33', '2018-01-22 15:25:33');
