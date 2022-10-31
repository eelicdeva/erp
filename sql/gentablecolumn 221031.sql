ALTER TABLE `erp`.`gen_table_column` 
ADD COLUMN `column_comment_en` VARCHAR(500) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT NULL COMMENT '列描述' AFTER `update_time`,
ADD COLUMN `column_comment_id` VARCHAR(500) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT NULL COMMENT '列描述' AFTER `column_comment_en`;
