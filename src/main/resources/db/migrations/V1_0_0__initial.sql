-- ----------------------------
-- 1、部门表
-- ----------------------------
drop table if exists `sys_dept`;
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
-- 初始化-部门表数据
-- ----------------------------
insert into `sys_dept` values(1, 	0,	'0',		'以奇科技 ',	0,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '以奇科技');
insert into `sys_dept` values(2,	1,	'0,1',		'深圳总公司',	1,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '深圳总公司');
insert into `sys_dept` values(3,	1,	'0,1',		'长沙分公司 ',	2,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '长沙分公司');
insert into `sys_dept` values(4,	2,	'0,1,2',	'研发部门 ',	1,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '研发部门');
insert into `sys_dept` values(5,	2,	'0,1,2',	'市场部门 ',	2,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '市场部门');
insert into `sys_dept` values(6,	2,	'0,1,2',	'测试部门 ',	3,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '测试部门');
insert into `sys_dept` values(7,	2,	'0,1,2',	'财务部门 ',	4,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '财务部门');
insert into `sys_dept` values(8,	2,	'0,1,2',	'运维部门 ',	5,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '运维部门');
insert into `sys_dept` values(9,	3,	'0,1,3',	'市场部门 ',	1,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '市场部门');
insert into `sys_dept` values(10,	3,	'0,1,3',	'财务部门 ',	2,	'以奇',	'15888888888',	'yq@126.com',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '财务部门');


-- ----------------------------
-- 2、用户信息表
-- ----------------------------
drop table if exists `sys_user`;
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
-- 初始化-用户信息表数据
-- ----------------------------
insert into `sys_user` values(1,  4, 'admin',	'管理员',	0, '15888888888', 'admin@yq.com', 1, '#', '29c67a30398638269fe600f73a054934', '111111', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '管理员');
insert into `sys_user` values(2,  6, 'yq',		'以奇',	0, '15666666666', 'yq@126.com',   1, '#', '8e6d98b90472783cc73c17047ddccf36', '222222', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '测试员');


-- ----------------------------
-- 3、岗位信息表
-- ----------------------------
drop table if exists `sys_post`;
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
-- 初始化-岗位信息表数据
-- ----------------------------
insert into `sys_post` values(1, 'ceo',  '董事长',	1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '董事长');
insert into `sys_post` values(2, 'se',   '项目经理',	2, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '项目经理');
insert into `sys_post` values(3, 'hr',   '人力资源',	3, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '人力资源');
insert into `sys_post` values(4, 'user', '普通员工',	4, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '普通员工');


-- ----------------------------
-- 4、角色信息表
-- ----------------------------
drop table if exists `sys_role`;
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
-- 初始化-角色信息表数据
-- ----------------------------
insert into `sys_role` values(1, 'admin',	'管理员',	  1, 1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '管理员');
insert into `sys_role` values(2, 'user',	'普通用户', 2, 2, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '普通用户');


