CREATE DATABASE `hair_research` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
-- hair_research.hair_origin_data definition

-- hair_research.hair_origin_data definition

CREATE TABLE `hair_origin_data` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `genetics` tinyint NOT NULL COMMENT '是否有头秃家族史：0 无，1 有',
  `hormonal_changes` tinyint NOT NULL COMMENT '是否经历荷尔蒙变化：0无，1有',
  `medical_conditions` varchar(100) DEFAULT NULL COMMENT '可能导致秃头的病史',
  `medical_conditions_type` int DEFAULT NULL COMMENT '可能导致秃头的病史-字典映射id',
  `medications_treatments` varchar(100) DEFAULT NULL COMMENT '可能导致脱发的药物治疗史',
  `medications_treatments_type` int DEFAULT NULL COMMENT '可能导致脱发的药物治疗史：字典id',
  `nutritional_deficiencies` varchar(100) DEFAULT NULL COMMENT '营养不⾜情况',
  `nutritional_deficiencies_type` int DEFAULT NULL COMMENT '营养不⾜情况：字典值',
  `stress` varchar(50) DEFAULT NULL COMMENT '压⼒⽔平',
  `stress_type` int DEFAULT NULL COMMENT '压⼒⽔平:级别',
  `age` int NOT NULL COMMENT '年龄',
  `poor_hair_care_habits` tinyint NOT NULL COMMENT '是否存在不良的护发习惯:0无，1有',
  `environmental_factors` tinyint NOT NULL COMMENT '是否暴露于可能导致脱发的环境:0否，1是',
  `smoking` tinyint NOT NULL COMMENT '是否吸烟：0不吸烟，1吸烟',
  `weight_loss` tinyint NOT NULL COMMENT '是否经历了显著的体重减轻:0否，1是',
  `hair_loss` tinyint NOT NULL COMMENT '是否脱发: 0 否，1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199950 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='头发原始数据';

