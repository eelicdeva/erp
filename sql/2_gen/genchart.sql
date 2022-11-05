ALTER TABLE `erp`.`gen_table` 
ADD COLUMN `chart_type` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT '0' COMMENT 'chart type' AFTER `remark`,
ADD COLUMN `xAxis_chart` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT NULL COMMENT 'xAxis chart data' AFTER `chart_type`,
ADD COLUMN `yAxis_chart` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT NULL COMMENT 'yAxis chart data' AFTER `xAxis_chart`;
