CREATE TABLE `erp`.`hr_staff` (
  `staff_id` CHAR(32) NOT NULL,
  `staff_no` VARCHAR(20) NULL DEFAULT NULL,
  `staff_name` VARCHAR(63) NULL,
  `birth` DATETIME NULL,
  `sex` CHAR(1) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT '2' COMMENT '用户性别（0男 1女 2未知）',
  `date_in` DATETIME NULL,
  `date_out` DATETIME NULL,
  `NIK` VARCHAR(31) NULL,
  `marital_status` CHAR(1) NULL,
  `nationality` VARCHAR(20) NULL,
  `blood` VARCHAR(10) NULL,
  `religion` VARCHAR(31) NULL,
  `tel` VARCHAR(31) NULL,
  `tel1` VARCHAR(31) NULL,
  `ZIP` VARCHAR(15) NULL,
  `email` VARCHAR(63) NULL,
  `address` VARCHAR(255) NULL,
  `address_id_card` VARCHAR(255) NULL,
  `education` VARCHAR(500) NULL,
  `edu_grade` VARCHAR(32) NULL,
  `staff_image` VARCHAR(200) NULL,
  `edu_image` VARCHAR(200) NULL,
  `id_card_image` VARCHAR(200) NULL,
  `form1_image` VARCHAR(200) NULL,
  `form2_image` VARCHAR(200) NULL,
  `other_image` VARCHAR(200) NULL,
  `memo` VARCHAR(500) NULL,
  `role_id` BIGINT NULL,
  `dept_id` BIGINT NULL,
  PRIMARY KEY (`staff_id`));
