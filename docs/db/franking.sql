/*
 Navicat Premium Data Transfer

 Source Server         : 本地库
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : franking

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 21/11/2021 21:48:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attr_spec
-- ----------------------------
DROP TABLE IF EXISTS `attr_spec`;
CREATE TABLE `attr_spec`  (
  `ATTR_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录属性的主键',
  `ATTR_CENTER_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属中心',
  `ATTR_NBR` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录属性编码',
  `ATTR_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录业务对象属性规格名称',
  `ATTR_DESC` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录业务对象属性规格详细描述',
  `STATUS_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录状态。LOVB=PUB-C-0001。',
  `CREATE_STAFF` bigint NULL DEFAULT NULL COMMENT '记录创建的员工',
  `UPDATE_STAFF` bigint NULL DEFAULT NULL COMMENT '记录修改的员工',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '记录创建的时间',
  `STATUS_DATE` datetime(0) NULL DEFAULT NULL COMMENT '状态修改的时间',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '记录修改的时间',
  `REMARK` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录备注信息。',
  PRIMARY KEY (`ATTR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '属性规格' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attr_spec
-- ----------------------------
INSERT INTO `attr_spec` VALUES (1, 'ALL', 'FUNC_EVENT_TYPE', '事件类型', '事件类型', '1000', 1, NULL, '2021-11-21 00:10:14', NULL, NULL, NULL);
INSERT INTO `attr_spec` VALUES (2, 'ALL', 'META_TYPE', '数据类型', '数据类型', '1000', 1, NULL, '2021-11-21 09:51:47', NULL, NULL, NULL);
INSERT INTO `attr_spec` VALUES (3, 'ALL', 'META_UNIT', '数据单位', '数据单位', '1000', 1, NULL, '2021-11-21 10:15:39', NULL, NULL, NULL);
INSERT INTO `attr_spec` VALUES (4, 'ALL', 'DEVICE_TYPE', '设备类型', '设备类型', '1000', NULL, 1, '2021-11-21 10:24:59', NULL, NULL, NULL);
INSERT INTO `attr_spec` VALUES (5, 'ALL', 'ZONE', '放置位置', '放置位置', '1000', 1, NULL, '2021-11-21 10:45:46', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for attr_value
-- ----------------------------
DROP TABLE IF EXISTS `attr_value`;
CREATE TABLE `attr_value`  (
  `ATTR_VALUE_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录属性值的主键',
  `ATTR_ID` bigint NOT NULL COMMENT '记录业务对象属性规格业务编码',
  `ATTR_NBR` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录属性编码',
  `ATTR_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录属性值编码',
  `ATTR_VALUE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录属性值。',
  `ATTR_VALUE_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录属性值名称',
  `ATTR_VALUE_DESC` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录属性值描述',
  `CREATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '记录的创建时间',
  `STATUS_DATE` datetime(0) NULL DEFAULT NULL COMMENT '状态修改的时间',
  `STATUS_CD` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录状态',
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL COMMENT '记录的修改时间',
  `CREATE_STAFF` bigint NULL DEFAULT NULL COMMENT '记录的创建员工',
  `UPDATE_STAFF` bigint NULL DEFAULT NULL COMMENT '记录的修改员工',
  `ATTR_VALUE_SORT` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录同个属性不同的属性值在界面展现的顺序号',
  `REMARK` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录备注信息。',
  PRIMARY KEY (`ATTR_VALUE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '属性值规格' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attr_value
-- ----------------------------
INSERT INTO `attr_value` VALUES (1, 1, 'FUNC_EVENT_TYPE', 'INFO', 'INFO', '通知', '通知', '2021-11-21 09:49:25', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (2, 1, 'FUNC_EVENT_TYPE', 'WARN', 'WARN', '警告', '警告', '2021-11-21 09:48:13', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (3, 1, 'FUNC_EVENT_TYPE', 'FAULT', 'FAULT', '故障', '故障', '2021-11-21 09:48:13', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (4, 2, 'META_TYPE', 'text', 'text', '字符串|text', '基本类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (5, 2, 'META_TYPE', 'int', 'int', '整型|int', '基本类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (6, 2, 'META_TYPE', 'boolean', 'boolean', '布尔类型|boolean', '基本类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (7, 2, 'META_TYPE', 'date', 'date', '日期类型|date', '基本类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (8, 2, 'META_TYPE', 'float', 'float', '单精度型浮点|float', '基本类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (9, 2, 'META_TYPE', 'double', 'double', '双精度型浮点|double', '基本类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (10, 2, 'META_TYPE', 'long', 'long', '长整型|long', '基本类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (11, 2, 'META_TYPE', 'mapper', 'mapper', '枚举类型|long', '符合类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (12, 2, 'META_TYPE', 'struct', 'struct', '结构体|struct', '复合类型', NULL, '2021-11-21 09:58:36', '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (13, 3, 'META_UNIT', 'mm', 'mm', '毫米', '毫米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (14, 3, 'META_UNIT', 'cm', 'cm', '厘米', '厘米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (15, 3, 'META_UNIT', 'dm', 'dm', '分米', '分米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (16, 3, 'META_UNIT', 'km', 'km', '千米', '千米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (17, 3, 'META_UNIT', 'm', 'm', '米', '米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (18, 3, 'META_UNIT', 'c㎡', 'c㎡', '平方厘米', '平方厘米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (19, 3, 'META_UNIT', 'm㎡', 'm㎡', '平方毫米', '平方毫米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (20, 3, 'META_UNIT', 'k㎡', 'k㎡', '平方千米', '平方千米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (21, 3, 'META_UNIT', '㎡', '㎡', '平方米', '平方米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (22, 3, 'META_UNIT', 'nm', 'nm', '纳米', '纳米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (23, 3, 'META_UNIT', 'μm', 'μm', '微米', '微米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (24, 3, 'META_UNIT', 'L', 'L', '升', '升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (25, 3, 'META_UNIT', 'mm³', 'mm³', '立方毫米', '立方毫米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (26, 3, 'META_UNIT', 'cm³', 'cm³', '立方厘米', '立方厘米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (27, 3, 'META_UNIT', 'km³', 'km³', '立方千米', '立方千米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (28, 3, 'META_UNIT', 'm³', 'm³', '立方米', '立方米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (29, 3, 'META_UNIT', 'h㎡', 'h㎡', '公顷', '公顷', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (30, 3, 'META_UNIT', 'kPa', 'kPa', '千帕', '千帕', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (31, 3, 'META_UNIT', 'Pa', 'Pa', '帕斯卡', '帕斯卡', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (32, 3, 'META_UNIT', 'mg', 'mg', '毫克', '毫克', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (33, 3, 'META_UNIT', 'g', 'g', '克', '克', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (34, 3, 'META_UNIT', 'kg', 'kg', '千克', '千克', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (35, 3, 'META_UNIT', 'N', 'N', '牛', '牛', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (36, 3, 'META_UNIT', 'mL', 'mL', '毫升', '毫升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (37, 3, 'META_UNIT', '℉', '℉', '华氏度', '华氏度', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (38, 3, 'META_UNIT', 'K', 'K', '开尔文', '开尔文', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (39, 3, 'META_UNIT', 't', 't', '吨', '吨', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (40, 3, 'META_UNIT', '°C', '°C', '摄氏度', '摄氏度', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (41, 3, 'META_UNIT', 'mPa', 'mPa', '毫帕', '毫帕', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (42, 3, 'META_UNIT', 'hPa', 'hPa', '百帕', '百帕', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (43, 3, 'META_UNIT', 'J', 'J', '焦耳', '焦耳', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (44, 3, 'META_UNIT', 'cal', 'cal', '卡路里', '卡路里', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (45, 3, 'META_UNIT', 'kW·h', 'kW·h', '千瓦时', '千瓦时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (46, 3, 'META_UNIT', 'Wh', 'Wh', '瓦时', '瓦时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (47, 3, 'META_UNIT', 'eV', 'eV', '电子伏', '电子伏', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (48, 3, 'META_UNIT', 'kJ', 'kJ', '千焦', '千焦', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (49, 3, 'META_UNIT', '°', '°', '度', '度', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (50, 3, 'META_UNIT', 'rad', 'rad', '弧度', '弧度', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (51, 3, 'META_UNIT', 'Hz', 'Hz', '赫兹', '赫兹', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (52, 3, 'META_UNIT', 'μW', 'μW', '微瓦', '微瓦', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (53, 3, 'META_UNIT', 'mW', 'mW', '毫瓦', '毫瓦', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (54, 3, 'META_UNIT', 'kW', 'kW', '千瓦特', '千瓦特', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (55, 3, 'META_UNIT', 'W', 'W', '瓦特', '瓦特', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (56, 3, 'META_UNIT', 'kn', 'kn', '节', '节', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (57, 3, 'META_UNIT', 'km/h', 'km/h', '千米每小时', '千米每小时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (58, 3, 'META_UNIT', 'm/s', 'm/s', '米每秒', '米每秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (59, 3, 'META_UNIT', '″', '″', '秒', '秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (60, 3, 'META_UNIT', '′', '′', '分', '分', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (61, 3, 'META_UNIT', 'min', 'min', '分钟', '分钟', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (62, 3, 'META_UNIT', 'h', 'h', '小时', '小时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (63, 3, 'META_UNIT', 'day', 'day', '日', '日', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (64, 3, 'META_UNIT', 'week', 'week', '周', '周', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (65, 3, 'META_UNIT', 'month', 'month', '月', '月', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (66, 3, 'META_UNIT', 'year', 'year', '年', '年', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (67, 3, 'META_UNIT', 'kA', 'kA', '千安', '千安', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (68, 3, 'META_UNIT', 'A', 'A', '安培', '安培', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (69, 3, 'META_UNIT', 'mV', 'mV', '毫伏', '毫伏', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (70, 3, 'META_UNIT', 'V', 'V', '伏特', '伏特', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (71, 3, 'META_UNIT', 'ms', 'ms', '毫秒', '毫秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (72, 3, 'META_UNIT', 's', 's', '秒', '秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (73, 3, 'META_UNIT', 'nF', 'nF', '纳法', '纳法', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (74, 3, 'META_UNIT', 'pF', 'pF', '皮法', '皮法', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (75, 3, 'META_UNIT', 'μF', 'μF', '微法', '微法', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (76, 3, 'META_UNIT', 'F', 'F', '法拉', '法拉', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (77, 3, 'META_UNIT', 'Ω', 'Ω', '欧姆', '欧姆', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (78, 3, 'META_UNIT', 'μA', 'μA', '微安', '微安', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (79, 3, 'META_UNIT', 'mA', 'mA', '毫安', '毫安', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (80, 3, 'META_UNIT', 'g/L', 'g/L', '克每升', '克每升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (81, 3, 'META_UNIT', 'mg/L', 'mg/L', '毫克每升', '毫克每升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (82, 3, 'META_UNIT', 'μg/m³', 'μg/m³', '微克每立方米', '微克每立方米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (83, 3, 'META_UNIT', 'mg/m³', 'mg/m³', '毫克每立方米', '毫克每立方米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (84, 3, 'META_UNIT', 'g/m³', 'g/m³', '克每立方米', '克每立方米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (85, 3, 'META_UNIT', 'kg/m³', 'kg/m³', '千克每立方米', '千克每立方米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (86, 3, 'META_UNIT', 'grav', 'grav', '重力加速度', '重力加速度', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (87, 3, 'META_UNIT', 'dB', 'dB', '分贝', '分贝', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (88, 3, 'META_UNIT', '%', '%', '百分比', '百分比', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (89, 3, 'META_UNIT', 'lm', 'lm', '流明', '流明', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (90, 3, 'META_UNIT', 'bit', 'bit', '比特', '比特', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (91, 3, 'META_UNIT', 'g/mL', 'g/mL', '克每毫升', '克每毫升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (92, 3, 'META_UNIT', 'B', 'B', '字节', '字节', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (93, 3, 'META_UNIT', 'μg(d㎡·d)', 'μg(d㎡·d)', '微克每平方分米每天', '微克每平方分米每天', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (94, 3, 'META_UNIT', 'ppm', 'ppm', '百万分率', '百万分率', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (95, 3, 'META_UNIT', 'pixel', 'pixel', '像素', '像素', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (96, 3, 'META_UNIT', 'Lux', 'Lux', '照度', '照度', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (97, 3, 'META_UNIT', 'KVar', 'KVar', '千乏', '千乏', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (98, 3, 'META_UNIT', 'μg/L', 'μg/L', '微克每升', '微克每升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (99, 3, 'META_UNIT', 'kcal', 'kcal', '千卡路里', '千卡路里', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (100, 3, 'META_UNIT', 'GB', 'GB', '吉字节', '吉字节', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (101, 3, 'META_UNIT', 'MB', 'MB', '兆字节', '兆字节', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (102, 3, 'META_UNIT', 'KB', 'KB', '千字节', '千字节', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (103, 3, 'META_UNIT', 't/h', 't/h', '吨每小时', '吨每小时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (104, 3, 'META_UNIT', 'KCL/h', 'KCL/h', '千卡每小时', '千卡每小时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (105, 3, 'META_UNIT', 'L/s', 'L/s', '升每秒', '升每秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (106, 3, 'META_UNIT', 'Mpa', 'Mpa', '兆帕', '兆帕', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (107, 3, 'META_UNIT', 'm³/h', 'm³/h', '立方米每小时', '立方米每小时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (108, 3, 'META_UNIT', 'kvar/h', 'kvar/h', '千乏时', '千乏时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (109, 3, 'META_UNIT', 'uw/cm2', 'uw/cm2', '微瓦每平方厘米', '微瓦每平方厘米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (110, 3, 'META_UNIT', '只', '只', '只', '只', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (111, 3, 'META_UNIT', '%RH', '%RH', '相对湿度', '相对湿度', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (112, 3, 'META_UNIT', 'm³/s', 'm³/s', '立方米每秒', '立方米每秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (113, 3, 'META_UNIT', 'kg/s', 'kg/s', '公斤每秒', '公斤每秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (114, 3, 'META_UNIT', 'r/min', 'r/min', '转每分钟', '转每分钟', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (115, 3, 'META_UNIT', 'count', 'count', '次', '次', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (116, 3, 'META_UNIT', 'gear', 'gear', '档', '档', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (117, 3, 'META_UNIT', 'stepCount', 'stepCount', '步', '步', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (118, 3, 'META_UNIT', 'Nm3/h', 'Nm3/h', '标准立方米每小时', '标准立方米每小时', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (119, 3, 'META_UNIT', 'kV', 'kV', '千伏', '千伏', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (120, 3, 'META_UNIT', 'KVA', 'KVA', '千伏安', '千伏安', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (121, 3, 'META_UNIT', 'kvar', 'kvar', '千乏', '千乏', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (122, 3, 'META_UNIT', 'turn/m', 'turn/m', '转每分钟', '转每分钟', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (123, 3, 'META_UNIT', 'V/m', 'V/m', '伏特每米', '伏特每米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (124, 3, 'META_UNIT', 'ml/min', 'ml/min', '滴速', '滴速', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (125, 3, 'META_UNIT', 'mm/Hg', 'mm/Hg', '血压', '血压', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (126, 3, 'META_UNIT', 'mmol/L', 'mmol/L', '血糖', '血糖', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (127, 3, 'META_UNIT', 'mm/s', 'mm/s', '毫米每秒', '毫米每秒', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (128, 3, 'META_UNIT', 'N/C', 'N/C', '牛顿每库仑', '牛顿每库仑', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (129, 3, 'META_UNIT', 'ppb', 'ppb', '微克每升', '微克每升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (130, 3, 'META_UNIT', 'uS/cm', 'uS/cm', '微西每厘米', '微西每厘米', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (131, 3, 'META_UNIT', 'ppt', 'ppt', '纳克每升', '纳克每升', '2021-11-21 10:17:22', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (132, 4, 'DEVICE_TYPE', 'television', 'television', '电视', '电视', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (133, 4, 'DEVICE_TYPE', 'light', 'light', '灯', '灯', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (134, 4, 'DEVICE_TYPE', 'aircondition', 'aircondition', '空调', '空调', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (135, 4, 'DEVICE_TYPE', 'airpurifier', 'airpurifier', '空气净化器', '空气净化器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (136, 4, 'DEVICE_TYPE', 'outlet', 'outlet', '插座', '插座', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (137, 4, 'DEVICE_TYPE', 'switch', 'switch', '开关', '开关', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (138, 4, 'DEVICE_TYPE', 'roboticvacuum', 'roboticvacuum', '扫地机器人', '扫地机器人', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (139, 4, 'DEVICE_TYPE', 'curtain', 'curtain', '窗帘', '窗帘', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (140, 4, 'DEVICE_TYPE', 'humidifier', 'humidifier', '加湿器', '加湿器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (141, 4, 'DEVICE_TYPE', 'fan', 'fan', '风扇', '风扇', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (142, 4, 'DEVICE_TYPE', 'bottlewarmer', 'bottlewarmer', '暖奶器', '暖奶器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (143, 4, 'DEVICE_TYPE', 'soymilkmaker', 'soymilkmaker', '豆浆机', '豆浆机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (144, 4, 'DEVICE_TYPE', 'kettle', 'kettle', '电热水壶', '电热水壶', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (145, 4, 'DEVICE_TYPE', 'waterdispenser', 'waterdispenser', '饮水机', '饮水机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (146, 4, 'DEVICE_TYPE', 'camera', 'camera', '摄像头', '摄像头', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (147, 4, 'DEVICE_TYPE', 'router', 'router', '路由器', '路由器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (148, 4, 'DEVICE_TYPE', 'cooker', 'cooker', '电饭煲', '电饭煲', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (149, 4, 'DEVICE_TYPE', 'waterheater', 'waterheater', '热水器', '热水器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (150, 4, 'DEVICE_TYPE', 'oven', 'oven', '烤箱', '烤箱', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (151, 4, 'DEVICE_TYPE', 'waterpurifier', 'waterpurifier', '净水器', '净水器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (152, 4, 'DEVICE_TYPE', 'fridge', 'fridge', '冰箱', '冰箱', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (153, 4, 'DEVICE_TYPE', 'STB', 'STB', '机顶盒', '机顶盒', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (154, 4, 'DEVICE_TYPE', 'sensor', 'sensor', '传感器', '传感器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (155, 4, 'DEVICE_TYPE', 'washmachine', 'washmachine', '洗衣机', '洗衣机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (156, 4, 'DEVICE_TYPE', 'smartbed', 'smartbed', '智能床', '智能床', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (157, 4, 'DEVICE_TYPE', 'aromamachine', 'aromamachine', '香薰机', '香薰机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (158, 4, 'DEVICE_TYPE', 'window', 'window', '窗', '窗', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (159, 4, 'DEVICE_TYPE', 'kitchenventilator', 'kitchenventilator', '抽油烟机', '抽油烟机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (160, 4, 'DEVICE_TYPE', 'fingerprintlock', 'fingerprintlock', '指纹锁', '指纹锁', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (161, 4, 'DEVICE_TYPE', 'telecontroller', 'telecontroller', '万能遥控器', '万能遥控器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (162, 4, 'DEVICE_TYPE', 'dishwasher', 'dishwasher', '洗碗机', '洗碗机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (163, 4, 'DEVICE_TYPE', 'dehumidifier', 'dehumidifier', '除湿机', '除湿机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (164, 4, 'DEVICE_TYPE', 'dryer', 'dryer', '干衣机', '干衣机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (165, 4, 'DEVICE_TYPE', 'wall-hung-boiler', 'wall-hung-boiler', '壁挂炉', '壁挂炉', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (166, 4, 'DEVICE_TYPE', 'microwaveoven', 'microwaveoven', '微波炉', '微波炉', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (167, 4, 'DEVICE_TYPE', 'heater', 'heater', '取暖器', '取暖器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (168, 4, 'DEVICE_TYPE', 'mosquitoDispeller', 'mosquitoDispeller', '驱蚊器', '驱蚊器', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (169, 4, 'DEVICE_TYPE', 'treadmill', 'treadmill', '跑步机', '跑步机', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (170, 4, 'DEVICE_TYPE', 'smart-gating', 'smart-gating', '智能门控(门锁)', '智能门控(门锁)', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (171, 4, 'DEVICE_TYPE', 'smart-band', 'smart-band', '智能手环', '智能手环', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (172, 4, 'DEVICE_TYPE', 'hanger', 'hanger', '晾衣架', '晾衣架', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (173, 4, 'DEVICE_TYPE', 'bloodPressureMeter', 'bloodPressureMeter', '血压仪', '血压仪', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (174, 4, 'DEVICE_TYPE', 'bloodGlucoseMeter', 'bloodGlucoseMeter', '血糖仪', '血糖仪', '2021-11-21 18:59:40', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (175, 5, 'ZONE', 'ZONE', '卧室', '卧室', '卧室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (176, 5, 'ZONE', 'ZONE', '客房', '客房', '客房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (177, 5, 'ZONE', 'ZONE', '主卧', '主卧', '主卧', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (178, 5, 'ZONE', 'ZONE', '次卧', '次卧', '次卧', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (179, 5, 'ZONE', 'ZONE', '书房', '书房', '书房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (180, 5, 'ZONE', 'ZONE', '餐厅', '餐厅', '餐厅', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (181, 5, 'ZONE', 'ZONE', '厨房', '厨房', '厨房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (182, 5, 'ZONE', 'ZONE', '洗手间', '洗手间', '洗手间', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (183, 5, 'ZONE', 'ZONE', '浴室', '浴室', '浴室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (184, 5, 'ZONE', 'ZONE', '阳台', '阳台', '阳台', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (185, 5, 'ZONE', 'ZONE', '宠物房', '宠物房', '宠物房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (186, 5, 'ZONE', 'ZONE', '老人房', '老人房', '老人房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (187, 5, 'ZONE', 'ZONE', '儿童房', '儿童房', '儿童房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (188, 5, 'ZONE', 'ZONE', '婴儿房', '婴儿房', '婴儿房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (189, 5, 'ZONE', 'ZONE', '保姆房', '保姆房', '保姆房', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (190, 5, 'ZONE', 'ZONE', '玄关', '玄关', '玄关', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (191, 5, 'ZONE', 'ZONE', '一楼', '一楼', '一楼', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (192, 5, 'ZONE', 'ZONE', '二楼', '二楼', '二楼', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (193, 5, 'ZONE', 'ZONE', '三楼', '三楼', '三楼', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (194, 5, 'ZONE', 'ZONE', '四楼', '四楼', '四楼', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (195, 5, 'ZONE', 'ZONE', '楼梯', '楼梯', '楼梯', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (196, 5, 'ZONE', 'ZONE', '走廊', '走廊', '走廊', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (197, 5, 'ZONE', 'ZONE', '过道', '过道', '过道', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (198, 5, 'ZONE', 'ZONE', '楼上', '楼上', '楼上', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (199, 5, 'ZONE', 'ZONE', '楼下', '楼下', '楼下', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (200, 5, 'ZONE', 'ZONE', '影音室', '影音室', '影音室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (201, 5, 'ZONE', 'ZONE', '娱乐室', '娱乐室', '娱乐室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (202, 5, 'ZONE', 'ZONE', '工作间', '工作间', '工作间', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (203, 5, 'ZONE', 'ZONE', '杂物间', '杂物间', '杂物间', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (204, 5, 'ZONE', 'ZONE', '衣帽间', '衣帽间', '衣帽间', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (205, 5, 'ZONE', 'ZONE', '吧台', '吧台', '吧台', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (206, 5, 'ZONE', 'ZONE', '花园', '花园', '花园', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (207, 5, 'ZONE', 'ZONE', '温室', '温室', '温室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (208, 5, 'ZONE', 'ZONE', '车库', '车库', '车库', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (209, 5, 'ZONE', 'ZONE', '休息室', '休息室', '休息室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (210, 5, 'ZONE', 'ZONE', '办公室', '办公室', '办公室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);
INSERT INTO `attr_value` VALUES (211, 5, 'ZONE', 'ZONE', '起居室', '起居室', '起居室', '2021-11-21 19:02:32', NULL, '1000', NULL, 1, NULL, '1', NULL);

-- ----------------------------
-- Table structure for dev_model
-- ----------------------------
DROP TABLE IF EXISTS `dev_model`;
CREATE TABLE `dev_model`  (
  `model_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '模型id',
  `model_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '模型编码',
  `model_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '模型名称',
  `transport_list` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '支持的网络传输协议列表',
  `protocol_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '关联的消息协议',
  `node_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '节点类型 直连设备/子设备/网关设备',
  `model_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '描述',
  `model_icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '模型图标地址',
  `model_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '1000:草稿 2000:发布 3000:暂停',
  `status_cd` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1000' COMMENT '1000:有效 2000:无效',
  `create_date` timestamp(0) NOT NULL COMMENT '创建时间',
  `create_user` bigint NOT NULL DEFAULT 0 COMMENT '创建人',
  `update_date` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`model_id`) USING BTREE,
  UNIQUE INDEX `UNIQUE_CODE`(`model_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '产品物模型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dev_model
-- ----------------------------

-- ----------------------------
-- Table structure for dev_model_func
-- ----------------------------
DROP TABLE IF EXISTS `dev_model_func`;
CREATE TABLE `dev_model_func`  (
  `model_func_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '关联的产品编码',
  `func_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '功能名称',
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标识符',
  `func_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '功能类型 服务 属性 事件',
  `data_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '数据类型 对应主数据model_func_data_type -> attr_code,属性类型根据attr_code作为attr_nbr取单位枚举值',
  `data_define` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '数据定义，JSON格式，数字显示取值范围，文本显示长度',
  `wr_type` int NOT NULL DEFAULT 0 COMMENT '0:只读 1:读写',
  `func_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '描述',
  `event_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '事件类型',
  `async` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1000' COMMENT '默认异步(服务调用通知结果方式)',
  `input_param` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '服务输入参数',
  `output_param` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '服务输出参数',
  `create_date` timestamp(0) NOT NULL COMMENT '创建时间',
  `create_user` bigint NOT NULL DEFAULT 0 COMMENT '创建人',
  `update_date` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`model_func_id`) USING BTREE,
  UNIQUE INDEX `UNIQUE_PR_ID`(`model_code`, `identifier`, `func_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '产品物模型功能' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dev_model_func
-- ----------------------------

-- ----------------------------
-- Table structure for dev_model_func_attr
-- ----------------------------
DROP TABLE IF EXISTS `dev_model_func_attr`;
CREATE TABLE `dev_model_func_attr`  (
  `func_attr_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ATTR_VALUE_ID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '关联的产品功能编码',
  `unit` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '计量单位(CODE) 对应 attr_value',
  `unit_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '计量单位名称 对应 attr_value_name',
  `create_user` bigint NOT NULL DEFAULT 0 COMMENT '创建人',
  `update_date` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`func_attr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '功能产品属性' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dev_model_func_attr
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
