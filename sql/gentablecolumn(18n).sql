ALTER TABLE `gen_table_column` 
ADD COLUMN `column_comment_en` VARCHAR(500) NULL DEFAULT NULL COMMENT '列描述en' AFTER `column_comment`,
ADD COLUMN `column_comment_id` VARCHAR(500) NULL DEFAULT NULL COMMENT '列描述id' AFTER `column_comment`,
ADD `is_i18n` char(1) DEFAULT NULL COMMENT 'is i18n? （1 Yes）' AFTER `is_query`,
ADD COLUMN `is_sub_i18n` CHAR(1) NULL DEFAULT NULL COMMENT 'is sub i18n? （1 Yes）' AFTER `is_i18n`;

