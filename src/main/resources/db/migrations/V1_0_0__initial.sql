-- ----------------------------
-- 1、部门表
-- ----------------------------
drop table if exists sys_dept;
CREATE TABLE `sys_dept` (
	`dept_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '部门编号',
	`parent_id` 			BIGINT(20) 		NULL 	DEFAULT '0' 	COMMENT '上级部门编号',
	`ancestors` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '组级列表',
	`dept_name` 			VARCHAR(20) 	NULL 	DEFAULT '' 		COMMENT '部门名称',
	`sort_no` 				INT(4) 			NULL 	DEFAULT '0' 	COMMENT '排列顺序',
	`leader` 				VARCHAR(20) 	NULL 	DEFAULT '' 		COMMENT '领导人',
	`mobile`				VARCHAR(11) 	NULL 	DEFAULT '' 		COMMENT '手机号码',
	`email` 				VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '邮箱',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '部门状态（0未知 1正常 2停用）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`dept_id`)
)
COMMENT='部门表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 2、用户信息表
-- ----------------------------
drop table if exists sys_user;
CREATE TABLE `sys_user` (
	`user_id`		 		BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '用户编号',
	`dept_id` 				BIGINT(20) 		NULL 	DEFAULT NULL 	COMMENT '部门编号',
	`login_name` 			VARCHAR(20) 	NOT NULL 				COMMENT '登录账号',
	`user_name` 			VARCHAR(20) 	NOT NULL 				COMMENT '用户昵称',
	`user_type` 			TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '用户类型（0系统用户）',
	`mobile` 				VARCHAR(11) 	NULL 	DEFAULT '' 		COMMENT '手机号码',
	`email` 				VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '用户邮箱',
	`sex` 					TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '用户性别（0未知 1男 2女）',
	`avatar` 				VARCHAR(100) 	NULL 	DEFAULT '#'		COMMENT '头像路径',
	`password` 				VARCHAR(64) 	NULL 	DEFAULT '' 		COMMENT '密码',
	`salt` 					VARCHAR(20) 	NULL 	DEFAULT '' 		COMMENT '盐加密',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '用户状态（0未知 1正常 2停用）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`user_id`)
)
COMMENT='用户信息表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 3、岗位信息表
-- ----------------------------
drop table if exists sys_post;
CREATE TABLE `sys_post` (
	`post_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '岗位编号',
	`post_code` 			VARCHAR(50) 	NOT NULL 				COMMENT '岗位代码',
	`post_name` 			VARCHAR(50) 	NOT NULL 				COMMENT '岗位名称',
	`sort_no` 				INT(4) 			NULL 	DEFAULT '0' 	COMMENT '排列顺序',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '岗位状态（0未知 1正常 2停用）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`post_id`)
)
COMMENT='岗位信息表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 4、角色信息表
-- ----------------------------
drop table if exists sys_role;
CREATE TABLE `sys_role` (
	`role_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '角色编号',
	`role_code`				VARCHAR(50) 	NOT NULL 				COMMENT '角色代码',
	`role_name` 			VARCHAR(50) 	NOT NULL 				COMMENT '角色名称',
	`sort_no` 				INT(4) 			NULL 	DEFAULT '0' 	COMMENT '排列顺序',
	`data_scope` 			TINYINT(1) 		NULL 	DEFAULT '1' 	COMMENT '数据范围（1全部数据权限 2自定数据权限）',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '角色状态（0未知 1正常 2停用）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`role_id`)
)
COMMENT='角色信息表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 5、菜单权限表
-- ----------------------------
drop table if exists sys_menu;
CREATE TABLE `sys_menu` (
	`menu_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
	`menu_name` 			VARCHAR(50) 	NOT NULL 				COMMENT '菜单名称',
	`parent_id` 			BIGINT(20) 		NULL 	DEFAULT '0' 	COMMENT '上级菜单编号',
	`sort_no` 				INT(4) 			NULL 	DEFAULT '0' 	COMMENT '排列顺序',
	`url` 					VARCHAR(200) 	NULL 	DEFAULT '#' 	COMMENT '请求地址',
	`menu_type` 			CHAR(1) 		NULL 	DEFAULT '' 		COMMENT '菜单类型（D目录 M菜单 B按钮）',
	`perms` 				VARCHAR(100) 	NULL 	DEFAULT '' 		COMMENT '权限标识',
	`icon` 					VARCHAR(100) 	NULL 	DEFAULT '#' 	COMMENT '菜单图标',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '菜单状态（0未知 1显示 2隐藏）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`menu_id`)
)
COMMENT='菜单权限表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 6、用户和角色关联表  用户N-1角色
-- ----------------------------
drop table if exists sys_user_role;
CREATE TABLE `sys_user_role` (
	`user_id` 				BIGINT(20) 		NOT NULL 				COMMENT '用户编号',
	`role_id` 				BIGINT(20) 		NOT NULL 				COMMENT '角色编号',
	PRIMARY KEY (`user_id`, `role_id`)
)
COMMENT='用户和角色关联表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


