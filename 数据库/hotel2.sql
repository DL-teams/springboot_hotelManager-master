/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : hotel2

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 02/06/2022 09:02:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for check_in
-- ----------------------------
DROP TABLE IF EXISTS `check_in`;
CREATE TABLE `check_in`  (
  `check_in_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '入住id',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单号',
  `room_id` int(11) NULL DEFAULT NULL,
  `room_number` int(11) NULL DEFAULT NULL COMMENT '房间号',
  `persons` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住人',
  `ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `check_in_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '入住时间',
  PRIMARY KEY (`check_in_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of check_in
-- ----------------------------
INSERT INTO `check_in` VALUES (2, 1, 2, 202, '测试1', '320684111111114410', '2021-04-15 21:47:03');
INSERT INTO `check_in` VALUES (3, 3, 3, 301, '测试1', '320684111111114410', '2021-04-26 19:49:46');
INSERT INTO `check_in` VALUES (4, 9, 2, 202, 'cyy', '320822199908762315', '2021-05-17 14:58:28');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `commnet_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `comment_account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言账号',
  `comment_grade` int(11) NULL DEFAULT 0 COMMENT '留言等级0-普通1-精选',
  `comment_create_time` datetime(0) NULL DEFAULT NULL COMMENT '留言创建时间',
  `comment_last_modify_time` datetime(0) NULL DEFAULT NULL COMMENT '留言最后修改时间',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言表\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '测试留言', 'user', 0, '2021-01-17 22:06:48', '2021-01-17 22:06:48');
