-- CHECK and ALTER data MBTI IN TABLE  `sys_menu`

delimiter $$
DROP PROCEDURE IF EXISTS p_alter_sys_menu_table;
CREATE PROCEDURE p_alter_sys_menu_table()
BEGIN

	-- Operate record `temp_oper_process`
	DROP TABLE IF EXISTS `temp_oper_process`;
	CREATE TEMPORARY TABLE IF NOT EXISTS `temp_oper_process`  (
		`oper_id` int NOT NULL AUTO_INCREMENT,
		`oper_name` varchar(100) ,
		`oper_result` varchar(10) ,
		`oper_remark` varchar(100) ,
		PRIMARY KEY (`oper_id`) 
		);
		
	-- Operate data 	
	IF NOT EXISTS(SELECT 1 FROM `sys_menu` WHERE `menu_id` = '1101') 
	THEN
	-- Oper Data
	INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `menu_name_en`, `menu_name_id`) VALUES ('1101', 'MBTI Test', '1078', '1', 'mbti', 'hr/mbti/index', '1', '0', 'C', '0', '0', 'hr:mbti:list', 'edit', 'admin', '2022-10-19 10:01:09', 'admin', '2022-10-19 10:15:56', 'MBTI Test菜单', 'MBTI Test', 'Tes MBTI');

	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1101','Add data','OK','1101 add Done');
	ELSE
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1101','Add data','Error','1101-ada data, add Failed');
	END IF;

-- Operate data 	
	IF NOT EXISTS(SELECT 1 FROM `sys_menu` WHERE `menu_id` = '1102') 
	THEN
	-- Oper Data
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `remark`, `menu_name_en`, `menu_name_id`) VALUES ('1102', 'MBTI Test查询', '1101', '1', '#', '', '1', '0', 'F', '0', '0', 'hr:mbti:query', '#', 'admin', '2022-10-19 10:01:09', '', '', 'MBTI Test query', 'Kueri Tes MBTI');

	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1102','Add data','OK','1102 add Done');
	ELSE
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1102','Add data','Error','1102-ada data, add Failed');
	END IF;

-- Operate data 	
	IF NOT EXISTS(SELECT 1 FROM `sys_menu` WHERE `menu_id` = '1103') 
	THEN
	-- Oper Data
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `remark`, `menu_name_en`, `menu_name_id`) VALUES ('1103', 'MBTI Test新增', '1101', '2', '#', '', '1', '0', 'F', '0', '0', 'hr:mbti:add', '#', 'admin', '2022-10-19 10:01:09', '', '', 'MBTI Test added', 'Tes MBTI ditambahkan');
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1103','Add data','OK','1103 add Done');
	ELSE
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1103','Add data','Error','1103-ada data, add Failed');
	END IF;

-- Operate data 	
	IF NOT EXISTS(SELECT 1 FROM `sys_menu` WHERE `menu_id` = '1104') 
	THEN
	-- Oper Data
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `remark`, `menu_name_en`, `menu_name_id`) VALUES ('1104', 'MBTI Test修改', '1101', '3', '#', '', '1', '0', 'F', '0', '0', 'hr:mbti:edit', '#', 'admin', '2022-10-19 10:01:09', '', '', 'MBTI Test Modification', 'Modifikasi Tes MBTI');
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1104','Add data','OK','1104 add Done');
	ELSE
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1104','Add data','Error','1104-ada data, add Failed');
	END IF;
	
	-- Operate data 	
	IF NOT EXISTS(SELECT 1 FROM `sys_menu` WHERE `menu_id` = '1105') 
	THEN
	-- Oper Data
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `remark`, `menu_name_en`, `menu_name_id`) VALUES ('1105', 'MBTI Test删除', '1101', '4', '#', '', '1', '0', 'F', '0', '0', 'hr:mbti:remove', '#', 'admin', '2022-10-19 10:01:09', '', '', 'MBTI Test deleted', 'Tes MBTI dihapus');
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1105','Add data','OK','1105 add Done');
	ELSE
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1105','Add data','Error','1105-ada data, add Failed');
	END IF;
	
	-- Operate data 	
	IF NOT EXISTS(SELECT 1 FROM `sys_menu` WHERE `menu_id` = '1106') 
	THEN
	-- Oper Data
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `remark`, `menu_name_en`, `menu_name_id`) VALUES ('1106', 'MBTI Test导出', '1101', '5', '#', '', '1', '0', 'F', '0', '0', 'hr:mbti:export', '#', 'admin', '2022-10-19 10:01:09', '', '', 'MBTI Test Export', 'Ekspor Tes MBTI');
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1106','Add data','OK','1106 add Done');
	ELSE
	-- Oper Log
			 INSERT INTO  `temp_oper_process` VALUES ('1106','Add data','Error','1106-ada data, add Failed');
	END IF;
	
	
	-- SHOW oper  Log 
	SELECT * FROM `temp_oper_process`;
		 
		 

INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `remark`, `menu_name_en`, `menu_name_id`) VALUES ('1106', 'MBTI Test导出', '1101', '5', '#', '', '1', '0', 'F', '0', '0', 'hr:mbti:export', '#', 'admin', '2022-10-19 10:01:09', '', '', 'MBTI Test Export', 'Ekspor Tes MBTI');

		 
END;
$$
 
delimiter ;

LOCK TABLES `sys_menu` WRITE;
call p_alter_sys_menu_table();
UNLOCK TABLES;