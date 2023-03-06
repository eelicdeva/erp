
delimiter $$

DROP PROCEDURE IF EXISTS p_alter_sys_menu_table;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_alter_sys_menu_table`()
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

    IF NOT EXISTS(SELECT 1 FROM sys_menu WHERE parent_id = '3' AND menu_name = 'staff')
    THEN

    -- 菜单 SQL
    insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark, menu_name_en, menu_name_id)
    values('员工管理', '5', '1', 'staff', 'erp/hr/staff/index', 1, 0, 'C', '0', '0', 'project:staff:list', '#', 'admin', sysdate(), '', null, 'staff菜单', 'Staff Management', 'Manajemen Pegawai');

    -- 按钮父菜单ID
    SELECT @parentId := LAST_INSERT_ID();

    -- 按钮 SQL
    insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark, menu_name_en, menu_name_id)
    values('员工管理查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'project:staff:query',        '#', 'admin', sysdate(), '', null, '', 'Staff Management query', 'kueri Manajemen Pegawai');

    insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark, menu_name_en, menu_name_id)
    values('员工管理新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'project:staff:add',          '#', 'admin', sysdate(), '', null, '', 'Staff Management add', 'tambah Manajemen Pegawai');

    insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark, menu_name_en, menu_name_id)
    values('员工管理修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'project:staff:edit',         '#', 'admin', sysdate(), '', null, '', 'Staff Management edit', 'ubah Manajemen Pegawai');

    insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark, menu_name_en, menu_name_id)
    values('员工管理删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'project:staff:remove',       '#', 'admin', sysdate(), '', null, '', 'Staff Management delete', 'hapus Manajemen Pegawai');

    insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark, menu_name_en, menu_name_id)
    values('员工管理导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'project:staff:export',       '#', 'admin', sysdate(), '', null, '', 'Staff Management export', 'ekspor Manajemen Pegawai');

    INSERT INTO  `temp_oper_process` VALUES ('1100','Add data','OK','1100 add Done');

    ELSE
    	-- Oper Log
    	INSERT INTO  `temp_oper_process` VALUES ('1100','Add data','Error','1100-ada data, add Failed');
    END IF;

    	-- SHOW oper  Log
    	SELECT * FROM `temp_oper_process`;

    END;
    $$

    delimiter ;

    call p_alter_sys_menu_table();
