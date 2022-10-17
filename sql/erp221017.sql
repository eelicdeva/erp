/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : erp

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 17/10/2022 16:07:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (104, 'sys_book', 'System Book Eelic', NULL, NULL, 'SysBook', 'crud', 'com.ruoyi.project.system', 'system', 'book', 'System Book Eelic', 'ruoyi', '0', '/', NULL, 'admin', '2022-10-04 14:38:41', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (105, 'sys_book_location', '', NULL, NULL, 'SysBookLocation', 'crud', 'com.ruoyi.project.system', 'system', 'location', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2022-10-04 14:38:41', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1283 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (28, '6', 'book_id', NULL, 'int unsigned', 'String', 'bookId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (29, '6', 'book_title', NULL, 'varchar(100)', 'String', 'bookTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (30, '6', 'book_image', NULL, 'varchar(100)', 'String', 'bookImage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'imageUpload', '', 3, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (31, '6', 'book_category', NULL, 'varchar(50)', 'String', 'bookCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (32, '6', 'status', '公告状态（0正常 1关闭）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (33, '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (34, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (35, '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (36, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (37, '6', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2022-09-07 09:53:32', '', '2022-09-07 09:54:56');
INSERT INTO `gen_table_column` VALUES (1255, '104', 'book_id', NULL, 'char(32)', 'String', 'bookId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1256, '104', 'isbn', NULL, 'char(17)', 'String', 'isbn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1257, '104', 'book_title', NULL, 'varchar(200)', 'String', 'bookTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1258, '104', 'book_image', NULL, 'varchar(200)', 'String', 'bookImage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'imageUpload', '', 4, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1259, '104', 'category_id', NULL, 'char(32)', 'String', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1260, '104', 'author', NULL, 'varchar(200)', 'String', 'author', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1261, '104', 'shelf_labels', NULL, 'char(1)', 'String', 'shelfLabels', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1262, '104', 'cd_status', NULL, 'char(1)', 'String', 'cdStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1263, '104', 'synopsis', '备注', 'varchar(255)', 'String', 'synopsis', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1264, '104', 'language', NULL, 'varchar(45)', 'String', 'language', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1265, '104', 'status', '公告状态（0正常 1关闭）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1266, '104', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1267, '104', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268, '104', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1269, '104', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1270, '104', 'book_title_en', NULL, 'varchar(100)', 'String', 'bookTitleEn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1271, '104', 'book_title_id', NULL, 'varchar(100)', 'String', 'bookTitleId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1272, '104', 'synopsis_en', '备注', 'varchar(255)', 'String', 'synopsisEn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273, '104', 'synopsis_id', '备注', 'varchar(255)', 'String', 'synopsisId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1274, '104', 'location_id', NULL, 'char(32)', 'String', 'locationId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1275, '105', 'location_id', NULL, 'char(32)', 'String', 'locationId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1276, '105', 'location', NULL, 'char(6)', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1277, '105', 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 3, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1278, '105', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1279, '105', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1280, '105', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1281, '105', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2022-10-04 14:38:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1282, '105', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2022-10-04 14:38:41', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Bangkok');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Bangkok');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Bangkok');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F62000000000000000102000A4C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C00096A6F624E616D65456E71007E00094C00096A6F624E616D65496471007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001816A0D664078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974001D53797374656D2064656661756C7420286E6F20706172616D657465722974002444656661756C742073697374656D2028746964616B2061646120706172616D657465722974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F62000000000000000102000A4C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C00096A6F624E616D65456E71007E00094C00096A6F624E616D65496471007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001816A0D664078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974002053797374656D2064656661756C7420287769746820706172616D65746572732974002144656661756C742073697374656D202864656E67616E20706172616D657465722974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F62000000000000000102000A4C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C00096A6F624E616D65456E71007E00094C00096A6F624E616D65496471007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001816A0D664078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974002453797374656D2064656661756C7420286D756C7469706C6520706172616D65746572732974002344656661756C742073697374656D2028626562657261706120706172616D657465722974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'CODE21661238096369', 1661238295233, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1661238100000, -1, 5, 'PAUSED', 'CRON', 1661238096000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1661238105000, -1, 5, 'PAUSED', 'CRON', 1661238096000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1661238100000, -1, 5, 'PAUSED', 'CRON', 1661238096000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_book
-- ----------------------------
DROP TABLE IF EXISTS `sys_book`;
CREATE TABLE `sys_book`  (
  `book_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isbn` char(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `book_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `category_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cd_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `synopsis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `language` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `book_title_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `book_title_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `synopsis_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `synopsis_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `location_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE,
  INDEX `fk_book_category_idx`(`category_id` ASC) USING BTREE,
  INDEX `fk_book_location_idx`(`location_id` ASC) USING BTREE,
  CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `sys_book_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_book_location` FOREIGN KEY (`location_id`) REFERENCES `sys_book_location` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'System Book Eelic' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_book
-- ----------------------------
INSERT INTO `sys_book` VALUES ('1805dcab3d6c11ed99fc047c1606d5fc', '978-623-00-1950-0', '使用JAVA编程逻辑', '/profile/upload/media/jpg/2022/10/dec6a257b67543be903e62cdb5b98466.jpg', '542dae5b406711ed99fc047c1606d5fc', 'ABDUL KADIR', '1', '本书旨在作为计算机编程指南', '1', '0', '0', 'admin', '2022-09-26 15:23:18', 'admin', '2022-10-07 10:20:16', 'PROGRAMMING LOGIC USING JAVA', 'LOGIKA PEMROGRAMAN MENGGUNAKAN JAVA', 'This book is designed as a guide in computer programming', 'Buku ini dirancang sebagai bahan penuntun dalam memprogram komputer', '973c724f413211ed99fc047c1606d5fc');
INSERT INTO `sys_book` VALUES ('5ccb7e8b3bbe11ed99fc047c1606d5fc', '978-602-02-7495-9', 'PHOTOSHOP SMART BOOK CC', '/profile/upload/media/jpg/2022/10/a48819dbbd13407f8f4fd98f57a8e299.jpg', '3093b688439511ed99fc047c1606d5fc', 'CHRISTOPER LEE', '0', 'Photoshop 调整和提示智能书，适合那些想要学习 Photoshop 并全面发展到更高级水平的人', '1', '0', '0', '', '2022-09-24 12:07:10', 'admin', '2022-10-07 10:20:27', 'PHOTOSHOP SMART BOOK CC', 'BUKU PINTAR PHOTOSHOP CC', 'Photoshop tweaks & tips smart book to write for those of you who want to learn Photoshop and develop to a more advanced level in full', 'Buku pintar photoshop tweaks & tips untuk ditulis bagi anda yang ingin belajar photoshop dan ber- kembang ke tingat yang lebih mahir secara  lengkap', '973c724f413211ed99fc047c1606d5fc');
INSERT INTO `sys_book` VALUES ('61b9e2c83d6c11ed99fc047c1606d5fc', '978-602-02-7782-0', '使用 Windows 8 和 10 的快捷方式', '/profile/upload/media/jpg/2022/10/1e92d74622e04c5d914d63a9aaa1b48b.jpg', '542dae5b406711ed99fc047c1606d5fc', 'JUBILEE ENTERPRISE', '1', '本书同时探讨了 Windows 8 和 Windows 10', '1', '0', '0', 'admin', '2022-09-26 15:25:22', 'admin', '2022-10-07 10:20:44', 'SHORT WAYS USING WINDOWS 8 AND 10', 'JALAN PINTAS MENGGUNAKAN WINDOWS 8 DAN 10', 'This book explores windows 8 and windows 10 at the same time', 'Buku ini mengupas windows 8 dan windows 10 sekaligus', '973c724f413211ed99fc047c1606d5fc');
INSERT INTO `sys_book` VALUES ('72594782452f11ed9e64047c1606d5fc', '978-602-7926-24-0', '老师', '/profile/upload/media/jpg/2022/10/f5dc2011884b438eb628fa903ff8a4d8.jpg', '63ac885443bf11ed99fc047c1606d5fc', 'Haidar Musyafa', '1', '通过 Tamansiswa，Ki Hadjar 实现了他在教育和领导力领域的想法。', '1', '0', '0', 'admin', '2022-10-06 12:29:19', 'admin', '2022-10-07 10:16:31', 'THE TEACHER', 'SANG GURU', 'Through Tamansiswa, Ki Hadjar realized his ideas in the fields of education and leadership.', 'Melalui Tamansiswa, Ki Hadjar mewujudkan gagasan-gagasannya di bidang pendidikan dan kepemimpinan.', '973c724f413211ed99fc047c1606d5fc');
INSERT INTO `sys_book` VALUES ('88dcff113d6811ed99fc047c1606d5fc', '978-6230-01-050-7', '使用 Python 学习编程和黑客技术', '/profile/upload/media/jpg/2022/10/0fae6e19677440388e4612272681da02.jpg', '542dae5b406711ed99fc047c1606d5fc', 'WARDANA ', '1', 'Python是众所周知的被黑客广泛使用的编程语言', '1', '0', '0', 'admin', '2022-09-26 14:57:49', 'admin', '2022-10-07 10:20:52', 'LEARN PROGRAMMING AND HACKING USING PYTHON', 'BELAJAR PEMROGRAMAN DAN HACKING MENGGUNAKAN PYTHON', 'Python is well-known as a programming language that is widely used by hackers', 'Python telah terkenal sebagai bahasa pemrograman yang banyak digunakan oleh hacker', '973c724f413211ed99fc047c1606d5fc');
INSERT INTO `sys_book` VALUES ('a169f5ec3d6b11ed99fc047c1606d5fc', '978-979-27-8263-9', '使用 MS OFFICE 2010 开发基于 ICT 的学习演示文稿', '/profile/upload/media/jpg/2022/10/45d33e4a7f02494485f6703e172fdc52.jpg', '542dae5b406711ed99fc047c1606d5fc', 'JASMADI', '1', '信息技术和技术', '1', '0', '0', 'admin', '2022-09-26 15:19:59', 'admin', '2022-10-07 10:21:00', 'DEVELOPING ICT-BASED LEARNING PRESENTATIONS WITH MS OFFICE 2010', 'MENYUSUN PRESENTASI PEMBELAJARAN BERBASIS TIK DENGAN MS OFFICE 2010', 'Information technology and technology', 'Teknologi informasi dan teknologi', '973c724f413211ed99fc047c1606d5fc');
INSERT INTO `sys_book` VALUES ('abae7f013d6c11ed99fc047c1606d5fc', '978-979-877-430-0', '网站一号', '/profile/upload/media/jpg/2022/10/f36b113f0b7e4eac9cc208d058d96238.jpg', '542dae5b406711ed99fc047c1606d5fc', 'ANDREA ADELHEID', '1', '在这个现代时代，大小公司普遍使用网站作为替代', '1', '0', '0', 'admin', '2022-09-26 15:27:26', 'admin', '2022-10-07 10:21:08', 'WEBSITE NO.1', 'SITUS WEB NO.1', 'In this modern era, small and large companies have commonly used websites as an alternative', 'Di era modern ini, perusahaan kecil maupun besar sudah umum menggunakan website sebagai alternatif', '973c724f413211ed99fc047c1606d5fc');

-- ----------------------------
-- Table structure for sys_book_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_book_category`;
CREATE TABLE `sys_book_category`  (
  `category_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `category_name_en` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category_name_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_book_category
-- ----------------------------
INSERT INTO `sys_book_category` VALUES ('2d615edc4abd11ed979e0242066457c8', '������', '0', '2', '', '2022-10-13 14:06:29', '', NULL, 'test', 'uji');
INSERT INTO `sys_book_category` VALUES ('3093b688439511ed99fc047c1606d5fc', '设计', '0', '0', '', '2022-10-04 11:32:36', '', NULL, 'Design', 'Desain');
INSERT INTO `sys_book_category` VALUES ('542dae5b406711ed99fc047c1606d5fc', '它', '0', '0', '', '2022-09-30 10:26:46', '', '2022-09-30 12:44:11', 'IT', 'IT');
INSERT INTO `sys_book_category` VALUES ('5a5915f3406711ed99fc047c1606d5fc', '工程师', '0', '0', '', '2022-09-30 10:26:56', '', '2022-09-30 12:44:27', 'Engineer', 'Teknisi');
INSERT INTO `sys_book_category` VALUES ('63ac885443bf11ed99fc047c1606d5fc', '科学', '0', '0', '', '2022-10-04 16:34:41', '', NULL, 'Science', 'Ilmu pengetahuan');
INSERT INTO `sys_book_category` VALUES ('ba66f179484211ed9e64047c1606d5fc', '漫画', '0', '0', '', '2022-10-10 10:24:55', '', NULL, 'Comic', 'Komik');
INSERT INTO `sys_book_category` VALUES ('e2f584a5407a11ed99fc047c1606d5fc', '工程师', '0', '0', '', '2022-09-30 12:46:46', '', NULL, 'Technician', 'Novel');
INSERT INTO `sys_book_category` VALUES ('e7ebb5c6407a11ed99fc047c1606d5fc', '字典', '0', '0', '', '2022-09-30 12:46:54', '', NULL, 'Dictionary', 'Kamus');
INSERT INTO `sys_book_category` VALUES ('ec52519d407a11ed99fc047c1606d5fc', '管理', '0', '2', '', '2022-09-30 12:47:01', '', NULL, 'Management', 'Manajemen');

-- ----------------------------
-- Table structure for sys_book_loan
-- ----------------------------
DROP TABLE IF EXISTS `sys_book_loan`;
CREATE TABLE `sys_book_loan`  (
  `loan_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `checkout_date` datetime NULL DEFAULT NULL,
  `return_date` datetime NULL DEFAULT NULL,
  `name_borrower` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `book_title_en` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `book_title_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `book_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `isbn` char(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`loan_id`) USING BTREE,
  INDEX `book_id_idx`(`book_id` ASC) USING BTREE,
  CONSTRAINT `fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `sys_book` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_book_loan
-- ----------------------------
INSERT INTO `sys_book_loan` VALUES ('93a5f1d33d7311ed99fc047c1606d5fc', '2022-09-26 01:00:00', '2022-09-29 01:00:00', 'naura', '使用 Windows 8 和 10 的快捷方式', 'SHORT WAYS USING WINDOWS 8 AND 10', 'JALAN PINTAS MENGGUNAKAN WINDOWS 8 DAN 10', '/profile/upload/media/jpg/2022/10/1e92d74622e04c5d914d63a9aaa1b48b.jpg', '978-602-02-7782-0', '61b9e2c83d6c11ed99fc047c1606d5fc');
INSERT INTO `sys_book_loan` VALUES ('bae596923d7311ed99fc047c1606d5fc', '2022-09-27 01:00:00', '2022-09-30 01:00:00', 'deva', '使用 MS OFFICE 2010 开发基于 ICT 的学习演示文稿', 'DEVELOPING ICT-BASED LEARNING PRESENTATIONS WITH MS OFFICE 2010', 'MENYUSUN PRESENTASI PEMBELAJARAN BERBASIS TIK DENGAN MS OFFICE 2010', '/profile/upload/media/jpg/2022/10/45d33e4a7f02494485f6703e172fdc52.jpg', '978-979-27-8263-9', 'a169f5ec3d6b11ed99fc047c1606d5fc');
INSERT INTO `sys_book_loan` VALUES ('cf7f5d373d7311ed99fc047c1606d5fc', '2022-09-28 01:00:00', '2022-10-03 01:00:00', 'dewi sundari', '网站一号', 'WEBSITE NO.1', 'SITUS WEB NO.1', '/profile/upload/media/jpg/2022/10/f36b113f0b7e4eac9cc208d058d96238.jpg', '978-979-877-430-0', 'abae7f013d6c11ed99fc047c1606d5fc');
INSERT INTO `sys_book_loan` VALUES ('d84370103d7311ed99fc047c1606d5fc', '2022-09-28 01:00:00', '2022-10-01 01:00:00', 'uma', '使用JAVA编程逻辑', 'PROGRAMMING LOGIC USING JAVA', 'LOGIKA PEMROGRAMAN MENGGUNAKAN JAVA', '/profile/upload/media/jpg/2022/10/dec6a257b67543be903e62cdb5b98466.jpg', '978-623-00-1950-0', '1805dcab3d6c11ed99fc047c1606d5fc');

-- ----------------------------
-- Table structure for sys_book_location
-- ----------------------------
DROP TABLE IF EXISTS `sys_book_location`;
CREATE TABLE `sys_book_location`  (
  `location_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `location` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`location_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_book_location
-- ----------------------------
INSERT INTO `sys_book_location` VALUES ('6f196f9543bf11ed99fc047c1606d5fc', 'A1A3A2', '0', '2', '', '2022-10-04 16:35:00', '', NULL);
INSERT INTO `sys_book_location` VALUES ('973c724f413211ed99fc047c1606d5fc', 'A1A1A1', '0', '0', '', '2022-10-01 10:41:46', '', NULL);
INSERT INTO `sys_book_location` VALUES ('be374e4e43b911ed99fc047c1606d5fc', 'A1A2A2', '0', '0', '', '2022-10-04 15:54:16', '', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `config_name_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'parameter name',
  `config_name_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'nama parameter',
  `config_name_tw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-06-16 08:07:52', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', 'main frame page - default skin style name', 'halaman bingkai utama - nama gaya kulit default', '主框架页-默认皮肤样式名称');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-06-16 08:07:52', '', NULL, '初始化密码 123456', 'User Management - Account Initial Password', 'Manajemen Pengguna - Kata Sandi Awal Akun', '用户管理-账号初始密码');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-06-16 08:07:52', '', NULL, '深色主题theme-dark，浅色主题theme-light', 'Main Frame Page - Sidebar Theme', 'Halaman Bingkai Utama - Tema Bilah Sisi', '主框架页-侧边栏主题');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-06-16 08:07:52', '', NULL, '是否开启验证码功能（true开启，false关闭）', 'Account Self-Service - Verification Code Switch', 'Layanan Mandiri Akun - Pengalihan Kode Verifikasi', '账号自助-验证码开关');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2022-06-16 08:07:52', '', NULL, '是否开启注册用户功能（true开启，false关闭）', 'Account self-service - whether to enable the user registration function', 'Layanan mandiri akun - apakah akan mengaktifkan fungsi pendaftaran pengguna', '账号自助-是否开启用户注册功能');
INSERT INTO `sys_config` VALUES (6, '限制登录', 'sys.limit.login', 'false', 'Y', 'admin', '2022-06-26 08:07:52', 'admin', '2022-08-26 10:27:26', '是否开启注册用户功能（true开启，false关闭）', 'limit login', 'batas login', '账号自助-是否开启用户注册功能');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `dept_name_en` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Department name',
  `dept_name_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Department name',
  `dept_name_tw` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Department name',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'EELIC', 0, 'Eason', '15080013550', 'eason@eelic.com', '0', '0', 'admin', '2022-06-16 08:07:51', 'admin', '2022-10-13 01:44:47', 'Zoe Technology', 'Teknologi Zoe', '若依科技');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', 'Indoeelic', 1, 'crystall', '15080013550', 'crystal@eelic.com', '0', '0', 'admin', '2022-06-16 08:07:51', 'admin', '2022-10-13 01:45:35', 'Shenzhen head office', 'Kantor pusat Shenzhen', '深圳总公司');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '仓沙分公司', 2, '佐伊', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', 'admin', '2022-09-02 09:13:59', 'Cangsha Branch', 'Cabang Cangsha', '长沙分公司');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', '', NULL, 'R & D department', 'Departemen R & D', '研发部门');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', '', NULL, 'marketing department', 'Departemen pemasaran', '市场部门');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', '', NULL, 'testing department', 'Departemen pengujian', '测试部门');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', '', NULL, 'financial department', 'Departemen Keuangan', '财务部门');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', '', NULL, 'Operation and maintenance department', 'Departemen operasi dan pemeliharaan', '运维部门');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', '', NULL, 'marketing department', 'Departemen pemasaran', '市场部门');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-16 08:07:51', '', NULL, 'financial department', 'Departemen Keuangan', '财务部门');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `dict_label_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Dictionary tags',
  `dict_label_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Dictionary tags',
  `dict_label_tw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Dictionary tags',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '性别男', 'Male', 'Laki-Laki', '男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '性别女', 'Female', 'Perempuan', '女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '性别未知', 'Unknown', 'Tidak Dikenal', '未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '显示菜单', 'Show', 'tampilkan', '显示');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '隐藏菜单', 'Hide', 'sembunyikan', '隐藏');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '正常状态', 'Normal', 'Normal', '正常');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '停用状态', 'Disable', 'Nonaktif', '停用');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '正常状态', 'Normal', 'Normal', '正常');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '停用状态', 'Pause', 'Jeda', '暂停');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '默认分组', 'Default', 'Bawaan', '默认');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '系统分组', 'System', 'Sistem', '系统');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '系统默认是', 'Yes', 'Ya', '是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '系统默认否', 'No', 'Tidak', '否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '通知', 'Notice', 'Pemberitahuan', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '公告', 'Announcement', 'Pengumuman', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '正常状态', 'Normal', 'Normal', '正常');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '关闭状态', 'Close', 'Tutup', '关闭');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '新增操作', 'New', 'Baru', '新增');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '修改操作', 'Revise', 'Merevisi', '修改');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '删除操作', 'Delete', 'Hapus', '删除');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '授权操作', 'Authorize', 'Izinkan', '授权');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '导出操作', 'Export', 'Ekspor', '导出');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '导入操作', 'Import', 'Impor', '导入');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '强退操作', 'Retreat', 'Mundur', '强退');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '生成操作', 'Generate Code', 'Membuat Kode', '生成代码');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '清空操作', 'Clear Data', 'Hapus data', '清空数据');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '正常状态', 'Success', 'Berhasil', '成功');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '停用状态', 'Fail', 'Gagal', '失败');
INSERT INTO `sys_dict_data` VALUES (29, 3, '密码错误', '2', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-06-16 08:07:52', 'admin', '2022-08-19 13:31:08', '停用状态', 'wrong password', 'kata sandi salah', '密码错误');
INSERT INTO `sys_dict_data` VALUES (30, 1, '可用的', '0', 'sys_available_status', '', 'success', 'N', '0', 'admin', '2022-09-08 08:07:52', '', NULL, 'Status Available', 'Available', 'Tersedia', '可用的');
INSERT INTO `sys_dict_data` VALUES (31, 2, '不可用', '1', 'sys_available_status', '', 'danger', 'N', '0', 'admin', '2022-09-08 08:07:52', 'admin', '2022-09-14 15:30:30', 'Status Unavailable', 'Unavailable', 'Tidak tersedia', '不可用');
INSERT INTO `sys_dict_data` VALUES (32, 1, '设计', '0', 'sys_book_category', '', 'default', 'N', '0', 'admin', '2022-09-23 09:19:49', 'admin', '2022-10-06 10:18:48', NULL, '设计as', 'Desain', '');
INSERT INTO `sys_dict_data` VALUES (33, 2, '小说', '1', 'sys_book_category', NULL, 'default', 'N', '0', 'admin', '2022-09-23 10:37:38', 'admin', '2022-09-23 10:39:15', NULL, 'Novel', 'Novel', '');
INSERT INTO `sys_dict_data` VALUES (34, 3, '信息技术', '2', 'sys_book_category', NULL, 'default', 'N', '0', 'admin', '2022-09-23 10:38:10', 'admin', '2022-09-23 10:39:12', NULL, 'IT', 'IT', '');
INSERT INTO `sys_dict_data` VALUES (35, 1, 'A1A1A1', '0', 'sys_shelf_label', NULL, 'default', 'N', '0', 'admin', '2022-09-23 11:43:16', 'admin', '2022-09-29 08:23:40', NULL, 'A1', 'A1', '');
INSERT INTO `sys_dict_data` VALUES (36, 2, 'A2', '1', 'sys_shelf_label', NULL, 'default', 'N', '0', 'admin', '2022-09-23 11:43:52', '', NULL, NULL, 'A2', 'A2', '');
INSERT INTO `sys_dict_data` VALUES (37, 1, '英语', '0', 'sys_language', NULL, 'default', 'N', '0', 'admin', '2022-09-24 09:29:55', '', NULL, NULL, 'English', 'Inggris', '');
INSERT INTO `sys_dict_data` VALUES (38, 2, '印度尼西亚', '1', 'sys_language', NULL, 'default', 'N', '0', 'admin', '2022-09-24 09:30:16', '', NULL, NULL, 'Indonesia', 'Indonesia', '');
INSERT INTO `sys_dict_data` VALUES (39, 3, '中国', '2', 'sys_language', NULL, 'default', 'N', '0', 'admin', '2022-09-24 09:30:29', '', NULL, NULL, 'China', 'Cina', '');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `dict_name_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'dictionary name',
  `dict_name_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'nama kamus',
  `dict_name_tw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '用户性别列表', 'User gender', 'Jenis kelamin pengguna', '用户性别');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '菜单状态列表', 'menu status', 'status menu', '菜单状态');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '系统开关列表', 'System switch', 'Saklar sistem', '系统开关');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '任务状态列表', 'task status', 'status tugas', '任务状态');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '任务分组列表', 'Task grouping', 'Pengelompokan tugas', '任务分组');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '系统是否列表', 'Does the system', 'Apakah sistem', '系统是否');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '通知类型列表', 'Notification type', 'Jenis pemberitahuan', '通知类型');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '通知状态列表', 'notification status', 'status pemberitahuan', '通知状态');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '操作类型列表', 'Operation type', 'Jenis operasi', '操作类型');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-06-16 08:07:52', 'admin', '2022-10-06 09:36:54', '登录状态列表', 'System Status', 'status sistem', '系统状态');
