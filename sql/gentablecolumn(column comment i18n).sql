ALTER TABLE `ry-vue`.`gen_table_column` 
ADD COLUMN `column_comment_en` VARCHAR(500) NULL DEFAULT NULL COMMENT '列描述' AFTER `update_time`,
ADD COLUMN `column_comment_id` VARCHAR(500) NULL DEFAULT NULL COMMENT '列描述' AFTER `column_comment_en`;
