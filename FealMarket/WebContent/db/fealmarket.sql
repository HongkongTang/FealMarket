/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : fealmarket

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-07-29 20:31:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('1', '李宁', '运动之美，世界分享');
INSERT INTO `ad` VALUES ('2', '安踏', '安踏永不止步');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '王海燕', '15066127757', '山东省济南市济北', 'admin');
INSERT INTO `address` VALUES ('4', '2411771853@qq.com', '211314', '山东济南xxx.ddd', '2411771853@qq.com');
INSERT INTO `address` VALUES ('14', 'admin', '211314', '江苏昆山安博院', 'admin');

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', '智能手机');
INSERT INTO `classify` VALUES ('2', '数据线');
INSERT INTO `classify` VALUES ('3', '手机壳');
INSERT INTO `classify` VALUES ('4', '充电器');
INSERT INTO `classify` VALUES ('5', '手机支架');
INSERT INTO `classify` VALUES ('6', '移动电源');
INSERT INTO `classify` VALUES ('7', '数码相机');
INSERT INTO `classify` VALUES ('8', '单反相机');
INSERT INTO `classify` VALUES ('9', '相框');
INSERT INTO `classify` VALUES ('10', '笔记本');
INSERT INTO `classify` VALUES ('11', '平板电脑');
INSERT INTO `classify` VALUES ('12', '台式机');
INSERT INTO `classify` VALUES ('13', '鼠标');
INSERT INTO `classify` VALUES ('14', '键盘');
INSERT INTO `classify` VALUES ('15', 'U盘');
INSERT INTO `classify` VALUES ('16', '网线');
INSERT INTO `classify` VALUES ('17', '男T恤');
INSERT INTO `classify` VALUES ('18', '男短裤');
INSERT INTO `classify` VALUES ('19', '男外套');
INSERT INTO `classify` VALUES ('20', '男长裤');
INSERT INTO `classify` VALUES ('21', '女T恤');
INSERT INTO `classify` VALUES ('22', '女短裤');
INSERT INTO `classify` VALUES ('23', '女外套');
INSERT INTO `classify` VALUES ('24', '女长裤');
INSERT INTO `classify` VALUES ('25', '裙子');
INSERT INTO `classify` VALUES ('26', '睡衣');
INSERT INTO `classify` VALUES ('27', '面膜');
INSERT INTO `classify` VALUES ('28', '精华');
INSERT INTO `classify` VALUES ('29', '防晒');
INSERT INTO `classify` VALUES ('30', '美白');
INSERT INTO `classify` VALUES ('31', '香水');
INSERT INTO `classify` VALUES ('32', '美甲');
INSERT INTO `classify` VALUES ('33', '洗发露');
INSERT INTO `classify` VALUES ('34', '沐浴露');
INSERT INTO `classify` VALUES ('35', '牙膏');
INSERT INTO `classify` VALUES ('36', '护手霜');
INSERT INTO `classify` VALUES ('37', '剃须刀');
INSERT INTO `classify` VALUES ('38', '花露水');
INSERT INTO `classify` VALUES ('39', '高跟鞋');
INSERT INTO `classify` VALUES ('40', '女平板鞋');
INSERT INTO `classify` VALUES ('41', '女运动鞋');
INSERT INTO `classify` VALUES ('42', '女拖鞋');
INSERT INTO `classify` VALUES ('43', '旅行箱');
INSERT INTO `classify` VALUES ('44', '手提包');
INSERT INTO `classify` VALUES ('45', '单肩包');
INSERT INTO `classify` VALUES ('46', '男运动鞋');
INSERT INTO `classify` VALUES ('47', '篮球鞋');
INSERT INTO `classify` VALUES ('48', '男板鞋');
INSERT INTO `classify` VALUES ('49', '男拖鞋');
INSERT INTO `classify` VALUES ('50', '篮球');
INSERT INTO `classify` VALUES ('51', '羽毛球');
INSERT INTO `classify` VALUES ('52', '乒乓球拍');
INSERT INTO `classify` VALUES ('53', '足球');
INSERT INTO `classify` VALUES ('54', '背包');
INSERT INTO `classify` VALUES ('55', '渔具');
INSERT INTO `classify` VALUES ('56', '自行车');
INSERT INTO `classify` VALUES ('57', '电动车');
INSERT INTO `classify` VALUES ('58', '轮滑');
INSERT INTO `classify` VALUES ('59', '滑板');
INSERT INTO `classify` VALUES ('60', '零食');
INSERT INTO `classify` VALUES ('61', '特产');
INSERT INTO `classify` VALUES ('62', '文学图书');
INSERT INTO `classify` VALUES ('63', '考研图书');
INSERT INTO `classify` VALUES ('64', '专业图书');
INSERT INTO `classify` VALUES ('65', '笔');
INSERT INTO `classify` VALUES ('66', '书架');
INSERT INTO `classify` VALUES ('67', '书桌');
INSERT INTO `classify` VALUES ('68', '日记本');
INSERT INTO `classify` VALUES ('69', '其他');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `net_price` double(10,2) NOT NULL,
  `market_price` double(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `des` varchar(1024) NOT NULL,
  `pdate` datetime NOT NULL,
  `yn_hot` varchar(255) NOT NULL,
  `yn_under` varchar(255) NOT NULL,
  `cid` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 20:41:13', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('2', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('3', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('4', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('5', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('6', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('7', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('8', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('9', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('10', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('11', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('12', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('13', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('14', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('15', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('16', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('17', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('18', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('19', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('20', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('21', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('22', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('23', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');
INSERT INTO `product` VALUES ('24', '小米手机', '2988.00', '2999.00', 'xiaomi.jpg', '小米手机是全球顶尖的手机产业', '2018-07-24 00:00:00', 'yes', 'no', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '2411771853@qq.com', '17864308072');
INSERT INTO `user` VALUES ('19', '2411771853@qq.com', '2', '2411771853@qq.com', null);