-- ----------------------------
-- 5、菜单权限表
-- ----------------------------
drop table if exists `sys_menu`;
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
-- 初始化-菜单信息表数据
-- ----------------------------
-- 一级菜单
insert into `sys_menu` values(1, 	'系统管理', 0,   1, '#', 'D', '', 'fa fa-gear',			1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统管理目录');
insert into `sys_menu` values(2, 	'系统监控', 0,   2, '#', 'D', '', 'fa fa-video-camera',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统监控目录');
insert into `sys_menu` values(3, 	'系统工具', 0,   3, '#', 'D', '', 'fa fa-bars',			1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统工具目录');
-- 二级菜单
insert into `sys_menu` values(100,  '用户管理', 1,   1, '/system/user',        'M', 'system:user:view',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '用户管理菜单');
insert into `sys_menu` values(101,  '角色管理', 1,   2, '/system/role',        'M', 'system:role:view',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '角色管理菜单');
insert into `sys_menu` values(102,  '菜单管理', 1,   3, '/system/menu',        'M', 'system:menu:view',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '菜单管理菜单');
insert into `sys_menu` values(103,  '部门管理', 1,   4, '/system/dept',        'M', 'system:dept:view',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '部门管理菜单');
insert into `sys_menu` values(104,  '岗位管理', 1,   5, '/system/post',        'M', 'system:post:view',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '岗位管理菜单');
insert into `sys_menu` values(105,  '字典管理', 1,   6, '/system/dict',        'M', 'system:dict:view',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '字典管理菜单');
insert into `sys_menu` values(106,  '参数设置', 1,   7, '/system/config',      'M', 'system:config:view',       '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '参数设置菜单');
insert into `sys_menu` values(107,  '通知公告', 1,   8, '/system/notice',      'M', 'system:notice:view',       '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '通知公告菜单');
insert into `sys_menu` values(108,  '日志管理', 1,   9, '#',                   'D', '',                         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '日志管理菜单');
insert into `sys_menu` values(109,  '在线用户', 2,   1, '/monitor/online',     'M', 'monitor:online:view',      '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '在线用户菜单');
insert into `sys_menu` values(110,  '定时任务', 2,   2, '/monitor/job',        'M', 'monitor:job:view',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '定时任务菜单');
insert into `sys_menu` values(111,  '数据监控', 2,   3, '/monitor/data',       'M', 'monitor:data:view',        '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '数据监控菜单');
insert into `sys_menu` values(112,  '表单构建', 3,   1, '/tool/build',         'M', 'tool:build:view',          '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '表单构建菜单');
insert into `sys_menu` values(113,  '代码生成', 3,   2, '/tool/gen',           'M', 'tool:gen:view',            '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '代码生成菜单');
insert into `sys_menu` values(114,  '系统接口', 3,	   3, '/tool/swagger',       'M', 'tool:swagger:view',        '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统接口菜单');
-- 三级菜单
insert into `sys_menu` values(500,  '操作日志', 108, 1, '/monitor/operlog',    'M', 'monitor:operlog:view',     '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '操作日志菜单');
insert into `sys_menu` values(501,  '登录日志', 108, 2, '/monitor/logininfor', 'M', 'monitor:logininfor:view',  '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '登录日志菜单');
-- 用户管理按钮
insert into `sys_menu` values(1000, '用户查询', 100, 1, '#',  'B', 'system:user:list',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1001, '用户新增', 100, 2, '#',  'B', 'system:user:add',         			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1002, '用户修改', 100, 3, '#',  'B', 'system:user:edit',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1003, '用户删除', 100, 4, '#',  'B', 'system:user:remove',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1004, '用户导出', 100, 5, '#',  'B', 'system:user:export',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1005, '重置密码', 100, 6, '#',  'B', 'system:user:resetPwd',    			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 角色管理按钮
insert into `sys_menu` values(1006, '角色查询', 101, 1, '#',  'B', 'system:role:list',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1007, '角色新增', 101, 2, '#',  'B', 'system:role:add',         			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1008, '角色修改', 101, 3, '#',  'B', 'system:role:edit',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1009, '角色删除', 101, 4, '#',  'B', 'system:role:remove',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1010, '角色导出', 101, 5, '#',  'B', 'system:role:export',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 菜单管理按钮
insert into `sys_menu` values(1011, '菜单查询', 102, 1, '#',  'B', 'system:menu:list',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1012, '菜单新增', 102, 2, '#',  'B', 'system:menu:add',         			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1013, '菜单修改', 102, 3, '#',  'B', 'system:menu:edit',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1014, '菜单删除', 102, 4, '#',  'B', 'system:menu:remove',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 部门管理按钮
insert into `sys_menu` values(1015, '部门查询', 103, 1, '#',  'B', 'system:dept:list',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1016, '部门新增', 103, 2, '#',  'B', 'system:dept:add',         			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1017, '部门修改', 103, 3, '#',  'B', 'system:dept:edit',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1018, '部门删除', 103, 4, '#',  'B', 'system:dept:remove',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 岗位管理按钮
insert into `sys_menu` values(1019, '岗位查询', 104, 1, '#',  'B', 'system:post:list',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1020, '岗位新增', 104, 2, '#',  'B', 'system:post:add',         			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1021, '岗位修改', 104, 3, '#',  'B', 'system:post:edit',        			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1022, '岗位删除', 104, 4, '#',  'B', 'system:post:remove',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1023, '岗位导出', 104, 5, '#',  'B', 'system:post:export',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 字典管理按钮
insert into `sys_menu` values(1024, '字典查询', 105, 1, '#',  'B', 'system:dict:list',         		'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1025, '字典新增', 105, 2, '#',  'B', 'system:dict:add',          		'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1026, '字典修改', 105, 3, '#',  'B', 'system:dict:edit',         		'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1027, '字典删除', 105, 4, '#',  'B', 'system:dict:remove',       		'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1028, '字典导出', 105, 5, '#',  'B', 'system:dict:export',       		'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 参数设置按钮
insert into `sys_menu` values(1029, '参数查询', 106, 1, '#',  'B', 'system:config:list',     			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1030, '参数新增', 106, 2, '#',  'B', 'system:config:add',       			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1031, '参数修改', 106, 3, '#',  'B', 'system:config:edit',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1032, '参数删除', 106, 4, '#',  'B', 'system:config:remove',    			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1033, '参数导出', 106, 5, '#',  'B', 'system:config:export',    			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 通知公告按钮
insert into `sys_menu` values(1034, '公告查询', 107, 1, '#',  'B', 'system:notice:list',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1035, '公告新增', 107, 2, '#',  'B', 'system:notice:add',       			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1036, '公告修改', 107, 3, '#',  'B', 'system:notice:edit',      			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1037, '公告删除', 107, 4, '#',  'B', 'system:notice:remove',    			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 操作日志按钮
insert into `sys_menu` values(1038, '操作查询', 500, 1, '#',  'B', 'monitor:operlog:list',    			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1039, '操作删除', 500, 2, '#',  'B', 'monitor:operlog:remove',  			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1040, '详细信息', 500, 3, '#',  'B', 'monitor:operlog:detail',  			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1041, '日志导出', 500, 4, '#',  'B', 'monitor:operlog:export',  			'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 登录日志按钮
insert into `sys_menu` values(1042, '登录查询', 501, 1, '#',  'B', 'monitor:logininfor:list',         '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1043, '登录删除', 501, 2, '#',  'B', 'monitor:logininfor:remove',       '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1044, '日志导出', 501, 3, '#',  'B', 'monitor:logininfor:export',       '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 在线用户按钮
insert into `sys_menu` values(1045, '在线查询', 109, 1, '#',  'B', 'monitor:online:list',             '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1046, '批量强退', 109, 2, '#',  'B', 'monitor:online:batchForceLogout', '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1047, '单条强退', 109, 3, '#',  'B', 'monitor:online:forceLogout',      '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 定时任务按钮
insert into `sys_menu` values(1048, '任务查询', 110, 1, '#',  'B', 'monitor:job:list',                '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1049, '任务新增', 110, 2, '#',  'B', 'monitor:job:add',                 '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1050, '任务修改', 110, 3, '#',  'B', 'monitor:job:edit',                '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1051, '任务删除', 110, 4, '#',  'B', 'monitor:job:remove',              '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1052, '状态修改', 110, 5, '#',  'B', 'monitor:job:changeStatus',        '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1053, '任务导出', 110, 6, '#',  'B', 'monitor:job:export',              '#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
-- 代码生成按钮
insert into `sys_menu` values(1054, '生成查询', 113, 1, '#',  'B', 'tool:gen:list',  					'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');
insert into `sys_menu` values(1055, '生成代码', 113, 2, '#',  'B', 'tool:gen:code',  					'#', 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '');


-- ----------------------------
-- 6、用户和角色关联表  用户N-1角色
-- ----------------------------
drop table if exists `sys_user_role`;
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
-- 初始化-用户和角色关联表数据
-- ----------------------------
insert into `sys_user_role` values (1, 1);
insert into `sys_user_role` values (2, 2);

-- ----------------------------
-- 7、角色和菜单关联表  角色1-N菜单
-- ----------------------------
drop table if exists `sys_role_menu`;
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
-- 初始化-角色和菜单关联表数据
-- ----------------------------
insert into `sys_role_menu` values (2, 1);
insert into `sys_role_menu` values (2, 2);
insert into `sys_role_menu` values (2, 3);
insert into `sys_role_menu` values (2, 100);
insert into `sys_role_menu` values (2, 101);
insert into `sys_role_menu` values (2, 102);
insert into `sys_role_menu` values (2, 103);
insert into `sys_role_menu` values (2, 104);
insert into `sys_role_menu` values (2, 105);
insert into `sys_role_menu` values (2, 106);
insert into `sys_role_menu` values (2, 107);
insert into `sys_role_menu` values (2, 108);
insert into `sys_role_menu` values (2, 109);
insert into `sys_role_menu` values (2, 110);
insert into `sys_role_menu` values (2, 111);
insert into `sys_role_menu` values (2, 112);
insert into `sys_role_menu` values (2, 113);
insert into `sys_role_menu` values (2, 114);
insert into `sys_role_menu` values (2, 500);
insert into `sys_role_menu` values (2, 501);
insert into `sys_role_menu` values (2, 1000);
insert into `sys_role_menu` values (2, 1001);
insert into `sys_role_menu` values (2, 1002);
insert into `sys_role_menu` values (2, 1003);
insert into `sys_role_menu` values (2, 1004);
insert into `sys_role_menu` values (2, 1005);
insert into `sys_role_menu` values (2, 1006);
insert into `sys_role_menu` values (2, 1007);
insert into `sys_role_menu` values (2, 1008);
insert into `sys_role_menu` values (2, 1009);
insert into `sys_role_menu` values (2, 1010);
insert into `sys_role_menu` values (2, 1011);
insert into `sys_role_menu` values (2, 1012);
insert into `sys_role_menu` values (2, 1013);
insert into `sys_role_menu` values (2, 1014);
insert into `sys_role_menu` values (2, 1015);
insert into `sys_role_menu` values (2, 1016);
insert into `sys_role_menu` values (2, 1017);
insert into `sys_role_menu` values (2, 1018);
insert into `sys_role_menu` values (2, 1019);
insert into `sys_role_menu` values (2, 1020);
insert into `sys_role_menu` values (2, 1021);
insert into `sys_role_menu` values (2, 1022);
insert into `sys_role_menu` values (2, 1023);
insert into `sys_role_menu` values (2, 1024);
insert into `sys_role_menu` values (2, 1025);
insert into `sys_role_menu` values (2, 1026);
insert into `sys_role_menu` values (2, 1027);
insert into `sys_role_menu` values (2, 1028);
insert into `sys_role_menu` values (2, 1029);
insert into `sys_role_menu` values (2, 1030);
insert into `sys_role_menu` values (2, 1031);
insert into `sys_role_menu` values (2, 1032);
insert into `sys_role_menu` values (2, 1033);
insert into `sys_role_menu` values (2, 1034);
insert into `sys_role_menu` values (2, 1035);
insert into `sys_role_menu` values (2, 1036);
insert into `sys_role_menu` values (2, 1037);
insert into `sys_role_menu` values (2, 1038);
insert into `sys_role_menu` values (2, 1039);
insert into `sys_role_menu` values (2, 1040);
insert into `sys_role_menu` values (2, 1041);
insert into `sys_role_menu` values (2, 1042);
insert into `sys_role_menu` values (2, 1043);
insert into `sys_role_menu` values (2, 1044);
insert into `sys_role_menu` values (2, 1045);
insert into `sys_role_menu` values (2, 1046);
insert into `sys_role_menu` values (2, 1047);
insert into `sys_role_menu` values (2, 1048);
insert into `sys_role_menu` values (2, 1049);
insert into `sys_role_menu` values (2, 1050);
insert into `sys_role_menu` values (2, 1051);
insert into `sys_role_menu` values (2, 1052);
insert into `sys_role_menu` values (2, 1053);
insert into `sys_role_menu` values (2, 1054);
insert into `sys_role_menu` values (2, 1055);

-- ----------------------------
-- 8、角色和部门关联表  角色1-N部门
-- ----------------------------
drop table if exists `sys_role_dept`;
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
-- 初始化-角色和部门关联表数据
-- ----------------------------
insert into `sys_role_dept` values (2, 1);
insert into `sys_role_dept` values (2, 2);
insert into `sys_role_dept` values (2, 6);


-- ----------------------------
-- 9、用户与岗位关联表  用户1-N岗位
-- ----------------------------
drop table if exists `sys_user_post`;
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
-- 初始化-用户与岗位关联表数据
-- ----------------------------
insert into `sys_user_post` values (1, 1);
insert into `sys_user_post` values (2, 2);


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
drop table if exists `sys_dict_type`;
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
-- 初始化-字典类型表
-- ----------------------------
insert into `sys_dict_type` values(1,	'sys_user_sex',			'用户性别',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '用户性别列表');
insert into `sys_dict_type` values(2,	'sys_show_hide',		'菜单状态',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '菜单状态列表');
insert into `sys_dict_type` values(3,	'sys_normal_disable',	'系统开关',   1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统开关列表');
insert into `sys_dict_type` values(4,	'sys_job_status',		'任务状态',   	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '任务状态列表');
insert into `sys_dict_type` values(5,	'sys_yes_no',			'系统是否',   	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统是否列表');
insert into `sys_dict_type` values(6,	'sys_notice_type',		'通知类型',   	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '通知类型列表');
insert into `sys_dict_type` values(7,	'sys_notice_status',	'通知状态',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '通知状态列表');
insert into `sys_dict_type` values(8,	'sys_oper_type',		'操作类型',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '操作类型列表');
insert into `sys_dict_type` values(9,	'sys_common_status',	'系统状态',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '登录状态列表');


-- ----------------------------
-- 12、字典数据表
-- ----------------------------
drop table if exists `sys_dict_data`;
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
-- 初始化-字典数据表
-- ----------------------------
insert into `sys_dict_data` values(1,	'sys_user_sex',			'男',		'1',	1,	'',   '',        1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '性别男');
insert into `sys_dict_data` values(2,	'sys_user_sex',			'女',		'2',	2,	'',   '',        0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '性别女');
insert into `sys_dict_data` values(3,	'sys_user_sex',			'未知',		'0',    3,	'',   '',        0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(),  '性别未知');
insert into `sys_dict_data` values(4,	'sys_show_hide',		'显示',		'1',	1,	'',   'primary', 1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '显示菜单');
insert into `sys_dict_data` values(5,	'sys_show_hide',		'隐藏',		'2',	2,	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '隐藏菜单');
insert into `sys_dict_data` values(6,	'sys_normal_disable',	'正常',		'1',	1,	'',   'primary', 1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '正常状态');
insert into `sys_dict_data` values(7,	'sys_normal_disable',	'停用',		'2',	2,	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '停用状态');
insert into `sys_dict_data` values(8,	'sys_job_status',		'正常',		'1',	1,	'',   'primary', 1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '正常状态');
insert into `sys_dict_data` values(9,	'sys_job_status',		'暂停',		'2',	2,  '',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '停用状态');
insert into `sys_dict_data` values(10,	'sys_yes_no',			'是',		'1',	1,	'',   'primary', 1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统默认是');
insert into `sys_dict_data` values(11,	'sys_yes_no',			'否', 		'0',	2,	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '系统默认否');
insert into `sys_dict_data` values(12,	'sys_notice_type',		'通知',		'1',	1,	'',   'warning', 1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '通知');
insert into `sys_dict_data` values(13,	'sys_notice_type',		'公告',		'2',	2,	'',   'success', 0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '公告');
insert into `sys_dict_data` values(14,	'sys_notice_status',	'正常',		'1',	1,	'',   'primary', 1, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '正常状态');
insert into `sys_dict_data` values(15,	'sys_notice_status',	'关闭',		'2',	2,	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '关闭状态');
insert into `sys_dict_data` values(16,	'sys_oper_type',		'新增',		'1',	1,	'',   'info',    0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '新增操作');
insert into `sys_dict_data` values(17,	'sys_oper_type',		'修改',		'2',	2,	'',   'info',    0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '修改操作');
insert into `sys_dict_data` values(18,	'sys_oper_type',		'删除',		'3',	3,	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '删除操作');
insert into `sys_dict_data` values(19,	'sys_oper_type',		'授权',		'4',	4,	'',   'primary', 0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '授权操作');
insert into `sys_dict_data` values(20,	'sys_oper_type',		'导出',		'5',	5,	'',   'warning', 0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '导出操作');
insert into `sys_dict_data` values(21,	'sys_oper_type',		'导入',		'6',	6,	'',   'warning', 0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '导入操作');
insert into `sys_dict_data` values(22,	'sys_oper_type',		'强退', 		'7',	7, 	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '强退操作');
insert into `sys_dict_data` values(23,	'sys_oper_type',		'生成代码',	'8',	8, 	'',   'warning', 0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '生成操作');
insert into `sys_dict_data` values(24,	'sys_oper_type',		'清空数据',	'9', 	9,	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '清空操作');
insert into `sys_dict_data` values(25,	'sys_common_status',	'成功',		'1', 	1,  '',   'primary', 0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '正常状态');
insert into `sys_dict_data` values(26,	'sys_common_status',	'失败', 		'2',	2,	'',   'danger',  0, 1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '停用状态');


-- ----------------------------
-- 13、参数配置表
-- ----------------------------
drop table if exists `sys_config`;
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
-- 初始化-参数配置表
-- ----------------------------
insert into `sys_config` values(1, '主框架页-默认皮肤样式名称',	'sys.index.skinName',     'skin-default',  1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '默认 skin-default、蓝色 skin-blue、黄色 skin-yellow' );
insert into `sys_config` values(2, '用户管理-账号初始密码',		'sys.user.initPassword',  '123456',        1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '初始化密码 123456' );


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
drop table if exists `sys_notice`;
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

-- ----------------------------
-- 初始化-公告信息表数据
-- ----------------------------
insert into `sys_notice` values(1, '温馨提醒：2018-07-01 以奇新版本发布啦', 2, '新版本内容',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '管理员');
insert into `sys_notice` values(2, '维护通知：2018-07-08 以奇系统凌晨维护', 1, '维护内容',	1, 0, 'admin', current_timestamp(), 'yq', current_timestamp(), '管理员');
