/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : homestead

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-09-21 10:54:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_config`
-- ----------------------------
DROP TABLE IF EXISTS `admin_config`;
CREATE TABLE `admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_config_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_config
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '用户功能', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户管理', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('11', '0', '8', '接口测试', 'fa-sliders', 'api-tester', '2018-09-19 04:12:37', '2018-09-19 04:12:37');
INSERT INTO `admin_menu` VALUES ('12', '0', '9', '文件管理', 'fa-file', 'media', '2018-09-19 04:22:21', '2018-09-19 04:22:21');
INSERT INTO `admin_menu` VALUES ('14', '0', '11', 'Redis管理', 'fa-database', 'redis', '2018-09-19 06:23:43', '2018-09-19 06:23:43');
INSERT INTO `admin_menu` VALUES ('15', '0', '11', '帮助管理', 'fa-gears', '', '2018-09-19 07:41:12', '2018-09-19 07:41:12');
INSERT INTO `admin_menu` VALUES ('16', '15', '12', '脚手架', 'fa-keyboard-o', 'helpers/scaffold', '2018-09-19 07:41:12', '2018-09-19 07:41:12');
INSERT INTO `admin_menu` VALUES ('17', '15', '13', '数据终端', 'fa-database', 'helpers/terminal/database', '2018-09-19 07:41:12', '2018-09-19 07:41:12');
INSERT INTO `admin_menu` VALUES ('18', '15', '14', 'artisan命令', 'fa-terminal', 'helpers/terminal/artisan', '2018-09-19 07:41:12', '2018-09-19 07:41:12');
INSERT INTO `admin_menu` VALUES ('19', '15', '15', '路由管理', 'fa-list-alt', 'helpers/routes', '2018-09-19 07:41:12', '2018-09-19 07:41:12');
INSERT INTO `admin_menu` VALUES ('20', '0', '16', '日志查看', 'fa-database', 'logs', '2018-09-19 07:43:38', '2018-09-19 07:43:38');
INSERT INTO `admin_menu` VALUES ('21', '0', '17', '备份管理', 'fa-copy', 'backup', '2018-09-19 07:45:10', '2018-09-19 07:45:10');
INSERT INTO `admin_menu` VALUES ('22', '0', '18', '配置列表', 'fa-toggle-on', 'config', '2018-09-19 07:46:06', '2018-09-19 07:46:06');
INSERT INTO `admin_menu` VALUES ('23', '0', '19', '任务调度', 'fa-clock-o', 'scheduling', '2018-09-19 07:48:02', '2018-09-19 07:48:02');
INSERT INTO `admin_menu` VALUES ('24', '0', '20', '异常报告', 'fa-bug', 'exceptions', '2018-09-19 07:49:08', '2018-09-19 07:49:08');
INSERT INTO `admin_menu` VALUES ('25', '0', '21', '消息列表', 'fa-paper-plane', 'messages', '2018-09-19 08:35:18', '2018-09-19 08:35:18');