-- ----------------------------
-- 7、角色和菜单关联表  角色1-N菜单
-- ----------------------------
drop table if exists sys_role_menu;
CREATE TABLE `sys_role_menu` (
	`role_id` 				BIGINT(20) 		NOT NULL 				COMMENT '角色编号',
	`menu_id` 				BIGINT(20) 		NOT NULL 				COMMENT '菜单编号',
	PRIMARY KEY (`role_id`, `menu_id`)
)
COMMENT='角色和菜单关联表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


-- ----------------------------
-- 8、角色和部门关联表  角色1-N部门
-- ----------------------------
drop table if exists sys_role_dept;
CREATE TABLE `sys_role_dept` (
	`role_id` 				BIGINT(20) 		NOT NULL 				COMMENT '角色编号',
	`dept_id` 				BIGINT(20) 		NOT NULL 				COMMENT '部门编号',
	PRIMARY KEY (`role_id`, `dept_id`)
)
COMMENT='角色和部门关联表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


-- ----------------------------
-- 9、用户与岗位关联表  用户1-N岗位
-- ----------------------------
drop table if exists sys_user_post;
CREATE TABLE `sys_user_post` (
	`user_id` 				BIGINT(20) 		NOT NULL 				COMMENT '用户编号',
	`post_id` 				BIGINT(20) 		NOT NULL 				COMMENT '岗位编号',
	PRIMARY KEY (`user_id`, `post_id`)
)
COMMENT='用户与岗位关联表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


