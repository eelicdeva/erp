ALTER TABLE `erp`.`gen_table_column` 
ADD COLUMN `is_search` CHAR(1) NULL DEFAULT NULL COMMENT 'is show search? （1 Yes）' AFTER `is_sub_i18n`,
ADD COLUMN `is_column` CHAR(1) NULL DEFAULT NULL COMMENT 'is show column? （1 Yes）' AFTER `is_search`,
ADD COLUMN `is_sortable` CHAR(1) NULL DEFAULT NULL COMMENT 'is sortable? （1 Yes）' AFTER `is_column`;