INSERT INTO `sys_dict_type` VALUES (11, '可用系统', 'sys_available_status', '0', 'admin', '2022-09-08 10:41:28', 'admin', '2022-09-08 10:43:03', '0 available 1 unavailable', 'available system', 'sistem yang tersedia', '');
INSERT INTO `sys_dict_type` VALUES (12, '图书类别', 'sys_book_category', '0', 'admin', '2022-09-23 09:06:41', '', NULL, NULL, 'Book Category', 'Kategori Buku', '');
INSERT INTO `sys_dict_type` VALUES (13, '货架标签', 'sys_shelf_label', '0', 'admin', '2022-09-23 11:42:10', '', NULL, NULL, 'Shelfs Labels', 'Label Rak', '');
INSERT INTO `sys_dict_type` VALUES (14, '语言', 'sys_language', '0', 'admin', '2022-09-24 09:28:00', 'admin', '2022-10-12 10:58:15', NULL, 'Language', 'Bahasa', '');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  `job_name_en` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'mission name',
  `job_name_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'nama misi',
  `job_name_tw` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`, `job_name_id`, `job_name_tw`, `job_name_en`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'System default (no parameter)', 'Default sistem (tidak ada parameter)', '系统默认（无参）');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'System default (with parameters)', 'Default sistem (dengan parameter)', '系统默认（有参）');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'System default (multiple parameters)', 'Default sistem (beberapa parameter)', '系统默认（多参）');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-06 11:27:13');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-06 12:58:34');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-07 08:07:17');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-07 08:17:12');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-07 09:19:22');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-07 11:59:51');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-10-07 13:03:42');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-07 13:03:46');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-07 13:03:49');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-10-07 14:20:03');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-07 14:20:07');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 08:07:05');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-10 09:52:49');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-11 10:10:56');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-11 10:11:05');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-11 10:11:10');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-11 11:58:22');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', 'Login berhasil', '2022-10-11 13:05:02');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-11 13:05:08');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Pengguna tidak ada/sandi salah', '2022-10-11 13:05:16');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 1 kali', '2022-10-11 13:05:16');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 2 kali', '2022-10-11 13:05:28');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Pengguna tidak ada/sandi salah', '2022-10-11 13:05:28');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Pengguna tidak ada/sandi salah', '2022-10-11 13:05:35');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 3 kali', '2022-10-11 13:05:35');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Pengguna tidak ada/sandi salah', '2022-10-11 13:05:38');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 4 kali', '2022-10-11 13:05:38');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali', '2022-10-11 13:05:41');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Pengguna tidak ada/sandi salah', '2022-10-11 13:05:41');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:05:44');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:05:44');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:06:00');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:06:00');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:08:12');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:08:12');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Captcha error', '2022-10-11 13:11:35');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 5 times, account locked for 5 minutes', '2022-10-11 13:11:39');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 5 times, account locked for 5 minutes', '2022-10-11 13:11:39');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Captcha kedaluwarsa', '2022-10-11 13:12:57');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:13:01');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:13:01');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:13:06');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:13:06');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:14:12');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:14:12');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Captcha expired', '2022-10-11 13:14:39');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:15:02');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:15:02');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:15:07');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Sandi yang dimasukkan salah 5 kali, akun terkunci selama 10 menit', '2022-10-11 13:15:07');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', 'Login berhasil', '2022-10-11 13:15:53');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Captcha kedaluwarsa', '2022-10-11 13:18:02');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', 'Login berhasil', '2022-10-11 13:18:06');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', 'Captcha expired', '2022-10-11 13:20:18');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-11 13:20:23');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-12 10:55:23');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-12 10:56:15');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-12 10:56:24');
