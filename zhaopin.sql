/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : zhaopin

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 02/06/2022 11:08:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
                           `company_id` int NOT NULL AUTO_INCREMENT COMMENT '公司id',
                           `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司名',
                           `company_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司logo',
                           `company_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司阶段',
                           `company_emp_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公司员工规模',
                           `company_industury` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司所属行业',
                           `company_desc` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司简介',
                           `company_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司网址',
                           `company_addr_province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司地址省份',
                           `company_addr_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司地址城市',
                           `company_addr_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司地址区域',
                           `company_adrr_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司详细地址',
                           `status` int NULL DEFAULT NULL,
                           `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                           `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                           PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;


-- ----------------------------
-- Table structure for company_admin
-- ----------------------------
DROP TABLE IF EXISTS `company_admin`;
CREATE TABLE `company_admin`  (
  `company_admin_id` int NOT NULL AUTO_INCREMENT COMMENT '公司管理员id',
  `company_id` int NULL DEFAULT NULL COMMENT '公司id',
  `company_admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司管理员账户名',
  `company_admin_telno` bigint NULL DEFAULT NULL COMMENT '公司管理员账户手机',
  `company_admin_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司管理员账户邮箱',
  `company_admin_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司管理员账户密码',
  `company_admin_create_time` datetime NULL DEFAULT NULL COMMENT '公司管理员账户创建时间',
  `status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`company_admin_id`) USING BTREE,
  INDEX `fk_company_admin`(`company_id`) USING BTREE,
  CONSTRAINT `fk_company_admin` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for company_receive_resume_record
-- ----------------------------
DROP TABLE IF EXISTS `company_receive_resume_record`;
CREATE TABLE `company_receive_resume_record`  (
  `company_receive_resume_record_id` int NOT NULL AUTO_INCREMENT COMMENT '公司收到简历记录id',
  `company_id` int NOT NULL COMMENT '公司id',
  `resume_id` int NULL DEFAULT NULL COMMENT '简历id',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '公司收到简历时间',
  `company_admin_id` int NULL DEFAULT NULL COMMENT '公司管理员id',
  `status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`company_receive_resume_record_id`) USING BTREE,
  INDEX `fk_receive_record_company`(`company_id`) USING BTREE,
  INDEX `fk_receive_record_resume`(`resume_id`) USING BTREE,
  INDEX `fk_receive_record_admin`(`company_admin_id`) USING BTREE,
  CONSTRAINT `fk_receive_record_admin` FOREIGN KEY (`company_admin_id`) REFERENCES `company_admin` (`company_admin_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_receive_record_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_receive_record_resume` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `cust_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `cust_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `cust_telno` bigint NULL DEFAULT NULL COMMENT '用户手机',
  `cust_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `cust_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `cust_regist_time` datetime NULL DEFAULT NULL COMMENT '注册时间',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for honor
-- ----------------------------
DROP TABLE IF EXISTS `honor`;
CREATE TABLE `honor`  (
  `honor_id` int NOT NULL AUTO_INCREMENT COMMENT '获奖id',
  `resume_id` int NULL DEFAULT NULL COMMENT '简历id',
  `honor_create_time` date NULL DEFAULT NULL COMMENT '获奖时间',
  `honor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '奖项名称',
  `honor_grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '获奖等级',
  `status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`honor_id`) USING BTREE,
  INDEX `fk_honor_resume`(`resume_id`) USING BTREE,
  CONSTRAINT `fk_honor_resume` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `job_id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `company_id` int NULL DEFAULT NULL COMMENT '公司id',
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `job_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位工作城市',
  `job_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作年限',
  `job_degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学历要求',
  `job_need_number` int NULL DEFAULT NULL COMMENT '招聘人数',
  `job_publish_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `job_welfare` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '福利',
  `job_duty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位职责',
  `job_demand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位要求',
  `job_addr_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位具体地点',
  `job_min_salary` decimal(10, 2) NULL DEFAULT NULL COMMENT '最低薪资',
  `job_max_salary` decimal(10, 2) NULL DEFAULT NULL COMMENT '最高薪资',
  `job_search_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '搜索关键字',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`) USING BTREE,
  INDEX `fk_job_company`(`company_id`) USING BTREE,
  CONSTRAINT `fk_job_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for job_collection
-- ----------------------------
DROP TABLE IF EXISTS `job_collection`;
CREATE TABLE `job_collection`  (
  `job_collection_id` int NOT NULL AUTO_INCREMENT COMMENT '职位收藏id',
  `cust_id` int NOT NULL COMMENT '用户id',
  `job_id` int NULL DEFAULT NULL COMMENT '职位id',
  `collect_time` datetime NULL DEFAULT NULL COMMENT '收藏时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_collection_id`) USING BTREE,
  INDEX `fk_collect_cust`(`cust_id`) USING BTREE,
  INDEX `fk_collect_job`(`job_id`) USING BTREE,
  CONSTRAINT `fk_collect_cust` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_collect_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for project_experience
-- ----------------------------
DROP TABLE IF EXISTS `project_experience`;
CREATE TABLE `project_experience`  (
  `project_experi_id` int NOT NULL AUTO_INCREMENT COMMENT '项目经验id',
  `resume_id` int NULL DEFAULT NULL COMMENT '简历id',
  `project_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目所在公司名',
  `project_start_time` date NULL DEFAULT NULL COMMENT '项目经验开始时间',
  `project_end_time` datetime NULL DEFAULT NULL COMMENT '项目经验结束时间',
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目经验名称',
  `project_content_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目内容描述',
  `project_duty_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目职责描述',
  `status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`project_experi_id`) USING BTREE,
  INDEX `fk_project_resume`(`resume_id`) USING BTREE,
  CONSTRAINT `fk_project_resume` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `resume_id` int NOT NULL AUTO_INCREMENT COMMENT '简历id',
  `cust_id` int NULL DEFAULT NULL COMMENT '用户id',
  `resume_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历名称',
  `resume_create_time` datetime NULL DEFAULT NULL COMMENT '简历创建时间',
  `resume_update_time` datetime NULL DEFAULT NULL COMMENT '简历修改时间',
  `resume_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历中头像',
  `resume_birth` date NULL DEFAULT NULL COMMENT '简历中用户出生日期',
  `resume_telno` bigint NULL DEFAULT NULL COMMENT '简历中用户手机',
  `resume_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历中用户邮箱',
  `resume_gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历中用户性别',
  `resume_leaving__working` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历中用户在职或离职情况',
  `resume_live_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历中用户居住地',
  `resume_personid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历中用户身份证',
  `resume_income` decimal(9, 0) NULL DEFAULT NULL COMMENT '简历中用户年收入',
  `resume_full_part_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简历中用户兼职或全职',
  `status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`resume_id`) USING BTREE,
  INDEX `fk_resume_customer`(`cust_id`) USING BTREE,
  CONSTRAINT `fk_resume_customer` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for resume_delivery_record
-- ----------------------------
DROP TABLE IF EXISTS `resume_delivery_record`;
CREATE TABLE `resume_delivery_record`  (
  `resume_delivery_record_id` int NOT NULL AUTO_INCREMENT COMMENT '简历投递记录id',
  `cust_id` int NULL DEFAULT NULL COMMENT '用户id',
  `resume_id` int NULL DEFAULT NULL COMMENT '简历id',
  `job_id` int NULL DEFAULT NULL COMMENT '职位id',
  `delivery_time` datetime NULL DEFAULT NULL COMMENT '投递时间',
  `delivery_status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`resume_delivery_record_id`) USING BTREE,
  INDEX `fk_delivery_customer`(`cust_id`) USING BTREE,
  INDEX `fk_delivery_resume`(`resume_id`) USING BTREE,
  INDEX `fk_delivery_job`(`job_id`) USING BTREE,
  CONSTRAINT `fk_delivery_customer` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_delivery_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_delivery_resume` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill`  (
  `skill_id` int NOT NULL AUTO_INCREMENT COMMENT '专业技能id',
  `resume_id` int NULL DEFAULT NULL COMMENT '简历id',
  `skill_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业技能名称',
  `skill_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业技能描述',
  `status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`skill_id`) USING BTREE,
  INDEX `fk_skill_resume`(`resume_id`) USING BTREE,
  CONSTRAINT `fk_skill_resume` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for work_experience
-- ----------------------------
DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE `work_experience`  (
  `work_experi_id` int NOT NULL AUTO_INCREMENT COMMENT '工作经验id',
  `resume_id` int NULL DEFAULT NULL COMMENT '简历id',
  `work_start_time` date NULL DEFAULT NULL COMMENT '工作经验开始时间',
  `work_end_time` date NULL DEFAULT NULL COMMENT '工作经验结束时间',
  `work_company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验所在公司名称',
  `work_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验工作职位',
  `work_department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验所在部门名称',
  `work_company_scaler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验公司规模',
  `work_company_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验公司性质（外企国企私营等）',
  `work_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验工作描述',
  `work_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工作经验类型',
  `status` int NULL DEFAULT NULL,
  `other1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `other2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`work_experi_id`) USING BTREE,
  INDEX `fk_work_resume`(`resume_id`) USING BTREE,
  CONSTRAINT `fk_work_resume` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`resume_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
