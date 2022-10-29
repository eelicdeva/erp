ALTER TABLE `erp`.`gen_table_column` 
ADD COLUMN `is_sub_i18n` CHAR(1) NULL DEFAULT NULL COMMENT 'is sub i18n? （1 Yes）' AFTER `is_i18n`;