INSERT INTO `sys_logininfor` VALUES (59, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-12 10:56:24');
INSERT INTO `sys_logininfor` VALUES (60, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-12 10:56:34');
INSERT INTO `sys_logininfor` VALUES (61, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-12 10:59:51');
INSERT INTO `sys_logininfor` VALUES (62, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2022-10-12 11:00:43');
INSERT INTO `sys_logininfor` VALUES (63, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-12 11:00:43');
INSERT INTO `sys_logininfor` VALUES (64, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-12 11:00:51');
INSERT INTO `sys_logininfor` VALUES (65, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2022-10-12 11:00:58');
INSERT INTO `sys_logininfor` VALUES (66, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-12 11:00:58');
INSERT INTO `sys_logininfor` VALUES (67, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', '密码输入错误3次', '2022-10-12 11:01:09');
INSERT INTO `sys_logininfor` VALUES (68, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-12 11:01:09');
INSERT INTO `sys_logininfor` VALUES (69, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-12 11:01:22');
INSERT INTO `sys_logininfor` VALUES (70, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-12 11:08:07');
INSERT INTO `sys_logininfor` VALUES (71, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-13 01:09:05');
INSERT INTO `sys_logininfor` VALUES (72, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-13 01:09:05');
INSERT INTO `sys_logininfor` VALUES (73, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-13 01:21:40');
INSERT INTO `sys_logininfor` VALUES (74, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-13 01:21:40');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 2 times', '2022-10-13 01:22:01');
INSERT INTO `sys_logininfor` VALUES (76, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-13 01:22:01');
INSERT INTO `sys_logininfor` VALUES (77, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Registration succeeded', '2022-10-13 01:23:27');
INSERT INTO `sys_logininfor` VALUES (78, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-13 01:23:41');
INSERT INTO `sys_logininfor` VALUES (79, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:24:24');
INSERT INTO `sys_logininfor` VALUES (80, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-13 01:38:24');
INSERT INTO `sys_logininfor` VALUES (81, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:38:40');
INSERT INTO `sys_logininfor` VALUES (82, 'Naura', '36.82.121.210', 'XX XX', 'Chrome 9', 'Windows 10', '0', 'Registration succeeded', '2022-10-13 01:40:20');
INSERT INTO `sys_logininfor` VALUES (83, 'Naura', '36.82.121.210', 'XX XX', 'Chrome 9', 'Windows 10', '0', 'Login berhasil', '2022-10-13 01:40:55');
INSERT INTO `sys_logininfor` VALUES (84, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 01:44:07');
INSERT INTO `sys_logininfor` VALUES (85, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Captcha expired', '2022-10-13 01:45:27');
INSERT INTO `sys_logininfor` VALUES (86, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-13 01:45:29');
INSERT INTO `sys_logininfor` VALUES (87, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-13 01:45:29');
INSERT INTO `sys_logininfor` VALUES (88, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-13 01:45:42');
INSERT INTO `sys_logininfor` VALUES (89, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:45:55');
INSERT INTO `sys_logininfor` VALUES (90, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:46:07');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 01:46:18');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Captcha expired', '2022-10-13 01:47:57');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:50:33');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 01:50:41');
INSERT INTO `sys_logininfor` VALUES (95, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:52:12');
INSERT INTO `sys_logininfor` VALUES (96, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 01:52:19');
INSERT INTO `sys_logininfor` VALUES (97, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:55:29');
INSERT INTO `sys_logininfor` VALUES (98, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 01:55:34');
INSERT INTO `sys_logininfor` VALUES (99, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:57:35');
INSERT INTO `sys_logininfor` VALUES (100, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 01:57:46');
INSERT INTO `sys_logininfor` VALUES (101, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 01:59:35');
INSERT INTO `sys_logininfor` VALUES (102, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 01:59:43');
INSERT INTO `sys_logininfor` VALUES (103, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 02:00:16');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 02:00:21');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 02:00:38');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 02:00:45');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 02:02:54');
INSERT INTO `sys_logininfor` VALUES (108, 'Eason', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-13 02:03:00');
INSERT INTO `sys_logininfor` VALUES (109, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Captcha expired', '2022-10-13 02:31:36');
INSERT INTO `sys_logininfor` VALUES (110, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-13 02:31:41');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Android 1.x', '1', 'Captcha error', '2022-10-13 03:09:47');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Android 1.x', '0', 'Login successful', '2022-10-13 03:09:54');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Android 1.x', '0', '退出成功', '2022-10-13 03:22:06');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Android 1.x', '0', '登录成功', '2022-10-13 03:23:49');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-13 06:05:51');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-13 06:05:51');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Captcha error', '2022-10-13 06:05:56');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 2 times', '2022-10-13 06:05:59');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-13 06:05:59');
INSERT INTO `sys_logininfor` VALUES (120, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-13 06:06:16');
INSERT INTO `sys_logininfor` VALUES (121, 'deva', '36.82.121.210', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-13 06:06:43');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '61.5.71.83', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-14 07:31:38');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '61.5.71.83', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-14 07:31:38');
INSERT INTO `sys_logininfor` VALUES (124, 'deva', '61.5.71.83', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Captcha error', '2022-10-14 07:31:47');
INSERT INTO `sys_logininfor` VALUES (125, 'deva', '61.5.71.83', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-14 07:31:51');
INSERT INTO `sys_logininfor` VALUES (126, 'deva', '61.5.71.83', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-14 07:31:51');
INSERT INTO `sys_logininfor` VALUES (127, 'deva', '61.5.71.83', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Captcha error', '2022-10-14 07:32:02');
INSERT INTO `sys_logininfor` VALUES (128, 'deva', '61.5.71.83', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-14 07:32:06');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-14 15:00:54');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-14 15:00:54');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 2 times', '2022-10-14 15:00:58');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-14 15:00:58');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 3 times', '2022-10-14 15:01:01');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-14 15:01:01');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '36.74.85.76', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-14 15:01:07');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '180.253.174.191', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-15 02:44:44');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '180.253.174.191', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-15 02:44:44');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '180.253.174.191', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Captcha error', '2022-10-15 02:44:53');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '180.253.174.191', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 2 times', '2022-10-15 02:44:56');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '180.253.174.191', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-15 02:44:56');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '180.253.174.191', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 3 times', '2022-10-15 02:45:08');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '180.253.174.191', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-15 02:45:08');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 1 times', '2022-10-17 01:09:14');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-17 01:09:14');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-17 01:09:17');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 2 times', '2022-10-17 01:09:17');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'Incorrect password entered 3 times', '2022-10-17 01:09:22');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', 'User does not exist/wrong password', '2022-10-17 01:09:22');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2022-10-17 03:42:37');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-17 03:42:37');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 03:42:43');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-17 03:42:49');
INSERT INTO `sys_logininfor` VALUES (153, 'deva', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', 'Login successful', '2022-10-17 03:48:12');
INSERT INTO `sys_logininfor` VALUES (154, 'deva', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-10-17 03:51:17');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '36.74.120.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-10-17 03:57:40');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-17 15:57:41');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2022-10-17 15:57:41');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-10-17 15:57:46');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2022-10-17 15:57:49');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-17 15:57:49');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误3次', '2022-10-17 15:57:52');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-17 15:57:52');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-10-17 15:57:55');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误4次', '2022-10-17 15:57:55');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-10-17 16:03:31');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `menu_name_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_name_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_name_tw` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-06-16 08:07:52', '', NULL, '系统管理目录', 'System Management', 'Manajemen Sistem', '系统管理');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-06-16 08:07:52', 'admin', '2022-09-06 08:14:45', '系统监控目录', 'System Monitoring', 'Pemantauan sistem', '系统监控');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-06-16 08:07:52', '', NULL, '系统工具目录', 'System Tools', 'Alat Sistem', '系统工具');
INSERT INTO `sys_menu` VALUES (4, '若依官网        ', 0, 5, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-06-16 08:07:52', 'admin', '2022-09-06 10:26:18', '若依官网地址', 'Ruoyi official website', 'Situs web resmi Ruoyi', '若依官网');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-06-16 08:07:52', '', NULL, '用户管理菜单', 'User Management', 'Manajemen Pengguna', '用户管理');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-06-16 08:07:52', '', NULL, '角色管理菜单', 'Role Management', 'Manajemen Peran', '角色管理');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-06-16 08:07:52', '', NULL, '菜单管理菜单', 'Menu Management', 'Manajemen Menu', '菜单管理');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-06-16 08:07:52', '', NULL, '部门管理菜单', 'Department Management', 'Manajemen Departemen', '部门管理');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-06-16 08:07:52', '', NULL, '岗位管理菜单', 'Post Management', 'Manajemen Jabatan', '岗位管理');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-06-16 08:07:52', '', NULL, '字典管理菜单', 'Dictionary Management', 'Manajemen Kamus', '字典管理');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-06-16 08:07:52', '', NULL, '参数设置菜单', 'Parameter Settings', 'Pengaturan Parameter', '参数设置');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-06-16 08:07:52', '', NULL, '通知公告菜单', 'Announcement', 'Pengumuman', '通知公告');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-06-16 08:07:52', '', NULL, '日志管理菜单', 'Log Management', 'Manajemen Log', '日志管理');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-06-16 08:07:52', 'admin', '2022-09-06 08:14:59', '在线用户菜单', 'Online User', 'pengguna online', '在线用户');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-06-16 08:07:52', '', NULL, '定时任务菜单', 'timed task', 'tugas waktunya', '定时任务');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-06-16 08:07:52', '', NULL, '数据监控菜单', 'Data monitoring', 'Pemantauan data', '数据监控');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-06-16 08:07:52', 'admin', '2022-09-06 08:14:32', '服务监控菜单', 'Service Monitoring', 'pemantauan layanan', '服务监控');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-06-16 08:07:52', '', NULL, '缓存监控菜单', 'Cache monitoring', 'Pemantauan cache', '缓存监控');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-06-16 08:07:52', '', NULL, '表单构建菜单', 'form building', 'bangunan bentuk', '表单构建');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-06-16 08:07:52', '', NULL, '代码生成菜单', 'code generation', 'pembuatan kode', '代码生成');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-06-16 08:07:52', '', NULL, '系统接口菜单', 'system interface', 'antarmuka sistem', '系统接口');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-06-16 08:07:52', '', NULL, '操作日志菜单', 'Operation Log', 'Log Operasi', '操作日志');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-06-16 08:07:52', '', NULL, '登录日志菜单', 'Login Log', 'Log Masuk', '登录日志');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'User query', 'Permintaan pengguna', '用户查询');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'User added', 'Pengguna menambahkan', '用户新增');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'User modification', 'Modifikasi pengguna', '用户修改');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'User delete', 'Hapus pengguna', '用户删除');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'User export', 'Ekspor pengguna', '用户导出');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'user import', 'impor pengguna', '用户导入');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'reset Password', 'setel ulang kata sandi', '重置密码');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'role query', 'permintaan peran', '角色查询');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'new role', 'peran baru', '角色新增');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'role modification', 'modifikasi peran', '角色修改');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'role deletion', 'penghapusan peran', '角色删除');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Character export', 'Ekspor karakter', '角色导出');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'menu query', 'permintaan menu', '菜单查询');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'menu added', 'menu ditambahkan', '菜单新增');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'menu modification', 'modifikasi menu', '菜单修改');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'menu delete', 'hapus menu', '菜单删除');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Departmental Inquiry', 'Pertanyaan Departemen', '部门查询');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Department added', 'Departemen menambahkan', '部门新增');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Department Modification', 'Modifikasi Departemen', '部门修改');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Department delete', 'Hapus departemen', '部门删除');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Job inquiry', 'Permintaan pekerjaan', '岗位查询');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'new jobs', 'pekerjaan Baru', '岗位新增');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'post modification', 'pasca modifikasi', '岗位修改');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Post deletion', 'Penghapusan kiriman', '岗位删除');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Post export', 'Pasca ekspor', '岗位导出');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Dictionary lookup', 'pencarian kamus', '字典查询');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Dictionary added', 'Kamus ditambahkan', '字典新增');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'dictionary modification', 'modifikasi kamus', '字典修改');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Dictionary deletion', 'penghapusan kamus', '字典删除');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Dictionary export', 'Ekspor kamus', '字典导出');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'parameter query', 'permintaan parameter', '参数查询');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Parameters added', 'Parameter ditambahkan', '参数新增');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'parameter modification', 'modifikasi parameter', '参数修改');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'parameter deletion', 'penghapusan parameter', '参数删除');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'parameter export', 'ekspor parameter', '参数导出');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Announcement query', 'Permintaan pengumuman', '公告查询');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Announcement added', 'Pengumuman ditambahkan', '公告新增');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Announcement modification', 'Modifikasi pengumuman', '公告修改');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Announcement deletion', 'Penghapusan pengumuman', '公告删除');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Action query', 'Permintaan tindakan', '操作查询');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Action delete', 'Hapus tindakan', '操作删除');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'log export', 'ekspor log', '日志导出');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Login query', 'Permintaan masuk', '登录查询');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'login delete', 'masuk hapus', '登录删除');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'log export', 'ekspor log', '日志导出');
INSERT INTO `sys_menu` VALUES (1045, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'online search', 'pencarian online', '在线查询');
INSERT INTO `sys_menu` VALUES (1046, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Forced withdrawal in batches', 'Penarikan paksa dalam batch', '批量强退');
INSERT INTO `sys_menu` VALUES (1047, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Single forced withdrawal', 'Penarikan paksa tunggal', '单条强退');
INSERT INTO `sys_menu` VALUES (1048, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'task query', 'permintaan tugas', '任务查询');
INSERT INTO `sys_menu` VALUES (1049, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'task added', 'tugas ditambahkan', '任务新增');
INSERT INTO `sys_menu` VALUES (1050, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'task modification', 'modifikasi tugas', '任务修改');
INSERT INTO `sys_menu` VALUES (1051, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'task deletion', 'penghapusan tugas', '任务删除');
INSERT INTO `sys_menu` VALUES (1052, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'state modification', 'modifikasi negara', '状态修改');
INSERT INTO `sys_menu` VALUES (1053, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'task export', 'tugas ekspor', '任务导出');
INSERT INTO `sys_menu` VALUES (1054, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Generate query', 'Buat kueri', '生成查询');
INSERT INTO `sys_menu` VALUES (1055, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Generate modification', 'Hasilkan modifikasi', '生成修改');
INSERT INTO `sys_menu` VALUES (1056, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'generate delete', 'hasilkan hapus', '生成删除');
INSERT INTO `sys_menu` VALUES (1057, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'import code', 'kode impor', '导入代码');
INSERT INTO `sys_menu` VALUES (1058, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'preview code', 'kode pratinjau', '预览代码');
INSERT INTO `sys_menu` VALUES (1059, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'generate code', 'menghasilkan kode', '生成代码');
INSERT INTO `sys_menu` VALUES (1072, '图书管理', 1078, 1, 'book', 'hr/book/index', NULL, 1, 0, 'C', '0', '0', 'hr:book:list', 'education', 'admin', '2022-09-22 13:15:29', 'admin', '2022-10-03 11:54:14', 'Book Menu', 'Book Management', 'Manajemen Buku', NULL);
INSERT INTO `sys_menu` VALUES (1073, '图书查询', 1072, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:book:query', '#', 'admin', '2022-09-22 13:15:29', '', NULL, '', 'Book Query', 'System Book Eelic', NULL);
INSERT INTO `sys_menu` VALUES (1074, '已添加图书', 1072, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:book:add', '#', 'admin', '2022-09-22 13:15:29', '', NULL, '', 'Book Added', 'Buku Ditambahkan', NULL);
INSERT INTO `sys_menu` VALUES (1075, '书籍修改', 1072, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:book:edit', '#', 'admin', '2022-09-22 13:15:29', '', NULL, '', 'Book modification', 'Modifikasi buku', NULL);
INSERT INTO `sys_menu` VALUES (1076, '图书删除', 1072, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:book:remove', '#', 'admin', '2022-09-22 13:15:29', '', NULL, '', 'Book delete', 'Hapus buku', NULL);
INSERT INTO `sys_menu` VALUES (1077, '图书导出', 1072, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:book:export', '#', 'admin', '2022-09-22 13:15:29', 'admin', '2022-10-12 11:06:08', '', 'Book export', 'Ekspor buku', NULL);
INSERT INTO `sys_menu` VALUES (1078, '人力资源管理', 0, 4, 'hr', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2022-09-24 10:50:26', '', NULL, '', 'Hr Management', 'Manajemen SDM', NULL);
INSERT INTO `sys_menu` VALUES (1079, 'Book Loan Management', 1078, 1, 'loan', 'hr/loan/index', NULL, 1, 0, 'C', '0', '0', 'hr:loan:list', 'date', 'admin', '2022-09-26 09:23:56', 'admin', '2022-10-03 11:54:30', 'Book Loan Management菜单', 'Book Loan Management', 'Manajemen Peminjaman Buku', NULL);
INSERT INTO `sys_menu` VALUES (1080, 'Book Loan Management查询', 1079, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:loan:query', '#', 'admin', '2022-09-26 09:23:56', '', NULL, '', 'Book Loan Management', 'Book Loan Management', NULL);
INSERT INTO `sys_menu` VALUES (1081, 'Book Loan Management新增', 1079, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:loan:add', '#', 'admin', '2022-09-26 09:23:56', '', NULL, '', 'Book Loan Management', 'Book Loan Management', NULL);
INSERT INTO `sys_menu` VALUES (1082, 'Book Loan Management修改', 1079, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:loan:edit', '#', 'admin', '2022-09-26 09:23:56', '', NULL, '', 'Book Loan Management', 'Book Loan Management', NULL);
INSERT INTO `sys_menu` VALUES (1083, 'Book Loan Management删除', 1079, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:loan:remove', '#', 'admin', '2022-09-26 09:23:56', '', NULL, '', 'Book Loan Management', 'Book Loan Management', NULL);
INSERT INTO `sys_menu` VALUES (1084, 'Book Loan Management导出', 1079, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:loan:export', '#', 'admin', '2022-09-26 09:23:56', '', NULL, '', 'Book Loan Management', 'Book Loan Management', NULL);
INSERT INTO `sys_menu` VALUES (1085, '图书馆统计', 1078, 3, 'statistics', 'hr/statistics/index', NULL, 1, 0, 'C', '0', '0', 'hr:statistics:list', 'chart', 'admin', '2022-09-27 09:04:55', '', NULL, '', 'Libary Statistics', 'Statistik Perpustakaan', NULL);
INSERT INTO `sys_menu` VALUES (1086, 'book category', 1078, 1, 'category', 'hr/category/index', NULL, 1, 0, 'C', '0', '0', 'hr:category:list', 'dict', 'admin', '2022-09-30 10:26:43', 'admin', '2022-10-03 11:53:29', 'book category菜单', 'book category', 'Kategori Buku', NULL);
INSERT INTO `sys_menu` VALUES (1087, 'book category查询', 1086, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:category:query', '#', 'admin', '2022-09-30 10:26:43', '', NULL, '', 'book category', 'book category', NULL);
INSERT INTO `sys_menu` VALUES (1088, 'book category新增', 1086, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:category:add', '#', 'admin', '2022-09-30 10:26:43', '', NULL, '', 'book category', 'book category', NULL);
INSERT INTO `sys_menu` VALUES (1089, 'book category修改', 1086, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:category:edit', '#', 'admin', '2022-09-30 10:26:43', '', NULL, '', 'book category', 'book category', NULL);
INSERT INTO `sys_menu` VALUES (1090, 'book category删除', 1086, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:category:remove', '#', 'admin', '2022-09-30 10:26:43', '', NULL, '', 'book category', 'book category', NULL);
INSERT INTO `sys_menu` VALUES (1091, 'book category导出', 1086, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:category:export', '#', 'admin', '2022-09-30 10:26:43', '', NULL, '', 'book category', 'book category', NULL);
INSERT INTO `sys_menu` VALUES (1092, 'location', 1078, 1, 'location', 'hr/location/index', NULL, 1, 0, 'C', '0', '0', 'hr:location:list', 'documentation', 'admin', '2022-10-01 09:17:35', 'admin', '2022-10-03 11:52:55', 'location菜单', 'location', 'Lokasi', NULL);
INSERT INTO `sys_menu` VALUES (1093, 'location查询', 1092, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:location:query', '#', 'admin', '2022-10-01 09:17:35', '', NULL, '', 'location', 'location', NULL);
INSERT INTO `sys_menu` VALUES (1094, 'location新增', 1092, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:location:add', '#', 'admin', '2022-10-01 09:17:35', '', NULL, '', 'location', 'location', NULL);
INSERT INTO `sys_menu` VALUES (1095, 'location修改', 1092, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:location:edit', '#', 'admin', '2022-10-01 09:17:35', '', NULL, '', 'location', 'location', NULL);
INSERT INTO `sys_menu` VALUES (1096, 'location删除', 1092, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:location:remove', '#', 'admin', '2022-10-01 09:17:35', '', NULL, '', 'location', 'location', NULL);
INSERT INTO `sys_menu` VALUES (1097, 'location导出', 1092, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'hr:location:export', '#', 'admin', '2022-10-01 09:17:35', '', NULL, '', 'location', 'location', NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `notice_title_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'announcement title',
  `notice_title_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'judul pengumuman',
  `notice_title_tw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告标题',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-06-16 08:07:52', '', NULL, '管理员', 'Warm reminder: 2018-07-01 Ruoyi new version is released', 'Pengingat hangat: 2018-07-01 Ruoyi versi baru dirilis', '温馨提醒：2018-07-01 若依新版本发布啦');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-06-16 08:07:52', '', NULL, '管理员', 'Maintenance notice: 2018-07-01 Ruoyi system maintenance in the early morning', 'Pemberitahuan pemeliharaan: 2018-07-01 Pemeliharaan sistem Ruoyi di pagi hari', '维护通知：2018-07-01 若依系统凌晨维护');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `title_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'module title',
  `title_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'judul modul',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.project.monitor.controller.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-11 10:19:33', '', '');
INSERT INTO `sys_oper_log` VALUES (2, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '36.74.85.76', 'XX XX', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2022-06-16 00:07:52\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"Departemen R & D\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{\"@type\":\"java.util.HashMap\"},\"parentId\":101,\"status\":\"0\"},\"email\":\"eason@eelic.com\",\"loginDate\":\"2022-10-11 06:20:23\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"eason\",\"params\":{\"@type\":\"java.util.HashMap\"},\"phonenumber\":\"15080013550\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"@type\":\"java.util.HashMap\"},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":\"1\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 10:55:44', '', '');
INSERT INTO `sys_oper_log` VALUES (3, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/system/user/profile/updatePwd', '36.74.85.76', 'XX XX', '\"admin123\" \"Eason_1123\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 10:56:09', '', '');
INSERT INTO `sys_oper_log` VALUES (4, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '36.74.85.76', 'XX XX', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/jpeg/2022/10/58747af651d24402a792678945241773.jpeg\",\"code\":200}', 0, NULL, '2022-10-12 10:57:22', '', '');
INSERT INTO `sys_oper_log` VALUES (5, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '36.74.85.76', 'XX XX', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2022-06-16 00:07:52\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"Departemen R & D\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{\"@type\":\"java.util.HashMap\"},\"parentId\":101,\"status\":\"0\"},\"email\":\"eason@eelic.com\",\"loginDate\":\"2022-10-11 06:20:23\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"eason\",\"params\":{\"@type\":\"java.util.HashMap\"},\"phonenumber\":\"15080013550\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"@type\":\"java.util.HashMap\"},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":\"1\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 10:57:25', '', '');
INSERT INTO `sys_oper_log` VALUES (6, '字典类型', 2, 'com.ruoyi.project.system.controller.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '36.74.85.76', 'XX XX', '{\"createBy\":\"admin\",\"createTime\":\"2022-09-24 01:28:00\",\"dictId\":14,\"dictName\":\"语言\",\"dictType\":\"sys_language\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 10:58:15', '', '');
INSERT INTO `sys_oper_log` VALUES (7, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '36.74.85.76', 'XX XX', '{\"admin\":false,\"params\":{},\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 10:59:23', '', '');
INSERT INTO `sys_oper_log` VALUES (8, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '36.74.85.76', 'XX XX', '{\"children\":[],\"component\":\"\",\"createTime\":\"2022-09-22 05:15:29\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1077,\"menuName\":\"图书导出\",\"menuType\":\"F\",\"orderNum\":5,\"params\":{},\"parentId\":1072,\"path\":\"#\",\"perms\":\"system:book:export\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-12 11:06:08', '', '');
INSERT INTO `sys_oper_log` VALUES (9, '部门管理', 2, 'com.ruoyi.project.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '36.82.121.210', 'XX XX', '{\"ancestors\":\"0\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-06-16 00:07:51\",\"delFlag\":\"0\",\"deptId\":100,\"deptName\":\"EELIC\",\"email\":\"eason@eelic.com\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15080013550\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:44:47', '', '');
INSERT INTO `sys_oper_log` VALUES (10, '部门管理', 2, 'com.ruoyi.project.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '36.82.121.210', 'XX XX', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"createTime\":\"2022-06-16 00:07:51\",\"delFlag\":\"0\",\"deptId\":101,\"deptName\":\"Indoeelic\",\"email\":\"crystal@eelic.com\",\"leader\":\"crystall\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"phone\":\"15080013550\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:45:35', '', '');
INSERT INTO `sys_oper_log` VALUES (11, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,3,114,115,1054,1055,1057,1056,1058,1059,116,1078,1072,1073,1074,1075,1076,1077,1079,1080,1081,1082,1083,1084,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1085,4],\"params\":{},\"remark\":\"System\",\"roleId\":101,\"roleKey\":\"sys\",\"roleName\":\"������\",\"roleNameEn\":\"System\",\"roleNameId\":\"Sistem\",\"roleSort\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:49:33', '', '');
INSERT INTO `sys_oper_log` VALUES (12, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createTime\":\"2022-10-12 17:49:33\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,3,114,115,1054,1055,1057,1056,1058,1059,116,1078,1072,1073,1074,1075,1076,1077,1079,1080,1081,1082,1083,1084,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1085,4],\"params\":{},\"remark\":\"System\",\"roleId\":101,\"roleKey\":\"sys\",\"roleName\":\"System\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:49:46', '', '');
INSERT INTO `sys_oper_log` VALUES (13, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createTime\":\"2022-10-12 17:49:33\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,3,114,115,1054,1055,1057,1056,1058,1059,116,1078,1072,1073,1074,1075,1076,1077,1079,1080,1081,1082,1083,1084,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1085,4],\"params\":{},\"remark\":\"System\",\"roleId\":101,\"roleKey\":\"sys\",\"roleName\":\"System\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:49:53', '', '');
INSERT INTO `sys_oper_log` VALUES (14, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createTime\":\"2022-10-12 17:49:33\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,3,114,115,1054,1055,1057,1056,1058,1059,116,1078,1072,1073,1074,1075,1076,1077,1079,1080,1081,1082,1083,1084,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1085,4],\"params\":{},\"remark\":\"System\",\"roleId\":101,\"roleKey\":\"sys\",\"roleName\":\"System\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:49:59', '', '');
INSERT INTO `sys_oper_log` VALUES (15, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createTime\":\"2022-10-12 17:49:33\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,2,109,1045,1046,1047,110,1048,1049,1050,1051,1052,1053,111,112,113,3,114,115,1054,1055,1057,1056,1058,1059,116,1078,1072,1073,1074,1075,1076,1077,1079,1080,1081,1082,1083,1084,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1085,4],\"params\":{},\"remark\":\"System\",\"roleId\":101,\"roleKey\":\"sys\",\"roleName\":\"System\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:50:06', '', '');
INSERT INTO `sys_oper_log` VALUES (16, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2022-10-12 17:23:27\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2022-10-13 01:45:43\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"deva\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"remark\":\"System Setting\",\"roleIds\":[101],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":111,\"userName\":\"deva\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:51:06', '', '');
INSERT INTO `sys_oper_log` VALUES (17, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"Eason\",\"params\":{},\"postIds\":[1],\"remark\":\"System Setting\",\"roleIds\":[101],\"sex\":\"0\",\"status\":\"0\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:52:05', '', '');
INSERT INTO `sys_oper_log` VALUES (18, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2022-10-13 01:52:19\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"sys\",\"roleName\":\"System\",\"roleSort\":\"3\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:54:57', '', '');
INSERT INTO `sys_oper_log` VALUES (19, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2022-10-13 01:52:19\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1,4],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:55:07', '', '');
INSERT INTO `sys_oper_log` VALUES (20, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2022-10-13 01:52:19\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:55:12', '', '');
INSERT INTO `sys_oper_log` VALUES (21, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2022-10-13 01:52:19\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:55:14', '', '');
INSERT INTO `sys_oper_log` VALUES (22, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2022-10-13 01:52:19\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:55:16', '', '');
INSERT INTO `sys_oper_log` VALUES (23, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2022-10-13 01:52:19\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:55:25', '', '');
INSERT INTO `sys_oper_log` VALUES (24, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2022-10-13 01:55:35\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:56:50', '', '');
INSERT INTO `sys_oper_log` VALUES (25, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'Eason', NULL, '/system/user', '36.82.121.210', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2022-10-12 17:52:05\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"Zoe Technology\",\"leader\":\"Eason\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":105,\"email\":\"\",\"loginDate\":\"2022-10-13 01:55:35\",\"loginIp\":\"36.82.121.210\",\"nickName\":\"Eason\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"remark\":\"System Setting\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"Eason\",\"userId\":113,\"userName\":\"Eason\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 01:57:06', '', '');
INSERT INTO `sys_oper_log` VALUES (26, '用户管理', 5, 'com.ruoyi.project.system.controller.SysUserController.export()', 'POST', 1, 'Eason', NULL, '/system/user/export', '36.82.121.210', 'XX XX', '{\"admin\":false,\"params\":{\"dataScope\":\" AND (d.dept_id IN ( SELECT dept_id FROM sys_role_dept WHERE role_id = 2 ) )\"}}', NULL, 0, NULL, '2022-10-13 01:57:17', '', '');
INSERT INTO `sys_oper_log` VALUES (27, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createTime\":\"2022-06-16 00:07:52\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1078,1072,1073,1074,1075,1076,1077,1079,1080,1081,1082,1083,1084,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1085],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 02:02:32', '', '');
INSERT INTO `sys_oper_log` VALUES (28, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createTime\":\"2022-06-16 00:07:52\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1078,1072,1073,1074,1075,1076,1077,1079,1080,1081,1082,1083,1084,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1085],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 02:02:38', '', '');
INSERT INTO `sys_oper_log` VALUES (29, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'deva', NULL, '/system/role/dataScope', '36.82.121.210', 'XX XX', '{\"admin\":false,\"createTime\":\"2022-10-12 17:49:33\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"System\",\"roleId\":101,\"roleKey\":\"sys\",\"roleName\":\"System\",\"roleSort\":\"3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 02:36:13', '', '');
INSERT INTO `sys_oper_log` VALUES (30, 'book category', 1, 'com.ruoyi.project.eelic.controller.SysBookCategoryController.add()', 'POST', 1, 'deva', NULL, '/hr/category', '36.82.121.210', 'XX XX', '{\"categoryId\":\"2d615edc4abd11ed979e0242066457c8\",\"categoryName\":\"test\",\"createTime\":\"2022-10-13T06:06:28.788Z\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 06:06:28', '', '');
INSERT INTO `sys_oper_log` VALUES (31, 'book category', 3, 'com.ruoyi.project.eelic.controller.SysBookCategoryController.remove()', 'DELETE', 1, 'deva', NULL, '/hr/category/2d615edc4abd11ed979e0242066457c8', '36.82.121.210', 'XX XX', '{categoryIds=2d615edc4abd11ed979e0242066457c8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-10-13 06:06:37', '', '');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `post_name_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'position Name',
  `post_name_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Nama posisi',
  `post_name_tw` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '岗位名称',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Chairman', 'Ketua', '董事长');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Project Manager', 'Manajer Proyek', '项目经理');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-06-16 08:07:52', '', NULL, '', 'Human Resources', 'Sumber daya manusia', '人力资源');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-06-16 08:07:52', 'admin', '2022-09-02 09:53:18', '', 'General staff', 'Staf Umum', '普通员工');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `role_name_en` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_name_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_name_tw` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-06-16 08:07:52', '', NULL, '超级管理员', 'super administrator', 'administrator super', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-06-16 08:07:52', 'admin', '2022-10-13 02:02:38', '普通角色', 'common role', 'peran umum', '普通角色');
INSERT INTO `sys_role` VALUES (101, 'System', 'sys', 3, '1', 1, 1, '0', '0', 'admin', '2022-10-13 01:49:33', 'admin', '2022-10-13 02:36:13', 'System', 'System', 'Sistem', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  `dept_id` bigint UNSIGNED NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  `menu_id` bigint UNSIGNED NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1072);
INSERT INTO `sys_role_menu` VALUES (2, 1073);
INSERT INTO `sys_role_menu` VALUES (2, 1074);
INSERT INTO `sys_role_menu` VALUES (2, 1075);
INSERT INTO `sys_role_menu` VALUES (2, 1076);
INSERT INTO `sys_role_menu` VALUES (2, 1077);
INSERT INTO `sys_role_menu` VALUES (2, 1078);
INSERT INTO `sys_role_menu` VALUES (2, 1079);
INSERT INTO `sys_role_menu` VALUES (2, 1080);
INSERT INTO `sys_role_menu` VALUES (2, 1081);
INSERT INTO `sys_role_menu` VALUES (2, 1082);
INSERT INTO `sys_role_menu` VALUES (2, 1083);
INSERT INTO `sys_role_menu` VALUES (2, 1084);
INSERT INTO `sys_role_menu` VALUES (2, 1085);
INSERT INTO `sys_role_menu` VALUES (2, 1086);
INSERT INTO `sys_role_menu` VALUES (2, 1087);
INSERT INTO `sys_role_menu` VALUES (2, 1088);
INSERT INTO `sys_role_menu` VALUES (2, 1089);
INSERT INTO `sys_role_menu` VALUES (2, 1090);
INSERT INTO `sys_role_menu` VALUES (2, 1091);
INSERT INTO `sys_role_menu` VALUES (2, 1092);
INSERT INTO `sys_role_menu` VALUES (2, 1093);
INSERT INTO `sys_role_menu` VALUES (2, 1094);
INSERT INTO `sys_role_menu` VALUES (2, 1095);
INSERT INTO `sys_role_menu` VALUES (2, 1096);
INSERT INTO `sys_role_menu` VALUES (2, 1097);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 2);
INSERT INTO `sys_role_menu` VALUES (101, 3);
INSERT INTO `sys_role_menu` VALUES (101, 4);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 101);
INSERT INTO `sys_role_menu` VALUES (101, 102);
INSERT INTO `sys_role_menu` VALUES (101, 103);
INSERT INTO `sys_role_menu` VALUES (101, 104);
INSERT INTO `sys_role_menu` VALUES (101, 105);
INSERT INTO `sys_role_menu` VALUES (101, 106);
INSERT INTO `sys_role_menu` VALUES (101, 107);
INSERT INTO `sys_role_menu` VALUES (101, 108);
INSERT INTO `sys_role_menu` VALUES (101, 109);
INSERT INTO `sys_role_menu` VALUES (101, 110);
INSERT INTO `sys_role_menu` VALUES (101, 111);
INSERT INTO `sys_role_menu` VALUES (101, 112);
INSERT INTO `sys_role_menu` VALUES (101, 113);
INSERT INTO `sys_role_menu` VALUES (101, 114);
INSERT INTO `sys_role_menu` VALUES (101, 115);
INSERT INTO `sys_role_menu` VALUES (101, 116);
INSERT INTO `sys_role_menu` VALUES (101, 500);
INSERT INTO `sys_role_menu` VALUES (101, 501);
INSERT INTO `sys_role_menu` VALUES (101, 1000);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 1007);
INSERT INTO `sys_role_menu` VALUES (101, 1008);
INSERT INTO `sys_role_menu` VALUES (101, 1009);
INSERT INTO `sys_role_menu` VALUES (101, 1010);
INSERT INTO `sys_role_menu` VALUES (101, 1011);
INSERT INTO `sys_role_menu` VALUES (101, 1012);
INSERT INTO `sys_role_menu` VALUES (101, 1013);
INSERT INTO `sys_role_menu` VALUES (101, 1014);
INSERT INTO `sys_role_menu` VALUES (101, 1015);
INSERT INTO `sys_role_menu` VALUES (101, 1016);
INSERT INTO `sys_role_menu` VALUES (101, 1017);
INSERT INTO `sys_role_menu` VALUES (101, 1018);
INSERT INTO `sys_role_menu` VALUES (101, 1019);
INSERT INTO `sys_role_menu` VALUES (101, 1020);
INSERT INTO `sys_role_menu` VALUES (101, 1021);
INSERT INTO `sys_role_menu` VALUES (101, 1022);
INSERT INTO `sys_role_menu` VALUES (101, 1023);
INSERT INTO `sys_role_menu` VALUES (101, 1024);
INSERT INTO `sys_role_menu` VALUES (101, 1025);
INSERT INTO `sys_role_menu` VALUES (101, 1026);
INSERT INTO `sys_role_menu` VALUES (101, 1027);
INSERT INTO `sys_role_menu` VALUES (101, 1028);
INSERT INTO `sys_role_menu` VALUES (101, 1029);
INSERT INTO `sys_role_menu` VALUES (101, 1030);
INSERT INTO `sys_role_menu` VALUES (101, 1031);
INSERT INTO `sys_role_menu` VALUES (101, 1032);
INSERT INTO `sys_role_menu` VALUES (101, 1033);
INSERT INTO `sys_role_menu` VALUES (101, 1034);
INSERT INTO `sys_role_menu` VALUES (101, 1035);
INSERT INTO `sys_role_menu` VALUES (101, 1036);
INSERT INTO `sys_role_menu` VALUES (101, 1037);
INSERT INTO `sys_role_menu` VALUES (101, 1038);
INSERT INTO `sys_role_menu` VALUES (101, 1039);
INSERT INTO `sys_role_menu` VALUES (101, 1040);
INSERT INTO `sys_role_menu` VALUES (101, 1041);
INSERT INTO `sys_role_menu` VALUES (101, 1042);
INSERT INTO `sys_role_menu` VALUES (101, 1043);
INSERT INTO `sys_role_menu` VALUES (101, 1044);
INSERT INTO `sys_role_menu` VALUES (101, 1045);
INSERT INTO `sys_role_menu` VALUES (101, 1046);
INSERT INTO `sys_role_menu` VALUES (101, 1047);
INSERT INTO `sys_role_menu` VALUES (101, 1048);
INSERT INTO `sys_role_menu` VALUES (101, 1049);
INSERT INTO `sys_role_menu` VALUES (101, 1050);
INSERT INTO `sys_role_menu` VALUES (101, 1051);
INSERT INTO `sys_role_menu` VALUES (101, 1052);
INSERT INTO `sys_role_menu` VALUES (101, 1053);
INSERT INTO `sys_role_menu` VALUES (101, 1054);
INSERT INTO `sys_role_menu` VALUES (101, 1055);
INSERT INTO `sys_role_menu` VALUES (101, 1056);
INSERT INTO `sys_role_menu` VALUES (101, 1057);
INSERT INTO `sys_role_menu` VALUES (101, 1058);
INSERT INTO `sys_role_menu` VALUES (101, 1059);
INSERT INTO `sys_role_menu` VALUES (101, 1072);
INSERT INTO `sys_role_menu` VALUES (101, 1073);
INSERT INTO `sys_role_menu` VALUES (101, 1074);
INSERT INTO `sys_role_menu` VALUES (101, 1075);
INSERT INTO `sys_role_menu` VALUES (101, 1076);
INSERT INTO `sys_role_menu` VALUES (101, 1077);
INSERT INTO `sys_role_menu` VALUES (101, 1078);
INSERT INTO `sys_role_menu` VALUES (101, 1079);
INSERT INTO `sys_role_menu` VALUES (101, 1080);
INSERT INTO `sys_role_menu` VALUES (101, 1081);
INSERT INTO `sys_role_menu` VALUES (101, 1082);
INSERT INTO `sys_role_menu` VALUES (101, 1083);
INSERT INTO `sys_role_menu` VALUES (101, 1084);
INSERT INTO `sys_role_menu` VALUES (101, 1085);
INSERT INTO `sys_role_menu` VALUES (101, 1086);
INSERT INTO `sys_role_menu` VALUES (101, 1087);
INSERT INTO `sys_role_menu` VALUES (101, 1088);
INSERT INTO `sys_role_menu` VALUES (101, 1089);
INSERT INTO `sys_role_menu` VALUES (101, 1090);
INSERT INTO `sys_role_menu` VALUES (101, 1091);
INSERT INTO `sys_role_menu` VALUES (101, 1092);
INSERT INTO `sys_role_menu` VALUES (101, 1093);
INSERT INTO `sys_role_menu` VALUES (101, 1094);
INSERT INTO `sys_role_menu` VALUES (101, 1095);
INSERT INTO `sys_role_menu` VALUES (101, 1096);
INSERT INTO `sys_role_menu` VALUES (101, 1097);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '2' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `user_lang` smallint UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'eason', '00', 'eason@eelic.com', '15080013550', '0', '/profile/avatar/jpeg/2022/10/58747af651d24402a792678945241773.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-10-17 17:03:31', 'admin', '2022-06-16 08:07:52', '', '2022-10-17 16:03:31', '管理员', 2);
INSERT INTO `sys_user` VALUES (2, 105, 'ruoyi', '若依', '00', '1ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '0', '127.0.0.1', '2022-09-26 15:04:19', 'admin', '2022-06-16 08:07:52', 'admin', '2022-10-12 10:59:23', '测试员', 0);
INSERT INTO `sys_user` VALUES (111, NULL, 'deva', 'deva', '00', '', '', '0', '', '$2a$10$vVnLdfy/WKC5IITjfV1eU.yqDxcWI74FrVQgokXj9Kq01uaizJsdC', '0', '0', '36.74.120.4', '2022-10-17 11:48:12', '', '2022-10-13 01:23:27', 'admin', '2022-10-17 03:48:12', 'System Setting', 0);
INSERT INTO `sys_user` VALUES (112, NULL, 'Naura', 'Naura', '00', '', '', '2', '', '$2a$10$H47Q28UTmAVyst35U25Zl.j1RdegkxswSuHjmj6wIed0ahZapQC16', '0', '0', '36.82.121.210', '2022-10-13 09:40:56', '', '2022-10-13 01:40:20', '', '2022-10-13 01:40:55', NULL, 0);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint UNSIGNED NOT NULL COMMENT '用户ID',
  `post_id` bigint UNSIGNED NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (113, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint UNSIGNED NOT NULL COMMENT '用户ID',
  `role_id` bigint UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (111, 101);
INSERT INTO `sys_user_role` VALUES (113, 2);

SET FOREIGN_KEY_CHECKS = 1;