-- ----------------------------
-- 10、操作日志记录
-- ----------------------------
drop table if exists sys_oper_log;
CREATE TABLE `sys_oper_log` (
	`oper_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '日志主键',
	`title` 				VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '模块标题',
	`bus_type` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '业务类型（0其它 1新增 2修改 3删除）',
	`method` 				VARCHAR(100) 	NULL 	DEFAULT '' 		COMMENT '方法名称',
	`oper_type` 			TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
	`oper_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '操作人员',
	`dept_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '部门名称',
	`oper_ip` 				VARCHAR(20) 	NULL 	DEFAULT '' 		COMMENT '主机地址',
	`oper_location` 		VARCHAR(200) 	NULL 	DEFAULT '' 		COMMENT '操作地点',
	`oper_url` 				VARCHAR(200) 	NULL 	DEFAULT '#'		COMMENT '请求URL',
	`oper_params` 			VARCHAR(200) 	NULL 	DEFAULT '' 		COMMENT '请求参数',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '操作状态（0未知 1正常 2异常）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`oper_id`)
)
COMMENT='操作日志记录'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 11、字典类型表
-- ----------------------------
drop table if exists sys_dict_type;
CREATE TABLE `sys_dict_type` (
	`dict_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '字典编号',
	`dict_code` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '字典代码',
	`dict_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '字典名称',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '字典类型状态（0未知 1正常 2停用）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`dict_id`),
	UNIQUE INDEX `dict_code` (`dict_code`)
)
COMMENT='字典类型表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 12、字典数据表
-- ----------------------------
drop table if exists sys_dict_data;
CREATE TABLE `sys_dict_data` (
	`dict_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '字典编码',
	`dict_code` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '字典代码',
	`dict_label` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '字典标签',
	`dict_value` 			VARCHAR(200) 	NULL 	DEFAULT '' 		COMMENT '字典键值',
	`sort_no` 				INT(4) 			NULL 	DEFAULT '0' 	COMMENT '排列顺序',
	`css_style` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '样式属性（其他样式扩展）',
	`list_style` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '列表样式属性',
	`is_default` 			BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '是否默认（0否 1是）',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '字典数据状态（0未知 1正常 2停用）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`dict_id`)
)
COMMENT='字典数据表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 13、参数配置表
-- ----------------------------
drop table if exists sys_config;
CREATE TABLE `sys_config` (
	`config_id` 			BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '参数编号',
	`config_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '参数名称',
	`config_key` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '参数键名',
	`config_value` 			VARCHAR(200) 	NULL 	DEFAULT '' 		COMMENT '参数键值',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '系统内置（0否 1是）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`config_id`)
)
COMMENT='参数配置表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 14、系统访问记录
-- ----------------------------
drop table if exists sys_access_log;
CREATE TABLE `sys_access_log` (
	`log_id` 				BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '日志编号',
	`login_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '登录账号',
	`dept_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '部门名称',
	`login_ip` 				VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '登录IP',
	`login_location` 		VARCHAR(200) 	NULL 	DEFAULT '' 		COMMENT '登录地点',
	`browser` 				VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '浏览器版本',
	`os` 					VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '操作系统',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '登录状态（0未知 1成功 2失败）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`log_id`)
)
COMMENT='系统访问记录'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;


-- ----------------------------
-- 15、在线用户记录
-- ----------------------------
drop table if exists sys_user_online;
CREATE TABLE `sys_user_online` (
	`session_id` 			VARCHAR(50) 	NOT NULL DEFAULT '' 	COMMENT '会话编号',
	`login_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '登录账号',
	`dept_name` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '部门名称',
	`login_ip` 				VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '登录IP',
	`login_location` 		VARCHAR(200) 	NULL 	DEFAULT '' 		COMMENT '登录地点',
	`browser` 				VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '浏览器版本',
	`os` 					VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '操作系统',
	`expires_in` 			INT(5) 			NULL 	DEFAULT '0' 	COMMENT '会话超时时间，单位为分钟',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '在线状态（0未知 1在线 2离线）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`session_id`)
)
COMMENT='在线用户记录'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


-- ----------------------------
-- 16、通知公告表
-- ----------------------------
drop table if exists sys_notice;
CREATE TABLE `sys_notice` (
	`notice_id` 			BIGINT(20) 		NOT NULL AUTO_INCREMENT COMMENT '公告编号',
	`notice_title` 			VARCHAR(50) 	NOT NULL 				COMMENT '公告标题',
	`notice_type` 			TINYINT(1) 		NOT NULL 				COMMENT '公告类型（1通知 2公告）',
	`notice_content` 		VARCHAR(500) 	NOT NULL 				COMMENT '公告内容',
	`status` 				TINYINT(1) 		NULL 	DEFAULT '0' 	COMMENT '公告状态（0未知 1正常 2关闭）',
	`deleted` 				BIT(1) 			NULL 	DEFAULT b'0' 	COMMENT '删除标志（0未删除 1已删除）',
	`created_by` 			VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '创建者',
	`created_date` 			TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '创建时间',
	`last_modified_by` 		VARCHAR(50) 	NULL 	DEFAULT '' 		COMMENT '更新者',
	`last_modified_date` 	TIMESTAMP 		NULL 	DEFAULT NULL 	COMMENT '更新时间',
	`remark` 				VARCHAR(500) 	NULL 	DEFAULT '' 		COMMENT '备注',
	PRIMARY KEY (`notice_id`)
)
COMMENT='通知公告表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=100
;
