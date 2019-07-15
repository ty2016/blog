/*
 Navicat Premium Data Transfer

 Source Server         : blog
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 15/07/2019 23:40:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 0, '新闻管理', 'fa-align-left', 'article', NULL, '2019-06-28 02:24:03', '2019-06-29 18:55:16');
INSERT INTO `admin_menu` VALUES (9, 0, 0, '分类管理', 'fa-align-center', 'categories', NULL, '2019-06-29 18:53:25', '2019-07-15 22:27:07');
INSERT INTO `admin_menu` VALUES (10, 0, 8, 'Media manager', 'fa-file', 'media', NULL, '2019-06-29 23:28:26', '2019-06-29 23:28:26');
INSERT INTO `admin_menu` VALUES (11, 0, 8, 'Helpers', 'fa-gears', '', NULL, '2019-06-29 23:52:09', '2019-06-29 23:52:09');
INSERT INTO `admin_menu` VALUES (12, 11, 9, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2019-06-29 23:52:09', '2019-06-29 23:52:09');
INSERT INTO `admin_menu` VALUES (13, 11, 10, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, '2019-06-29 23:52:09', '2019-06-29 23:52:09');
INSERT INTO `admin_menu` VALUES (14, 11, 11, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2019-06-29 23:52:09', '2019-06-29 23:52:09');
INSERT INTO `admin_menu` VALUES (15, 11, 12, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, '2019-06-29 23:52:09', '2019-06-29 23:52:09');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 433 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 02:15:25', '2019-06-28 02:15:25');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 02:23:36', '2019-06-28 02:23:36');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u65b0\\u95fb\",\"icon\":\"fa-bars\",\"uri\":\"\\/Article\",\"roles\":[null],\"permission\":null,\"_token\":\"DZnAAPcnVR2tIT5UVahGFJSUmBp17ZNqtxdtB3I5\"}', '2019-06-28 02:24:03', '2019-06-28 02:24:03');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 02:24:03', '2019-06-28 02:24:03');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 02:24:14', '2019-06-28 02:24:14');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:25:19', '2019-06-28 02:25:19');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:25:22', '2019-06-28 02:25:22');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u65b0\\u95fb\",\"icon\":\"fa-bars\",\"uri\":\"article\",\"roles\":[null],\"permission\":null,\"_token\":\"DZnAAPcnVR2tIT5UVahGFJSUmBp17ZNqtxdtB3I5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-06-28 02:25:30', '2019-06-28 02:25:30');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 02:25:30', '2019-06-28 02:25:30');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2019-06-28 02:25:37', '2019-06-28 02:25:37');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 02:25:40', '2019-06-28 02:25:40');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 02:25:44', '2019-06-28 02:25:44');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:25:47', '2019-06-28 02:25:47');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:27:05', '2019-06-28 02:27:05');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:29:32', '2019-06-28 02:29:32');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:29:37', '2019-06-28 02:29:37');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:29:39', '2019-06-28 02:29:39');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:29:56', '2019-06-28 02:29:56');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:31:38', '2019-06-28 02:31:38');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:31:47', '2019-06-28 02:31:47');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:32:29', '2019-06-28 02:32:29');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:32:48', '2019-06-28 02:32:48');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:33:11', '2019-06-28 02:33:11');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:33:50', '2019-06-28 02:33:50');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:33:57', '2019-06-28 02:33:57');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:35:11', '2019-06-28 02:35:11');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:35:52', '2019-06-28 02:35:52');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:35:57', '2019-06-28 02:35:57');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:36:37', '2019-06-28 02:36:37');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:37:08', '2019-06-28 02:37:08');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:37:27', '2019-06-28 02:37:27');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:38:18', '2019-06-28 02:38:18');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:38:23', '2019-06-28 02:38:23');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:40:18', '2019-06-28 02:40:18');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:41:05', '2019-06-28 02:41:05');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-28 02:41:33', '2019-06-28 02:41:33');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 02:41:37', '2019-06-28 02:41:37');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/article', 'POST', '127.0.0.1', '{\"catge_id\":\"2\",\"title\":\"234324\",\"sort\":\"23423\",\"source\":\"234234\",\"date\":\"2019-06-27 23:30:35\",\"_token\":\"DZnAAPcnVR2tIT5UVahGFJSUmBp17ZNqtxdtB3I5\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/article\"}', '2019-06-28 02:42:11', '2019-06-28 02:42:11');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-28 02:42:12', '2019-06-28 02:42:12');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-29 14:22:47', '2019-06-29 14:22:47');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 14:22:54', '2019-06-29 14:22:54');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 14:22:58', '2019-06-29 14:22:58');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:24:07', '2019-06-29 14:24:07');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:24:13', '2019-06-29 14:24:13');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:24:30', '2019-06-29 14:24:30');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:25:39', '2019-06-29 14:25:39');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 14:25:46', '2019-06-29 14:25:46');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 14:25:50', '2019-06-29 14:25:50');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 14:25:53', '2019-06-29 14:25:53');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 14:25:56', '2019-06-29 14:25:56');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:26:21', '2019-06-29 14:26:21');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:26:26', '2019-06-29 14:26:26');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:26:56', '2019-06-29 14:26:56');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 14:27:03', '2019-06-29 14:27:03');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-29 16:43:17', '2019-06-29 16:43:17');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 16:43:24', '2019-06-29 16:43:24');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 16:43:27', '2019-06-29 16:43:27');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 16:43:55', '2019-06-29 16:43:55');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 16:44:02', '2019-06-29 16:44:02');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 16:49:53', '2019-06-29 16:49:53');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 16:49:57', '2019-06-29 16:49:57');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 16:54:17', '2019-06-29 16:54:17');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:01:50', '2019-06-29 17:01:50');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:02:02', '2019-06-29 17:02:02');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:02:08', '2019-06-29 17:02:08');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:17:36', '2019-06-29 17:17:36');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:33:55', '2019-06-29 17:33:55');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:34:28', '2019-06-29 17:34:28');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:38:07', '2019-06-29 17:38:07');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:38:23', '2019-06-29 17:38:23');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:39:09', '2019-06-29 17:39:09');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:39:12', '2019-06-29 17:39:12');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:41:03', '2019-06-29 17:41:03');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:41:22', '2019-06-29 17:41:22');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/article', 'POST', '127.0.0.1', '{\"catge_id\":\"2\",\"title\":\"ewrwer\",\"sort\":\"ewrwer\",\"source\":\"ewr\",\"content\":\"<p><img src=\\\"\\/ueditor\\/php\\/upload\\/image\\/20190629\\/1561801305.png\\\" title=\\\"1561801305.png\\\" alt=\\\"111.png\\\"\\/>sefrewfewf<\\/p>\",\"date\":\"2019-06-28 00:35:34\",\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 17:42:18', '2019-06-29 17:42:18');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:42:20', '2019-06-29 17:42:20');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:43:38', '2019-06-29 17:43:38');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/article', 'POST', '127.0.0.1', '{\"cate_id\":\"1\",\"title\":\"23\",\"sort\":\"23\",\"source\":\"232\",\"content\":\"<p><img src=\\\"\\/ueditor\\/php\\/upload\\/image\\/20190629\\/1561801305.png\\\" alt=\\\"1561801305.png\\\"\\/>43454353454<\\/p>\",\"date\":\"2019-06-27 00:00:30\",\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 17:44:08', '2019-06-29 17:44:08');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:44:10', '2019-06-29 17:44:10');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:44:30', '2019-06-29 17:44:30');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/article', 'POST', '127.0.0.1', '{\"cate_id\":\"2\",\"name\":\"2323\",\"sort\":\"232\",\"source\":\"2323\",\"content\":\"<p><img src=\\\"\\/ueditor\\/php\\/upload\\/image\\/20190629\\/1561801305.png\\\" alt=\\\"1561801305.png\\\"\\/><\\/p>\",\"date\":\"2019-06-27 21:30:55\",\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 17:45:00', '2019-06-29 17:45:00');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:45:02', '2019-06-29 17:45:02');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 17:46:45', '2019-06-29 17:46:45');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/article', 'POST', '127.0.0.1', '{\"cate_id\":\"1\",\"name\":\"121\",\"sort\":\"1212\",\"source\":\"1212\",\"content\":\"<p>2112<img src=\\\"\\/ueditor\\/php\\/upload\\/image\\/20190629\\/1561801305.png\\\" alt=\\\"1561801305.png\\\"\\/><\\/p>\",\"date\":\"2019-06-29 17:25:55\",\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 17:47:19', '2019-06-29 17:47:19');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 17:47:20', '2019-06-29 17:47:20');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 17:47:37', '2019-06-29 17:47:37');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 17:47:47', '2019-06-29 17:47:47');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 17:49:09', '2019-06-29 17:49:09');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 17:50:41', '2019-06-29 17:50:41');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 17:50:54', '2019-06-29 17:50:54');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 18:07:13', '2019-06-29 18:07:13');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 18:07:54', '2019-06-29 18:07:54');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:07:58', '2019-06-29 18:07:58');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:08:03', '2019-06-29 18:08:03');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:08:07', '2019-06-29 18:08:07');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 18:09:08', '2019-06-29 18:09:08');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:09:14', '2019-06-29 18:09:14');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:09:19', '2019-06-29 18:09:19');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:09:24', '2019-06-29 18:09:24');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:09:27', '2019-06-29 18:09:27');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:52:55', '2019-06-29 18:52:55');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"categories\",\"roles\":[null],\"permission\":null,\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 18:53:25', '2019-06-29 18:53:25');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-29 18:53:26', '2019-06-29 18:53:26');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:53:32', '2019-06-29 18:53:32');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:53:35', '2019-06-29 18:53:35');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:53:37', '2019-06-29 18:53:37');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 18:53:41', '2019-06-29 18:53:41');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:53:51', '2019-06-29 18:53:51');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:53:51', '2019-06-29 18:53:51');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:53:52', '2019-06-29 18:53:52');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:53:56', '2019-06-29 18:53:56');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:54:59', '2019-06-29 18:54:59');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u65b0\\u95fb\\u7ba1\\u7406\",\"icon\":\"fa-align-left\",\"uri\":\"article\",\"roles\":[null],\"permission\":null,\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-06-29 18:55:16', '2019-06-29 18:55:16');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-29 18:55:17', '2019-06-29 18:55:17');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-29 18:55:20', '2019-06-29 18:55:20');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:55:25', '2019-06-29 18:55:25');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 18:55:26', '2019-06-29 18:55:26');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-06-29 18:56:08', '2019-06-29 18:56:08');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 19:09:13', '2019-06-29 19:09:13');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-06-29 19:11:37', '2019-06-29 19:11:37');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-06-29 19:11:56', '2019-06-29 19:11:56');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-06-29 19:12:09', '2019-06-29 19:12:09');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u65b0\\u95fb\\u52a8\\u6001\",\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 19:12:54', '2019-06-29 19:12:54');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-06-29 19:12:55', '2019-06-29 19:12:55');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u65b0\\u95fb\\u52a8\\u6001\",\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 19:13:47', '2019-06-29 19:13:47');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-06-29 19:13:49', '2019-06-29 19:13:49');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u65b0\\u95fb\\u52a8\\u6001\",\"_token\":\"7DGXxNLcEZ7Phk5cpTuqTnN8C51lmA2NT8biWEhI\"}', '2019-06-29 19:14:07', '2019-06-29 19:14:07');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-06-29 19:14:09', '2019-06-29 19:14:09');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-06-29 21:39:20', '2019-06-29 21:39:20');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:27', '2019-06-29 21:39:27');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:32', '2019-06-29 21:39:32');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:35', '2019-06-29 21:39:35');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:37', '2019-06-29 21:39:37');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:41', '2019-06-29 21:39:41');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:48', '2019-06-29 21:39:48');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:51', '2019-06-29 21:39:51');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:39:52', '2019-06-29 21:39:52');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:43:49', '2019-06-29 21:43:49');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:43:50', '2019-06-29 21:43:50');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:43:52', '2019-06-29 21:43:52');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:43:55', '2019-06-29 21:43:55');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:43:57', '2019-06-29 21:43:57');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 21:44:14', '2019-06-29 21:44:14');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/article/undefined', 'GET', '127.0.0.1', '[]', '2019-06-29 21:44:17', '2019-06-29 21:44:17');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/article/undefined', 'GET', '127.0.0.1', '[]', '2019-06-29 21:44:19', '2019-06-29 21:44:19');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 21:44:51', '2019-06-29 21:44:51');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/article/undefined', 'GET', '127.0.0.1', '[]', '2019-06-29 21:44:55', '2019-06-29 21:44:55');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/article/undefined', 'GET', '127.0.0.1', '[]', '2019-06-29 21:44:57', '2019-06-29 21:44:57');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2019-06-29 21:45:15', '2019-06-29 21:45:15');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:45:20', '2019-06-29 21:45:20');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:45:21', '2019-06-29 21:45:21');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:45:27', '2019-06-29 21:45:27');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/article/1', 'PUT', '127.0.0.1', '{\"cate_id\":\"1\",\"name\":\"121\",\"pic\":\"data:image\\/jpeg;base64,\\/9j\\/4AAQSkZJRgABAQAAAQABAAD\\/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD\\/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD\\/wAARCAB8AQADASIAAhEBAxEB\\/8QAHQAAAQQDAQEAAAAAAAAAAAAABQEEBgcAAwgCCf\\/EAE4QAAECBAMFBQQGBgYGCwAAAAECAwAEBREGEiEHEzFBURQiYZGhCFJxgRUyYrHB0RZCY3KS8CMkM6Lh8UNTc4KE0gkXGCVERoOTlMLT\\/8QAHAEAAQUBAQEAAAAAAAAAAAAAAQACAwQFBgcI\\/8QALxEAAQMCBgICAQMDBQAAAAAAAQACAwQRBRITITFBBlEUIhUHFpEkMmFCUmJxof\\/aAAwDAQACEQMRAD8AdmYCAlKQLJ00Mcwbegqbx3Ns7xaMjbGqSU3u2L+Nj3R8hHY52btgAvVhZQD3lBopsP4jeITVqNsQoeKpqo1GkuYkr8pLpcDakhxvdi4SBmUlCTdOtwTxAvFt2Lw1IJpxc\\/8ASvw+MVFK4CscGtHtcl4Z2gHZoszKaIxVi80Ep7Ub5CFXKgAPEfhF0bH9p9ex\\/UZ+bqjjbUsGUuMSyLBLIKsth1\\/yh87RaJtKqc5jXGGH5F7tykokpLL3JRlu6cthoVHThbhBHD2DcN4Sm5mbw\\/KmWVNABTYVdCBe\\/dHAa9Y0qaN8gDn8rArXxNe6OM3twVN0zJI18rwvaT\\/JgP2sABPIC3GEE4k8VRpmJqyc5RrfH3D5wm\\/+x90Bu1t9T5wna2\\/HzgZI\\/SdmKNb79n6xm\\/8AsfdAbtSOp84ztSOp84Wmz0hmKM779n6xm\\/8AsfdAbtSOp84ztSOp84dpM9I5ijW++wfOE3w\\/1Y9IDGabHM+cZ2hHj5wDCz0lmKNb77B84Tf\\/AGT\\/ABQHEyi1zfKOd4wzKE6KvfgdYWiziyGcoxv\\/ALJ\\/ijN\\/9k\\/xQGM02OZ84ztSDwv5wtFnpDOUaTMHhZXnC9qPj5wFE2L\\/AK1\\/w4QvbUk2BtyhpjYBcol5RntR8fOAlZkC4lU1LpsvmOsKZ1NzZRuPGF7aCdCdIWQN4KXKjZmXEqKVDW9iDyjz2tevGH9WkW5kl9pQQ4Lm3vARHXFqQpSFDKq9rGBf0kiJmjkOvONiJv8AowNNfGAxf7hTm\\/OMS\\/YWC\\/XgdDCuLXugulPZw2sLlJ8YDrs2jsz2tOURqhwjvJJPKwPlHSc5MsSDKnppYQhHFSlBNh43MfNxqfmZR1uYlH1NOtm6VJNik3vcEcOEHMRbSca4pQluvYhnJtkNhO7K7DTnYcb9TCWTU4OJ5M7TZd5ULF9AxLMTcrRaizNrkV5Hy0SpKD+8B\\/hpBoajWOEdhu0D9BsfSUxMOBMjPHss2T+qDbKb+BCY7sQtKkIUFXCrZbEEkHUf59IBIHKyquidSuDBuh+IKqij05yYzWcV3Gr81ERCsIV+Skp2aFRqTbDb7YWkOK1cWCbnlc946C\\/w5gTtBxJ9IV5Ug0shiSJQFX0U4NFfMHhEUVMjNckaAi9+UY9RI4SXaeF0WG4bE6lLXDcqh6hi+vVPuTdVfW2NCnOAPuiMon3EYuVdah\\/3WhPG1wHiSfHU9LeMJIonanPM06ny6n5mYWG2208VH8rXvB7G+y2aw7TG63iucpQKSG5dlt\\/O8tZHLQcLE6XFgTF+MU9MckYAut2Wpqah15nkn\\/KCYMnj+jkqCQPrd08R31f4QWM7qReI5LBuTSG2xkSRcJv4\\/wA9Y9icKj\\/aCJy+yoSssbhHzPC+X8YwThv16awBS+txwNoupRubA8dIKUiVM9RajPFzvytt2ocyeMQz10dK3M8qNo6TrthuQVCwjO2H3h+f86Rrm6YpugytWZzFSyoOacgdILUXDCpmhTc8+jLM5EmWzdf5HqIquxqmDdQnuyOVD0zVrEk6nWMVMLCc1iASAOnj8Y34XoDlUlZiZn\\/6IbspaSeJXcQbqNCWrDrMjKkGalyVZ+uY3MU6nyamidlvdHKgrjc83IN1JbITLuuFtK78wB+fpCPpmJVph6YTlEw3vGvEXsfu9YmU9IMu4bNIQlOVpClt\\/wC001+fCGdZpvbsLSkmkAzUm02EOX5WGYfC4jPh8uZIbWtv\\/wCJZVGgxOuPNy6WjneaDyB1Sb\\/gPWFk0PzpeTLoKyw2XVgcgCB+IiXykk0ioys1nzJYkg2nqF\\/5ZhGnDtNbpNQqzwQAJhxSEJPNsgH7j5w13ljBmsEsqB0uXE\\/RKnPFRtKoAQnqdCT4cfugOidemHkoS2txxZy5Ua6xNaFTBI0+pyD4G6nXlpSQf1LaafIR6wxh6Xodn5rJMTQTbONLK6iG\\/u1ojc889JhaVGalIzlKTLqn2y0JlGcBXEC49Tm4crRoRLziaq1TVoWhxbgbKDx1Oo8uB8PGJ3X5eXq6JczCLqZf3mbjdJ+sPUH5QLqEmp\\/FkpVgQEBsmw5KSDb8PKBB5WJGAu5skGEr1RqBLz9MdqQBIZmkgfbRm733Q3l8OvrxeikpR\\/Vt5vCo8N3aJPT3mJKTblWQEJF1HXmRrGxM0A4XN4LkWvztGEfKKgvc08FOESiWJKOmj4ml5TIVSs4tCmSP1gbXT8iTGuqUCaksTiiy6SUvFJaVbRSf1ok9ZQzVkyS3AEOSMwHUOEXPUph0qeadWmZmW0l5BOVVtdeOsTfueSNjRzYJ2RBaphKXRXJOVacDsu5JOB5Y0BcCbX8yD8ogE1RPpqeakpZJRMrdCARzsdb+UW2ubbd7ySQU8CeMRnD1IEjiWerS09xLh3AvxUbFSvh3rfKJaTyOTRkfId7bIZUE2j4CYocoxVaMhSmW20JmRzzG3eFuRPlGP7OnE7OzUw0oVVpSplxAFyprQAfG1on702H2FSz6UuJc0Wk687wpnLNKbQmyVCxB4W6Rmw+TTtja13u6cI7rnZcz3RbgdePL+bwgnQNOMSqoYLT+mrsiG8khNodfbUnggZVXHhlVb5FMQ2nSM1UptyWbSEraSpbl+DYFr316mO\\/pcXhqIw4HftOy9JwmZNyUqsfA\\/P8ACOvtl221qp7H0tOvpXXZE\\/R6W16LVlAs51tluPjHFfaQCSknjaJLs8xSMOYplpp5d2Hv6B254JJ4\\/EZc3yjQe\\/M1QTUolNyunZREw8lUy9bvHiTqrW\\/3wqJV51tx5YACSba8YaSk8XUpWhQsoAgX01F\\/mI2qnMtwXNPjGQQSbrRiyxgBqhuCMN0LZ7Iv4iq01v1sJLyHnBlUGiP1QCeOY8414dpH\\/WpXXcZ42bcFDZbW3ISanCylDQscy7ai4B1GvKIxLTcztJqjTMu44KFJLBUV6CaUBYW8NfOCuJMRz9dW3s2wc4ZdhvKZ+bbGjTd7pbQRzUOMSyMc3cHdTO+7iTyori+lyeJKy9JbKMIuv0amFTC5ppLqy+7bVRcXoGxY24X7x1HCKzVCrFKmEMVeTdk1LeSwpDqcqkqJ53tbSL\\/qFapuyrB7FLoTTcvMuoUWFNjUqt3ln8zFDSb83UWphypTinX1zPaN6VGySFXv104X4RQqcVMAyg3IUcsW1yEQwtT1CrvPTLV0y31db3v8IlFKZlKPKuSgymXdKlrB5Agfdb1gI3OZVFZVZR4+MMMR1+XplEnJqYUSgNKTYHUqI0A9I5ipqJ8RlDTxdV9MAqI402qzkw4ii4feXKNSLym1rSsFMwAuwuLaaRcNArqZyjSzoWC4WGwvINL2BPw15RyVJaqGpKuBuoxaWzfEipRz6GetunSV5iRx0i9WYf8A04a3aydphXazPNMnK2AkA5rR7TU05gc2oiIIrDR7wUrUR6TV2tO8Rc8I5gwOv9k3IpYupJUONr+MekVC4A1tc84iyptWTeZiE35+kQ7E20V2g1dmTQ0lbVrvAA3F4UdC6Z30CeGBWwJ9ehFxpCfSCgTe\\/nESlqu5NtpdYVdC05k2hyh2adZVMIVdCSQesNdT6Zsn5ApH9Irve54+kKak6TmuR0MRxh999DjiVkBGuvWBNdxBPUijvVRgIU60bJSvUfLroIUVJqkNTC0KPbRcfV2jYtlJuQnyZWVUlbrTLmrliLpUDpcgEX4C8WFhDHktjKiN1aXliwSpbam1LHdUDxHPUXPpHONamDMvuPE99bilkcgSb3ETHY3VW0TNQprzhSp5KVNpKuOTNe3xvf5R0VThTPjBzdiFH2r1VUEngq1+hjz9IDmv1iNiaWWgoKvraNqVvFoOgKI5xzbqdrTZSdKQpqHME9PrQ2qWJ5CjSi5+pzCmpdBAUq2bL8h+F4CNzSnHg0QoFRtfxioNrNYmnsTu0kOqRLS7QOVKrJWbak+MXaHC\\/mOI9IEK\\/wCVxBLT0qibk5tLjLguDqD8LEAj5gRsFXUCQlZMVPssxCJqnJobuRtbeYoSkaq8YmW9csCokEkhQPKGVFEYHlhTO1JvpRziCfOM+lF8LkfOI4l8gWz8PGMW+QL5\\/WK4pvSfcIniGumm0Kdn2322ZlphxDC3LiyzqANOZA8vCOcqXi7ELUu5Kt1RxDL5O8QhVkuAm5B+JgvtVxhMT9RXhpJQZaUcS4HE90qcDeoP7uciIhKthVlDuiOvwqh+NDmduTumkqypHD0zO0CYrxWG0toBbRluXTzPHTS\\/lDGekH5CSkqoVFTU4kuJuLZFa6fwgH\\/egvgXEDr0qKK6hJYCCk3Op4D8TEjqdDk6nTpenEhtplScgsT3RxTpw7piyMWfDIWv4STKl7aMSUySlKaiUkXESqQhS3Er3i08NDnsnTrFxUDEjGIKLL1WXJyOI73Hur6G+sUBP4RcXiEOJWEyqxqD4Q8pOK5vZ1PzLAadepj+rYC7Wc0tx+cadNXwznKku1K\\/sKwjhLZ3U61hxyfKpWXK5JlSk6EqGTUAHQ2vxiuNlOzmrzC2KLJU18zU+6FT044ghAPElSsthwIuDa+kdiSCUsSbDA0S22lFvlYw+ZUAQSQTe\\/COEi8kmjY5km5Pa7efBmCQPag7WzjB7+Gm8NVKjy07JZQVFxrvLXbVQ10jiT2mNjjGyfEcvUaEhw0WqFZZKwP6usHvIzfMK+cd\\/tOC1geXExzJ7e78pL7Lqc5M2Q8KkA0vmElKifM5b+EZ9JUS1FVd5vdMr6aNkBNuFxkqeVYXPDTjEdx04uaoRbSXCEOhRShJOYWI\\/GGjVTmZlRQyFrJ+rl5xtZ7dMu9nW2UnULSoaD8+EdXGzSlDvS47MoJJnLZdjx1FolWG5ZTsy3MLXlQhVz84IS2HJOYa326CXFKtlSLAGDqaJJMy7aJc7taAm56kRbqaxsjctlI4WARNDzqZhMrkIJA15QSpkqTNrVNFWRkjT3oadvuq+UEj9aMM+pP+k530MYT2KNSaaflHZd1GQDuEtp55gNI5\\/ri5lc26qezF++UnrFsfSSibFZ08YB1Sn0qozbT78mla72NiQD4m0WaJxpyXWTwi+ziYdcpTE3MrIHeQlColgm0tJyJItfXWIfLzkvJIDDHcQgWCUm8bvpdFrXPnFaeAPdmASzKROTmZCmkG2fVWsAcYyD1ZpLcpJqCFsHOBY9\\/Q6esNl1psHQHSNS6s2pNlcPjDYoXMdmCYqun21tuLbdSQpBIIPOCezxC04vlH0AllkkuHkCQRr0484klUl6PUn0uTEm2V8CoXTm8TaNkmmQpoDcm2htCBYBKbFX7xPGNp9Vni08qDmEKfInZVtJQF3tzTHv6XQ2hSW1Kyq5RCPpYjRLhhE1ld9HTrGN8Ek3KKlztWOUuNpIWlJIPQ2ig6o5MPVidmH3FLecmFqUpRN\\/rG1vCLOVWOBWoqtAmdZpU4sOvyKFq5lNwfSNPD2\\/FdeyNkywA3OJqbU80rKlq+YnTQ3i0FVPTM4i5PHWIHLTkpJoDMtL7pPQXBPxJjcavfhmHzhlWw1El7KMixUucqoH1UnzjWaoVixSfOIguqAn6yvOENT04q84gbSW6Q3USxnQJyn1eYqa7PS84+p1LgF8uYk5Ceg08oHSaipIA5G3e0MTWYqDMyndTDZcb\\/AFkk3vDFMlSGXC8zLXVe4ClE+nCNiGocyPIQnNBcnmFpR6XmET61ZUgWt1iZGspUSctwYhjdQSgZQmwHLlCOVhKBc3ihLCZnXIRylTNVXbtqn1hhUH5eotoZWkAIdQu4PTWIya02oa3848mrNgXSTf4wo6V8ZzNG6Fl9eGnVEAHnx8IdNrBsbQNbcvxVa\\/WHLSxoOUefEXXrErN0UaXcW+Vv5+McQf8ASA43bqmIcP4Bl5i7NKQuenRcFJW4kBKdPsjnwjp\\/a5tew7sewq7X6sS885dmTlUqAU8\\/xAF+AsL310I06\\/MTF2IazjHENQxNWZlTs5UH1PLUOGY9PhG7g9G4yCQ9Ll8ZqWtYYgd0OpZakFrcPeUvT4Q+FQbQsrSnvHxgQ4y4kXAIEYUEC+bW9tI6wfY3K5DKBsUZTUGkqCrcDe141fS4By2VYcNYEltYtcnwPIxiZZ18BLKcyjrYa39Ya5jXJ8kjGgAuH8ooaoCeKvOENUFtCrzjTKYYrk5pL06aeP7NlSvuEEWdmWPJj+xwrVlpPMSih95gCJqrGqgbu5w\\/lDl1Y3sM3nHg1EniV+cHk7IdoROuE6p\\/8cxub2P7RVmwwnUf\\/YP5w\\/I0cJpr6cb5woyKqQdVGM+lvtr8olI2JbT31WbwhPC3AlKR\\/wDaNiNhO1Ff\\/lSZ+Smx96hDw1qiOI0o5eFDlVNRN8xhDUiB\\/aGJudgm1NSRkwjMqP8AtGv\\/ANI9o9nza04cpwg8kfafZ\\/5oWRvpD8nSH\\/WFATUSb986cIRNSzJuSrURZCfZx2sWu5hwNDquYa\\/BUL\\/2cNqN7CjMC\\/7dP5w9oaOU9+K0lh9wqzVU7HQqjz9J\\/aV5RaI9mjaiTf6NlE\\/vPiN6fZg2oq\\/8NTh\\/xQ\\/KJbtURxWj6eFUi6mv6ozGETPrXcBKvnFwo9lbag59ZulIH2pn8kmHLHsobRjq5NUVP\\/EK\\/wCWAS1N\\/NUQP96pFc06DpfzMee2PHmqL3Psm48zd6qUYX4\\/0ivyjcj2SsY6Z65S0\\/7qz+EHUYOlFLjlCDcPVA9rd95UYZpw6DNHQrfsh4mcPfxPTkf+kqN6PZAq97O40p6bccsqpX3GDrM9KP8APUX+9c3lc2pV7E\\/OMccm0sgBJ846aa9j94au40YI+zKkfeYdNeyFI2yvYydV+7KQtdvpJvkdAy933XKm+nOSTHlapxwWNxHXDPsg4ctd3Fs\\/f7DCPxh237IWC0av4kq7h+DaPuTDhUNHShd5NQ35K45yzZH1owImuIKreEdpM+ybs8bP9NPVR0eLwH4QRY9l3ZM3YPSU++RyVOKIPkIPyh6UJ8qourq5dk22R\\/Hs9NUSt05qTqEu2XW919R1AsNASSk68zbjrwvaDM0lKcyjZIudDx8deEc47MK+3h2eZZcabDbhCVO7tOYDpmte1wNItfaxiFujbN69VpeYKFGSLcusHgtzKlJHiCr0jziaNjZRYL36droYnPceAuMtv+0N\\/aXj6dqTThVISalSlPQFEgMpUe98VEZvhYcorAU7Na6OJ11iTilpQA3uhlSLWAj0qQSkXsb\\/AAjdp5tJgAXmc8xmlLz2nGANktSxxOOpYcbl5RgAuvuJKso0vYczrzI+MXPRvZ3wBT20LqXa6k8kgFS17pBI491H3EnxJhrsVqcmzRnqOpaUPtvqdCSQAoL\\/ACtFnFy4IHLwjbpSJWXuvNMdxSrjqXRtuGoNTdmWz2mhSWMJUwm90qWylakn4qBVaDsrSqVJFK5WmybKkaDdMpR9wjRvlpNrkj4RhmFX4\\/OLOguZdVzPP2cUSzi976wpdygcT4cYGmaIsACY2Jnd2OBEN07KtLLJa+YomlainMUEeMa97a\\/CGSam4g3S4v4GHLc3Tp1KRNOGXcFrOpGZCh0IGo+PCHaRTA99uV6UtK9Da3XrHpII72W3zjUt+VlFHK4mYWBpbVPyjSKo+VZlhKgeQ5QdO3SBe9O0zGU2N\\/jePa5kWBtf5wMcmAo5gbeF41qdzCwV6wdIoF7giRfF\\/q+sYH7HgL\\/GBgd8R5x73h4wNOyGdx5RQPAjL63jzvvEGB2++PnCb0+8IOklcjhEHHAbXtaMCwRYAD4QOLgPP1hd8fegaaQcUR3wHSEExbQaQP3p94QoeHAqA8bwtK6N0+3gVobaQqnAO9xhmiZlkd5wlfwjcmckHLIWwpAPA3gGO3SYtu956xm+IHHTxManpJ7RcsneoPDKeA8Y2FtiXl88+Sld9EDUwMl+kLFLvuhPnHrfm+hPnDPfybpythSDyJjUXspIzA24QdP\\/AAnXIREPEj8zC79XWBpmE24wu\\/Ta\\/wCMHSSJJUJpBIDak2zADXjE32gVA1XYzVJN1ZU5LuS\\/HpvUa\\/KKeXi+dlUhmnNoQpKspdWSoW6ZNLHVOp04xrfx3iiap0zSnqj\\/AFKbQlDzYZbGYXvocvURxL6Z0jrhfaVdaamdGOSFGVSoCc2W1xzjV2JKjew11g1IuSTsy3LzisiFm1+QiVIwjTyM7b6VJKbpNtIvQ0FRIPqvIMXn\\/CuDagc\\/wq+YYUy6lxtSkLGoUlRH3QelcTYklFhbNTWRzSu5iTfopJt8FpPyjx+ikiVXLykfu6RbZhmIM\\/sXNT41hlSbygGyFfp9iYd3etnl9WEOPsTZf7RsDxTBf9EZH\\/XzP8UKcIyHOZmLdL\\/mInFBirtr2VU1+Dc5VH3sb4ketadQj90GJHgvFFTn5pUjUSFpDRcDlj1Atf5+kY3hSloNyHFfEj8BBGSkZaQB7O0lF+JHGLdJhlcyUOmdcLPxDEMNfCWRM3KkJeQOJvCF8DW4OvOBqXvtiMU8k\\/rx0ohFt1yIFkT7TqRfjxMZ2rwEDQ\\/4iM33iPODpN9Jboj2i\\/EesJ2i3ACB3aByBjdLhp5VnJhDAtfMo3v8OphjomjpCyd7\\/wDZ+sZvtPq+seW2qK4SgVlbZIulTkvZBP7wUbeUeJ6SmZBIU9lU0oZkOtnM2R1ubQ0sYOQgQVs33PKf4oXejp\\/ejRIyLs9daVpaaSdXHTlSOvH63haNjsrJpBEvUUOr5XbUlPmRCDGdBKxWzfD3fWE3x93+9A5Syk2UkAxheSDbMIdosPSOREd8fd\\/vRm9+z6wP3qTrmEZvB7whfHalkRLtAtwMJv8AwgW5MoabU64sBCE3MCX8WyKHMjKVuJ5r4RWnnp6YgSGxKuUuHz1YOk3YKXtVGYYBSytaQeICrXjyucW6rO4pSiOusVpUNrFOksW03CiKVNOuVBlbxe4bsJSdMttbm4vcRImsVUxxG8Ky3c5cqgq\\/oDDPl0tgSRup34LWR7lilAmQDeEDyb8TaADVcp7qwhMwkknxAh9vUqF0KGUi97xPFJDMcrDdUpaSaLeRtkQMym\\/AxnaU9DDAvAaZrwhfNufnEwgBF1GGKoyo3tqPnpHnnfnCAAApH6ubW\\/TQfzxhUd5JPCxtHAhfZHe6VNrkW15RNcLzbj9KQXVXyEpHwiEA2cCLaEgfDW0WA5JMUpuWakwUpWgEjqbRr4RKGzZXcLzz9RKX5VAGi1wU8Lpv\\/jCb1XvQLVMO3tfhCl9wH60dqHsGwC8HdSuaTuiW8T7vrChwDgLfOBm\\/cy3vCturXa5trbSHBzD0ozTOHJRHeHp6wu8Hu+sDluLSNDwBMJvV9YkDAQD7UeTfdEt4OnrCZ0+76wO3y9dYTfudYdohLIie8Hu+sZnHu+sDd6vrGb1fWFphHSPtE97bl6xm+GveOosdeIgZvV+8YzeL6wdIJaR9onvxe99TDyTrs\\/IqyyzyCki6m3UpcQR1sdLwA3q+sLvnPe4RG+Fh5SyWRuerjz7ajNuIaZR3ihtAQkAC97DSBVJxDScQSYqFKm0PNKJyrB10PPmPhDCoOLNPm7n\\/AEDh\\/umKP2K1Kck8ZPU5h0iXmi6pxsklNwTqByiPSazhaVFhwqoHvvuF0aZg6mxtz1jUp1KjfNDaXWpUs6VG8aXiW20qBNz1ghocoKijNOxjybgp+XraZ\\/WMD+vHT4wOJPG5uYQkjeDMe4PPj+UIxhrcyqsaHEA9r1XJtS2OxShJccHfI5D8YYU7C9SqzG8kFS5UgkOIccyqTrobQs+osNuPNmymzmSemtolmBm0omZvLoQ03r11VxjynHKl9TVu\\/wCK+uPD\\/wBP8MODx1Dh9nC5VHIw3XqntvqMhuEuP4epaELQDpmcs4g36WUoWg84+7LvLamkATDaylxPMKHGJDsd\\/rO1raxPvC7zNQYlUq\\/ZpSuw\\/uiIftPmXpbGdZU0q1pkDzQD+MMkjDnhp6AWFjuBQUVIKiPkkj+E8M+oHoel\\/wAYm+HZ9yYo8u84q5O8SNehsIoz6TnbX3xi2sGLU5hqSWs3J3h9THR+Pw5J9zsvH\\/KGjRabKW9ovz9YXtCfs+cDzodIzMY7kRgBcDa+y\\/\\/Z\",\"sort\":\"1212\",\"source\":\"1212\",\"content\":\"<p>2112<img src=\\\"\\/ueditor\\/php\\/upload\\/image\\/20190629\\/1561801305.png\\\" alt=\\\"1561801305.png\\\"\\/><\\/p>\",\"date\":\"2019-06-29 17:25:55\",\"_token\":\"vT0IoUqBeZ20Avb9faRTfSUh5rnLnG7PqTVygxR0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/article\"}', '2019-06-29 21:46:00', '2019-06-29 21:46:00');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 21:46:02', '2019-06-29 21:46:02');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:46:10', '2019-06-29 21:46:10');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:46:14', '2019-06-29 21:46:14');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:49:58', '2019-06-29 21:49:58');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:51:56', '2019-06-29 21:51:56');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 21:51:57', '2019-06-29 21:51:57');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 21:52:09', '2019-06-29 21:52:09');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 21:52:30', '2019-06-29 21:52:30');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 21:53:31', '2019-06-29 21:53:31');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 21:53:45', '2019-06-29 21:53:45');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 21:58:31', '2019-06-29 21:58:31');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 21:58:41', '2019-06-29 21:58:41');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 22:41:57', '2019-06-29 22:41:57');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 22:42:08', '2019-06-29 22:42:08');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 22:42:11', '2019-06-29 22:42:11');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 23:30:32', '2019-06-29 23:30:32');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:30:36', '2019-06-29 23:30:36');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:30:52', '2019-06-29 23:30:52');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:31:35', '2019-06-29 23:31:35');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:34:04', '2019-06-29 23:34:04');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:34:18', '2019-06-29 23:34:18');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:34:45', '2019-06-29 23:34:45');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:35:35', '2019-06-29 23:35:35');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:38:34', '2019-06-29 23:38:34');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:40:10', '2019-06-29 23:40:10');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:40:31', '2019-06-29 23:40:31');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:40:42', '2019-06-29 23:40:42');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2019-06-29 23:41:00', '2019-06-29 23:41:00');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:41:21', '2019-06-29 23:41:21');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-06-29 23:42:12', '2019-06-29 23:42:12');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:23', '2019-06-29 23:42:23');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:24', '2019-06-29 23:42:24');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:27', '2019-06-29 23:42:27');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:37', '2019-06-29 23:42:37');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:40', '2019-06-29 23:42:40');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:55', '2019-06-29 23:42:55');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:55', '2019-06-29 23:42:55');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:56', '2019-06-29 23:42:56');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:57', '2019-06-29 23:42:57');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:42:58', '2019-06-29 23:42:58');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"images\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:43:05', '2019-06-29 23:43:05');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"images\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:43:05', '2019-06-29 23:43:05');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"images\",\"view\":\"list\"}', '2019-06-29 23:45:34', '2019-06-29 23:45:34');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:45:39', '2019-06-29 23:45:39');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:45:41', '2019-06-29 23:45:41');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:45:44', '2019-06-29 23:45:44');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:46:30', '2019-06-29 23:46:30');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/images\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:46:36', '2019-06-29 23:46:36');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/images\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:46:41', '2019-06-29 23:46:41');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:47:17', '2019-06-29 23:47:17');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:47:22', '2019-06-29 23:47:22');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2019-06-29 23:48:05', '2019-06-29 23:48:05');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:48:13', '2019-06-29 23:48:13');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/images\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:48:17', '2019-06-29 23:48:17');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/images\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-06-29 23:48:21', '2019-06-29 23:48:21');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-29 23:52:40', '2019-06-29 23:52:40');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-29 23:58:15', '2019-06-29 23:58:15');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-15 20:02:29', '2019-07-15 20:02:29');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:02:37', '2019-07-15 20:02:37');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:02:45', '2019-07-15 20:02:45');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:02:50', '2019-07-15 20:02:50');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:03:15', '2019-07-15 20:03:15');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:03:25', '2019-07-15 20:03:25');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:03:28', '2019-07-15 20:03:28');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:03:33', '2019-07-15 20:03:33');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"user\",\"name\":\"aa\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"1TBFVVLxx8Ew8U65cjmimjUsjetcDA3CASVa43CN\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/users\"}', '2019-07-15 20:04:08', '2019-07-15 20:04:08');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-07-15 20:04:10', '2019-07-15 20:04:10');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:04:18', '2019-07-15 20:04:18');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:04:27', '2019-07-15 20:04:27');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:04:43', '2019-07-15 20:04:43');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:05:19', '2019-07-15 20:05:19');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:05:23', '2019-07-15 20:05:23');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:05:29', '2019-07-15 20:05:29');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:05:43', '2019-07-15 20:05:43');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:06:28', '2019-07-15 20:06:28');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:06:38', '2019-07-15 20:06:38');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:06:41', '2019-07-15 20:06:41');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:06:48', '2019-07-15 20:06:48');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:06:52', '2019-07-15 20:06:52');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:06:54', '2019-07-15 20:06:54');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:06:57', '2019-07-15 20:06:57');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"user\",\"permissions\":[\"4\",\"6\",\"7\",null],\"_token\":\"1TBFVVLxx8Ew8U65cjmimjUsjetcDA3CASVa43CN\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/roles\"}', '2019-07-15 20:07:52', '2019-07-15 20:07:52');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-07-15 20:07:54', '2019-07-15 20:07:54');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:08:03', '2019-07-15 20:08:03');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-15 20:08:32', '2019-07-15 20:08:32');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:08:47', '2019-07-15 20:08:47');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:08:51', '2019-07-15 20:08:51');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:08:55', '2019-07-15 20:08:55');
INSERT INTO `admin_operation_log` VALUES (242, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-15 20:09:16', '2019-07-15 20:09:16');
INSERT INTO `admin_operation_log` VALUES (243, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:09:22', '2019-07-15 20:09:22');
INSERT INTO `admin_operation_log` VALUES (244, 2, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:09:25', '2019-07-15 20:09:25');
INSERT INTO `admin_operation_log` VALUES (245, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:09:28', '2019-07-15 20:09:28');
INSERT INTO `admin_operation_log` VALUES (246, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:09:29', '2019-07-15 20:09:29');
INSERT INTO `admin_operation_log` VALUES (247, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:09:51', '2019-07-15 20:09:51');
INSERT INTO `admin_operation_log` VALUES (248, 2, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:09:55', '2019-07-15 20:09:55');
INSERT INTO `admin_operation_log` VALUES (249, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:10:32', '2019-07-15 20:10:32');
INSERT INTO `admin_operation_log` VALUES (250, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:10:41', '2019-07-15 20:10:41');
INSERT INTO `admin_operation_log` VALUES (251, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:10:46', '2019-07-15 20:10:46');
INSERT INTO `admin_operation_log` VALUES (252, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:10:49', '2019-07-15 20:10:49');
INSERT INTO `admin_operation_log` VALUES (253, 2, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:10:52', '2019-07-15 20:10:52');
INSERT INTO `admin_operation_log` VALUES (254, 2, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"user\",\"permissions\":[\"6\",null],\"_token\":\"rNbtAnq3ov5ONCaSWteVrF8LrtWtNuAz38kFwEby\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/roles\"}', '2019-07-15 20:11:07', '2019-07-15 20:11:07');
INSERT INTO `admin_operation_log` VALUES (255, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-07-15 20:11:09', '2019-07-15 20:11:09');
INSERT INTO `admin_operation_log` VALUES (256, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-07-15 20:11:15', '2019-07-15 20:11:15');
INSERT INTO `admin_operation_log` VALUES (257, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-07-15 20:11:17', '2019-07-15 20:11:17');
INSERT INTO `admin_operation_log` VALUES (258, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:11:25', '2019-07-15 20:11:25');
INSERT INTO `admin_operation_log` VALUES (259, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:11:27', '2019-07-15 20:11:27');
INSERT INTO `admin_operation_log` VALUES (260, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:11:28', '2019-07-15 20:11:28');
INSERT INTO `admin_operation_log` VALUES (261, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:11:30', '2019-07-15 20:11:30');
INSERT INTO `admin_operation_log` VALUES (262, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:11:31', '2019-07-15 20:11:31');
INSERT INTO `admin_operation_log` VALUES (263, 2, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:11:38', '2019-07-15 20:11:38');
INSERT INTO `admin_operation_log` VALUES (264, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:13:11', '2019-07-15 20:13:11');
INSERT INTO `admin_operation_log` VALUES (265, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:13:14', '2019-07-15 20:13:14');
INSERT INTO `admin_operation_log` VALUES (266, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:13:20', '2019-07-15 20:13:20');
INSERT INTO `admin_operation_log` VALUES (267, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:13:23', '2019-07-15 20:13:23');
INSERT INTO `admin_operation_log` VALUES (268, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:15:58', '2019-07-15 20:15:58');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-15 20:16:07', '2019-07-15 20:16:07');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:14', '2019-07-15 20:16:14');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:17', '2019-07-15 20:16:17');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"user\",\"name\":\"aa\",\"password\":\"$2y$10$bjxrdoW1Auqq6gpvJ2Ny7.hOU5i4WPmKykanhfDz3BVMTKL4thpd6\",\"password_confirmation\":\"$2y$10$bjxrdoW1Auqq6gpvJ2Ny7.hOU5i4WPmKykanhfDz3BVMTKL4thpd6\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/users\"}', '2019-07-15 20:16:27', '2019-07-15 20:16:27');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-07-15 20:16:28', '2019-07-15 20:16:28');
INSERT INTO `admin_operation_log` VALUES (274, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-07-15 20:16:33', '2019-07-15 20:16:33');
INSERT INTO `admin_operation_log` VALUES (275, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:37', '2019-07-15 20:16:37');
INSERT INTO `admin_operation_log` VALUES (276, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:38', '2019-07-15 20:16:38');
INSERT INTO `admin_operation_log` VALUES (277, 2, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:39', '2019-07-15 20:16:39');
INSERT INTO `admin_operation_log` VALUES (278, 2, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:39', '2019-07-15 20:16:39');
INSERT INTO `admin_operation_log` VALUES (279, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:43', '2019-07-15 20:16:43');
INSERT INTO `admin_operation_log` VALUES (280, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:46', '2019-07-15 20:16:46');
INSERT INTO `admin_operation_log` VALUES (281, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 20:16:47', '2019-07-15 20:16:47');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:49:29', '2019-07-15 21:49:29');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:49:34', '2019-07-15 21:49:34');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:49:41', '2019-07-15 21:49:41');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:49:53', '2019-07-15 21:49:53');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:51:20', '2019-07-15 21:51:20');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:51:20', '2019-07-15 21:51:20');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:51:25', '2019-07-15 21:51:25');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 21:51:37', '2019-07-15 21:51:37');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-07-15 21:51:39', '2019-07-15 21:51:39');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\"}', '2019-07-15 21:54:39', '2019-07-15 21:54:39');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-07-15 21:54:41', '2019-07-15 21:54:41');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-07-15 21:55:14', '2019-07-15 21:55:14');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"rewr\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\"}', '2019-07-15 21:55:21', '2019-07-15 21:55:21');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 21:55:22', '2019-07-15 21:55:22');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 21:56:56', '2019-07-15 21:56:56');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 21:57:15', '2019-07-15 21:57:15');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:57:21', '2019-07-15 21:57:21');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:57:25', '2019-07-15 21:57:25');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/categories/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:57:28', '2019-07-15 21:57:28');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 21:57:35', '2019-07-15 21:57:35');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:09:44', '2019-07-15 22:09:44');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:10:15', '2019-07-15 22:10:15');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:10:22', '2019-07-15 22:10:22');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:10:23', '2019-07-15 22:10:23');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/categories/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:10:28', '2019-07-15 22:10:28');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:10:33', '2019-07-15 22:10:33');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:10:38', '2019-07-15 22:10:38');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:10:42', '2019-07-15 22:10:42');
INSERT INTO `admin_operation_log` VALUES (310, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-15 22:21:48', '2019-07-15 22:21:48');
INSERT INTO `admin_operation_log` VALUES (311, 2, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:21:53', '2019-07-15 22:21:53');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:26:14', '2019-07-15 22:26:14');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 22:26:29', '2019-07-15 22:26:29');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:26:45', '2019-07-15 22:26:45');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:26:50', '2019-07-15 22:26:50');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-align-center\",\"uri\":\"categories\",\"roles\":[null],\"permission\":null,\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2019-07-15 22:27:06', '2019-07-15 22:27:06');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-15 22:27:08', '2019-07-15 22:27:08');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-15 22:27:12', '2019-07-15 22:27:12');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:27:20', '2019-07-15 22:27:20');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:27:36', '2019-07-15 22:27:36');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"4\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 22:28:01', '2019-07-15 22:28:01');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-15 22:28:02', '2019-07-15 22:28:02');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"4\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\"}', '2019-07-15 22:28:38', '2019-07-15 22:28:38');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-15 22:28:39', '2019-07-15 22:28:39');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"4\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\"}', '2019-07-15 22:30:43', '2019-07-15 22:30:43');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-15 22:30:45', '2019-07-15 22:30:45');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:30:56', '2019-07-15 22:30:56');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:32:43', '2019-07-15 22:32:43');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:32:44', '2019-07-15 22:32:44');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:32:48', '2019-07-15 22:32:48');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"5\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 22:33:16', '2019-07-15 22:33:16');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-15 22:33:17', '2019-07-15 22:33:17');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"5\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\"}', '2019-07-15 22:35:19', '2019-07-15 22:35:19');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/categories/1', 'GET', '127.0.0.1', '[]', '2019-07-15 22:35:20', '2019-07-15 22:35:20');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/categories/1', 'GET', '127.0.0.1', '[]', '2019-07-15 22:35:40', '2019-07-15 22:35:40');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:35:45', '2019-07-15 22:35:45');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:35:53', '2019-07-15 22:35:53');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:35:57', '2019-07-15 22:35:57');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"22\",\"name\":\"\\u65b0\\u95ee\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 22:36:10', '2019-07-15 22:36:10');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 22:36:12', '2019-07-15 22:36:12');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:42:12', '2019-07-15 22:42:12');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:42:50', '2019-07-15 22:42:50');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:42:52', '2019-07-15 22:42:52');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:42:56', '2019-07-15 22:42:56');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"22\",\"pid\":\"23\",\"name\":\"234234\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 22:43:05', '2019-07-15 22:43:05');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 22:43:07', '2019-07-15 22:43:07');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:43:11', '2019-07-15 22:43:11');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:43:52', '2019-07-15 22:43:52');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:43:59', '2019-07-15 22:43:59');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 22:52:56', '2019-07-15 22:52:56');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:53:00', '2019-07-15 22:53:00');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:53:20', '2019-07-15 22:53:20');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:53:25', '2019-07-15 22:53:25');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"off\",\"is_display\":\"off\",\"sort\":null,\"pid\":\"0\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 22:53:34', '2019-07-15 22:53:34');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/categories/1', 'GET', '127.0.0.1', '[]', '2019-07-15 22:53:36', '2019-07-15 22:53:36');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:55:21', '2019-07-15 22:55:21');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"1\",\"pid\":\"0\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\\/1\"}', '2019-07-15 22:55:37', '2019-07-15 22:55:37');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/categories/1', 'GET', '127.0.0.1', '[]', '2019-07-15 22:55:38', '2019-07-15 22:55:38');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:55:45', '2019-07-15 22:55:45');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 22:55:50', '2019-07-15 22:55:50');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2019-07-15 22:56:20', '2019-07-15 22:56:20');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '[]', '2019-07-15 22:56:37', '2019-07-15 22:56:37');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"22\",\"pid\":\"0\",\"name\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\"}', '2019-07-15 23:00:31', '2019-07-15 23:00:31');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/categories/2', 'GET', '127.0.0.1', '[]', '2019-07-15 23:00:32', '2019-07-15 23:00:32');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:00:38', '2019-07-15 23:00:38');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:00:54', '2019-07-15 23:00:54');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:01:04', '2019-07-15 23:01:04');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/categories/1', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"1\",\"pid\":\"0\",\"name\":\"\\u65b0\\u95fb\\u52a8\\u6001\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 23:01:15', '2019-07-15 23:01:15');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/categories/1', 'GET', '127.0.0.1', '[]', '2019-07-15 23:01:17', '2019-07-15 23:01:17');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:01:21', '2019-07-15 23:01:21');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:01:25', '2019-07-15 23:01:25');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/categories/2', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"22\",\"pid\":\"1\",\"name\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 23:01:32', '2019-07-15 23:01:32');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/categories/2', 'GET', '127.0.0.1', '[]', '2019-07-15 23:01:34', '2019-07-15 23:01:34');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:01:37', '2019-07-15 23:01:37');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:02:01', '2019-07-15 23:02:01');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:02:04', '2019-07-15 23:02:04');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:02:07', '2019-07-15 23:02:07');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"2\",\"pid\":\"1\",\"name\":\"\\u901a\\u77e5\\u516c\\u544a\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 23:02:24', '2019-07-15 23:02:24');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:02:25', '2019-07-15 23:02:25');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:03:15', '2019-07-15 23:03:15');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:03:16', '2019-07-15 23:03:16');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:03:30', '2019-07-15 23:03:30');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:07:03', '2019-07-15 23:07:03');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:07:21', '2019-07-15 23:07:21');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:07:32', '2019-07-15 23:07:32');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:07:39', '2019-07-15 23:07:39');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:09:32', '2019-07-15 23:09:32');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:11:21', '2019-07-15 23:11:21');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:12:18', '2019-07-15 23:12:18');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:12:53', '2019-07-15 23:12:53');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5bb6\\u6559\\u5fc3\\u7406\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\"}', '2019-07-15 23:13:31', '2019-07-15 23:13:31');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:13:32', '2019-07-15 23:13:32');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:14:07', '2019-07-15 23:14:07');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5bb6\\u6559\\u5fc3\\u7406\",\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"0\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\"}', '2019-07-15 23:14:44', '2019-07-15 23:14:44');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:14:46', '2019-07-15 23:14:46');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:15:26', '2019-07-15 23:15:26');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:16:19', '2019-07-15 23:16:19');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:16:30', '2019-07-15 23:16:30');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:16:54', '2019-07-15 23:16:54');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:17:53', '2019-07-15 23:17:53');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:18:26', '2019-07-15 23:18:26');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:18:46', '2019-07-15 23:18:46');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"aa\",\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"2\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\"}', '2019-07-15 23:19:01', '2019-07-15 23:19:01');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:19:02', '2019-07-15 23:19:02');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5bb6\\u6559\\u5fc3\\u7406\",\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"0\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\"}', '2019-07-15 23:19:19', '2019-07-15 23:19:19');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:19:21', '2019-07-15 23:19:21');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/categories/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:19:27', '2019-07-15 23:19:27');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/categories/4', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"2\",\"pid\":\"5\",\"name\":\"\\u5fc3\\u7075\\u4e4b\\u7ea6\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 23:19:39', '2019-07-15 23:19:39');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/categories/4', 'GET', '127.0.0.1', '[]', '2019-07-15 23:19:41', '2019-07-15 23:19:41');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:19:44', '2019-07-15 23:19:44');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:20:10', '2019-07-15 23:20:10');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:20:12', '2019-07-15 23:20:12');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:20:16', '2019-07-15 23:20:16');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:20:21', '2019-07-15 23:20:21');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:20:51', '2019-07-15 23:20:51');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:28:19', '2019-07-15 23:28:19');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:28:23', '2019-07-15 23:28:23');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:28:35', '2019-07-15 23:28:35');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/article/undefined', 'GET', '127.0.0.1', '[]', '2019-07-15 23:28:44', '2019-07-15 23:28:44');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/article/undefined', 'GET', '127.0.0.1', '[]', '2019-07-15 23:28:46', '2019-07-15 23:28:46');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:29:11', '2019-07-15 23:29:11');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:38:58', '2019-07-15 23:38:58');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5bb6\\u5ead\\u6559\\u80b2\",\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"2\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\"}', '2019-07-15 23:39:15', '2019-07-15 23:39:15');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-07-15 23:39:16', '2019-07-15 23:39:16');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/categories/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:39:22', '2019-07-15 23:39:22');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:39:25', '2019-07-15 23:39:25');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/categories/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:39:29', '2019-07-15 23:39:29');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:39:32', '2019-07-15 23:39:32');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/categories/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:39:35', '2019-07-15 23:39:35');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/categories/6', 'PUT', '127.0.0.1', '{\"is_menu\":\"on\",\"is_display\":\"on\",\"sort\":\"2\",\"pid\":\"5\",\"name\":\"\\u5bb6\\u5ead\\u6559\\u80b2\",\"_token\":\"vhfhdg4JYTWnVXe0o3iSWLqnt9IHwhH1wVNBbXV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/categories\"}', '2019-07-15 23:39:42', '2019-07-15 23:39:42');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/categories/6', 'GET', '127.0.0.1', '[]', '2019-07-15 23:39:44', '2019-07-15 23:39:44');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-15 23:39:48', '2019-07-15 23:39:48');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Media manager', 'ext.media-manager', NULL, '/media*', '2019-06-29 23:28:26', '2019-06-29 23:28:26');
INSERT INTO `admin_permissions` VALUES (7, 'Admin helpers', 'ext.helpers', NULL, '/helpers/*', '2019-06-29 23:52:09', '2019-06-29 23:52:09');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 6, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-06-28 02:10:16', '2019-06-28 02:10:16');
INSERT INTO `admin_roles` VALUES (2, 'user', 'user', '2019-07-15 20:07:53', '2019-07-15 20:07:53');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$ssu4qLBAva3JALabUb308.6tp754e4GeyrChuxxAFoxNw2rNr/Jwu', 'Administrator', NULL, 'jfmFFbX6XSHsw4FJNCcxngXloRzeaKcDNC01Nb8KMSMKEdW2BZ6ONkIGimmD', '2019-06-28 02:10:15', '2019-06-28 02:10:15');
INSERT INTO `admin_users` VALUES (2, 'user', '$2y$10$bjxrdoW1Auqq6gpvJ2Ny7.hOU5i4WPmKykanhfDz3BVMTKL4thpd6', 'aa', 'images/7.png', 'JS5vhWTnd25jxOQGBdymIVjxHfXw656ym6bL312jA1aJPzquTKj88QxiNkCp', '2019-07-15 20:04:09', '2019-07-15 20:04:09');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `click_count` int(11) NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  `cate_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '121', 1212, '<p>2112<img src=\"/ueditor/php/upload/image/20190629/1561801305.png\" alt=\"1561801305.png\"/></p>', 'images/8a2cd14f88560346b02fde93bf12fea7.jpeg', NULL, '1212', '2019-06-29 17:25:55', 1, '2019-06-29 17:47:19', '2019-06-29 21:46:01');
INSERT INTO `article` VALUES (2, '1111', 12, '<p>111111111111111<img src=\"/ueditor/php/upload/image/20190629/1561823273.jpg\" title=\"1561823273.jpg\" alt=\"15401102_1605822716390905_6735209819435955969_n.jpg\"/></p>', 'images/60d1af981f2b53a06ae0298713629dc3.png', NULL, '2222222', '2019-06-28 00:00:00', 2, '2019-06-29 23:48:04', '2019-06-29 23:48:04');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_menu` tinyint(2) NULL DEFAULT NULL,
  `is_display` tinyint(2) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 0, '新闻动态', 1, 1, 1);
INSERT INTO `category` VALUES (2, 1, '最新资讯', 1, 1, 22);
INSERT INTO `category` VALUES (3, 1, '通知公告', 1, 1, 2);
INSERT INTO `category` VALUES (4, 5, '心灵之约', 1, 1, 2);
INSERT INTO `category` VALUES (5, 0, '家教心理', 1, 1, 0);
INSERT INTO `category` VALUES (6, 5, '家庭教育', 1, 1, 2);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