INSERT INTO `comment` VALUES (2, '测试留言111111111111111111111111', 'user', 1, '2021-01-17 22:07:38', '2021-01-17 22:07:38');
INSERT INTO `comment` VALUES (3, 'CSDN是全球知名中文IT技术交流平台,创建于1999年,包含原创博客、精品问答、职业培训、技术论坛、资源下载等产品服务,提供原创、优质、完整内容的专业IT技术开发社区.', 'user', 0, '2021-01-17 23:30:41', '2021-01-17 23:30:41');
INSERT INTO `comment` VALUES (4, 'rnighreijhgoi', 'cyy', 0, '2021-05-17 14:57:26', '2021-05-17 14:57:26');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `customer_login_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户登录账号',
  `customer_login_password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户登录密码',
  `customer_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户姓名',
  `customer_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户手机号',
  `customer_card_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户身份证号',
  `customer_create_time` datetime(0) NULL DEFAULT NULL COMMENT '客户创建时间',
  `customer_last_modify_time` datetime(0) NULL DEFAULT NULL COMMENT '客户最后修改时间',
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户表\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (4, 'user', 'e7750770ce429c9cac9e8b276b78cfbb', '测试1', '13572777279', '320684111111114410', '2021-01-11 23:54:20', '2021-02-25 14:29:57');
INSERT INTO `customer` VALUES (7, 'admin', 'dd35cb5cd75aa29b22704363fc3ac531', 'admin', '13193830520', '434567876543234567', '2021-05-17 11:01:11', '2022-05-23 21:56:17');
INSERT INTO `customer` VALUES (8, 'cyy', 'ba3873f74a5b46a4f93816721dad7345', 'cyy', '17765434567', '320822199908762315', '2021-05-17 14:56:56', '2021-05-17 14:56:56');
INSERT INTO `customer` VALUES (9, 'zhangsan', 'ba3873f74a5b46a4f93816721dad7345', '张三', '15755581678', '342623197709180123', '2022-05-21 22:52:38', '2022-05-21 22:52:38');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_user_role` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_operate_content` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_ip_address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_ip_location` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_system_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_browser_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_create_time` datetime(0) NULL DEFAULT NULL,
  `log_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 393 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (251, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-07 15:48:18', NULL);
INSERT INTO `log` VALUES (252, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:09:34', NULL);
INSERT INTO `log` VALUES (253, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:11:07', NULL);
INSERT INTO `log` VALUES (254, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:11:45', NULL);
INSERT INTO `log` VALUES (255, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:11:47', NULL);
INSERT INTO `log` VALUES (256, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:12:24', NULL);
INSERT INTO `log` VALUES (257, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-08 11:12:28', NULL);
INSERT INTO `log` VALUES (258, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 21:05:51', NULL);
INSERT INTO `log` VALUES (259, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 21:18:54', NULL);
INSERT INTO `log` VALUES (260, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 21:19:38', NULL);
INSERT INTO `log` VALUES (261, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:12:02', NULL);
INSERT INTO `log` VALUES (262, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:12:05', NULL);
INSERT INTO `log` VALUES (263, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:12:09', NULL);
INSERT INTO `log` VALUES (264, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:19:48', NULL);
INSERT INTO `log` VALUES (265, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:22:27', NULL);
INSERT INTO `log` VALUES (266, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:22:34', NULL);
INSERT INTO `log` VALUES (267, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 22:51:12', NULL);
INSERT INTO `log` VALUES (268, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 23:36:00', NULL);
INSERT INTO `log` VALUES (269, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 23:46:15', NULL);
INSERT INTO `log` VALUES (270, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-11 23:53:16', NULL);
INSERT INTO `log` VALUES (271, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 00:07:03', NULL);
INSERT INTO `log` VALUES (272, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 16:58:04', NULL);
INSERT INTO `log` VALUES (273, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 17:02:06', NULL);
INSERT INTO `log` VALUES (274, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-12 17:02:10', NULL);
INSERT INTO `log` VALUES (275, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 15:15:13', NULL);
INSERT INTO `log` VALUES (276, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 21:52:17', NULL);
INSERT INTO `log` VALUES (277, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:12:43', NULL);
INSERT INTO `log` VALUES (278, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:13:27', NULL);
INSERT INTO `log` VALUES (279, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:13:31', NULL);
INSERT INTO `log` VALUES (280, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:20:37', NULL);
INSERT INTO `log` VALUES (281, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:21:48', NULL);
INSERT INTO `log` VALUES (282, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:22:56', NULL);
INSERT INTO `log` VALUES (283, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:24:14', NULL);
INSERT INTO `log` VALUES (284, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:37:14', NULL);
INSERT INTO `log` VALUES (285, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:41:08', NULL);
INSERT INTO `log` VALUES (286, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 22:45:23', NULL);
INSERT INTO `log` VALUES (287, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 23:16:11', NULL);
INSERT INTO `log` VALUES (288, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-01-17 23:32:37', NULL);
INSERT INTO `log` VALUES (289, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-22 09:56:33', NULL);
INSERT INTO `log` VALUES (290, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:15:42', NULL);
INSERT INTO `log` VALUES (291, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:19:50', NULL);
INSERT INTO `log` VALUES (292, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:30:57', NULL);
INSERT INTO `log` VALUES (293, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-02-25 14:31:42', NULL);
INSERT INTO `log` VALUES (294, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-03-15 17:50:58', NULL);
INSERT INTO `log` VALUES (295, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-03-15 17:56:55', NULL);
INSERT INTO `log` VALUES (296, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 18:01:12', NULL);
INSERT INTO `log` VALUES (297, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 19:51:35', NULL);
INSERT INTO `log` VALUES (298, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 20:12:42', NULL);
INSERT INTO `log` VALUES (299, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 20:12:47', NULL);
INSERT INTO `log` VALUES (300, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 20:14:14', NULL);
INSERT INTO `log` VALUES (301, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 21:04:30', NULL);
INSERT INTO `log` VALUES (302, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 21:26:04', NULL);
INSERT INTO `log` VALUES (303, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 21:43:03', NULL);
INSERT INTO `log` VALUES (304, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:17:46', NULL);
INSERT INTO `log` VALUES (305, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:18:14', NULL);
INSERT INTO `log` VALUES (306, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:18:19', NULL);
INSERT INTO `log` VALUES (307, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:24:12', NULL);
INSERT INTO `log` VALUES (308, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:26:01', NULL);
INSERT INTO `log` VALUES (309, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:33:38', NULL);
INSERT INTO `log` VALUES (310, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:36:08', NULL);
INSERT INTO `log` VALUES (311, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:41:57', NULL);
INSERT INTO `log` VALUES (312, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:46:11', NULL);
INSERT INTO `log` VALUES (313, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:55:05', NULL);
INSERT INTO `log` VALUES (314, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 22:59:57', NULL);
INSERT INTO `log` VALUES (315, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:02:53', NULL);
INSERT INTO `log` VALUES (316, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:06:17', NULL);
INSERT INTO `log` VALUES (317, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:09:20', NULL);
INSERT INTO `log` VALUES (318, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-13 23:09:24', NULL);
INSERT INTO `log` VALUES (319, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:10:11', NULL);
INSERT INTO `log` VALUES (320, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:12:08', NULL);
INSERT INTO `log` VALUES (321, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:12:13', NULL);
INSERT INTO `log` VALUES (322, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-14 23:13:30', NULL);
INSERT INTO `log` VALUES (323, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:36:04', NULL);
INSERT INTO `log` VALUES (324, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:41:04', NULL);
INSERT INTO `log` VALUES (325, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:45:18', NULL);
INSERT INTO `log` VALUES (326, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:45:51', NULL);
INSERT INTO `log` VALUES (327, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:45:54', NULL);
INSERT INTO `log` VALUES (328, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 19:46:30', NULL);
INSERT INTO `log` VALUES (329, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:14:56', NULL);
INSERT INTO `log` VALUES (330, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:17:57', NULL);
INSERT INTO `log` VALUES (331, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:48:04', NULL);
INSERT INTO `log` VALUES (332, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:50:23', NULL);
INSERT INTO `log` VALUES (333, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:52:45', NULL);
INSERT INTO `log` VALUES (334, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:57:28', NULL);
INSERT INTO `log` VALUES (335, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 20:58:57', NULL);
INSERT INTO `log` VALUES (336, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:01:35', NULL);
INSERT INTO `log` VALUES (337, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:26:42', NULL);
INSERT INTO `log` VALUES (338, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:43:36', NULL);
INSERT INTO `log` VALUES (339, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:46:36', NULL);
INSERT INTO `log` VALUES (340, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 21:52:23', NULL);
INSERT INTO `log` VALUES (341, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:01:23', NULL);
INSERT INTO `log` VALUES (342, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:03:15', NULL);
INSERT INTO `log` VALUES (343, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:14:56', NULL);
INSERT INTO `log` VALUES (344, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:21:20', NULL);
INSERT INTO `log` VALUES (345, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:28:59', NULL);
INSERT INTO `log` VALUES (346, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:31:26', NULL);
INSERT INTO `log` VALUES (347, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:31:31', NULL);
INSERT INTO `log` VALUES (348, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:32:11', NULL);
INSERT INTO `log` VALUES (349, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:32:31', NULL);
INSERT INTO `log` VALUES (350, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:33:09', NULL);
INSERT INTO `log` VALUES (351, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:33:49', NULL);
INSERT INTO `log` VALUES (352, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:33:53', NULL);
INSERT INTO `log` VALUES (353, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:40:26', NULL);
INSERT INTO `log` VALUES (354, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 8', '2021-04-15 22:48:29', NULL);
INSERT INTO `log` VALUES (355, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 9', '2021-04-26 19:29:57', NULL);
INSERT INTO `log` VALUES (356, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 9', '2021-04-26 19:36:21', NULL);
INSERT INTO `log` VALUES (357, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-04-26 19:42:48', NULL);
INSERT INTO `log` VALUES (358, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-04-26 19:46:13', NULL);
INSERT INTO `log` VALUES (359, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 9', '2021-04-26 19:49:20', NULL);
INSERT INTO `log` VALUES (360, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-05-11 13:14:22', NULL);
INSERT INTO `log` VALUES (361, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 8', '2021-05-12 00:51:35', NULL);
INSERT INTO `log` VALUES (362, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X (iPhone)', 'Mobile Safari', '2021-05-12 21:12:29', NULL);
INSERT INTO `log` VALUES (363, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Mac OS X (iPhone)', 'Mobile Safari', '2021-05-12 21:12:55', NULL);
INSERT INTO `log` VALUES (364, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 08:21:00', NULL);
INSERT INTO `log` VALUES (365, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 08:40:50', NULL);
INSERT INTO `log` VALUES (366, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 08:41:11', NULL);
INSERT INTO `log` VALUES (367, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 13:57:36', NULL);
INSERT INTO `log` VALUES (368, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 14:36:35', NULL);
INSERT INTO `log` VALUES (369, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:38:23', NULL);
INSERT INTO `log` VALUES (370, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:43:20', NULL);
INSERT INTO `log` VALUES (371, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:44:31', NULL);
INSERT INTO `log` VALUES (372, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 14:45:06', NULL);
INSERT INTO `log` VALUES (373, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:45:54', NULL);
INSERT INTO `log` VALUES (374, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:46:25', NULL);
INSERT INTO `log` VALUES (375, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:46:59', NULL);
INSERT INTO `log` VALUES (376, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:47:13', NULL);
INSERT INTO `log` VALUES (377, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:48:31', NULL);
INSERT INTO `log` VALUES (378, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:50:34', NULL);
INSERT INTO `log` VALUES (379, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Windows', 'Chrome 9', '2021-05-14 14:52:04', NULL);
INSERT INTO `log` VALUES (380, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 15:00:46', NULL);
INSERT INTO `log` VALUES (381, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 18:54:59', NULL);
INSERT INTO `log` VALUES (382, 'admin', '超级管理员', '退出登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-14 18:57:18', NULL);
INSERT INTO `log` VALUES (383, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-17 11:03:47', NULL);
INSERT INTO `log` VALUES (384, 'admin', '超级管理员', '用户登录', '192.168.2.240', NULL, 'Mac OS X', 'Chrome 9', '2021-05-17 11:11:37', NULL);
INSERT INTO `log` VALUES (385, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Safari', '2021-05-17 14:57:44', NULL);
INSERT INTO `log` VALUES (386, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Mac OS X', 'Safari', '2021-05-17 14:58:42', NULL);
INSERT INTO `log` VALUES (387, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Mac OS X', 'Safari', '2021-05-17 15:00:59', NULL);
INSERT INTO `log` VALUES (388, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 10', '2022-05-20 11:42:36', NULL);
INSERT INTO `log` VALUES (389, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 10', '2022-05-21 22:54:14', NULL);
INSERT INTO `log` VALUES (390, 'admin', '超级管理员', '退出登录', '127.0.0.1', NULL, 'Windows', 'Chrome 10', '2022-05-21 23:00:17', NULL);
INSERT INTO `log` VALUES (391, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 10', '2022-05-23 21:41:51', NULL);
INSERT INTO `log` VALUES (392, 'admin', '超级管理员', '用户登录', '127.0.0.1', NULL, 'Windows', 'Chrome 10', '2022-05-23 21:51:05', NULL);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户手机',
  `room_type_id` int(11) NULL DEFAULT NULL COMMENT '房间类型ID',
  `room_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
  `order_date` date NULL DEFAULT NULL COMMENT '预定日期',
  `order_days` int(11) NULL DEFAULT NULL COMMENT '预定天数',
  `order_status` int(11) NULL DEFAULT 0 COMMENT '订单状态',
  `order_cost` double NULL DEFAULT NULL COMMENT '订单费用',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '客户ID',
  `idcard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户身份证号',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, '测试1', '13572777279', 1, '商务单人大床房', '2021-04-14', 2, 3, 400, 4, '320684111111114410');
INSERT INTO `order_info` VALUES (3, '测试1', '13572777279', 2, '商务双人标间', '2021-04-26', 6, 3, 1800, 4, '320684111111114410');
INSERT INTO `order_info` VALUES (6, 'admin', '13193830520', 2, '商务双人标间', '2021-05-27', 27, 0, 8100, 7, '434567876543234567');
INSERT INTO `order_info` VALUES (7, 'admin', '13193830520', 2, '商务双人标间', '2021-05-17', 4, 0, 1200, 7, '434567876543234567');
INSERT INTO `order_info` VALUES (8, 'admin', '13193830520', 2, '商务双人标间', '2021-05-28', 1, 0, 300, 7, '434567876543234567');
INSERT INTO `order_info` VALUES (9, 'cyy', '17765434567', 1, '商务单人大床房', '2021-05-17', 36, 1, 7200, 8, '320822199908762315');
INSERT INTO `order_info` VALUES (10, '张三', '15755581678', 1, '商务单人大床房', '2022-05-21', 39, 0, 7800, 9, '342623197709180123');
INSERT INTO `order_info` VALUES (11, '张三', '15755581678', 2, '商务双人标间', '2022-05-23', 32, 0, 9600, 9, '342623197709180123');
INSERT INTO `order_info` VALUES (12, '张三', '15755581678', 1, '商务单人大床房', '2022-05-23', 23, 0, 4600, 9, '342623197709180123');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_parent_id` int(11) NULL DEFAULT NULL,
  `permission_icon` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_create_time` datetime(0) NULL DEFAULT NULL,
  `permission_last_modify_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE,
  INDEX `fk_permission`(`permission_parent_id`) USING BTREE,
  CONSTRAINT `fk_permission` FOREIGN KEY (`permission_parent_id`) REFERENCES `permission` (`permission_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '系统菜单', NULL, NULL, 'fa fa-desktop', '2019-03-26 00:00:00', '2019-03-26 00:00:00');
INSERT INTO `permission` VALUES (2, '系统管理', '', 1, 'fa fa-cog', '2019-03-26 00:00:00', '2019-03-26 00:00:00');
INSERT INTO `permission` VALUES (3, '工作人员管理', '/admin/user', 2, 'fa fa-user', '2019-03-26 00:00:00', '2019-03-26 00:00:00');
INSERT INTO `permission` VALUES (4, '角色管理', '/admin/role', 2, 'fa fa-list', '2019-03-28 00:00:00', '2019-03-28 00:00:00');
INSERT INTO `permission` VALUES (7, '应用管理', '/admin/permission', 2, 'fa fa-tasks', '2019-04-10 18:37:00', '2019-04-10 18:37:00');
INSERT INTO `permission` VALUES (16, '日志管理', '/admin/log', 2, 'fa fa-file-text', '2019-11-04 18:37:00', '2019-11-04 18:37:00');
INSERT INTO `permission` VALUES (17, '客户管理', '/admin/customer', 18, 'fa fa-users', '2021-01-11 18:37:00', '2021-01-11 18:37:00');
INSERT INTO `permission` VALUES (18, '业务管理', '', 1, 'fa fa-diamond', '2021-01-17 18:37:00', '2021-01-17 18:37:00');
INSERT INTO `permission` VALUES (19, '留言管理', '/admin/comment', 18, 'fa fa-comments', '2021-01-17 22:37:00', '2021-01-17 22:37:00');
INSERT INTO `permission` VALUES (20, '房型管理', '/admin/roomtype', 18, 'fa fa-diamond', '2021-01-17 22:37:00', '2021-01-17 22:37:00');
INSERT INTO `permission` VALUES (21, '房间管理', '/admin/roominfo', 18, 'fa fa-hotel', '2021-01-17 22:37:00', '2021-01-17 22:37:00');
INSERT INTO `permission` VALUES (22, '预约订单管理', '/admin/orderinfo', 18, 'fa fa-reorder', '2021-01-17 22:37:00', '2021-01-17 22:37:00');
INSERT INTO `permission` VALUES (23, '入住管理', '/admin/checkin', 18, 'fa fa-id-card', '2021-01-17 22:37:00', '2021-01-17 22:37:00');
INSERT INTO `permission` VALUES (24, '统计分析管理', '/admin/home', 18, 'fa fa-snowflake-o', '2021-01-17 22:37:00', '2021-01-17 22:37:00');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_create_time` datetime(0) NULL DEFAULT NULL,
  `role_last_modify_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '2019-03-28 00:00:00', '2020-12-27 01:12:00');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `role_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_permission_id`) USING BTREE,
  INDEX `fk_role_permission_rs1`(`role_id`) USING BTREE,
  INDEX `fk_role_permission_rs2`(`permission_id`) USING BTREE,
  CONSTRAINT `fk_role_permission_rs1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_role_permission_rs2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 345 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (331, 1, 1);
INSERT INTO `role_permission` VALUES (332, 1, 2);
INSERT INTO `role_permission` VALUES (333, 1, 3);
INSERT INTO `role_permission` VALUES (334, 1, 4);
INSERT INTO `role_permission` VALUES (335, 1, 7);
INSERT INTO `role_permission` VALUES (336, 1, 16);
INSERT INTO `role_permission` VALUES (337, 1, 18);
INSERT INTO `role_permission` VALUES (338, 1, 17);
INSERT INTO `role_permission` VALUES (339, 1, 19);
INSERT INTO `role_permission` VALUES (340, 1, 20);
INSERT INTO `role_permission` VALUES (341, 1, 21);
INSERT INTO `role_permission` VALUES (342, 1, 22);
INSERT INTO `role_permission` VALUES (343, 1, 23);
INSERT INTO `role_permission` VALUES (344, 1, 24);

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `role_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`role_user_id`) USING BTREE,
  INDEX `fk_role_user_rs1`(`role_id`) USING BTREE,
  INDEX `fk_role_user_rs2`(`user_id`) USING BTREE,
  CONSTRAINT `fk_role_user_rs1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_role_user_rs2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (38, 155479343250980, 1);

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info`  (
  `room_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间ID',
  `room_number` int(11) NULL DEFAULT NULL COMMENT '房间号码',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '房间类型ID',
  `room_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
  `room_price` double NULL DEFAULT NULL COMMENT '房间价格',
  `room_status` int(11) NULL DEFAULT 0 COMMENT '房间状态',
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO `room_info` VALUES (1, 201, 1, '商务单人大床房', 200, 0);
INSERT INTO `room_info` VALUES (2, 202, 1, '商务单人大床房', 200, 1);
INSERT INTO `room_info` VALUES (3, 301, 2, '商务双人标间', 300, 0);

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房型编号',
  `type_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房型名称',
  `price` double NULL DEFAULT NULL COMMENT '房型价格',
  `area` int(11) NULL DEFAULT NULL COMMENT '房型面积',
  `bed_num` int(11) NULL DEFAULT NULL COMMENT '房型床数量',
  `bed_size` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房型床大小',
  `window` int(11) NULL DEFAULT NULL COMMENT '房型窗数量',
  `rest` int(11) NULL DEFAULT 10 COMMENT '房型剩余数量',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES (1, '商务单人大床房', 200, 30, 1, '1.8m', 2, 11);
INSERT INTO `room_type` VALUES (2, '商务双人标间', 300, 35, 2, '1.5m', 2, 10);
INSERT INTO `room_type` VALUES (3, '家庭房', 500, 50, 3, '1.8m', 3, 10);
INSERT INTO `room_type` VALUES (4, '商务单人间', 300, 30, 1, '1.8m', 2, 10);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_state` int(11) NOT NULL DEFAULT 1,
  `user_create_time` datetime(0) NULL DEFAULT NULL,
  `user_last_modify_time` datetime(0) NULL DEFAULT NULL,
  `user_true_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (155479343250980, 'admin', 'ba3873f74a5b46a4f93816721dad7345', '13515107277', 1, '2019-10-28 13:52:48', '2021-05-14 14:49:57', '超级管理员');


-- wifi: table
DROP TABLE IF EXISTS `wifi`;
CREATE TABLE `wifi` (
  `wifi_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'WIFI编号',
  `wifi_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'WIFI名称',
  `wifi_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'WIFI密码',
  `wifi_create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `wifi_last_modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`wifi_id`) USING BTREE
) ENGINE=InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- wifi: announcement
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `announcement_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `announcement_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告内容',
  `announcement_create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `announcement_last_modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE=InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `announcement` (announcement_value, announcement_create_time, announcement_last_modify_time) VALUES ('', '2022-08-13 12:11:51', '2022-08-13 12:12:18');
SET FOREIGN_KEY_CHECKS = 1;
