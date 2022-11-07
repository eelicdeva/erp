-- CREATE TABLE IF NOT EXISTS `sys_user_answer_mbti`
-- Table structure for table `sys_user_answer_mbti`
--

CREATE TABLE IF NOT EXISTS `sys_user_answer_mbti` (
  `user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'user id',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'user name',
  `answer` char(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'mbti answer',
  `result` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'mbti result',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

--
-- Dumping data for table `sys_user_answer_mbti`
--

LOCK TABLES `sys_user_answer_mbti` WRITE;

UNLOCK TABLES;

-- ----------------------------
-- Table structure for sys_user_answer_mbti
-- ----------------------------