-- ----------------------------
-- Table structure for `admin_messages`
-- ----------------------------
DROP TABLE IF EXISTS `admin_messages`;
CREATE TABLE `admin_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 01:22:05', '2018-09-19 01:22:05');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:22:16', '2018-09-19 01:22:16');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:22:19', '2018-09-19 01:22:19');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:22:20', '2018-09-19 01:22:20');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:22:23', '2018-09-19 01:22:23');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:22:25', '2018-09-19 01:22:25');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:26:31', '2018-09-19 01:26:31');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:26:32', '2018-09-19 01:26:32');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 01:28:05', '2018-09-19 01:28:05');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:28:11', '2018-09-19 01:28:11');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 01:31:13', '2018-09-19 01:31:13');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:31:20', '2018-09-19 01:31:20');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:31:34', '2018-09-19 01:31:34');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:31:36', '2018-09-19 01:31:36');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:31:50', '2018-09-19 01:31:50');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:31:53', '2018-09-19 01:31:53');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:37:29', '2018-09-19 01:37:29');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:40:32', '2018-09-19 01:40:32');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:40:34', '2018-09-19 01:40:34');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:40:36', '2018-09-19 01:40:36');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:40:59', '2018-09-19 01:40:59');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:00', '2018-09-19 01:41:00');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:00', '2018-09-19 01:41:00');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:01', '2018-09-19 01:41:01');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:02', '2018-09-19 01:41:02');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:03', '2018-09-19 01:41:03');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:04', '2018-09-19 01:41:04');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:04', '2018-09-19 01:41:04');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:05', '2018-09-19 01:41:05');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:06', '2018-09-19 01:41:06');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:06', '2018-09-19 01:41:06');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:07', '2018-09-19 01:41:07');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:08', '2018-09-19 01:41:08');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:09', '2018-09-19 01:41:09');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:48', '2018-09-19 01:41:48');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:41:50', '2018-09-19 01:41:50');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:42:00', '2018-09-19 01:42:00');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:42:01', '2018-09-19 01:42:01');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:42:30', '2018-09-19 01:42:30');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:42:34', '2018-09-19 01:42:34');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:42:36', '2018-09-19 01:42:36');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:42:37', '2018-09-19 01:42:37');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:42:44', '2018-09-19 01:42:44');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:45:09', '2018-09-19 01:45:09');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:45:11', '2018-09-19 01:45:11');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:45:13', '2018-09-19 01:45:13');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:45:16', '2018-09-19 01:45:16');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '[]', '2018-09-19 01:50:47', '2018-09-19 01:50:47');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:50:57', '2018-09-19 01:50:57');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 01:51:59', '2018-09-19 01:51:59');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:52:08', '2018-09-19 01:52:08');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-09-19 01:53:33', '2018-09-19 01:53:33');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:53:38', '2018-09-19 01:53:38');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:53:40', '2018-09-19 01:53:40');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:53:47', '2018-09-19 01:53:47');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:24', '2018-09-19 01:56:24');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:24', '2018-09-19 01:56:24');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:25', '2018-09-19 01:56:25');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:26', '2018-09-19 01:56:26');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:29', '2018-09-19 01:56:29');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:50', '2018-09-19 01:56:50');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:52', '2018-09-19 01:56:52');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:54', '2018-09-19 01:56:54');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:56', '2018-09-19 01:56:56');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:56:57', '2018-09-19 01:56:57');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:57:16', '2018-09-19 01:57:16');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:57:18', '2018-09-19 01:57:18');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:57:20', '2018-09-19 01:57:20');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:59:19', '2018-09-19 01:59:19');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 01:59:42', '2018-09-19 01:59:42');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:00:16', '2018-09-19 02:00:16');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:00:18', '2018-09-19 02:00:18');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:00:57', '2018-09-19 02:00:57');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:01:01', '2018-09-19 02:01:01');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:01:08', '2018-09-19 02:01:08');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:01:10', '2018-09-19 02:01:10');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Test\",\"icon\":\"fa-renren\",\"uri\":\"\\/admin\\/test\\/tests\",\"roles\":[\"1\",null],\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\"}', '2018-09-19 02:02:48', '2018-09-19 02:02:48');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:02:49', '2018-09-19 02:02:49');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:02:59', '2018-09-19 02:02:59');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:03:26', '2018-09-19 02:03:26');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Test\",\"icon\":\"fa-renren\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:96\\/admin\\/auth\\/menu\"}', '2018-09-19 02:03:33', '2018-09-19 02:03:33');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:03:33', '2018-09-19 02:03:33');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:03:40', '2018-09-19 02:03:40');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:03:42', '2018-09-19 02:03:42');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:03:45', '2018-09-19 02:03:45');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:03:46', '2018-09-19 02:03:46');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:03:56', '2018-09-19 02:03:56');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:04:05', '2018-09-19 02:04:05');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Test\",\"icon\":\"fa-renren\",\"uri\":null,\"roles\":[null],\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:96\\/admin\\/auth\\/menu\"}', '2018-09-19 02:04:14', '2018-09-19 02:04:14');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:04:14', '2018-09-19 02:04:14');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:04:17', '2018-09-19 02:04:17');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:04:19', '2018-09-19 02:04:19');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:04:22', '2018-09-19 02:04:22');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:04:43', '2018-09-19 02:04:43');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:04:55', '2018-09-19 02:04:55');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-renren\",\"uri\":null,\"roles\":[null],\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:96\\/admin\\/auth\\/menu\"}', '2018-09-19 02:05:12', '2018-09-19 02:05:12');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:05:13', '2018-09-19 02:05:13');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/menu/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\"}', '2018-09-19 02:05:30', '2018-09-19 02:05:30');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:05:31', '2018-09-19 02:05:31');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:05:36', '2018-09-19 02:05:36');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:05:41', '2018-09-19 02:05:41');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\"}', '2018-09-19 02:05:56', '2018-09-19 02:05:56');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:05:57', '2018-09-19 02:05:57');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\"}', '2018-09-19 02:06:12', '2018-09-19 02:06:12');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:06:12', '2018-09-19 02:06:12');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\"}', '2018-09-19 02:06:22', '2018-09-19 02:06:22');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:06:22', '2018-09-19 02:06:22');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/menu/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\"}', '2018-09-19 02:06:34', '2018-09-19 02:06:34');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:06:34', '2018-09-19 02:06:34');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:06:39', '2018-09-19 02:06:39');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:07:21', '2018-09-19 02:07:21');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:07:31', '2018-09-19 02:07:31');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:07:35', '2018-09-19 02:07:35');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:07:42', '2018-09-19 02:07:42');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:07:45', '2018-09-19 02:07:45');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:08:00', '2018-09-19 02:08:00');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2018-09-19 02:08:16', '2018-09-19 02:08:16');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"y0zNW6itKPjQ2id58qlKbNPnnv1GvA5UuFUOOnIV\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2018-09-19 02:08:16', '2018-09-19 02:08:16');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:08:17', '2018-09-19 02:08:17');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:08:17', '2018-09-19 02:08:17');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:08:23', '2018-09-19 02:08:23');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 02:08:39', '2018-09-19 02:08:39');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:09:24', '2018-09-19 02:09:24');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:09:28', '2018-09-19 02:09:28');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:09:30', '2018-09-19 02:09:30');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:09:53', '2018-09-19 02:09:53');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:09:55', '2018-09-19 02:09:55');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:09:58', '2018-09-19 02:09:58');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:00', '2018-09-19 02:10:00');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:02', '2018-09-19 02:10:02');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:03', '2018-09-19 02:10:03');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:08', '2018-09-19 02:10:08');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:11', '2018-09-19 02:10:11');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:12', '2018-09-19 02:10:12');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:14', '2018-09-19 02:10:14');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:15', '2018-09-19 02:10:15');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:17', '2018-09-19 02:10:17');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:10:19', '2018-09-19 02:10:19');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:20:04', '2018-09-19 02:20:04');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:20:15', '2018-09-19 02:20:15');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 02:44:16', '2018-09-19 02:44:16');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 02:44:22', '2018-09-19 02:44:22');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 02:45:29', '2018-09-19 02:45:29');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:45:35', '2018-09-19 02:45:35');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:49:08', '2018-09-19 02:49:08');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 02:50:15', '2018-09-19 02:50:15');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 02:53:17', '2018-09-19 02:53:17');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 02:53:19', '2018-09-19 02:53:19');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 03:05:37', '2018-09-19 03:05:37');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 03:06:12', '2018-09-19 03:06:12');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 03:07:39', '2018-09-19 03:07:39');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 03:07:47', '2018-09-19 03:07:47');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 03:16:44', '2018-09-19 03:16:44');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 03:17:06', '2018-09-19 03:17:06');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"19273\"}', '2018-09-19 03:19:54', '2018-09-19 03:19:54');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"13575\"}', '2018-09-19 03:22:25', '2018-09-19 03:22:25');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 03:22:25', '2018-09-19 03:22:25');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"12012\"}', '2018-09-19 03:22:26', '2018-09-19 03:22:26');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"18181\"}', '2018-09-19 03:22:27', '2018-09-19 03:22:27');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"12109\"}', '2018-09-19 03:22:49', '2018-09-19 03:22:49');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-19 03:28:18', '2018-09-19 03:28:18');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-19 03:28:22', '2018-09-19 03:28:22');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"12109\"}', '2018-09-19 03:28:24', '2018-09-19 03:28:24');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-19 04:06:49', '2018-09-19 04:06:49');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:06:50', '2018-09-19 04:06:50');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:06:51', '2018-09-19 04:06:51');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 04:06:52', '2018-09-19 04:06:52');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"15455\"}', '2018-09-19 04:06:53', '2018-09-19 04:06:53');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 04:06:54', '2018-09-19 04:06:54');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:06:55', '2018-09-19 04:06:55');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:06:56', '2018-09-19 04:06:56');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:06:57', '2018-09-19 04:06:57');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:06:58', '2018-09-19 04:06:58');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:06:59', '2018-09-19 04:06:59');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 04:07:14', '2018-09-19 04:07:14');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-19 04:12:53', '2018-09-19 04:12:53');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:13:04', '2018-09-19 04:13:04');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:13:07', '2018-09-19 04:13:07');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:13:10', '2018-09-19 04:13:10');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:13:12', '2018-09-19 04:13:12');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:13:13', '2018-09-19 04:13:13');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-19 04:16:00', '2018-09-19 04:16:00');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:18:02', '2018-09-19 04:18:02');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:20:47', '2018-09-19 04:20:47');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-19 04:20:56', '2018-09-19 04:20:56');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-09-19 04:20:59', '2018-09-19 04:20:59');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-19 04:21:02', '2018-09-19 04:21:02');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:21:06', '2018-09-19 04:21:06');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:22:45', '2018-09-19 04:22:45');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:22:46', '2018-09-19 04:22:46');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:22:50', '2018-09-19 04:22:50');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:22:53', '2018-09-19 04:22:53');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:22:58', '2018-09-19 04:22:58');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\"}', '2018-09-19 04:23:57', '2018-09-19 04:23:57');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:24:27', '2018-09-19 04:24:27');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:20', '2018-09-19 04:26:20');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:26', '2018-09-19 04:26:26');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:27', '2018-09-19 04:26:27');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:33', '2018-09-19 04:26:33');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:35', '2018-09-19 04:26:35');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:39', '2018-09-19 04:26:39');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:40', '2018-09-19 04:26:40');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:42', '2018-09-19 04:26:42');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:48', '2018-09-19 04:26:48');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:50', '2018-09-19 04:26:50');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:26:54', '2018-09-19 04:26:54');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:27:02', '2018-09-19 04:27:02');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\".gitignore\"}', '2018-09-19 04:27:07', '2018-09-19 04:27:07');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:27:40', '2018-09-19 04:27:40');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:34:27', '2018-09-19 04:34:27');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:34:29', '2018-09-19 04:34:29');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\".gitignore\"}', '2018-09-19 04:34:36', '2018-09-19 04:34:36');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:34:54', '2018-09-19 04:34:54');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\".gitignore\"}', '2018-09-19 04:58:40', '2018-09-19 04:58:40');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:58:46', '2018-09-19 04:58:46');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:58:48', '2018-09-19 04:58:48');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/media/folder', 'POST', '127.0.0.1', '{\"name\":\"ccccccccccccccccccccccc\",\"dir\":\"\\/\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 04:58:59', '2018-09-19 04:58:59');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 04:59:00', '2018-09-19 04:59:00');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\"}', '2018-09-19 05:05:36', '2018-09-19 05:05:36');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:05:43', '2018-09-19 05:05:43');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:05:46', '2018-09-19 05:05:46');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/media/delete', 'DELETE', '127.0.0.1', '{\"files\":[\"ccccccccccccccccccccccc\"],\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 05:09:13', '2018-09-19 05:09:13');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:09:14', '2018-09-19 05:09:14');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:09:53', '2018-09-19 05:09:53');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:09:55', '2018-09-19 05:09:55');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-19 05:19:54', '2018-09-19 05:19:54');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:20:01', '2018-09-19 05:20:01');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:20:04', '2018-09-19 05:20:04');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:20:05', '2018-09-19 05:20:05');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:20:09', '2018-09-19 05:20:09');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:20:12', '2018-09-19 05:20:12');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:20:14', '2018-09-19 05:20:14');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:21:11', '2018-09-19 05:21:11');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:21:15', '2018-09-19 05:21:15');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:21:32', '2018-09-19 05:21:32');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:21:39', '2018-09-19 05:21:39');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:21:42', '2018-09-19 05:21:42');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:21:45', '2018-09-19 05:21:45');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:23:56', '2018-09-19 05:23:56');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:28:02', '2018-09-19 05:28:02');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:28:09', '2018-09-19 05:28:09');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:28:10', '2018-09-19 05:28:10');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2018-09-19 05:33:10', '2018-09-19 05:33:10');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2018-09-19 05:34:09', '2018-09-19 05:34:09');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:50:42', '2018-09-19 05:50:42');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:44', '2018-09-19 05:50:44');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:46', '2018-09-19 05:50:46');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:47', '2018-09-19 05:50:47');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:48', '2018-09-19 05:50:48');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/media', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:50', '2018-09-19 05:50:50');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 05:50:51', '2018-09-19 05:50:51');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:53', '2018-09-19 05:50:53');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:54', '2018-09-19 05:50:54');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:50:55', '2018-09-19 05:50:55');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:53:33', '2018-09-19 05:53:33');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:53:53', '2018-09-19 05:53:53');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:54:28', '2018-09-19 05:54:28');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:55:49', '2018-09-19 05:55:49');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:56:06', '2018-09-19 05:56:06');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:57:30', '2018-09-19 05:57:30');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 05:58:50', '2018-09-19 05:58:50');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:00:10', '2018-09-19 06:00:10');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:02:40', '2018-09-19 06:02:40');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:06:33', '2018-09-19 06:06:33');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 06:07:36', '2018-09-19 06:07:36');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:09:22', '2018-09-19 06:09:22');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:09:56', '2018-09-19 06:09:56');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:14:39', '2018-09-19 06:14:39');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:14:48', '2018-09-19 06:14:48');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:14:53', '2018-09-19 06:14:53');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:16:24', '2018-09-19 06:16:24');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:24:14', '2018-09-19 06:24:14');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 06:24:18', '2018-09-19 06:24:18');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 06:24:20', '2018-09-19 06:24:20');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 07:27:55', '2018-09-19 07:27:55');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:27:59', '2018-09-19 07:27:59');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"conn\":\"default\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:28:18', '2018-09-19 07:28:18');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:28:37', '2018-09-19 07:28:37');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:28:42', '2018-09-19 07:28:42');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:29:11', '2018-09-19 07:29:11');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:29:14', '2018-09-19 07:29:14');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-19 07:34:10', '2018-09-19 07:34:10');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:35:16', '2018-09-19 07:35:16');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 07:35:22', '2018-09-19 07:35:22');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:35:24', '2018-09-19 07:35:24');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 07:35:29', '2018-09-19 07:35:29');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-19 07:35:33', '2018-09-19 07:35:33');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:35:37', '2018-09-19 07:35:37');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:35:44', '2018-09-19 07:35:44');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:35:47', '2018-09-19 07:35:47');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:35:56', '2018-09-19 07:35:56');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:35:57', '2018-09-19 07:35:57');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:36:01', '2018-09-19 07:36:01');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 07:41:17', '2018-09-19 07:41:17');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:41:31', '2018-09-19 07:41:31');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:41:41', '2018-09-19 07:41:41');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:41:56', '2018-09-19 07:41:56');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:42:52', '2018-09-19 07:42:52');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:43:47', '2018-09-19 07:43:47');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 07:46:12', '2018-09-19 07:46:12');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:46:20', '2018-09-19 07:46:20');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:46:28', '2018-09-19 07:46:28');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:46:36', '2018-09-19 07:46:36');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-19 07:46:49', '2018-09-19 07:46:49');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:46:54', '2018-09-19 07:46:54');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 07:49:12', '2018-09-19 07:49:12');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:49:38', '2018-09-19 07:49:38');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:49:57', '2018-09-19 07:49:57');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:50:14', '2018-09-19 07:50:14');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:50:22', '2018-09-19 07:50:22');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"make -h\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 07:50:53', '2018-09-19 07:50:53');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:51:58', '2018-09-19 07:51:58');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:52:37', '2018-09-19 07:52:37');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:52:59', '2018-09-19 07:52:59');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:53:06', '2018-09-19 07:53:06');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/logs', 'GET', '127.0.0.1', '[]', '2018-09-19 07:53:51', '2018-09-19 07:53:51');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:54:18', '2018-09-19 07:54:18');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-19 07:55:42', '2018-09-19 07:55:42');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:55:53', '2018-09-19 07:55:53');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:56:02', '2018-09-19 07:56:02');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:56:18', '2018-09-19 07:56:18');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:56:43', '2018-09-19 07:56:43');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 07:56:52', '2018-09-19 07:56:52');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:57:06', '2018-09-19 07:57:06');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:58:08', '2018-09-19 07:58:08');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-19 07:58:38', '2018-09-19 07:58:38');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:59:25', '2018-09-19 07:59:25');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:59:29', '2018-09-19 07:59:29');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:59:39', '2018-09-19 07:59:39');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 07:59:41', '2018-09-19 07:59:41');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:00:25', '2018-09-19 08:00:25');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:00:33', '2018-09-19 08:00:33');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:00:34', '2018-09-19 08:00:34');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:01:28', '2018-09-19 08:01:28');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:01:38', '2018-09-19 08:01:38');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:02:37', '2018-09-19 08:02:37');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:03:11', '2018-09-19 08:03:11');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2018-09-19 08:03:58', '2018-09-19 08:03:58');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:04:08', '2018-09-19 08:04:08');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:04:18', '2018-09-19 08:04:18');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:04:20', '2018-09-19 08:04:20');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:04:22', '2018-09-19 08:04:22');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:04:25', '2018-09-19 08:04:25');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:04:32', '2018-09-19 08:04:32');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:04:40', '2018-09-19 08:04:40');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:06:10', '2018-09-19 08:06:10');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:16', '2018-09-19 08:08:16');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:22', '2018-09-19 08:08:22');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:26', '2018-09-19 08:08:26');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:28', '2018-09-19 08:08:28');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:30', '2018-09-19 08:08:30');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:40', '2018-09-19 08:08:40');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:44', '2018-09-19 08:08:44');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:08:46', '2018-09-19 08:08:46');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"show databases;\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 08:09:00', '2018-09-19 08:09:00');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:09:08', '2018-09-19 08:09:08');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:09:11', '2018-09-19 08:09:11');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:09:14', '2018-09-19 08:09:14');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:11:23', '2018-09-19 08:11:23');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-19 08:11:33', '2018-09-19 08:11:33');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:14:01', '2018-09-19 08:14:01');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:17:42', '2018-09-19 08:17:42');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:17:45', '2018-09-19 08:17:45');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:17:47', '2018-09-19 08:17:47');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:17:50', '2018-09-19 08:17:50');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:17:54', '2018-09-19 08:17:54');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:17:57', '2018-09-19 08:17:57');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:17:58', '2018-09-19 08:17:58');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:18:03', '2018-09-19 08:18:03');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"show databases;\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 08:18:18', '2018-09-19 08:18:18');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:20:36', '2018-09-19 08:20:36');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:20:38', '2018-09-19 08:20:38');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:20:40', '2018-09-19 08:20:40');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:20:41', '2018-09-19 08:20:41');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 08:26:28', '2018-09-19 08:26:28');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:33', '2018-09-19 08:26:33');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:37', '2018-09-19 08:26:37');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:38', '2018-09-19 08:26:38');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:40', '2018-09-19 08:26:40');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:43', '2018-09-19 08:26:43');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:45', '2018-09-19 08:26:45');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:52', '2018-09-19 08:26:52');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/logs/laravel.log', 'GET', '127.0.0.1', '{\"offset\":\"-42623\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:26:55', '2018-09-19 08:26:55');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/logs/laravel.log', 'GET', '127.0.0.1', '{\"offset\":\"-42623\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:27:32', '2018-09-19 08:27:32');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/logs/laravel.log', 'GET', '127.0.0.1', '{\"offset\":\"-42623\",\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:28:02', '2018-09-19 08:28:02');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:28:05', '2018-09-19 08:28:05');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:28:10', '2018-09-19 08:28:10');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:28:18', '2018-09-19 08:28:18');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2018-09-19 08:35:27', '2018-09-19 08:35:27');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:35:31', '2018-09-19 08:35:31');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2018-09-19 08:35:38', '2018-09-19 08:35:38');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2018-09-19 08:36:52', '2018-09-19 08:36:52');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:38:20', '2018-09-19 08:38:20');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/redis', 'GET', '127.0.0.1', '[]', '2018-09-19 08:38:42', '2018-09-19 08:38:42');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:38:47', '2018-09-19 08:38:47');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/messages', 'GET', '127.0.0.1', '[]', '2018-09-19 08:39:27', '2018-09-19 08:39:27');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:39:38', '2018-09-19 08:39:38');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:39:42', '2018-09-19 08:39:42');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/exceptions', 'GET', '127.0.0.1', '[]', '2018-09-19 08:39:55', '2018-09-19 08:39:55');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:39:58', '2018-09-19 08:39:58');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:40:00', '2018-09-19 08:40:00');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:40:07', '2018-09-19 08:40:07');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:40:13', '2018-09-19 08:40:13');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:40:21', '2018-09-19 08:40:21');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:40:24', '2018-09-19 08:40:24');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:46:08', '2018-09-19 08:46:08');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:49:35', '2018-09-19 08:49:35');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:49:40', '2018-09-19 08:49:40');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"list\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 08:49:54', '2018-09-19 08:49:54');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"route:list\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 08:50:11', '2018-09-19 08:50:11');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 08:55:42', '2018-09-19 08:55:42');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 08:57:18', '2018-09-19 08:57:18');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 08:57:23', '2018-09-19 08:57:23');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:01:25', '2018-09-19 09:01:25');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:02:00', '2018-09-19 09:02:00');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-19 09:02:49', '2018-09-19 09:02:49');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:02:53', '2018-09-19 09:02:53');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-09-19 09:04:02', '2018-09-19 09:04:02');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-09-19 09:04:04', '2018-09-19 09:04:04');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-09-19 09:04:06', '2018-09-19 09:04:06');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-09-19 09:04:09', '2018-09-19 09:04:09');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:05:14', '2018-09-19 09:05:14');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:22:12', '2018-09-19 09:22:12');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:22:16', '2018-09-19 09:22:16');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"package:discover\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 09:22:34', '2018-09-19 09:22:34');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"event:generate\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 09:23:16', '2018-09-19 09:23:16');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2018-09-19 09:24:21', '2018-09-19 09:24:21');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:24:36', '2018-09-19 09:24:36');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:34:13', '2018-09-19 09:34:13');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:34:21', '2018-09-19 09:34:21');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"show databases;\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 09:34:33', '2018-09-19 09:34:33');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"use homestead\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 09:35:07', '2018-09-19 09:35:07');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"use homestead;\",\"_token\":\"HPUEypBBGf4l4n9YCVxJBHCA5SwhMDroQ2mG2IFX\"}', '2018-09-19 09:35:31', '2018-09-19 09:35:31');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2018-09-19 09:43:33', '2018-09-19 09:43:33');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-19 09:43:42', '2018-09-19 09:43:42');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 00:27:34', '2018-09-20 00:27:34');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:28:32', '2018-09-20 00:28:32');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/exceptions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:28:42', '2018-09-20 00:28:42');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:28:49', '2018-09-20 00:28:49');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"type\":\"outbox\"}', '2018-09-20 00:44:05', '2018-09-20 00:44:05');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/messages/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:44:07', '2018-09-20 00:44:07');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/messages', 'POST', '127.0.0.1', '{\"to\":[null],\"title\":\"11\",\"message\":\"111\",\"_token\":\"NUiDFinI3tcVWy4xNmCc6ikSJ9tFfg7mBJbbn8dP\",\"_previous_\":\"http:\\/\\/localhost:96\\/admin\\/messages?&type=outbox\"}', '2018-09-20 00:44:22', '2018-09-20 00:44:22');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"type\":\"outbox\"}', '2018-09-20 00:44:22', '2018-09-20 00:44:22');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"type\":\"outbox\",\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:44:29', '2018-09-20 00:44:29');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"type\":\"outbox\",\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:44:42', '2018-09-20 00:44:42');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:44:55', '2018-09-20 00:44:55');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:44:58', '2018-09-20 00:44:58');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"type\":\"outbox\"}', '2018-09-20 00:45:00', '2018-09-20 00:45:00');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"type\":\"inbox\"}', '2018-09-20 00:45:02', '2018-09-20 00:45:02');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"type\":\"inbox\",\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:45:04', '2018-09-20 00:45:04');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/messages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:45:09', '2018-09-20 00:45:09');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 00:45:12', '2018-09-20 00:45:12');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 05:58:52', '2018-09-20 05:58:52');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:11', '2018-09-20 06:04:11');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:18', '2018-09-20 06:04:18');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:20', '2018-09-20 06:04:20');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/redis', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:22', '2018-09-20 06:04:22');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:26', '2018-09-20 06:04:26');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:27', '2018-09-20 06:04:27');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:30', '2018-09-20 06:04:30');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:04:33', '2018-09-20 06:04:33');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2018-09-20 06:13:39', '2018-09-20 06:13:39');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:13:46', '2018-09-20 06:13:46');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-20 06:14:02', '2018-09-20 06:14:02');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-20 06:14:09', '2018-09-20 06:14:09');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:14:16', '2018-09-20 06:14:16');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-20 06:15:17', '2018-09-20 06:15:17');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:15:24', '2018-09-20 06:15:24');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:15:29', '2018-09-20 06:15:29');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-20 06:28:46', '2018-09-20 06:28:46');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/config', 'GET', '127.0.0.1', '[]', '2018-09-20 06:28:52', '2018-09-20 06:28:52');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-09-20 06:30:50', '2018-09-20 06:30:50');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 06:30:55', '2018-09-20 06:30:55');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:31:18', '2018-09-20 06:31:18');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:31:24', '2018-09-20 06:31:24');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:31:42', '2018-09-20 06:31:42');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:31:56', '2018-09-20 06:31:56');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:36:01', '2018-09-20 06:36:01');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:36:06', '2018-09-20 06:36:06');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:39:45', '2018-09-20 06:39:45');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:40:50', '2018-09-20 06:40:50');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"17153\"}', '2018-09-20 06:43:23', '2018-09-20 06:43:23');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"16130\"}', '2018-09-20 06:44:15', '2018-09-20 06:44:15');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"13240\"}', '2018-09-20 06:44:16', '2018-09-20 06:44:16');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"14732\"}', '2018-09-20 06:44:21', '2018-09-20 06:44:21');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"18721\"}', '2018-09-20 06:45:24', '2018-09-20 06:45:24');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"19873\"}', '2018-09-20 06:45:38', '2018-09-20 06:45:38');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:48:02', '2018-09-20 06:48:02');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"19849\"}', '2018-09-20 06:50:53', '2018-09-20 06:50:53');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:53:51', '2018-09-20 06:53:51');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 06:53:56', '2018-09-20 06:53:56');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"19756\"}', '2018-09-20 06:54:41', '2018-09-20 06:54:41');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"16430\"}', '2018-09-20 06:54:56', '2018-09-20 06:54:56');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"16095\"}', '2018-09-20 06:55:25', '2018-09-20 06:55:25');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"17551\"}', '2018-09-20 06:55:59', '2018-09-20 06:55:59');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"17256\"}', '2018-09-20 06:57:53', '2018-09-20 06:57:53');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"13847\"}', '2018-09-20 06:57:56', '2018-09-20 06:57:56');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"13381\"}', '2018-09-20 06:58:07', '2018-09-20 06:58:07');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"13381\"}', '2018-09-20 06:59:21', '2018-09-20 06:59:21');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"13381\"}', '2018-09-20 07:00:23', '2018-09-20 07:00:23');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:08:41', '2018-09-20 07:08:41');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:08:45', '2018-09-20 07:08:45');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:11:37', '2018-09-20 07:11:37');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:15:20', '2018-09-20 07:15:20');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:17:00', '2018-09-20 07:17:00');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:20:35', '2018-09-20 07:20:35');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"19478\"}', '2018-09-20 07:30:24', '2018-09-20 07:30:24');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"19478\"}', '2018-09-20 07:34:59', '2018-09-20 07:34:59');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-20 07:35:00', '2018-09-20 07:35:00');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-20 07:35:02', '2018-09-20 07:35:02');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-20 07:35:26', '2018-09-20 07:35:26');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-09-20 07:36:35', '2018-09-20 07:36:35');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin', 'GET', '127.0.0.1', '{\"XDEBUG_SESSION_START\":\"16712\"}', '2018-09-20 07:52:40', '2018-09-20 07:52:40');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:53:33', '2018-09-20 07:53:33');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-20 07:57:26', '2018-09-20 07:57:26');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"6tzsseFm1KZBhRmTJcwKbKVLMvc6bnOdu0U77BNM\"}', '2018-09-20 07:57:53', '2018-09-20 07:57:53');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 08:58:19', '2018-09-20 08:58:19');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 09:16:35', '2018-09-20 09:16:35');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-20 09:16:37', '2018-09-20 09:16:37');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 00:44:15', '2018-09-21 00:44:15');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 00:53:06', '2018-09-21 00:53:06');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 00:53:54', '2018-09-21 00:53:54');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 01:01:34', '2018-09-21 01:01:34');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2018-09-21 01:05:55', '2018-09-21 01:05:55');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 01:05:56', '2018-09-21 01:05:56');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 01:10:40', '2018-09-21 01:10:40');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 01:12:51', '2018-09-21 01:12:51');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 01:13:26', '2018-09-21 01:13:26');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 01:17:36', '2018-09-21 01:17:36');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 01:23:27', '2018-09-21 01:23:27');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 02:35:26', '2018-09-21 02:35:26');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-21 02:35:29', '2018-09-21 02:35:29');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-21 02:52:44', '2018-09-21 02:52:44');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-21 02:52:47', '2018-09-21 02:52:47');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', 'Api tester', 'ext.api-tester', null, '/api-tester*', '2018-09-19 04:12:37', '2018-09-19 04:12:37');
INSERT INTO `admin_permissions` VALUES ('7', 'Media manager', 'ext.media-manager', null, '/media*', '2018-09-19 04:22:21', '2018-09-19 04:22:21');
INSERT INTO `admin_permissions` VALUES ('9', 'Redis Manager', 'ext.redis-manager', null, '/redis*', '2018-09-19 06:23:43', '2018-09-19 06:23:43');
INSERT INTO `admin_permissions` VALUES ('10', 'Admin helpers', 'ext.helpers', null, '/helpers/*', '2018-09-19 07:41:12', '2018-09-19 07:41:12');
INSERT INTO `admin_permissions` VALUES ('11', 'Logs', 'ext.log-viewer', null, '/logs*', '2018-09-19 07:43:38', '2018-09-19 07:43:38');
INSERT INTO `admin_permissions` VALUES ('12', 'Backup', 'ext.backup', null, '/backup*', '2018-09-19 07:45:10', '2018-09-19 07:45:10');
INSERT INTO `admin_permissions` VALUES ('13', 'Admin Config', 'ext.config', null, '/config*', '2018-09-19 07:46:06', '2018-09-19 07:46:06');
INSERT INTO `admin_permissions` VALUES ('14', 'Scheduling', 'ext.scheduling', null, '/scheduling*', '2018-09-19 07:48:02', '2018-09-19 07:48:02');
INSERT INTO `admin_permissions` VALUES ('15', 'Exceptions reporter', 'ext.reporter', null, '/exceptions*', '2018-09-19 07:49:08', '2018-09-19 07:49:08');
INSERT INTO `admin_permissions` VALUES ('16', 'Admin messages', 'ext.messages', null, '/messages*', '2018-09-19 08:35:18', '2018-09-19 08:35:18');

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-09-19 01:20:44', '2018-09-19 01:20:44');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$G7jhN9qD0TvLuvRALufbLOtOGWZmzqztBEIlbWKPyIA14P.nqEJ5y', 'liuning', null, 'M4PDbDJjSfGcpY02yyzmzrOKoxCshAU5cQllEZU3EMpefyaIfhbEJwhRufr0', '2018-09-19 01:20:43', '2018-09-19 01:20:43');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `laravel_exceptions`
-- ----------------------------
DROP TABLE IF EXISTS `laravel_exceptions`;
CREATE TABLE `laravel_exceptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` int(11) NOT NULL,
  `trace` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of laravel_exceptions
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_09_13_165114_add_phone_to_users_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_01_04_173148_create_admin_tables', '2');
INSERT INTO `migrations` VALUES ('5', '2017_07_17_040159_create_exceptions_table', '3');
INSERT INTO `migrations` VALUES ('6', '2017_07_17_040159_create_config_table', '4');
INSERT INTO `migrations` VALUES ('7', '2017_07_17_040159_create_messages_table', '5');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('441380237@qq.com', '$2y$10$F1NSEydqMA0r1guGnHjRfOvksOSNgBwW9I5BDaKwnafA/dMnK5ZXS', '2018-09-13 17:25:00');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'liuning', '441380237@qq.com', '$2y$10$QPIAM363aQI5mLiKBVEYm.qKjVcLYXIBAS0tlCxgRRsMDHpXA7zbi', 'OpLm3dfuPDrJlm5ek97DVNSy8eMsM59Py43mc79jByG7tE9tkCRBHeliwfC8', '2018-09-13 17:24:45', '2018-09-13 17:24:45', null);
