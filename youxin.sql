/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : youxinshop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-16 00:45:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item_attribute
-- ----------------------------
DROP TABLE IF EXISTS `item_attribute`;
CREATE TABLE `item_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品规格id,也是商品规格表',
  `sales_volume` int(11) DEFAULT '0' COMMENT '销售量',
  `comment_number` int(11) DEFAULT '0' COMMENT '评论数量',
  `comment_total` int(11) DEFAULT '0' COMMENT '累计评价',
  `comment_average` decimal(10,0) DEFAULT '0' COMMENT '平均评价',
  `favorite_number` int(11) DEFAULT '0' COMMENT '收藏数',
  `question_number` int(11) DEFAULT NULL COMMENT '提问数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of item_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for item_specification
-- ----------------------------
DROP TABLE IF EXISTS `item_specification`;
CREATE TABLE `item_specification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品规格id,也是商品规格表',
  `weight` varchar(100) NOT NULL DEFAULT '1kg' COMMENT '商品重量',
  `color` varchar(50) NOT NULL DEFAULT '黑色' COMMENT '商品颜色',
  `spec` varchar(150) NOT NULL DEFAULT '官方标配' COMMENT '商品包装方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Records of item_specification
-- ----------------------------

-- ----------------------------
-- Table structure for yx_brand_category
-- ----------------------------
DROP TABLE IF EXISTS `yx_brand_category`;
CREATE TABLE `yx_brand_category` (
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
-- Records of yx_brand_category
-- ----------------------------
INSERT INTO `yx_brand_category` VALUES ('180', '103', '海信', '', '1', '1', '', '1', '2018-01-22 17:27:55', '2018-01-22 17:27:55');
INSERT INTO `yx_brand_category` VALUES ('181', '103', '扬子', '', '1', '1', '', '1', '2018-01-22 17:27:55', '2018-01-22 17:27:55');
INSERT INTO `yx_brand_category` VALUES ('182', '103', '格力', '', '1', '1', '', '1', '2018-01-22 17:27:55', '2018-01-22 17:27:55');
INSERT INTO `yx_brand_category` VALUES ('183', '103', '海尔', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('184', '103', '九阳', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('185', '103', '飞利浦', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('186', '103', '西门子', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('187', '103', '奥克斯', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('188', '103', '美的', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('189', '103', 'TCL', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('190', '103', '康佳', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('191', '104', '华为', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('192', '104', 'Vivo', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('193', '104', '联想', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('194', '104', '魅族', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('195', '104', '锤子', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('196', '104', '索尼', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('197', '104', 'iPhone8S', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('198', '104', 'iPhoneX', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('199', '104', '三星', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('200', '104', '佳能', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('201', '105', '罗技', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('202', '105', '华硕', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('203', '105', 'ThinkPad', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('204', '105', '戴尔', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('205', '105', 'SAMSUNG', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('206', '105', '神舟', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('207', '105', '惠普', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('208', '105', '雷柏', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('209', '106', '网易严选', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('210', '106', '也雅塑', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('211', '106', '禧天龙', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('212', '106', '百露', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('213', '106', '爱丽思', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('214', '106', '金浩家纺', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('215', '106', '水星家纺', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('216', '106', '绝恋床具', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('217', '107', 'AK男装', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('218', '107', '红豆', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('219', '107', '班路尼', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('220', '107', '九牧王', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('221', '107', 'KAMA', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('222', '107', 'KINC', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('223', '107', 'Betu', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('224', '107', 'Evona', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('225', '107', 'MANGO', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('226', '107', '雪莲', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('227', '107', '欧莎', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('228', '107', '谜秀', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('229', '107', '衣池宴', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('230', '108', '雅诗兰黛', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('231', '108', '珂莱欧', '', '1', '1', '', '1', '2018-01-22 17:27:56', '2018-01-22 17:27:56');
INSERT INTO `yx_brand_category` VALUES ('232', '108', 'LG', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('233', '108', '婷美', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('234', '108', '阿道夫', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('235', '108', 'OLay', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('236', '108', '清扬', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('237', '108', '欧莱雅', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('238', '109', '红蜻蜓', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('239', '109', '奥康', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('240', '109', '卖哲', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('241', '109', '皓顿', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('242', '109', '将肯', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('243', '109', '纵邦', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('244', '109', '路派', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('245', '109', '飞跃', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('246', '109', '强人', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('247', '109', '奥伦', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('248', '109', '稻草人', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');
INSERT INTO `yx_brand_category` VALUES ('249', '109', '飞跃', '', '1', '1', '', '1', '2018-01-22 17:27:57', '2018-01-22 17:27:57');

-- ----------------------------
-- Table structure for yx_category
-- ----------------------------
DROP TABLE IF EXISTS `yx_category`;
CREATE TABLE `yx_category` (
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
-- Records of yx_category
-- ----------------------------
INSERT INTO `yx_category` VALUES ('103', '0', '家用电器', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:50');
INSERT INTO `yx_category` VALUES ('104', '0', '手机/运营商/数码', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:52');
INSERT INTO `yx_category` VALUES ('105', '0', '电脑办公', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:54');
INSERT INTO `yx_category` VALUES ('106', '0', '家居/家具/家装/厨具', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:56');
INSERT INTO `yx_category` VALUES ('107', '0', ' 装/女装/童装/内衣', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:57');
INSERT INTO `yx_category` VALUES ('108', '0', '个护化妆/清洁用品/宠物', '', '1', '1', '1', '2018-01-22 15:42:45', '2018-01-22 15:49:59');
INSERT INTO `yx_category` VALUES ('109', '0', '鞋靴/箱包/珠宝/奢侈品', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:01');
INSERT INTO `yx_category` VALUES ('110', '0', '汽车/汽车用品', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:02');
INSERT INTO `yx_category` VALUES ('111', '0', '母婴/玩具乐器', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:04');
INSERT INTO `yx_category` VALUES ('112', '0', '食品/酒类/生鲜/特产', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:06');
INSERT INTO `yx_category` VALUES ('113', '0', '医药保健', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:08');
INSERT INTO `yx_category` VALUES ('114', '0', '图书/音像/电子书', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:10');
INSERT INTO `yx_category` VALUES ('115', '0', '机票/酒店/旅游/生活', '', '1', '1', '1', '2018-01-22 15:42:46', '2018-01-22 15:50:11');

-- ----------------------------
-- Table structure for yx_comment
-- ----------------------------
DROP TABLE IF EXISTS `yx_comment`;
CREATE TABLE `yx_comment` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(30) DEFAULT NULL COMMENT '昵称',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单ID',
  `star` tinyint(4) DEFAULT NULL COMMENT '评论星级：1,2,3,4,5',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `good_count` int(11) DEFAULT '0' COMMENT '好评数',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态：1.显示；0.隐藏',
  `type` tinyint(2) DEFAULT '0' COMMENT '评论类型：1,优质；0,普通',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='评价表';

-- ----------------------------
-- Records of yx_comment
-- ----------------------------

-- ----------------------------
-- Table structure for yx_comment_reply
-- ----------------------------
DROP TABLE IF EXISTS `yx_comment_reply`;
CREATE TABLE `yx_comment_reply` (
  `comment_reply_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论回复ID',
  `comment_id` bigint(20) DEFAULT NULL COMMENT '评论ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(30) DEFAULT NULL COMMENT '昵称',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `good_count` int(11) DEFAULT '0' COMMENT '好评数',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态：1.显示；0.隐藏',
  `type` tinyint(2) DEFAULT '0' COMMENT '评论类型：1,官方回复；0,用户回复',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`comment_reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='评论回复表';

-- ----------------------------
-- Records of yx_comment_reply
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播广告表';

-- ----------------------------
-- Records of yx_content
-- ----------------------------

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
INSERT INTO `yx_hot_words` VALUES ('107', '15', '优信秒杀', '', '2', '2018-01-30 21:24:30', '2018-03-15 23:35:52');

-- ----------------------------
-- Table structure for yx_item
-- ----------------------------
DROP TABLE IF EXISTS `yx_item`;
CREATE TABLE `yx_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) NOT NULL COMMENT '商品标题',
  `promotion` varchar(400) DEFAULT NULL COMMENT '促销信息',
  `sell_point` varchar(500) DEFAULT NULL COMMENT '商品卖点',
  `description` text COMMENT '商品描述',
  `price` bigint(20) NOT NULL COMMENT '商品价格，单位为：分',
  `store_num` int(10) NOT NULL COMMENT '库存数量',
  `images` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品状态，1-正常，2-下架，3-删除',
  `brand_id` bigint(10) NOT NULL COMMENT '商品所属品牌',
  `category_id` bigint(10) NOT NULL COMMENT '所属商品主类目',
  `hot_id` bigint(10) DEFAULT NULL COMMENT '所属热门分类,为null表示不是热门的分类商品',
  `attribute_id` bigint(10) DEFAULT NULL COMMENT '商品属性',
  `specification_id` bigint(10) DEFAULT NULL COMMENT '商品规格',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`category_id`),
  KEY `status` (`status`),
  KEY `updated` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品条目表';

-- ----------------------------
-- Records of yx_item
-- ----------------------------

-- ----------------------------
-- Table structure for yx_order
-- ----------------------------
DROP TABLE IF EXISTS `yx_order`;
CREATE TABLE `yx_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_number` bigint(20) DEFAULT NULL COMMENT '订单编号,系统生成',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `pay_type` tinyint(2) DEFAULT '1' COMMENT '支付方式 0=线下支付，1=在线支付',
  `shipment_time` tinyint(2) DEFAULT NULL COMMENT '配送时间 1=不限送货时间，2=工作日送货，3=双休日、假日送货',
  `shipment_type` tinyint(2) DEFAULT '0' COMMENT '配送方式 0=快递配送（免运费），1=快递配送（运费）',
  `shipment_amount` decimal(10,0) DEFAULT '0' COMMENT '快递费',
  `invoice_type` tinyint(2) DEFAULT NULL COMMENT '支付方式 1=不开发票，2=电子发票，3=普通发票',
  `invoice_title` varchar(64) DEFAULT NULL COMMENT '发票抬头',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `order_amount` decimal(10,0) DEFAULT '0' COMMENT '订单金额',
  `pay_amount` decimal(10,0) DEFAULT NULL COMMENT '支付金额 = 订单金额 + 快递费',
  `buy_number` int(11) DEFAULT NULL COMMENT '商品总数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of yx_order
-- ----------------------------

-- ----------------------------
-- Table structure for yx_order_product
-- ----------------------------
DROP TABLE IF EXISTS `yx_order_product`;
CREATE TABLE `yx_order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单商品ID',
  `order_id` bigint(20) unsigned DEFAULT NULL COMMENT '订单ID',
  `item_id` bigint(20) unsigned DEFAULT NULL COMMENT '商品编号',
  `item_name` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `item_img` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `item_spe_id` bigint(20) unsigned DEFAULT NULL COMMENT '商品规格编号',
  `item_num` int(10) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='订单明细表';

-- ----------------------------
-- Records of yx_order_product
-- ----------------------------

-- ----------------------------
-- Table structure for yx_order_shipment
-- ----------------------------
DROP TABLE IF EXISTS `yx_order_shipment`;
CREATE TABLE `yx_order_shipment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '配送ID',
  `order_id` bigint(20) unsigned DEFAULT NULL COMMENT '订单ID',
  `user_name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `user_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `province_id` int(10) unsigned DEFAULT NULL COMMENT '省份ID',
  `province_name` varchar(64) DEFAULT NULL COMMENT '省份名字',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT '城市ID',
  `city_name` varchar(64) DEFAULT NULL COMMENT '城市名字',
  `district_id` int(10) unsigned DEFAULT NULL COMMENT '区域ID',
  `district_name` varchar(64) DEFAULT NULL COMMENT '区域名字',
  `user_adress` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `user_zipcode` int(6) DEFAULT NULL COMMENT '邮政编码',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='订单配送表';

-- ----------------------------
-- Records of yx_order_shipment
-- ----------------------------

-- ----------------------------
-- Table structure for yx_order_status
-- ----------------------------
DROP TABLE IF EXISTS `yx_order_status`;
CREATE TABLE `yx_order_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单状态ID',
  `order_id` bigint(20) unsigned DEFAULT NULL COMMENT '订单ID',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_status` tinyint(2) DEFAULT NULL COMMENT '操作类型 0=会员，1=后台管理人员，2=异常通知',
  `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='订单状态表';

-- ----------------------------
-- Records of yx_order_status
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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_number` bigint(20) unsigned DEFAULT NULL COMMENT '用户编号',
  `user_name` varchar(30) DEFAULT NULL COMMENT '昵称',
  `login_password` varchar(32) DEFAULT NULL COMMENT '登录密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '加密密码的盐',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `sex` tinyint(1) DEFAULT '0' COMMENT '性别 0=保密/1=男/2=女',
  `age` tinyint(4) DEFAULT '0' COMMENT '年龄',
  `pic_img` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 0=冻结/1=正常',
  `email_is_active` tinyint(1) DEFAULT '0' COMMENT '邮箱激活 0=未激活/1=已激活',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `telephone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  `login_number` bigint(20) DEFAULT '0' COMMENT '登录次数',
  `regeist_time` datetime DEFAULT NULL COMMENT '注册时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '更新者',
  `amount` decimal(10,0) DEFAULT '0' COMMENT '消费额',
  `rank_id` bigint(20) DEFAULT NULL COMMENT '会员等级ID',
  `score` int(11) DEFAULT '0' COMMENT '会员积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of yx_user
-- ----------------------------
