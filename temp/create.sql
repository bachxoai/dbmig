-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `innodb_index_stats`
--

DROP TABLE IF EXISTS `innodb_index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(199) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stat_name` varchar(64) NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:34
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_unit_cd_temp`
--

DROP TABLE IF EXISTS `uitem_unit_cd_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_unit_cd_temp` (
  `unit_cd` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:03
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ai_ds_ml5_prdct_emotion`
--

DROP TABLE IF EXISTS `ai_ds_ml5_prdct_emotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_ds_ml5_prdct_emotion` (
  `JOB_DATE` date NOT NULL COMMENT '배치 작업 실행날짜',
  `PCATEGORY` varchar(20) NOT NULL COMMENT 'pcategory번호',
  `REVIEW_KEY_PHRASE` varchar(100) NOT NULL COMMENT '리뷰텍스트주요어구',
  `PHRASE_MEAN` decimal(3,2) DEFAULT NULL COMMENT '어구 가중치',
  `PHRASE_SUM` decimal(5,2) DEFAULT NULL COMMENT '어구 가중치 합',
  `PHRASE_COUNT` int(11) DEFAULT NULL COMMENT '어구 개수',
  `PHRASE_MECAB` varchar(100) DEFAULT NULL COMMENT '어구 명사분류',
  `KEYWORD_LDA` varchar(30) DEFAULT NULL COMMENT '토픽모델링 주요키워드',
  `UPDATE_DTTM_LAST` datetime DEFAULT NULL COMMENT 'db적재 날짜 및 시간',
  PRIMARY KEY (`JOB_DATE`,`PCATEGORY`,`REVIEW_KEY_PHRASE`),
  KEY `PCATEGORY` (`PCATEGORY`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='모델5번 다나와 감성리뷰 데이터';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:58
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_nice_a_tb_0001_222`
--

DROP TABLE IF EXISTS `vc_nice_a_tb_0001_222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_nice_a_tb_0001_222` (
  `NICE_A_F_001` char(6) NOT NULL COMMENT '업체코드',
  `NICE_A_F_002` char(10) DEFAULT NULL COMMENT '사업자번호',
  `NICE_A_F_003` char(13) DEFAULT NULL COMMENT '법인번호',
  `NICE_A_F_004` varchar(500) DEFAULT NULL COMMENT '한글업체명',
  `NICE_A_F_005` varchar(500) DEFAULT NULL COMMENT '영문업체명',
  `NICE_A_F_006` varchar(100) DEFAULT NULL COMMENT '약식업체명',
  `NICE_A_F_007` varchar(5) DEFAULT NULL COMMENT '기업주체구분',
  `NICE_A_F_008` varchar(4) DEFAULT NULL COMMENT '기업규모구분',
  `NICE_A_F_009` varchar(100) DEFAULT NULL COMMENT '기업상세구분',
  `NICE_A_F_010` varchar(100) DEFAULT NULL COMMENT '기업공개',
  `NICE_A_F_011` varchar(100) DEFAULT NULL COMMENT '기업형태',
  `NICE_A_F_012` char(2) DEFAULT NULL COMMENT '법인_개인구분',
  `NICE_A_F_013` varchar(100) DEFAULT NULL COMMENT '상장시장구분',
  `NICE_A_F_014` char(1) DEFAULT NULL COMMENT '관리종목여부',
  `NICE_A_F_015` char(1) DEFAULT NULL COMMENT '외감여부',
  `NICE_A_F_016` char(1) DEFAULT NULL COMMENT '기업존속여부',
  `NICE_A_F_017` char(1) DEFAULT NULL COMMENT '벤처기업여부',
  `NICE_A_F_018` char(1) DEFAULT NULL COMMENT '이노비즈여부',
  `NICE_A_F_019` char(1) DEFAULT NULL COMMENT '메인비즈여부',
  `NICE_A_F_020` varchar(100) DEFAULT NULL COMMENT '재무구분코드',
  `NICE_A_F_021` varchar(2) DEFAULT NULL COMMENT '결산월',
  `NICE_A_F_022` varchar(8) DEFAULT NULL COMMENT '개업일',
  `NICE_A_F_023` varchar(8) DEFAULT NULL COMMENT '설립일',
  `NICE_A_F_024` varchar(8) DEFAULT NULL COMMENT '종업원기준일',
  `NICE_A_F_025` int(10) unsigned DEFAULT NULL COMMENT '최근종업원수',
  `NICE_A_F_026` varchar(100) DEFAULT NULL COMMENT '한글대표자명',
  `NICE_A_F_027` varchar(300) DEFAULT NULL COMMENT '영문대표자명',
  `NICE_A_F_028` varchar(6) DEFAULT NULL COMMENT '휴폐업여부',
  `NICE_A_F_029` varchar(3) DEFAULT NULL COMMENT '휴폐업여부_new',
  `NICE_A_F_030` varchar(8) DEFAULT NULL COMMENT '휴폐업일자',
  `NICE_A_F_031` varchar(3) DEFAULT NULL COMMENT '그룹코드',
  `NICE_A_F_032` varchar(6) DEFAULT NULL COMMENT '10차산업코드',
  `NICE_A_F_033` varchar(100) DEFAULT NULL COMMENT '10차산업코드명',
  `NICE_A_F_034` varchar(100) DEFAULT NULL COMMENT '주거래은행코드',
  `NICE_A_F_035` varchar(100) DEFAULT NULL COMMENT '한글은행지점명',
  `NICE_A_F_036` varchar(100) DEFAULT NULL COMMENT '영문은행지점명',
  `NICE_A_F_037` varchar(500) DEFAULT NULL COMMENT '한글주요제품',
  `NICE_A_F_038` varchar(500) DEFAULT NULL COMMENT '영문주요제품',
  `NICE_A_F_039` varchar(100) DEFAULT NULL COMMENT '홈페이지URL',
  `NICE_A_F_040` varchar(500) DEFAULT NULL COMMENT '기업이메일',
  `NICE_A_F_041` varchar(100) DEFAULT NULL COMMENT '무역업신고번호',
  `NICE_A_F_042` varchar(8) DEFAULT NULL COMMENT '상장일자',
  `NICE_A_F_043` varchar(8) DEFAULT NULL COMMENT '상장폐지일자',
  `NICE_A_F_044` varchar(100) DEFAULT NULL COMMENT '법인등기상태',
  `NICE_A_F_045` varchar(8) DEFAULT NULL COMMENT '법인등기상태변동일',
  `NICE_A_F_046` char(8) DEFAULT NULL COMMENT '기업상태변동일',
  `NICE_A_F_047` char(6) DEFAULT NULL COMMENT '소재지우편번호',
  `NICE_A_F_048` varchar(500) DEFAULT NULL COMMENT '주소',
  `NICE_A_F_049` varchar(100) DEFAULT NULL COMMENT '전화번호',
  `NICE_A_F_050` varchar(100) DEFAULT NULL COMMENT '팩스번호',
  `NICE_A_F_051` varchar(5) DEFAULT NULL COMMENT '시.도',
  `NICE_A_F_052` char(2) DEFAULT NULL COMMENT '시.도 코드',
  PRIMARY KEY (`NICE_A_F_001`),
  KEY `vc_nice_a_tb_0001_NICE_A_F_002_IDX` (`NICE_A_F_002`) USING BTREE,
  KEY `NICE_A_F_032` (`NICE_A_F_032`),
  KEY `NICE_A_F_052` (`NICE_A_F_052`),
  KEY `NICE_A_F_037` (`NICE_A_F_037`(333)),
  KEY `idx_NICE_A_F_001` (`NICE_A_F_001`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='11_1_기업개요_19';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:38
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itemtrendweek`
--

DROP TABLE IF EXISTS `itemtrendweek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtrendweek` (
  `id` int(11) unsigned NOT NULL COMMENT '외래키',
  `period_id` char(8) NOT NULL COMMENT '년월일 정보(YYYYMMDD 형태 - 20140725)',
  `frequency` int(11) unsigned DEFAULT NULL COMMENT '빈도수',
  PRIMARY KEY (`id`,`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT COMMENT='약 1,000개 아이템에 대한 주간 트렌드 정보를 저장한 테이블(일자별 데이터)					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:18
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_nice_b_tb_0002_202310`
--

DROP TABLE IF EXISTS `vc_nice_b_tb_0002_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_nice_b_tb_0002_202310` (
  `NICE_B_F_001` varchar(6) NOT NULL COMMENT '업체코드',
  `NICE_B_F_002` varchar(10) DEFAULT NULL COMMENT '사업자번호',
  `NICE_B_F_003` varchar(13) DEFAULT NULL COMMENT '법인번호',
  `NICE_B_F_004` varchar(100) DEFAULT NULL COMMENT '업체명',
  `NICE_B_F_005` varchar(2) DEFAULT NULL COMMENT '업종코드',
  `NICE_B_F_006` varchar(100) DEFAULT NULL COMMENT '업종코드명',
  `NICE_B_F_007` varchar(8) DEFAULT NULL COMMENT '설립일',
  `NICE_B_F_008` varchar(8) DEFAULT NULL COMMENT '결산일',
  `NICE_B_F_009` float DEFAULT NULL COMMENT '매출액',
  `NICE_B_F_010` float DEFAULT NULL COMMENT '매출총이익',
  `NICE_B_F_011` float DEFAULT NULL COMMENT '영업이익',
  `NICE_B_F_012` float DEFAULT NULL COMMENT '영업외수익',
  `NICE_B_F_013` float DEFAULT NULL COMMENT '법인세차감전순이익',
  `NICE_B_F_014` float DEFAULT NULL COMMENT '법인세등',
  `NICE_B_F_015` float DEFAULT NULL COMMENT '당기순이익',
  `NICE_B_F_016` varchar(100) DEFAULT NULL COMMENT '감가상각비_손익',
  `NICE_B_F_017` varchar(100) DEFAULT NULL COMMENT '감가상각비_제조',
  `NICE_B_F_018` varchar(100) DEFAULT NULL COMMENT '무형자산상각_손익',
  `NICE_B_F_019` varchar(100) DEFAULT NULL COMMENT '무형자산상각_제조',
  `NICE_B_F_020` varchar(100) DEFAULT NULL COMMENT '연구비_손익',
  `NICE_B_F_021` varchar(100) DEFAULT NULL COMMENT '연구비_제조',
  `NICE_B_F_022` varchar(100) DEFAULT NULL COMMENT '경상개발비_손익',
  `NICE_B_F_023` varchar(100) DEFAULT NULL COMMENT '경상개발비_제조',
  `NICE_B_F_024` varchar(100) DEFAULT NULL COMMENT '이연자산상각',
  `NICE_B_F_025` float DEFAULT NULL COMMENT '고정자산_비유동자산',
  `NICE_B_F_026` float DEFAULT NULL COMMENT '유형자산',
  `NICE_B_F_027` float DEFAULT NULL COMMENT '무형자산',
  `NICE_B_F_028` float DEFAULT NULL COMMENT '유동자산',
  `NICE_B_F_029` float DEFAULT NULL COMMENT '유동부채',
  `NICE_B_F_030` float DEFAULT NULL COMMENT '자산총계',
  `NICE_B_F_031` float DEFAULT NULL COMMENT '부채총계',
  `NICE_B_F_032` varchar(100) DEFAULT NULL COMMENT '매출원가',
  `NICE_B_F_033` float DEFAULT NULL COMMENT '판매비와관리비',
  `NICE_B_F_034` varchar(100) DEFAULT NULL COMMENT '매출채권',
  `NICE_B_F_035` varchar(100) DEFAULT NULL COMMENT '재고자산',
  `NICE_B_F_036` varchar(100) DEFAULT NULL COMMENT '매입채무',
  `NICE_B_F_037` varchar(100) DEFAULT NULL COMMENT '차입금',
  `NICE_B_F_038` float DEFAULT NULL COMMENT '자본총계',
  KEY `vc_nice_b_tb_0002_NICE_B_F_002_IDX_2` (`NICE_B_F_001`,`NICE_B_F_008`) USING BTREE,
  KEY `vc_nice_b_tb_0002_NICE_B_F_002_IDX` (`NICE_B_F_002`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='11_2_재무_19';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:26
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `transaction_registry`
--

DROP TABLE IF EXISTS `transaction_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_registry` (
  `transaction_id` bigint(20) unsigned NOT NULL,
  `commit_id` bigint(20) unsigned NOT NULL,
  `begin_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `commit_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `isolation_level` enum('READ-UNCOMMITTED','READ-COMMITTED','REPEATABLE-READ','SERIALIZABLE') NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `commit_id` (`commit_id`),
  KEY `begin_timestamp` (`begin_timestamp`),
  KEY `commit_timestamp` (`commit_timestamp`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:24
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_biz_info_202310`
--

DROP TABLE IF EXISTS `tb_biz_info_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_biz_info_202310` (
  `biz_code` varchar(20) NOT NULL COMMENT '기업코드',
  `biz_name` varchar(100) DEFAULT NULL COMMENT '기업명',
  PRIMARY KEY (`biz_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='기업정보테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:43
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_market_breadth_i_20150805`
--

DROP TABLE IF EXISTS `pi_market_breadth_i_20150805`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_market_breadth_i_20150805` (
  `item_id` int(11) unsigned NOT NULL,
  `market_year` int(4) NOT NULL,
  `market_breadth` float NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:16
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_hotitem_temp`
--

DROP TABLE IF EXISTS `uitem_hotitem_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_hotitem_temp` (
  `unit_cd` varchar(8) DEFAULT NULL,
  `hotitem_id_1` varchar(100) DEFAULT NULL COMMENT '이슈아이템(1)',
  `hotitem_id_2` varchar(100) DEFAULT NULL COMMENT '이슈아이템(2)',
  `hotitem_id_3` varchar(100) DEFAULT NULL COMMENT '이슈아이템(3)',
  `hotitem_id_4` varchar(100) DEFAULT NULL COMMENT '이슈아이템(4)',
  `hotitem_id_5` varchar(100) DEFAULT NULL COMMENT '이슈아이템(5)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:30
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_agency_info_202310`
--

DROP TABLE IF EXISTS `tb_agency_info_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_agency_info_202310` (
  `AGENCY_SEQ` int(11) DEFAULT NULL COMMENT '일련번호',
  `AGENCY_CD` varchar(200) DEFAULT NULL COMMENT '기관코드',
  `AGENCY_ENG_NM` varchar(200) DEFAULT NULL COMMENT '기관영문명',
  `AGENCY_NM` varchar(200) DEFAULT NULL COMMENT '기관명',
  `DESCRIPT` text DEFAULT NULL COMMENT '설명',
  `REG_ID` varchar(100) DEFAULT NULL COMMENT '등록ID',
  `REG_DT` datetime NOT NULL COMMENT '등록일자',
  `MOD_ID` varchar(100) DEFAULT NULL COMMENT '수정ID',
  `MOD_DT` datetime NOT NULL COMMENT '수정일자'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='기관정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:04
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_hidden_back`
--

DROP TABLE IF EXISTS `uitem_hidden_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_hidden_back` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `all_hidden` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:24
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_c_tb_0003_202310`
--

DROP TABLE IF EXISTS `vc_ntis_c_tb_0003_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_c_tb_0003_202310` (
  `NTIS_C_F_001` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_C_F_002` varchar(100) DEFAULT NULL COMMENT '성과발생부처',
  `NTIS_C_F_003` varchar(100) DEFAULT NULL COMMENT '성과사업ID',
  `NTIS_C_F_004` varchar(100) DEFAULT NULL COMMENT '성과사업명',
  `NTIS_C_F_005` varchar(100) DEFAULT NULL COMMENT '세부성과관리번호',
  `NTIS_C_F_006` varchar(100) DEFAULT NULL COMMENT 'NTIS_성과ID',
  `NTIS_C_F_007` varchar(100) DEFAULT NULL COMMENT 'KISTEP_성과ID',
  `NTIS_C_F_008` varchar(100) DEFAULT NULL COMMENT '검증결과',
  `NTIS_C_F_009` varchar(100) DEFAULT NULL COMMENT '검증내역',
  `NTIS_C_F_010` varchar(100) DEFAULT NULL COMMENT '기술이전유형코드',
  `NTIS_C_F_011` varchar(100) DEFAULT NULL COMMENT '기술이전유형',
  `NTIS_C_F_012` varchar(100) DEFAULT NULL COMMENT '사업화형태코드',
  `NTIS_C_F_013` varchar(100) DEFAULT NULL COMMENT '사업화형태',
  `NTIS_C_F_014` longtext DEFAULT NULL COMMENT '사업화명',
  `NTIS_C_F_015` longtext DEFAULT NULL COMMENT '사업화명_1',
  `NTIS_C_F_016` longtext DEFAULT NULL COMMENT '사업화명_2',
  `NTIS_C_F_017` longtext DEFAULT NULL COMMENT '사업화명_3',
  `NTIS_C_F_018` longtext DEFAULT NULL COMMENT '사업화내용',
  `NTIS_C_F_019` varchar(100) DEFAULT NULL COMMENT '업체명',
  `NTIS_C_F_020` varchar(100) DEFAULT NULL COMMENT '고용창출인원수(명)',
  `NTIS_C_F_021` varchar(100) DEFAULT NULL COMMENT '기매출액(원)',
  `NTIS_C_F_022` varchar(100) DEFAULT NULL COMMENT '당해년도매출액(원)',
  `NTIS_C_F_023` varchar(100) DEFAULT NULL COMMENT '과제수행년도',
  `NTIS_C_F_024` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_C_F_025` varchar(100) DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_C_F_026` longtext DEFAULT NULL COMMENT '과제명-국문',
  `NTIS_C_F_027` varchar(100) DEFAULT NULL COMMENT '기준년도',
  `NTIS_C_F_028` varchar(100) DEFAULT NULL COMMENT '성과ID',
  `NTIS_C_F_029` varchar(100) DEFAULT NULL COMMENT '사업화년도',
  `NTIS_C_F_030` mediumtext DEFAULT NULL COMMENT '사업화주체_업체명',
  `NTIS_C_F_031` varchar(100) DEFAULT NULL COMMENT '사업자주체_대표자명',
  `NTIS_C_F_032` varchar(100) DEFAULT NULL COMMENT '사업화주체_사업자등록번호',
  `NTIS_C_F_033` mediumtext DEFAULT NULL COMMENT '제품명'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='사업화통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:44
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_mna`
--

DROP TABLE IF EXISTS `uitem_mna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_mna` (
  `record_no` int(11) NOT NULL AUTO_INCREMENT,
  `target` varchar(4000) DEFAULT NULL COMMENT '투자받은 회사',
  `total_value` float DEFAULT NULL COMMENT '총 투자금액(백만달러)',
  `buyers` varchar(4000) DEFAULT NULL COMMENT '밴처캐피탈',
  `ciq_id` varchar(100) DEFAULT NULL,
  `close_date` datetime DEFAULT NULL COMMENT '날짜',
  `t_industry1_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(1레벨)명',
  `t_industry1_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(1레벨)코드',
  `t_industry2_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(2레벨)명',
  `t_industry2_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(2레벨)코드',
  `t_industry3_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(3레벨)명',
  `t_industry3_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(3레벨)코드',
  `t_industry4_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(4레벨)명',
  `t_industry4_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(4레벨)코드',
  `t_industry_cd` varchar(100) DEFAULT NULL COMMENT '산업분류 풀코드',
  `b_industry1_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(1레벨)명',
  `b_industry1_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(1레벨)코드',
  `b_industry2_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(2레벨)명',
  `b_industry2_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(2레벨)코드',
  `b_industry3_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(3레벨)명',
  `b_industry3_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(3레벨)코드',
  `b_industry4_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(4레벨)명',
  `b_industry4_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(4레벨)코드',
  `b_industry_cd` varchar(100) DEFAULT NULL COMMENT '산업분류 풀코드',
  `nation` varchar(100) DEFAULT NULL COMMENT '국가',
  PRIMARY KEY (`record_no`)
) ENGINE=InnoDB AUTO_INCREMENT=174152 DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:24
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_per`
--

DROP TABLE IF EXISTS `uitem_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_per` (
  `record_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `status` varchar(2) NOT NULL COMMENT '상태',
  `itd` char(1) DEFAULT 'N' COMMENT '아이템 상세보기',
  `pt` char(1) DEFAULT 'N' COMMENT '인쇄',
  `ii` char(1) DEFAULT 'N' COMMENT 'Industry Insights',
  `mi` char(1) DEFAULT 'N' COMMENT 'Market Insights',
  `ti` char(1) DEFAULT 'N' COMMENT 'Technology Insights',
  `ci` char(1) DEFAULT 'N' COMMENT 'Competitor Insights',
  `mt` char(1) DEFAULT 'N' COMMENT 'Media Trends',
  `it` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'N' COMMENT 'Investment Trends',
  `fi` char(1) DEFAULT 'N' COMMENT 'Future Insights',
  `vc` char(1) DEFAULT 'N' COMMENT '벤처투자동향',
  `ma` char(1) DEFAULT 'N' COMMENT 'M&A 동향',
  `man1` char(1) DEFAULT 'N' COMMENT 'M&A 네트워크',
  `c1` char(1) DEFAULT 'N' COMMENT '기계소재',
  `c2` char(1) DEFAULT 'N' COMMENT '전기전자',
  `c3` char(1) DEFAULT 'N' COMMENT '정보통신',
  `c4` char(1) DEFAULT 'N' COMMENT '화학',
  `c5` char(1) DEFAULT 'N' COMMENT '바이오의료',
  `c6` char(1) DEFAULT 'N' COMMENT '에너지자원',
  `c7` char(1) DEFAULT 'N' COMMENT '기타',
  PRIMARY KEY (`record_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:11
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_market_breadth_o_20150805`
--

DROP TABLE IF EXISTS `pi_market_breadth_o_20150805`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_market_breadth_o_20150805` (
  `item_id` int(11) unsigned NOT NULL,
  `market_year` int(4) NOT NULL,
  `market_breadth` float NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:04
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step5_tb`
--

DROP TABLE IF EXISTS `simple_step5_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step5_tb` (
  `project_key` int(11) DEFAULT NULL COMMENT '프로젝트 key',
  `title_number` varchar(50) DEFAULT '0000-000-0000' COMMENT '표지 - 일련번호',
  `report_receiver` varchar(50) DEFAULT '' COMMENT '제출문 - 귀하',
  `report_agency` varchar(50) DEFAULT '' COMMENT '평가기관',
  `report_manager` varchar(50) DEFAULT '' COMMENT '평가총괄',
  `report_appraisal` varchar(50) DEFAULT '' COMMENT '평가자',
  `report_date` varchar(50) DEFAULT '' COMMENT '날짜',
  KEY `FK_deep_step7_tb_deep_list_tb` (`project_key`) USING BTREE,
  CONSTRAINT `simple_step5_tb_ibfk_1` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='결과보고서 항목 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:29
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_authority_bak`
--

DROP TABLE IF EXISTS `user_authority_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_authority_bak` (
  `USER_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `M1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `M2` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `M3` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:03
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pre_step2_tb`
--

DROP TABLE IF EXISTS `pre_step2_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_step2_tb` (
  `step2_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 키',
  `competitor_key` int(11) NOT NULL DEFAULT 0 COMMENT '경쟁사 키',
  `title` varchar(500) DEFAULT '' COMMENT '주요성능지표',
  `unit` varchar(50) NOT NULL DEFAULT '' COMMENT '측정단위',
  `kano_type` varchar(10) NOT NULL DEFAULT '' COMMENT 'Kano모형',
  `division` varchar(50) NOT NULL DEFAULT '' COMMENT '특성구분',
  `max_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '상한규격',
  `floor_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '하한규격',
  `com_max_type` varchar(50) NOT NULL DEFAULT '' COMMENT '경쟁사 미정확 시 우수, 부족, 동일 선택',
  `com_max_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '경쟁사 하한',
  `com_floor_type` varchar(50) NOT NULL DEFAULT '' COMMENT '경쟁사 미정확 시 우수, 부족, 동일 선택',
  `com_floor_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '경쟁사 상한',
  `assurance_importance` varchar(50) NOT NULL DEFAULT '1' COMMENT '확신도',
  `quality_importance` varchar(500) NOT NULL DEFAULT '1' COMMENT '중요도',
  `base_data` varchar(500) NOT NULL DEFAULT '' COMMENT '근거자료',
  `specComp` double DEFAULT 0 COMMENT '스펙비교치',
  `quality_level_factor` double DEFAULT 0 COMMENT '품질보정계수',
  `quality_level` double DEFAULT 0 COMMENT '품질개선계수',
  PRIMARY KEY (`step2_key`),
  KEY `FK_pre_step2_tb_pre_list_tb` (`project_key`),
  CONSTRAINT `FK_pre_step2_tb_pre_list_tb` FOREIGN KEY (`project_key`) REFERENCES `pre_list_tb` (`project_key`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5312 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='벤치마킹 비교';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:16
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `table_stats`
--

DROP TABLE IF EXISTS `table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_stats` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `cardinality` bigint(21) unsigned DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Tables';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotitemmonth`
--

DROP TABLE IF EXISTS `hotitemmonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotitemmonth` (
  `id` int(11) unsigned NOT NULL COMMENT '외래키',
  `frequency` int(11) unsigned DEFAULT NULL COMMENT '빈도수',
  `frequency_rate` float DEFAULT NULL COMMENT '빈도수 비율',
  `mannkendal` float DEFAULT NULL COMMENT '만켄달지수',
  `change_rate` float DEFAULT NULL COMMENT '증감률',
  PRIMARY KEY (`id`),
  KEY `frequency` (`frequency`),
  KEY `mannkendal` (`mannkendal`),
  KEY `change_rate` (`change_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='아이템에 대한 월간 통계를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_model_file_upload1_202310`
--

DROP TABLE IF EXISTS `tb_model_file_upload1_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_model_file_upload1_202310` (
  `idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `model_cd` varchar(10) DEFAULT NULL COMMENT '모델코드',
  `model_nm` varchar(100) DEFAULT NULL COMMENT '모델명',
  `model_version` varchar(100) DEFAULT NULL COMMENT '모델버전',
  `model_lang` varchar(100) DEFAULT NULL COMMENT '모델파일크기',
  `model_tag` varchar(500) DEFAULT NULL COMMENT '모델 TAG정보',
  `model_comment` text DEFAULT NULL COMMENT '코멘트',
  `dev_env` varchar(100) DEFAULT NULL COMMENT '개발환경',
  `frame` varchar(100) DEFAULT NULL COMMENT '프레임워크',
  `frame_version` varchar(100) DEFAULT NULL COMMENT '프레임워크 버전',
  `file_seq` int(11) DEFAULT NULL COMMENT '파일 일련번호',
  `file_nm` varchar(100) DEFAULT NULL COMMENT '파일명',
  `file_path` varchar(100) DEFAULT NULL COMMENT '파일경로',
  `writer_nm` varchar(100) DEFAULT NULL COMMENT '등록자명',
  `reg_date` date DEFAULT NULL COMMENT '등록일자',
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='분석모델관리 - 모델리스트\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:20
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fparam_assure_tb`
--

DROP TABLE IF EXISTS `fparam_assure_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fparam_assure_tb` (
  `assurance_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '확신도 점수 Key',
  `feat_param_manage_code` varchar(15) DEFAULT NULL COMMENT '품질특성산정 파라미터 관리코드',
  `assurance_score` varchar(50) NOT NULL DEFAULT '0' COMMENT '확신도 점수',
  `assurance_value` double NOT NULL DEFAULT 0 COMMENT '확신도 점수 변환값',
  PRIMARY KEY (`assurance_key`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='확신도 점수 테이블(변환용)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:19
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_table` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `target` varchar(20) NOT NULL,
  `bookmark_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:33
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_dept_info_202310`
--

DROP TABLE IF EXISTS `tb_dept_info_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dept_info_202310` (
  `DEPT_SEQ` int(11) DEFAULT NULL COMMENT '일련번호',
  `DEPT_CD` varchar(200) DEFAULT NULL COMMENT '부서코드',
  `DEPT_ENG_NM` varchar(200) DEFAULT NULL COMMENT '부서영문명',
  `DEPT_NM` varchar(200) DEFAULT NULL COMMENT '부서명',
  `AGENCY_SEQ` int(11) DEFAULT NULL COMMENT '기관 일련번호',
  `DESCRIPT` text DEFAULT NULL COMMENT '설명',
  `REG_ID` varchar(100) DEFAULT NULL COMMENT '등록ID',
  `REG_DT` datetime NOT NULL COMMENT '등록일자',
  `MOD_ID` varchar(100) DEFAULT NULL COMMENT '수정ID',
  `MOD_DT` datetime NOT NULL COMMENT '수정일자'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='부서정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:56
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city_code`
--

DROP TABLE IF EXISTS `city_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_code` (
  `code` int(11) DEFAULT NULL COMMENT '시도코드',
  `name` varchar(50) DEFAULT NULL COMMENT '시도명'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='place_code';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:51
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT 0,
  `dl` char(128) NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:25
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step6_tb`
--

DROP TABLE IF EXISTS `deep_step6_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step6_tb` (
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `v_value` varchar(50) NOT NULL DEFAULT '0' COMMENT '가치계수 V',
  `n_value` varchar(50) NOT NULL DEFAULT '0' COMMENT '개선공헌도 N',
  `c_value` varchar(50) NOT NULL DEFAULT '0' COMMENT '코스트비율 C',
  `total_coefficient` varchar(50) NOT NULL DEFAULT '0' COMMENT '개선공헌도 총합 T',
  PRIMARY KEY (`project_key`),
  CONSTRAINT `FK_deep_step6_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='상세분석결과 항목 저장 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:01
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_corporation_rc`
--

DROP TABLE IF EXISTS `uitem_corporation_rc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_corporation_rc` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `record_no` int(11) NOT NULL COMMENT '레코드번호',
  `co_ci` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 CI',
  `co_comp` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 기업명',
  `co_cnt` varchar(500) DEFAULT '0' COMMENT '경쟁사 현황 경쟁사 건수',
  `co_source` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 출처',
  `co_field1` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 필드1',
  `co_text1` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 내용1',
  `co_ft_source1` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 필드내용출처1',
  `co_img1` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 이미지1',
  `co_img_source1` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 이미지출처1',
  `co_field2` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 필드2',
  `co_text2` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 내용2',
  `co_ft_source2` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 필드내용출처2',
  `co_img2` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 이미지2',
  `co_img_source2` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 이미지출처2',
  `co_field3` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 필드3',
  `co_text3` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 내용3',
  `co_ft_source3` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 필드내용출처3',
  `co_img3` varchar(255) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 이미지3',
  `co_img_source3` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 이미지출처3',
  `co_l_res` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 왼쪽 연구개발내용',
  `co_r_res` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 오른쪽 연구개발내용',
  `co_l_pat` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 왼쪽 특허출원현황',
  `co_l_pat_sub` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 왼쪽 특허출원현황_서브',
  `co_r_pat` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 오른쪽 특허출원현황',
  `co_r_pat_sub` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 오른쪽 특허출원현황_서브',
  `co_l_app` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 왼쪽 공동출원',
  `co_l_app_sub` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 왼쪽 공동출원_서브',
  `co_r_app` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 오른쪽 공동출원',
  `co_r_app_sub` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 오른쪽 공동출원_서브',
  `co_l_ana` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 분석결과',
  `co_l_ana_sub` text DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 분석결과_서브',
  `co_res_source` varchar(1000) DEFAULT NULL COMMENT '경쟁사 현황 경쟁사 연구개발 출처',
  PRIMARY KEY (`unit_cd`,`record_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 기업분석-경쟁사 현황';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:25
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_nice_biz_info_202310`
--

DROP TABLE IF EXISTS `tb_nice_biz_info_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_nice_biz_info_202310` (
  `biz_code` varchar(20) DEFAULT NULL COMMENT '기업코드',
  `biz_name` varchar(100) DEFAULT NULL COMMENT '기업명',
  `nice_code` varchar(10) NOT NULL COMMENT 'NICE 코드',
  PRIMARY KEY (`nice_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='기업정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:31
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step7_bench_tb`
--

DROP TABLE IF EXISTS `deep_step7_bench_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step7_bench_tb` (
  `project_key` int(11) DEFAULT NULL COMMENT '평가 key',
  `competitor_key` int(11) DEFAULT NULL COMMENT '경쟁사 key',
  `info_title` varchar(50) DEFAULT NULL COMMENT '추가정보 명',
  `info_content` varchar(50) DEFAULT NULL COMMENT '추가정보 내용',
  KEY `FK_deep_step7_bench_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step7_bench_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='벤치마킹 추가정보 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:10
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dnw_category_tb`
--

DROP TABLE IF EXISTS `dnw_category_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnw_category_tb` (
  `level1` varchar(50) DEFAULT NULL COMMENT '대분류',
  `level2` varchar(50) DEFAULT NULL COMMENT '중분류',
  `level3` varchar(50) DEFAULT NULL COMMENT '소분류',
  `level4` varchar(50) DEFAULT NULL COMMENT '세분류',
  `pcategory` varchar(20) DEFAULT NULL COMMENT '카테고리 고유값'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:49
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:34
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotitemterm`
--

DROP TABLE IF EXISTS `hotitemterm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotitemterm` (
  `id` int(10) unsigned NOT NULL COMMENT '외래키',
  `period_id` char(6) NOT NULL COMMENT '년월 정보(YYYYMM 형태 - 201407)',
  `frequency` int(10) unsigned DEFAULT NULL COMMENT '빈도수',
  `doc_num` int(10) unsigned DEFAULT NULL COMMENT '해당 기간 총 문서 수',
  PRIMARY KEY (`id`,`period_id`),
  KEY `period_id` (`period_id`),
  KEY `frequency` (`frequency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='약 1,000개 아이템에 대한 월간 통계를 누적한 정보를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:41
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_ml4_csv_file_202310`
--

DROP TABLE IF EXISTS `tb_ml4_csv_file_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ml4_csv_file_202310` (
  `file_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `file_date` varchar(10) DEFAULT NULL COMMENT '파일 적재일자',
  `file_time` varchar(5) DEFAULT NULL COMMENT '파일 적재시간',
  `file_name` varchar(50) DEFAULT NULL COMMENT '파일 명',
  `file_path` varchar(200) DEFAULT NULL COMMENT '파일 경로',
  `file_type` varchar(10) DEFAULT NULL COMMENT '파일 소스형태',
  `file_memo` varchar(500) DEFAULT NULL COMMENT '메모',
  `file_gbn` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`file_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='모델4번 csv 파일 관리';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:05
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_sort`
--

DROP TABLE IF EXISTS `uitem_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_sort` (
  `unit_cd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '고유번호',
  `item_sort` int(11) DEFAULT 99999 COMMENT '아이템우선순위'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:36
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_venture_source`
--

DROP TABLE IF EXISTS `pi_venture_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_venture_source` (
  `record_no` int(11) unsigned NOT NULL,
  `site_nm` varchar(500) DEFAULT NULL,
  `site_url` varchar(500) DEFAULT NULL,
  `source_doc` text DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`record_no`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:48
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_feature_rating_tb`
--

DROP TABLE IF EXISTS `amz_feature_rating_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_feature_rating_tb` (
  `url` varchar(220) DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) DEFAULT NULL COMMENT '상품고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '세부 특징 인덱스',
  `create_date` varchar(10) DEFAULT NULL COMMENT '생성날짜',
  `feature_title` varchar(50) DEFAULT NULL COMMENT '세부 특징 이름',
  `feature_rating` float DEFAULT 0 COMMENT '세부 특징 별점',
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='세부 특징별 rating 점수 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:09
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_data_management`
--

DROP TABLE IF EXISTS `tb_data_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_data_management` (
  `year` char(4) NOT NULL,
  `db_nm_m1_biz` varchar(150) DEFAULT NULL COMMENT 'DB명',
  `db_detail_m1_biz` varchar(250) NOT NULL COMMENT '세부DB명(혹은 구분)',
  `record_num_m1_biz` bigint(20) DEFAULT NULL COMMENT '건수',
  `size_m1_biz` double DEFAULT NULL COMMENT '사이즈(GB)',
  `last_load_dt_m1_biz` date DEFAULT NULL COMMENT '최종 적재일',
  `dq_m1_biz` tinyint(4) DEFAULT NULL,
  `db_nm_m1_tech` varchar(150) DEFAULT NULL COMMENT 'DB명',
  `db_detail_m1_tech` varchar(250) NOT NULL COMMENT '세부DB명(혹은 구분)',
  `record_num_m1_tech` bigint(20) DEFAULT NULL COMMENT '건수',
  `size_m1_tech` double DEFAULT NULL COMMENT '사이즈(GB)',
  `last_load_dt_m1_tech` date DEFAULT NULL COMMENT '최종 적재일',
  `dq_m1_tech` tinyint(4) DEFAULT NULL,
  `db_nm_m2` varchar(150) DEFAULT NULL COMMENT 'DB명',
  `db_detail_m2` varchar(250) NOT NULL COMMENT '세부DB명(혹은 구분)',
  `record_num_m2` bigint(20) DEFAULT NULL COMMENT '건수',
  `size_m2` double DEFAULT NULL COMMENT '사이즈(GB)',
  `last_load_dt_m2` date DEFAULT NULL COMMENT '최종 적재일',
  `dq_m2` tinyint(4) DEFAULT NULL,
  `db_nm_m6` varchar(150) DEFAULT NULL COMMENT 'DB명',
  `db_detail_m6` varchar(250) NOT NULL COMMENT '세부DB명(혹은 구분)',
  `record_num_m6` bigint(20) DEFAULT NULL COMMENT '건수',
  `size_m6` double DEFAULT NULL COMMENT '사이즈(GB)',
  `last_load_dt_m6` date DEFAULT NULL COMMENT '최종 적재일',
  `dq_m6` tinyint(4) DEFAULT NULL,
  `db_nm_m7` varchar(150) DEFAULT NULL COMMENT 'DB명',
  `db_detail_m7` varchar(250) NOT NULL COMMENT '세부DB명(혹은 구분)',
  `record_num_m7` bigint(20) DEFAULT NULL COMMENT '건수',
  `size_m7` double DEFAULT NULL COMMENT '사이즈(GB)',
  `last_load_dt_m7` date DEFAULT NULL COMMENT '최종 적재일',
  `dq_m7` tinyint(4) DEFAULT NULL,
  `db_nm_m8` varchar(150) DEFAULT NULL COMMENT 'DB명',
  `db_detail_m8` varchar(250) NOT NULL COMMENT '세부DB명(혹은 구분)',
  `record_num_m8` bigint(20) DEFAULT NULL COMMENT '건수',
  `size_m8` double DEFAULT NULL COMMENT '사이즈(GB)',
  `last_load_dt_m8` date DEFAULT NULL COMMENT '최종 적재일',
  `dq_m8` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:17
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_odm_people`
--

DROP TABLE IF EXISTS `pi_odm_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_odm_people` (
  `crunchbase_uuid` varchar(50) NOT NULL,
  `odm_type` varchar(50) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `crunchbase_url` varchar(500) DEFAULT NULL,
  `profile_image_url` varchar(500) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `location_city` varchar(500) DEFAULT NULL,
  `location_region` varchar(500) DEFAULT NULL,
  `location_country_code` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `organization` varchar(500) DEFAULT NULL,
  `organization_url` varchar(500) DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`crunchbase_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:24
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `meta_col_info`
--

DROP TABLE IF EXISTS `meta_col_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_col_info` (
  `name` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `collation` varchar(50) DEFAULT NULL,
  `not_null` varchar(50) DEFAULT NULL,
  `key_val` varchar(50) DEFAULT NULL,
  `default_val` varchar(1000) DEFAULT NULL,
  `extra` varchar(50) DEFAULT NULL,
  `privileges` varchar(50) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `null` varchar(50) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:50
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_eval_20160705`
--

DROP TABLE IF EXISTS `uitem_eval_20160705`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_eval_20160705` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `ma_t_1` varchar(250) DEFAULT NULL COMMENT '시장매력도 타이틀(1)',
  `ma_s_1` float(10,2) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_1` float(10,2) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_t_2` varchar(250) DEFAULT NULL COMMENT '시장매력도 타이틀(2)',
  `ma_s_2` float(10,2) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_2` float(10,2) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_t_3` varchar(250) DEFAULT NULL COMMENT '시장매력도 타이틀(3)',
  `ma_s_3` float(10,2) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_3` float(10,2) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_t_4` varchar(250) DEFAULT NULL COMMENT '시장매력도 타이틀(4)',
  `ma_s_4` float(10,2) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_4` float(10,2) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_t_5` varchar(250) DEFAULT NULL COMMENT '시장매력도 타이틀(5)',
  `ma_s_5` float(10,2) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_5` float(10,2) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_t_6` varchar(250) DEFAULT NULL COMMENT '시장매력도 타이틀(6)',
  `ma_s_6` float(10,2) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_6` float(10,2) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `tf_t_1` varchar(250) DEFAULT NULL COMMENT '기술적합도 타이틀(1)',
  `tf_s_1` float(10,2) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_1` float(10,2) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_t_2` varchar(250) DEFAULT NULL COMMENT '기술적합도 타이틀(2)',
  `tf_s_2` float(10,2) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_2` float(10,2) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_t_3` varchar(250) DEFAULT NULL COMMENT '기술적합도 타이틀(3)',
  `tf_s_3` float(10,2) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_3` float(10,2) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_t_4` varchar(250) DEFAULT NULL COMMENT '기술적합도 타이틀(4)',
  `tf_s_4` float(10,2) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_4` float(10,2) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_t_5` varchar(250) DEFAULT NULL COMMENT '기술적합도 타이틀(5)',
  `tf_s_5` float(10,2) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_5` float(10,2) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_t_6` varchar(250) DEFAULT NULL COMMENT '기술적합도 타이틀(6)',
  `tf_s_6` float(10,2) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_6` float(10,2) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `ma_s_tot` float(10,2) DEFAULT NULL COMMENT '시장매력도 단기 종합',
  `tf_s_tot` float(10,2) DEFAULT NULL COMMENT '기술적합성 단기 종합',
  `ma_l_tot` float(10,2) DEFAULT NULL COMMENT '시장매력도 장기 종합',
  `tf_l_tot` float(10,2) DEFAULT NULL COMMENT '기술적합성 장기 조합',
  `eval_main` text DEFAULT NULL COMMENT '사업성평가 내용',
  `eval_sub` text DEFAULT NULL COMMENT '사업성평가 서브',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 아이템 사업성 평가';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:17
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step1_tb`
--

DROP TABLE IF EXISTS `deep_step1_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step1_tb` (
  `step1_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `title` varchar(500) DEFAULT '' COMMENT '기능구분',
  `title_code` varchar(50) DEFAULT '' COMMENT '기능구분 코드(tit001)',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '품질특성명',
  `content_summary` varchar(500) NOT NULL DEFAULT '' COMMENT '품질특성 설명',
  `unit` varchar(50) NOT NULL DEFAULT '' COMMENT '측정단위',
  `division` varchar(50) NOT NULL DEFAULT '' COMMENT '특성구분',
  `kano_type` varchar(10) DEFAULT '' COMMENT 'Kano모형',
  `max_standard` double NOT NULL DEFAULT 0 COMMENT '상한규격',
  `floor_standard` double NOT NULL DEFAULT 0 COMMENT '하한규격',
  `order_no` int(11) NOT NULL DEFAULT 0 COMMENT '정렬순서',
  `weight` double NOT NULL DEFAULT 1 COMMENT '가중치',
  `tech_weight` double NOT NULL DEFAULT 1 COMMENT '기술비중 (사용자 입력 1~100)',
  `tech_weight_change` varchar(50) NOT NULL DEFAULT '0.01' COMMENT '기술비중 변환',
  `market_importance` double NOT NULL DEFAULT 1 COMMENT '시장중요도(사용자 입력 1~ 100)',
  `market_importance_change` varchar(50) NOT NULL DEFAULT '0.01' COMMENT '시장 중요도변환(시장중요도 / 100)',
  `tech_level` varchar(50) NOT NULL DEFAULT '1점' COMMENT '기술난이도(핵심기업 벤치마킹 입력)',
  `quality_importance` double NOT NULL DEFAULT 0 COMMENT '품질특성중요도',
  `quality_correction_factor` double NOT NULL DEFAULT 0 COMMENT '품질보정계수',
  `quality_factor` double NOT NULL DEFAULT 0 COMMENT '품질특성계수(1 + d, e), 품질특성상관성',
  `quality_level_factor` double NOT NULL DEFAULT 0 COMMENT '품질수준계수',
  `quality_level` double NOT NULL DEFAULT 0 COMMENT '품질수준',
  `compo_quality_importance` varchar(500) NOT NULL DEFAULT '0' COMMENT '구성품특성중요도',
  `step1_comment` varchar(500) NOT NULL DEFAULT '' COMMENT '품질특성 분석(요약)',
  PRIMARY KEY (`step1_key`),
  KEY `FK_deep_step1_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step1_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='품질특성 정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:06
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step2_tb`
--

DROP TABLE IF EXISTS `simple_step2_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step2_tb` (
  `key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `step1_key` int(11) NOT NULL DEFAULT 0 COMMENT 'Step1 Key',
  `total_coefficient` double NOT NULL DEFAULT 0 COMMENT '종합점수',
  `import_coefficient` double NOT NULL DEFAULT 0 COMMENT '최종중요도',
  `weight` double NOT NULL DEFAULT 0 COMMENT '가중치',
  PRIMARY KEY (`key`) USING BTREE,
  KEY `FK_deep_step3_tb_deep_list_tb` (`project_key`) USING BTREE,
  CONSTRAINT `simple_step2_tb_ibfk_1` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='품질특성 상관성 계산정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT 0,
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:02
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ksic`
--

DROP TABLE IF EXISTS `ksic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ksic` (
  `class_code` varchar(6) DEFAULT NULL,
  `class_1` varchar(1) DEFAULT NULL,
  `class_1_k` varchar(200) DEFAULT NULL,
  `class_1_e` varchar(200) DEFAULT NULL,
  `class_2` varchar(2) DEFAULT NULL,
  `class_2_k` varchar(200) DEFAULT NULL,
  `class_2_e` varchar(200) DEFAULT NULL,
  `class_3` varchar(1) DEFAULT NULL,
  `class_3_k` varchar(200) DEFAULT NULL,
  `class_3_e` varchar(200) DEFAULT NULL,
  `class_4` varchar(1) DEFAULT NULL,
  `class_4_k` varchar(200) DEFAULT NULL,
  `class_4_e` varchar(200) DEFAULT NULL,
  `class_5` varchar(1) DEFAULT NULL,
  `class_5_k` varchar(200) DEFAULT NULL,
  `class_5_e` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:35
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_market_breadth_i`
--

DROP TABLE IF EXISTS `pi_market_breadth_i`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_market_breadth_i` (
  `item_id` int(11) unsigned NOT NULL,
  `market_year` int(4) NOT NULL,
  `market_breadth` float NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`market_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:08
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_interest`
--

DROP TABLE IF EXISTS `uitem_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_interest` (
  `id` varchar(200) NOT NULL COMMENT '아이디',
  `unit_cd` varchar(8) NOT NULL COMMENT '아이템 고유번호',
  `item_name` varchar(255) DEFAULT NULL COMMENT '아이템명',
  `insert_dt` datetime DEFAULT NULL COMMENT '등록일',
  PRIMARY KEY (`id`,`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='관심아이템';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:37
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fparam_kano_model_tb`
--

DROP TABLE IF EXISTS `fparam_kano_model_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fparam_kano_model_tb` (
  `kano_index` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Kano모형 Index',
  `feat_param_manage_code` varchar(15) DEFAULT NULL COMMENT '품질특성산정 파라미터 관리코드',
  `kano_type` varchar(6) DEFAULT NULL COMMENT 'Kano모형 Type',
  `kano_min_value` double DEFAULT NULL COMMENT 'Kano모형 최솟값',
  `kano_max_value` double DEFAULT NULL COMMENT 'Kano모형 최댓값',
  PRIMARY KEY (`kano_index`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Kano모형 기준표 Table';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:39
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoryinduyear`
--

DROP TABLE IF EXISTS `categoryinduyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryinduyear` (
  `category_name` varchar(64) DEFAULT NULL COMMENT '카테고리 명',
  `count` int(10) unsigned DEFAULT NULL COMMENT '빈도수',
  `count_rate` float DEFAULT NULL COMMENT '분포 비율',
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='약 1,000개 아이템의 산업분류별 아이템 분포 정보를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:19
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `feature_param_tb`
--

DROP TABLE IF EXISTS `feature_param_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_param_tb` (
  `feat_param_index` int(11) NOT NULL AUTO_INCREMENT COMMENT '품질특성산정 파라미터 Index',
  `feat_param_manage_code` varchar(15) DEFAULT NULL COMMENT '품질특성산정 파라미터 관리코드',
  `feat_param_researcher` varchar(50) DEFAULT '' COMMENT '품질특성산정 파라미터 연구원',
  `reg_date` varchar(12) DEFAULT curdate() COMMENT '품질특성산정 파라미터 생성일',
  `deleteYN` tinyint(4) DEFAULT 0 COMMENT '품질특성산정 파라미터 삭제여부',
  `procure_tech_large_code` int(11) DEFAULT NULL COMMENT '품질특성 제품분류 대분류',
  `procure_tech_middle_code` int(11) DEFAULT NULL COMMENT '품질특성 제품분류 중분류',
  `procure_tech_small_code` int(11) DEFAULT NULL COMMENT '품질특성 제품분류 소분류',
  PRIMARY KEY (`feat_param_index`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='품질특성산정 파라미터 관리';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:53
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotitemyear`
--

DROP TABLE IF EXISTS `hotitemyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotitemyear` (
  `id` int(11) unsigned NOT NULL COMMENT '외래키',
  `frequency` int(11) unsigned DEFAULT NULL COMMENT '빈도수',
  `frequency_rate` float DEFAULT NULL COMMENT '빈도수 비율',
  `mannkendal` float DEFAULT NULL COMMENT '만켄달지수',
  `change_rate` float DEFAULT NULL COMMENT '증감률',
  PRIMARY KEY (`id`),
  KEY `frequency` (`frequency`),
  KEY `mannkendal` (`mannkendal`),
  KEY `change_rate` (`change_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT COMMENT='약 1,000개 아이템에 대한 연간 통계를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:31
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_custom_deman_corp_ps_202310`
--

DROP TABLE IF EXISTS `tb_custom_deman_corp_ps_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_custom_deman_corp_ps_202310` (
  `SEQ` int(11) NOT NULL AUTO_INCREMENT,
  `SRC_DITC` varchar(10) DEFAULT NULL COMMENT '구분코드 1_과제명 2_과제정보',
  `RND_NM` varchar(200) DEFAULT NULL COMMENT '과제명',
  `RND_INFO` varchar(1000) DEFAULT NULL COMMENT '과제정보',
  `SELECT_RND_NM` varchar(200) DEFAULT NULL COMMENT '선택과제명',
  `CORP_NAME` varchar(100) DEFAULT NULL COMMENT '기업명',
  `CORP_CD` varchar(20) DEFAULT NULL COMMENT '기업코드',
  `LOCATION` varchar(200) DEFAULT NULL COMMENT '소재지',
  `EMPLOY_CNT` varchar(20) DEFAULT NULL COMMENT '종업원수',
  `TOT_SALES` varchar(20) DEFAULT NULL COMMENT '총매출액',
  `INDUSTRY_CD` varchar(20) DEFAULT NULL COMMENT '10차산업코드',
  `MAIN_PRODUCT` varchar(200) DEFAULT NULL COMMENT '주요제품',
  `DT_ESTABL` varchar(10) DEFAULT NULL COMMENT '설립일',
  `USER_ID` varchar(50) NOT NULL COMMENT '개인화 사용자ID',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일자',
  PRIMARY KEY (`SEQ`),
  KEY `tb_custom_deman_corp_ps_USER_ID_IDX` (`USER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='공공기술매칭 - 맞춤형 수요기업 추천 개인화';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:09
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_technology`
--

DROP TABLE IF EXISTS `uitem_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_technology` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `tc_head` text DEFAULT NULL COMMENT '기술우위 상위기관 머리글',
  `tc_kipo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) 한국',
  `tc_uspto_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) 미국',
  `tc_jpo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) 일본',
  `tc_sipo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) 중국',
  `tc_epo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) 유럽',
  `tc_kipo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) 한국',
  `tc_uspto_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) 미국',
  `tc_jpo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) 일본',
  `tc_sipo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) 중국',
  `tc_epo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) 유럽',
  `tc_kipo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) 한국',
  `tc_uspto_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) 미국',
  `tc_jpo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) 일본',
  `tc_sipo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) 중국',
  `tc_epo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) 유럽',
  `tc_kipo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) 한국',
  `tc_uspto_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) 미국',
  `tc_jpo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) 일본',
  `tc_sipo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) 중국',
  `tc_epo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) 유럽',
  `tc_kipo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) 한국',
  `tc_uspto_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) 미국',
  `tc_jpo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) 일본',
  `tc_sipo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) 중국',
  `tc_epo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) 유럽',
  `tc_main_text` text DEFAULT NULL COMMENT '기술우위 상위기관 내용',
  `tc_sub_text` text DEFAULT NULL COMMENT '기술우위 상위기관 서브 내용',
  `tc_source` varchar(1000) DEFAULT NULL COMMENT '기술우위 상위기관 출처',
  `new_main_text` text DEFAULT NULL COMMENT '최신 기술 동향 내용',
  `new_sub_text` text DEFAULT NULL COMMENT '최신 기술 동향 서브 내용',
  `new_source` varchar(1000) DEFAULT NULL COMMENT '최신 기술 동향 출처',
  `new_img1` varchar(255) DEFAULT NULL COMMENT '최신 기술 동향 이미지1',
  `new_img1_source` varchar(1000) DEFAULT NULL COMMENT '최신기술동향 이미지1 출처',
  `new_img2` varchar(255) DEFAULT NULL COMMENT '최신 기술 동향 이미지2',
  `new_img2_source` varchar(1000) DEFAULT NULL COMMENT '최신기술동향 이미지2 출처',
  `new_img3` varchar(255) DEFAULT NULL COMMENT '최신 기술 동향 이미지3',
  `new_img3_source` varchar(1000) DEFAULT NULL COMMENT '최신기술동향 이미지3 출처',
  `trd_trend_nm1` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명1',
  `trd_trend_sc1` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수1',
  `trd_trend_nm2` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명2',
  `trd_trend_sc2` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수2',
  `trd_trend_nm3` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명3',
  `trd_trend_sc3` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수3',
  `trd_trend_nm4` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명4',
  `trd_trend_sc4` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수4',
  `trd_trend_nm5` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명5',
  `trd_trend_sc5` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수5',
  `trd_trend_nm6` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명6',
  `trd_trend_sc6` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수6',
  `trd_trend_nm7` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명7',
  `trd_trend_sc7` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수7',
  `trd_trend_nm8` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명8',
  `trd_trend_sc8` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수8',
  `trd_main_text` text DEFAULT NULL COMMENT '제품개발 트렌드 내용',
  `trd_sub_text` text DEFAULT NULL COMMENT '제품개발 트렌드 서브 내용',
  `trd_source` varchar(1000) DEFAULT NULL COMMENT '제품개발 트렌드 출처',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 Technology';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:09
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_future`
--

DROP TABLE IF EXISTS `uitem_future`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_future` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `td_main` text DEFAULT NULL COMMENT '개술개발 방향 메인내용',
  `td_sub` text DEFAULT NULL COMMENT '개술개발 방향 서브내용',
  `td_source` varchar(1000) DEFAULT NULL COMMENT '개술개발 방향 출처',
  `cd_main` text DEFAULT NULL COMMENT '시장진출 방향 메인내용',
  `cd_sub` text DEFAULT NULL COMMENT '시장진출 방향 서브내용',
  `cd_source` varchar(1000) DEFAULT NULL COMMENT '시장진출 방향 출처',
  `sp_main` text DEFAULT NULL COMMENT '특별한 사회적 상황 메인내용',
  `sp_sub` text DEFAULT NULL COMMENT '특별한 사회적 상황 서브내용',
  `sp_source` varchar(1000) DEFAULT NULL COMMENT '특별한 사회적 상황 출처',
  `ma_s_1` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 시장 성장성 (단기)',
  `ma_l_1` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 시장 성장성 (장기)',
  `ma_s_2` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 시장 집중도 (단기)',
  `ma_l_2` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 시장 집중도 (장기)',
  `ma_s_3` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 매출 이익 가능성 (단기)',
  `ma_l_3` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 매출 이익 가능성 (장기)',
  `ma_s_4` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 위험 분산도 (단기)',
  `ma_l_4` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 위험 분산도 (장기)',
  `ma_s_5` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 업계의 재구축 가능성 (단기)',
  `ma_l_5` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 업계의 재구축 가능성 (장기)',
  `ma_s_6` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 특별한 사회적 상황 (단기)',
  `ma_l_6` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 시장매력도 - 특별한 사회적 상황 (장기)',
  `tf_s_1` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 시장 혁신성 (단기)',
  `tf_l_1` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 시장 혁신성 (장기)',
  `tf_s_2` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 기술 전망성 (단기)',
  `tf_l_2` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 기술 전망성 (장기)',
  `tf_s_3` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 권리 안정성 (단기)',
  `tf_l_3` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 권리 안정성 (장기)',
  `tf_s_4` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 사업화 투자 가능성 (단기)',
  `tf_l_4` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 사업화 투자 가능성 (장기)',
  `tf_s_5` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 기술사업화 환경 (단기)',
  `tf_l_5` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 기술사업화 환경 (장기)',
  `tf_s_6` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 산업 진입 용이성 (단기)',
  `tf_l_6` int(4) DEFAULT NULL COMMENT '아이템 사업성 평가 - 기술적합도 - 산업 진입 용이성 (장기)',
  `ma_s_tot` int(4) DEFAULT NULL COMMENT '시장매력도 단기 종합',
  `tf_s_tot` int(4) DEFAULT NULL COMMENT '기술적합성 단기 종합',
  `ma_l_tot` int(4) DEFAULT NULL COMMENT '시장매력도 장기 종합',
  `tf_l_tot` int(4) DEFAULT NULL COMMENT '기술적합성 장기 조합',
  `eval_main` text DEFAULT NULL COMMENT '종합의견 내용',
  `eval_sub` text DEFAULT NULL COMMENT '종합의견 서브',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 Future Insights';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:17
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_b_tb_0002_202310`
--

DROP TABLE IF EXISTS `vc_ntis_b_tb_0002_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_b_tb_0002_202310` (
  `NTIS_B_F_001` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_B_F_002` varchar(100) DEFAULT NULL COMMENT '성과발생부처',
  `NTIS_B_F_003` varchar(100) DEFAULT NULL COMMENT '성과사업ID',
  `NTIS_B_F_004` varchar(100) DEFAULT NULL COMMENT '성과사업명',
  `NTIS_B_F_005` varchar(100) DEFAULT NULL COMMENT '세부성과관리번호',
  `NTIS_B_F_006` varchar(100) DEFAULT NULL COMMENT 'NTIS_성과ID',
  `NTIS_B_F_007` longtext DEFAULT NULL COMMENT 'KISTEP_성과ID',
  `NTIS_B_F_008` varchar(100) DEFAULT NULL COMMENT '검증결과',
  `NTIS_B_F_009` varchar(100) DEFAULT NULL COMMENT '검증내역',
  `NTIS_B_F_010` longtext DEFAULT NULL COMMENT '기술실시계약명',
  `NTIS_B_F_011` longtext DEFAULT NULL COMMENT '기술실시계약명_1',
  `NTIS_B_F_012` longtext DEFAULT NULL COMMENT '기술실시계약명_2',
  `NTIS_B_F_013` longtext DEFAULT NULL COMMENT '기술실시계약명_3',
  `NTIS_B_F_014` varchar(100) DEFAULT NULL COMMENT '최초기술실시계약년도',
  `NTIS_B_F_015` varchar(100) DEFAULT NULL COMMENT '기술료실시대상국가코드',
  `NTIS_B_F_016` varchar(100) DEFAULT NULL COMMENT '기술료실시대상국가',
  `NTIS_B_F_017` varchar(100) DEFAULT NULL COMMENT '당해연도 기술료(원)',
  `NTIS_B_F_018` varchar(100) DEFAULT NULL COMMENT '정부납부 기술료(원)',
  `NTIS_B_F_019` varchar(100) DEFAULT NULL COMMENT '정부납부기술료여부',
  `NTIS_B_F_020` varchar(100) DEFAULT NULL COMMENT '납부방식코드',
  `NTIS_B_F_021` varchar(100) DEFAULT NULL COMMENT '납부방식',
  `NTIS_B_F_022` varchar(100) DEFAULT NULL COMMENT '연구개발성과소유기관코드',
  `NTIS_B_F_023` varchar(100) DEFAULT NULL COMMENT '연구개발성과소유기관명',
  `NTIS_B_F_024` varchar(100) DEFAULT NULL COMMENT '실시방식코드',
  `NTIS_B_F_025` varchar(100) DEFAULT NULL COMMENT '실시방식명',
  `NTIS_B_F_026` varchar(100) DEFAULT NULL COMMENT '과제수행년도',
  `NTIS_B_F_027` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_B_F_028` longtext DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_B_F_029` longtext DEFAULT NULL COMMENT '과제명-국문',
  `NTIS_B_F_030` longtext DEFAULT NULL COMMENT '기술실시내용',
  `NTIS_B_F_031` longtext DEFAULT NULL COMMENT '기술실시대상기관명',
  `NTIS_B_F_032` varchar(100) DEFAULT NULL COMMENT '기술료_기발생액',
  `NTIS_B_F_033` varchar(100) DEFAULT NULL COMMENT '기술실시대상기관_사업자번호',
  `NTIS_B_F_034` varchar(100) DEFAULT NULL COMMENT '기술실시발생일자',
  `NTIS_B_F_035` varchar(100) DEFAULT NULL COMMENT '총민간연구비',
  `NTIS_B_F_036` varchar(100) DEFAULT NULL COMMENT '총정부출연금',
  KEY `vc_ntis_b_tb_0002_NTIS_B_F_027_IDX` (`NTIS_B_F_027`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='기술료통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:58
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_corporation`
--

DROP TABLE IF EXISTS `uitem_corporation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_corporation` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `tc_head` text DEFAULT NULL COMMENT '기술우위 상위기관 머리글',
  `tc_kipo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) KIPO',
  `tc_uspto_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) USPTO',
  `tc_jpo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) JPO',
  `tc_sipo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) SIPO',
  `tc_epo_1` text DEFAULT NULL COMMENT '기술우위 상위기관 (1) EPO',
  `tc_kipo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) KIPO',
  `tc_uspto_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) USPTO',
  `tc_jpo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) JPO',
  `tc_sipo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) SIPO',
  `tc_epo_2` text DEFAULT NULL COMMENT '기술우위 상위기관 (2) EPO',
  `tc_kipo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) KIPO',
  `tc_uspto_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) USPTO',
  `tc_jpo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) JPO',
  `tc_sipo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) SIPO',
  `tc_epo_3` text DEFAULT NULL COMMENT '기술우위 상위기관 (3) EPO',
  `tc_kipo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) KIPO',
  `tc_uspto_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) USPTO',
  `tc_jpo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) JPO',
  `tc_sipo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) SIPO',
  `tc_epo_4` text DEFAULT NULL COMMENT '기술우위 상위기관 (4) EPO',
  `tc_kipo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) KIPO',
  `tc_uspto_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) USPTO',
  `tc_jpo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) JPO',
  `tc_sipo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) SIPO',
  `tc_epo_5` text DEFAULT NULL COMMENT '기술우위 상위기관 (5) EPO',
  `tc_main_text` text DEFAULT NULL COMMENT '기술우위 상위기관 내용',
  `tc_sub_text` text DEFAULT NULL COMMENT '기술우위 상위기관 서브 내용',
  `tc_l_arrow` varchar(255) DEFAULT NULL COMMENT '기술우위 상위기관 왼쪽 화살표내용',
  `tc_l_main_text` text DEFAULT NULL COMMENT '기술우위 상위기관 왼쪽 내용',
  `tc_l_sub_text` text DEFAULT NULL COMMENT '기술우위 상위기관 왼쪽 서브내용',
  `tc_r_arrow` varchar(255) DEFAULT NULL COMMENT '기술우위 상위기관 오른쪽 화살표내용',
  `tc_r_main_text` text DEFAULT NULL COMMENT '기술우위 상위기관 오른쪽 내용',
  `tc_r_sub_text` text DEFAULT NULL COMMENT '기술우위 상위기관 오른쪽 서브내용',
  `tc_source` varchar(1000) DEFAULT NULL COMMENT '기술우위 상위기관 출처',
  `trd_trend_nm1` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명1',
  `trd_trend_sc1` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수1',
  `trd_trend_nm2` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명2',
  `trd_trend_sc2` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수2',
  `trd_trend_nm3` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명3',
  `trd_trend_sc3` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수3',
  `trd_trend_nm4` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명4',
  `trd_trend_sc4` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수4',
  `trd_trend_nm5` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명5',
  `trd_trend_sc5` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수5',
  `trd_trend_nm6` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명6',
  `trd_trend_sc6` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수6',
  `trd_trend_nm7` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명7',
  `trd_trend_sc7` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수7',
  `trd_trend_nm8` varchar(255) DEFAULT NULL COMMENT '제품개발 트렌드 기술명8',
  `trd_trend_sc8` int(11) DEFAULT 0 COMMENT '제품개발 트렌드 점수8',
  `trd_main_text` text DEFAULT NULL COMMENT '제품개발 트렌드 내용',
  `trd_sub_text` text DEFAULT NULL COMMENT '제품개발 트렌드 서브 내용',
  `trd_source` varchar(1000) DEFAULT NULL COMMENT '제품개발 트렌드 출처',
  `mtx_position` char(1) DEFAULT NULL COMMENT '주명주기 매트릭스 중소기업 경쟁지위',
  `mtx_maturity` char(1) DEFAULT NULL COMMENT '주명주기 매트릭스 산업의 성숙도',
  `mtx_main_text` text DEFAULT NULL COMMENT '주명주기 매트릭스 내용',
  `mtx_sub_text` text DEFAULT NULL COMMENT '주명주기 매트릭스 서브 내용',
  `mtx_source` varchar(1000) DEFAULT NULL COMMENT '주명주기 매트릭스 출처',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 기업분석';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:20
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step1_tb`
--

DROP TABLE IF EXISTS `simple_step1_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step1_tb` (
  `step1_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL COMMENT '프로젝트key',
  `project_code` varchar(150) NOT NULL DEFAULT '0' COMMENT '프로젝트 코드',
  `step1_code` varchar(150) DEFAULT '0' COMMENT '프로젝트 코드 + step1 코드 시퀀스',
  `step1_code_seq` varchar(150) DEFAULT '0' COMMENT '코드시퀀스(qc001)',
  `title` varchar(500) DEFAULT '' COMMENT '기능구분',
  `title_code` varchar(50) DEFAULT '' COMMENT '기능구분 코드(tit001)',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '품질특성명',
  `kano_type` varchar(10) DEFAULT '' COMMENT 'Kano모형',
  `content_summary` varchar(500) NOT NULL DEFAULT '' COMMENT '품질특성 설명',
  `unit` varchar(50) NOT NULL DEFAULT '' COMMENT '측정단위',
  `division` varchar(50) NOT NULL DEFAULT '' COMMENT '특성구분',
  `max_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '상한규격',
  `floor_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '하한규격',
  `order_no` int(11) DEFAULT NULL COMMENT '순번',
  `weight` double NOT NULL DEFAULT 1 COMMENT '가중치',
  `tech_weight` double NOT NULL DEFAULT 1 COMMENT '기술비중(사용자 입력 1 ~ 100)',
  `tech_weight_change` varchar(500) NOT NULL DEFAULT '1.01' COMMENT '기술비중변환(기술비중 / 100)',
  `tech_importance` varchar(500) NOT NULL DEFAULT '0' COMMENT '기술중요도',
  `market_importance` double NOT NULL DEFAULT 1 COMMENT '시장중요도(사용자 입력 1~ 100)',
  `market_importance_change` varchar(500) NOT NULL DEFAULT '0.01' COMMENT '시장 중요도변환(시장중요도 / 100)',
  `tech_level` varchar(500) NOT NULL DEFAULT '0점' COMMENT '기술난이도(핵심기업 벤치마킹 입력)',
  `quality_factor` double NOT NULL DEFAULT 0 COMMENT '품질특성계수',
  `quality_importance` double NOT NULL DEFAULT 0 COMMENT '품질특성중요도',
  `quality_correction_factor` double NOT NULL DEFAULT 0 COMMENT '품질보정계수(step5)',
  `quality_level` double NOT NULL DEFAULT 0 COMMENT '품질개선계수(step5)',
  `quality_improve_factor` double NOT NULL DEFAULT 0 COMMENT '품질개선도(step5)',
  PRIMARY KEY (`step1_key`),
  KEY `FK_simple_step1_tb_simple_list_tb` (`project_key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='품질특성 정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:48
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ai_ds_ml7_promising_company_202310`
--

DROP TABLE IF EXISTS `ai_ds_ml7_promising_company_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_ds_ml7_promising_company_202310` (
  `ML7_INDEX` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `ML7_YEAR` varchar(5) DEFAULT NULL COMMENT '연도',
  `ML7_COMKEY` varchar(10) DEFAULT NULL COMMENT '기업코드(나이스)',
  `ML7_COMNAME` varchar(100) DEFAULT NULL COMMENT '기업명',
  `ML7_VALCREATION` double DEFAULT NULL COMMENT '부가가치창출',
  `ML7_GROWTH` double DEFAULT NULL COMMENT '성장성',
  `ML7_REVENUE` double DEFAULT NULL COMMENT '수익성',
  `ML7_COST` double DEFAULT NULL COMMENT '비용성',
  `ML7_STABILITY` double DEFAULT NULL COMMENT '안정성',
  `ML7_ACTIVITY` double DEFAULT NULL COMMENT '활동성',
  `ML7_TECHINNO` double DEFAULT NULL COMMENT '기술혁신성',
  `ML7_SCORE` double DEFAULT NULL COMMENT '종합점수',
  PRIMARY KEY (`ML7_INDEX`),
  KEY `ML7_COMKEY` (`ML7_COMKEY`)
) ENGINE=InnoDB AUTO_INCREMENT=28715 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='미래성장 잠재기업 선별 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:33
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `m7_score_tmp`
--

DROP TABLE IF EXISTS `m7_score_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m7_score_tmp` (
  `업체코드` char(6) DEFAULT NULL,
  `사업자번호` bigint(20) DEFAULT NULL,
  `사업자등록번호` varchar(50) DEFAULT NULL,
  `인증갯수` int(11) DEFAULT NULL,
  `특허출원수_5개년` int(11) DEFAULT NULL,
  `부가가치성_lv` double DEFAULT NULL,
  `성장성_lv` double DEFAULT NULL,
  `수익성_lv` double DEFAULT NULL,
  `비용성_lv` double DEFAULT NULL,
  `안정성_lv` double DEFAULT NULL,
  `활동성_lv` double DEFAULT NULL,
  `기술혁신성_lv` double DEFAULT NULL,
  `종업원_1인당_매출액` double DEFAULT NULL,
  `총자본투자효율` double DEFAULT NULL,
  `총자산증가율` double DEFAULT NULL,
  `매출액증가율` double DEFAULT NULL,
  `총자본순이익율` double DEFAULT NULL,
  `매출액영업이익율` double DEFAULT NULL,
  `매출원가율` double DEFAULT NULL,
  `총부채_대비_금융비용` double DEFAULT NULL,
  `유동비율` double DEFAULT NULL,
  `부채비율` double DEFAULT NULL,
  `총자본회전율` double DEFAULT NULL,
  `매출채권회전율` double DEFAULT NULL,
  `매출액_대비_연구개발비` double DEFAULT NULL,
  `영업이익_대비_연구개발비` double DEFAULT NULL,
  `종합점수` double DEFAULT NULL,
  `부가가치성` double DEFAULT NULL,
  `성장성` double DEFAULT NULL,
  `수익성` double DEFAULT NULL,
  `비용성` double DEFAULT NULL,
  `안정성` double DEFAULT NULL,
  `활동성` double DEFAULT NULL,
  `기술혁신성` double DEFAULT NULL,
  `industry` varchar(6) DEFAULT NULL,
  `city_code` char(2) DEFAULT NULL,
  KEY `m7_score_tmp_IDX1` (`업체코드`),
  KEY `m7_score_tmp_IDX2` (`city_code`),
  KEY `m7_score_tmp_IDX3` (`industry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:43
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pps_class`
--

DROP TABLE IF EXISTS `pps_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pps_class` (
  `DB_regTime` datetime NOT NULL DEFAULT current_timestamp(),
  `DB_modTime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `thngClsfcNo` bigint(20) NOT NULL DEFAULT 0,
  `thngClsfcNoNm` varchar(200) DEFAULT '',
  `thngClsfcNoEngNm` varchar(200) DEFAULT '',
  `prdctClsfcRltnDscrpt` varchar(4000) DEFAULT '',
  `prdctClsfcNoAplYn` tinyint(1) DEFAULT 0,
  `prdctClsfcNoUseYn` tinyint(1) DEFAULT 0,
  `prdctClsfcNoDltYn` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`thngClsfcNo`),
  KEY `idx_thngClsfcNo` (`thngClsfcNo`),
  KEY `idx_thngClsfcNoNm` (`thngClsfcNoNm`),
  KEY `idx_thngClsfcNoEngNm` (`thngClsfcNoEngNm`),
  KEY `idx_prdctClsfcRltnDscrpt` (`prdctClsfcRltnDscrpt`(768))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:51
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step4_tb`
--

DROP TABLE IF EXISTS `simple_step4_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step4_tb` (
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `v_value` varchar(50) NOT NULL DEFAULT '0' COMMENT '가치계수 V',
  `n_value` varchar(50) NOT NULL DEFAULT '0' COMMENT '개선공헌도 N',
  `c_value` varchar(50) NOT NULL DEFAULT '0' COMMENT '코스트비율 C',
  `total_coefficient` varchar(50) NOT NULL DEFAULT '0' COMMENT '개선공헌도 총합 T',
  PRIMARY KEY (`project_key`) USING BTREE,
  CONSTRAINT `simple_step4_tb_ibfk_1` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='상세분석결과 항목 저장 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:10
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_market_analysis`
--

DROP TABLE IF EXISTS `uitem_market_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_market_analysis` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `o_start_year` int(4) DEFAULT 0 COMMENT '해외시장규모-시작년도',
  `o_start_breadth` float(10,2) DEFAULT NULL COMMENT '해외시장규모-시작시장규모 (단위 : 억달러)',
  `o_end_year` int(4) DEFAULT 0 COMMENT '해외시장규모-종료년도',
  `o_end_breadth` float(10,2) DEFAULT NULL COMMENT '해외시장규모-종료시장규모 (단위 : 억달러)',
  `o_cagr` float(10,2) DEFAULT NULL COMMENT '해외 시장 성장률 (CAGR)',
  `o_comp_name1` varchar(500) DEFAULT NULL COMMENT '해외시장점유율-회사명1',
  `o_share1` float(10,2) DEFAULT NULL COMMENT '해외시장점유율-점유율1',
  `o_comp_name2` varchar(500) DEFAULT NULL COMMENT '해외시장점유율-회사명2',
  `o_share2` float(10,2) DEFAULT NULL COMMENT '해외시장점유율-점유율2',
  `o_comp_name3` varchar(500) DEFAULT NULL COMMENT '해외시장점유율-회사명3',
  `o_share3` float(10,2) DEFAULT NULL COMMENT '해외시장점유율-점유율3',
  `o_comp_name4` varchar(500) DEFAULT NULL COMMENT '해외시장점유율-회사명4',
  `o_share4` float(10,2) DEFAULT NULL COMMENT '해외시장점유율-점유율4',
  `o_comp_name5` varchar(500) DEFAULT NULL COMMENT '해외시장점유율-회사명5',
  `o_share5` float(10,2) DEFAULT NULL COMMENT '해외시장점유율-점유율5',
  `o_share_source` varchar(1000) DEFAULT NULL COMMENT '해외시장점유율-출처',
  `o_main_text` text DEFAULT NULL COMMENT '해외시장현황 내용',
  `o_sub_text` text DEFAULT NULL COMMENT '해외시장현황 서브 내용',
  `o_source` varchar(1000) DEFAULT NULL COMMENT '해외시장현황 출처',
  `i_start_year` int(4) DEFAULT 0 COMMENT '국내시장규모-시작년도',
  `i_start_breadth` float(10,2) DEFAULT NULL COMMENT '국내시장규모-시작시장규모 (단위 : 억원)',
  `i_end_year` int(4) DEFAULT 0 COMMENT '국내시장규모-종료년도',
  `i_end_breadth` float(10,2) DEFAULT NULL COMMENT '국내시장규모-종료시장규모 (단위 : 억원)',
  `i_cagr` float(10,2) DEFAULT NULL COMMENT '국내 시장 성장률 (CAGR)',
  `i_comp_name1` varchar(100) DEFAULT NULL COMMENT '국내시장점유율-회사명1',
  `i_share1` float(10,2) DEFAULT NULL COMMENT '국내시장점유율-점유율1',
  `i_comp_name2` varchar(100) DEFAULT NULL COMMENT '국내시장점유율-회사명2',
  `i_share2` float(10,2) DEFAULT NULL COMMENT '국내시장점유율-점유율2',
  `i_comp_name3` varchar(100) DEFAULT NULL COMMENT '국내시장점유율-회사명3',
  `i_share3` float(10,2) DEFAULT NULL COMMENT '국내시장점유율-점유율3',
  `i_comp_name4` varchar(100) DEFAULT NULL COMMENT '국내시장점유율-회사명4',
  `i_share4` float(10,2) DEFAULT NULL COMMENT '국내시장점유율-점유율4',
  `i_comp_name5` varchar(100) DEFAULT NULL COMMENT '국내시장점유율-회사명5',
  `i_share5` float(10,2) DEFAULT NULL COMMENT '국내시장점유율-점유율5',
  `i_share_source` varchar(1000) DEFAULT NULL COMMENT '국내시장점유율-출처',
  `i_main_text` text DEFAULT NULL COMMENT '국내시장규모 내용',
  `i_sub_text` text DEFAULT NULL COMMENT '국내시장규모 서브 내용',
  `i_source` varchar(1000) DEFAULT NULL COMMENT '국내시장규모 출처',
  `indu_field_y1` varchar(255) DEFAULT NULL COMMENT '해당 산업분야1 (y축)',
  `profit_ratio_y1` float(10,2) DEFAULT NULL COMMENT '해당 산업분야 이익률1 (y축)',
  `indu_field_y2` varchar(255) DEFAULT NULL COMMENT '해당 산업분야2 (y축)',
  `profit_ratio_y2` float(10,2) DEFAULT NULL COMMENT '해당 산업분야 이익률2 (y축)',
  `indu_comp_x1` varchar(255) DEFAULT NULL COMMENT '해당 산업기업1 (x축)',
  `profit_ratio_x1` float(10,2) DEFAULT NULL COMMENT '해당 산업기업 이익률1 (x축)',
  `indu_comp_x2` varchar(255) DEFAULT NULL COMMENT '해당 산업기업2 (x축)',
  `profit_ratio_x2` float(10,2) DEFAULT NULL COMMENT '해당 산업기업 이익률2 (x축)',
  `indu_comp_x3` varchar(255) DEFAULT NULL COMMENT '해당 산업기업3 (x축)',
  `profit_ratio_x3` float(10,2) DEFAULT NULL COMMENT '해당 산업기업 이익률3 (x축)',
  `profit_main_text` text DEFAULT NULL COMMENT '투자수익성 내용',
  `profit_sub_text` text DEFAULT NULL COMMENT '투자수익성 서브 내용',
  `profit_source` varchar(1000) DEFAULT NULL COMMENT '투자수익성 출처',
  `o_share_main_text` text DEFAULT NULL COMMENT '해외시장 경쟁현황 내용',
  `o_share_sub_text` text DEFAULT NULL COMMENT '해외시장 경쟁현황 서브내용',
  `i_share_main_text` text DEFAULT NULL COMMENT '국내시장 경쟁현황 내용',
  `i_share_sub_text` text DEFAULT NULL COMMENT '국내시장 경쟁현황 서브내용',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 시장분석';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:32
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_odm_organizations`
--

DROP TABLE IF EXISTS `pi_odm_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_odm_organizations` (
  `crunchbase_uuid` varchar(50) NOT NULL,
  `odm_type` varchar(50) DEFAULT NULL,
  `primary_role` varchar(50) DEFAULT NULL,
  `org_name` varchar(500) DEFAULT NULL,
  `crunchbase_url` varchar(500) DEFAULT NULL,
  `homepage_domain` varchar(500) DEFAULT NULL,
  `homepage_url` varchar(500) DEFAULT NULL,
  `profile_image_url` varchar(500) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `stock_symbol` varchar(500) DEFAULT NULL,
  `location_city` varchar(500) DEFAULT NULL,
  `location_region` varchar(500) DEFAULT NULL,
  `location_country_code` varchar(500) DEFAULT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`crunchbase_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:44
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_competitor`
--

DROP TABLE IF EXISTS `uitem_competitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_competitor` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `o_co1_name` varchar(255) DEFAULT NULL COMMENT '해외 기업1_기업명',
  `o_co1_logo` varchar(255) DEFAULT NULL COMMENT '해외 기업1_로고',
  `o_co1_url` varchar(255) DEFAULT NULL COMMENT '해외 기업1_URL',
  `o_co1_info` varchar(1000) DEFAULT NULL COMMENT '해외 기업1_소개',
  `o_co1_img1` varchar(255) DEFAULT NULL COMMENT '해외 기업1_이미지1',
  `o_co1_img_source1` varchar(500) DEFAULT NULL COMMENT '해외 기업1_이미지출처1',
  `o_co1_img2` varchar(255) DEFAULT NULL COMMENT '해외 기업1_이미지2',
  `o_co1_img_source2` varchar(500) DEFAULT NULL COMMENT '해외 기업1_이미지출처2',
  `o_co1_img3` varchar(255) DEFAULT NULL COMMENT '해외 기업1_이미지3',
  `o_co1_img_source3` varchar(500) DEFAULT NULL COMMENT '해외 기업1_이미지출처3',
  `o_co1_main_text` text DEFAULT NULL COMMENT '해외 기업1_내용',
  `o_co1_sub_text` text DEFAULT NULL COMMENT '해외 기업1_서브내용',
  `o_co1_source` varchar(1000) DEFAULT NULL COMMENT '해외 기업1_출처',
  `o_co2_name` varchar(255) DEFAULT NULL COMMENT '해외 기업2_기업명',
  `o_co2_logo` varchar(255) DEFAULT NULL COMMENT '해외 기업2_로고',
  `o_co2_url` varchar(255) DEFAULT NULL COMMENT '해외 기업2_URL',
  `o_co2_info` varchar(1000) DEFAULT NULL COMMENT '해외 기업2_소개',
  `o_co2_img1` varchar(255) DEFAULT NULL COMMENT '해외 기업2_이미지1',
  `o_co2_img_source1` varchar(500) DEFAULT NULL COMMENT '해외 기업2_이미지출처1',
  `o_co2_img2` varchar(255) DEFAULT NULL COMMENT '해외 기업2_이미지2',
  `o_co2_img_source2` varchar(500) DEFAULT NULL COMMENT '해외 기업2_이미지출처2',
  `o_co2_img3` varchar(255) DEFAULT NULL COMMENT '해외 기업2_이미지3',
  `o_co2_img_source3` varchar(500) DEFAULT NULL COMMENT '해외 기업2_이미지출처3',
  `o_co2_main_text` text DEFAULT NULL COMMENT '해외 기업2_내용',
  `o_co2_sub_text` text DEFAULT NULL COMMENT '해외 기업2_서브내용',
  `o_co2_source` varchar(1000) DEFAULT NULL COMMENT '해외 기업2_출처',
  `o_co3_name` varchar(255) DEFAULT NULL COMMENT '해외 기업3_기업명',
  `o_co3_logo` varchar(255) DEFAULT NULL COMMENT '해외 기업3_로고',
  `o_co3_url` varchar(255) DEFAULT NULL COMMENT '해외 기업3_URL',
  `o_co3_info` varchar(1000) DEFAULT NULL COMMENT '해외 기업3_소개',
  `o_co3_img1` varchar(255) DEFAULT NULL COMMENT '해외 기업3_이미지1',
  `o_co3_img_source1` varchar(500) DEFAULT NULL COMMENT '해외 기업3_이미지출처1',
  `o_co3_img2` varchar(255) DEFAULT NULL COMMENT '해외 기업3_이미지2',
  `o_co3_img_source2` varchar(500) DEFAULT NULL COMMENT '해외 기업3_이미지출처2',
  `o_co3_img3` varchar(255) DEFAULT NULL COMMENT '해외 기업3_이미지3',
  `o_co3_img_source3` varchar(500) DEFAULT NULL COMMENT '해외 기업3_이미지출처3',
  `o_co3_main_text` text DEFAULT NULL COMMENT '해외 기업3_내용',
  `o_co3_sub_text` text DEFAULT NULL COMMENT '해외 기업3_서브내용',
  `o_co3_source` varchar(1000) DEFAULT NULL COMMENT '해외 기업3_출처',
  `i_co1_name` varchar(255) DEFAULT NULL COMMENT '국내 기업1_기업명',
  `i_co1_logo` varchar(255) DEFAULT NULL COMMENT '국내 기업1_로고',
  `i_co1_url` varchar(255) DEFAULT NULL COMMENT '국내 기업1_URL',
  `i_co1_info` varchar(1000) DEFAULT NULL COMMENT '국내 기업1_소개',
  `i_co1_img1` varchar(255) DEFAULT NULL COMMENT '국내 기업1_이미지1',
  `i_co1_img_source1` varchar(500) DEFAULT NULL COMMENT '국내 기업1_이미지출처1',
  `i_co1_img2` varchar(255) DEFAULT NULL COMMENT '국내 기업1_이미지2',
  `i_co1_img_source2` varchar(500) DEFAULT NULL COMMENT '국내 기업1_이미지출처2',
  `i_co1_img3` varchar(255) DEFAULT NULL COMMENT '국내 기업1_이미지3',
  `i_co1_img_source3` varchar(500) DEFAULT NULL COMMENT '국내 기업1_이미지출처3',
  `i_co1_main_text` text DEFAULT NULL COMMENT '국내 기업1_내용',
  `i_co1_sub_text` text DEFAULT NULL COMMENT '국내 기업1_서브내용',
  `i_co1_source` varchar(1000) DEFAULT NULL COMMENT '국내 기업1_출처',
  `i_co2_name` varchar(255) DEFAULT NULL COMMENT '국내 기업2_기업명',
  `i_co2_logo` varchar(255) DEFAULT NULL COMMENT '국내 기업2_로고',
  `i_co2_url` varchar(255) DEFAULT NULL COMMENT '국내 기업2_URL',
  `i_co2_info` varchar(1000) DEFAULT NULL COMMENT '국내 기업2_소개',
  `i_co2_img1` varchar(255) DEFAULT NULL COMMENT '국내 기업2_이미지1',
  `i_co2_img_source1` varchar(500) DEFAULT NULL COMMENT '국내 기업2_이미지출처1',
  `i_co2_img2` varchar(255) DEFAULT NULL COMMENT '국내 기업2_이미지2',
  `i_co2_img_source2` varchar(500) DEFAULT NULL COMMENT '국내 기업2_이미지출처2',
  `i_co2_img3` varchar(255) DEFAULT NULL COMMENT '국내 기업2_이미지3',
  `i_co2_img_source3` varchar(500) DEFAULT NULL COMMENT '국내 기업2_이미지출처3',
  `i_co2_main_text` text DEFAULT NULL COMMENT '국내 기업2_내용',
  `i_co2_sub_text` text DEFAULT NULL COMMENT '국내 기업2_서브내용',
  `i_co2_source` varchar(1000) DEFAULT NULL COMMENT '국내 기업2_출처',
  `i_co3_name` varchar(255) DEFAULT NULL COMMENT '국내 기업3_기업명',
  `i_co3_logo` varchar(255) DEFAULT NULL COMMENT '국내 기업3_로고',
  `i_co3_url` varchar(255) DEFAULT NULL COMMENT '국내 기업3_URL',
  `i_co3_info` varchar(1000) DEFAULT NULL COMMENT '국내 기업3_소개',
  `i_co3_img1` varchar(255) DEFAULT NULL COMMENT '국내 기업3_이미지1',
  `i_co3_img_source1` varchar(500) DEFAULT NULL COMMENT '국내 기업3_이미지출처1',
  `i_co3_img2` varchar(255) DEFAULT NULL COMMENT '국내 기업3_이미지2',
  `i_co3_img_source2` varchar(500) DEFAULT NULL COMMENT '국내 기업3_이미지출처2',
  `i_co3_img3` varchar(255) DEFAULT NULL COMMENT '국내 기업3_이미지3',
  `i_co3_img_source3` varchar(500) DEFAULT NULL COMMENT '국내 기업3_이미지출처3',
  `i_co3_main_text` text DEFAULT NULL COMMENT '국내 기업3_내용',
  `i_co3_sub_text` text DEFAULT NULL COMMENT '국내 기업3_서브내용',
  `i_co3_source` varchar(1000) DEFAULT NULL COMMENT '국내 기업3_출처',
  `re_co_main_text` text DEFAULT NULL COMMENT '업계 재구축 가능성 메인내용',
  `re_co_sub_text` text DEFAULT NULL COMMENT '업계 재구축 가능성 서브내용'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:49
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `skill_title_tb`
--

DROP TABLE IF EXISTS `skill_title_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_title_tb` (
  `skill_title_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '기본키',
  `title_code` varchar(50) DEFAULT NULL COMMENT '기능구분 코드(tit001)',
  `title` varchar(500) DEFAULT NULL COMMENT '기능구분명',
  `title_summary` varchar(500) DEFAULT '' COMMENT '기능구분 설명',
  PRIMARY KEY (`skill_title_key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='기능 구분 명칭 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:36
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step2_tb`
--

DROP TABLE IF EXISTS `deep_step2_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step2_tb` (
  `step2_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '구성품명',
  `cost` varchar(50) NOT NULL DEFAULT '' COMMENT '비용',
  `now_cost` varchar(50) DEFAULT '0' COMMENT '현재원가',
  `goal_cost` varchar(50) NOT NULL DEFAULT '0' COMMENT '목표원가',
  `content` varchar(100) NOT NULL DEFAULT '' COMMENT '구성품특성명',
  `content_summary` varchar(300) NOT NULL DEFAULT '' COMMENT '구성품특성설명',
  `unit` varchar(50) NOT NULL DEFAULT '' COMMENT '측정단위',
  `division` varchar(50) NOT NULL DEFAULT '' COMMENT '특성구분',
  `order_no` int(11) NOT NULL DEFAULT 0 COMMENT '정렬순서',
  `max_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '상한규격',
  `floor_standard` varchar(50) NOT NULL DEFAULT '' COMMENT '하한규격',
  `compo_quality_importance` double NOT NULL DEFAULT 0 COMMENT '구성품특성중요도(step4)',
  PRIMARY KEY (`step2_key`),
  KEY `FK_deep_step2_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step2_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='구성품사양 정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:29
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:59
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step4_numerical_tb`
--

DROP TABLE IF EXISTS `deep_step4_numerical_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step4_numerical_tb` (
  `project_key` int(11) NOT NULL COMMENT '프로젝트 Key',
  `strong_value` varchar(50) NOT NULL COMMENT '강한상관 값',
  `normal_value` varchar(50) NOT NULL COMMENT '보통상관 값',
  `weak_value` varchar(50) NOT NULL COMMENT '약한상관 값',
  KEY `FK_deep_step4_numerical_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step4_numerical_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='심층평가_구성품상관값';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:36
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_need_quality`
--

DROP TABLE IF EXISTS `deep_need_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_need_quality` (
  `need_quality_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '요구품질',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 키',
  `project_code` varchar(50) NOT NULL DEFAULT '' COMMENT '프로젝트 코드',
  `need_quality1` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질1',
  `need_quality2` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질2',
  `need_quality3` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질3',
  `need_quality4` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질4',
  `need_quality5` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질5',
  `need_quality6` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질6',
  `need_quality7` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질7',
  `need_quality8` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질8',
  `need_quality9` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질9',
  `need_quality10` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질10',
  PRIMARY KEY (`need_quality_key`),
  KEY `FK_deep_need_quality_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_need_quality_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='간이평가 요구품질';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:53
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_assigement_info_202310`
--

DROP TABLE IF EXISTS `tb_assigement_info_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_assigement_info_202310` (
  `code_num` varchar(15) NOT NULL COMMENT '과제코드',
  `name` varchar(255) DEFAULT NULL COMMENT '과제명',
  PRIMARY KEY (`code_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='과제정보테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:11
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_body_content_tb`
--

DROP TABLE IF EXISTS `amz_body_content_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_body_content_tb` (
  `url` varchar(220) DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) DEFAULT NULL COMMENT '상품 고유값',
  `create_date` varchar(10) DEFAULT NULL COMMENT '생성 날짜',
  `body_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '본문 내용',
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='상품 내부 본문의 text 크롤링\r\n(product_description & from the manufacturer)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:55
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_g_tb_0007_202310`
--

DROP TABLE IF EXISTS `vc_ntis_g_tb_0007_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_g_tb_0007_202310` (
  `NTIS_G_F_001` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_G_F_002` varchar(100) DEFAULT NULL COMMENT '성과발생부처',
  `NTIS_G_F_003` varchar(100) DEFAULT NULL COMMENT '성과사업ID',
  `NTIS_G_F_004` varchar(100) DEFAULT NULL COMMENT '성과사업명',
  `NTIS_G_F_005` varchar(100) DEFAULT NULL COMMENT '세부성과관리번호',
  `NTIS_G_F_006` varchar(100) DEFAULT NULL COMMENT 'NTIS_성과ID',
  `NTIS_G_F_007` varchar(100) DEFAULT NULL COMMENT 'KISTEP_성과ID',
  `NTIS_G_F_008` varchar(100) DEFAULT NULL COMMENT '검증결과',
  `NTIS_G_F_009` varchar(100) DEFAULT NULL COMMENT '검증내역',
  `NTIS_G_F_010` varchar(100) DEFAULT NULL COMMENT '이학박사남수',
  `NTIS_G_F_011` varchar(100) DEFAULT NULL COMMENT '이학박사여수',
  `NTIS_G_F_012` varchar(100) DEFAULT NULL COMMENT '이학석사남수',
  `NTIS_G_F_013` varchar(100) DEFAULT NULL COMMENT '이학석사여수',
  `NTIS_G_F_014` varchar(100) DEFAULT NULL COMMENT '이학학사남수',
  `NTIS_G_F_015` varchar(100) DEFAULT NULL COMMENT '이학학사여수',
  `NTIS_G_F_016` varchar(100) DEFAULT NULL COMMENT '이학기타남수',
  `NTIS_G_F_017` varchar(100) DEFAULT NULL COMMENT '이학기타여수',
  `NTIS_G_F_018` varchar(100) DEFAULT NULL COMMENT '공학박사남수',
  `NTIS_G_F_019` varchar(100) DEFAULT NULL COMMENT '공학박사여수',
  `NTIS_G_F_020` varchar(100) DEFAULT NULL COMMENT '공학석사남수',
  `NTIS_G_F_021` varchar(100) DEFAULT NULL COMMENT '공학석사여수',
  `NTIS_G_F_022` varchar(100) DEFAULT NULL COMMENT '공학학사남수',
  `NTIS_G_F_023` varchar(100) DEFAULT NULL COMMENT '공학학사여수',
  `NTIS_G_F_024` varchar(100) DEFAULT NULL COMMENT '공학기타남수',
  `NTIS_G_F_025` varchar(100) DEFAULT NULL COMMENT '공학기타여수',
  `NTIS_G_F_026` varchar(100) DEFAULT NULL COMMENT '농림수산학박사남수',
  `NTIS_G_F_027` varchar(100) DEFAULT NULL COMMENT '농림수산학박사여수',
  `NTIS_G_F_028` varchar(100) DEFAULT NULL COMMENT '농림수산학석사남수',
  `NTIS_G_F_029` varchar(100) DEFAULT NULL COMMENT '농림수산학석사여수',
  `NTIS_G_F_030` varchar(100) DEFAULT NULL COMMENT '농림수산학학사남수',
  `NTIS_G_F_031` varchar(100) DEFAULT NULL COMMENT '농림수산학학사여수',
  `NTIS_G_F_032` varchar(100) DEFAULT NULL COMMENT '농림수산학기타남수',
  `NTIS_G_F_033` varchar(100) DEFAULT NULL COMMENT '농림수산학기타여수',
  `NTIS_G_F_034` varchar(100) DEFAULT NULL COMMENT '의학보건학박사남수',
  `NTIS_G_F_035` varchar(100) DEFAULT NULL COMMENT '의학보건학박사여수',
  `NTIS_G_F_036` varchar(100) DEFAULT NULL COMMENT '의학보건학석사남수',
  `NTIS_G_F_037` varchar(100) DEFAULT NULL COMMENT '의학보건학석사여수',
  `NTIS_G_F_038` varchar(100) DEFAULT NULL COMMENT '의학보건학학사남수',
  `NTIS_G_F_039` varchar(100) DEFAULT NULL COMMENT '의학보건학학사여수',
  `NTIS_G_F_040` varchar(100) DEFAULT NULL COMMENT '의학보건학기타남수',
  `NTIS_G_F_041` varchar(100) DEFAULT NULL COMMENT '의학보건학기타여수',
  `NTIS_G_F_042` varchar(100) DEFAULT NULL COMMENT '인문사회학박사남수',
  `NTIS_G_F_043` varchar(100) DEFAULT NULL COMMENT '인문사회학박사여수',
  `NTIS_G_F_044` varchar(100) DEFAULT NULL COMMENT '인문사회학석사남수',
  `NTIS_G_F_045` varchar(100) DEFAULT NULL COMMENT '인문사회학석사여수',
  `NTIS_G_F_046` varchar(100) DEFAULT NULL COMMENT '인문사회학학사남수',
  `NTIS_G_F_047` varchar(100) DEFAULT NULL COMMENT '인문사회학학사여수',
  `NTIS_G_F_048` varchar(100) DEFAULT NULL COMMENT '인문사회학기타남수',
  `NTIS_G_F_049` varchar(100) DEFAULT NULL COMMENT '인문사회학기타여수',
  `NTIS_G_F_050` varchar(100) DEFAULT NULL COMMENT '기타박사남수',
  `NTIS_G_F_051` varchar(100) DEFAULT NULL COMMENT '기타박사여수',
  `NTIS_G_F_052` varchar(100) DEFAULT NULL COMMENT '기타석사남수',
  `NTIS_G_F_053` varchar(100) DEFAULT NULL COMMENT '기타석사여수',
  `NTIS_G_F_054` varchar(100) DEFAULT NULL COMMENT '기타학사남수',
  `NTIS_G_F_055` varchar(100) DEFAULT NULL COMMENT '기타학사여수',
  `NTIS_G_F_056` varchar(100) DEFAULT NULL COMMENT '기타기타남수',
  `NTIS_G_F_057` varchar(100) DEFAULT NULL COMMENT '기타기타여수',
  `NTIS_G_F_058` varchar(100) DEFAULT NULL COMMENT '과제수행년도',
  `NTIS_G_F_059` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_G_F_060` varchar(100) DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_G_F_061` longtext DEFAULT NULL COMMENT '과제명-국문'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='인력양성통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:02
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_industry`
--

DROP TABLE IF EXISTS `uitem_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_industry` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `eco_item_name` varchar(255) DEFAULT NULL COMMENT '산업생태계 아이템명',
  `eco_before` text DEFAULT NULL COMMENT '산업생태계 전방산업',
  `eco_center` text DEFAULT NULL COMMENT '산업생태계 아이템내용',
  `eco_after` text DEFAULT NULL COMMENT '산업생태계 후방산업',
  `eco_main_text` text DEFAULT NULL COMMENT '산업생태계 내용',
  `eco_sub_text` text DEFAULT NULL COMMENT '산업생태계 서브 내용',
  `eco_source` varchar(1000) DEFAULT NULL COMMENT '산업생태계 출처',
  `prop_item_name` varchar(255) DEFAULT NULL COMMENT '환경특성 아이템명',
  `prop_political` text DEFAULT NULL COMMENT '환경특성 정치적',
  `prop_economic` text DEFAULT NULL COMMENT '환경특성 경제적',
  `prop_technical` text DEFAULT NULL COMMENT '환경특성 기술적',
  `prop_social` text DEFAULT NULL COMMENT '환경특성 사회적',
  `prop_source` varchar(1000) DEFAULT NULL COMMENT '환경특성 출처',
  `prop_growth_main` text DEFAULT NULL COMMENT '성장요인 내용',
  `prop_growth_sub` text DEFAULT NULL COMMENT '성장요인 sub 내용',
  `prop_hindrance_main` text DEFAULT NULL COMMENT '저해요인 내용',
  `prop_hindrance_sub` text DEFAULT NULL COMMENT '저해요인 sub 내용',
  `prop_gh_source` varchar(1000) DEFAULT NULL COMMENT '성장, 저해 출처',
  `prom_r1c1` text DEFAULT NULL COMMENT '공급망1',
  `prom_r1c2` text DEFAULT NULL COMMENT '주요 제품1',
  `prom_r1c3` text DEFAULT NULL COMMENT '중소기업 주요 참여영역1',
  `prom_r1_chk` char(1) DEFAULT 'N' COMMENT '사용여부1',
  `prom_r2c1` text DEFAULT NULL COMMENT '공급망2',
  `prom_r2c2` text DEFAULT NULL COMMENT '주요 제품2',
  `prom_r2c3` text DEFAULT NULL COMMENT '중소기업 주요 참여영역2',
  `prom_r2_chk` char(1) DEFAULT 'N' COMMENT '사용여부2',
  `prom_r3c1` text DEFAULT NULL COMMENT '공급망3',
  `prom_r3c2` text DEFAULT NULL COMMENT '주요 제품3',
  `prom_r3c3` text DEFAULT NULL COMMENT '중소기업 주요 참여영역3',
  `prom_r3_chk` char(1) DEFAULT 'N' COMMENT '사용여부3',
  `prom_r4c1` text DEFAULT NULL COMMENT '공급망4',
  `prom_r4c2` text DEFAULT NULL COMMENT '주요 제품4',
  `prom_r4c3` text DEFAULT NULL COMMENT '중소기업 주요 참여영역4',
  `prom_r4_chk` char(1) DEFAULT 'N' COMMENT '사용여부4',
  `prom_r5c1` text DEFAULT NULL COMMENT '공급망5',
  `prom_r5c2` text DEFAULT NULL COMMENT '주요 제품5',
  `prom_r5c3` text DEFAULT NULL COMMENT '중소기업 주요 참여영역5',
  `prom_r5_chk` char(1) DEFAULT 'N' COMMENT '사용여부5',
  `prom_main_text` text DEFAULT NULL COMMENT '유망사업영역 내용',
  `prom_sub_text` text DEFAULT NULL COMMENT '유망사업영역 서브 내용',
  `prom_source` varchar(1000) DEFAULT NULL COMMENT '유망사업영역 출처',
  `prom_step1` varchar(255) DEFAULT NULL COMMENT '진입스텝1',
  `prom_step2` varchar(255) DEFAULT NULL COMMENT '진입스텝2',
  `prom_step3` varchar(255) DEFAULT NULL COMMENT '진입스텝3',
  `prom_step4` varchar(255) DEFAULT NULL COMMENT '진입스텝4',
  `prom_step5` varchar(255) DEFAULT NULL COMMENT '진입스텝5',
  `prom_step6` varchar(255) DEFAULT NULL COMMENT '진입스텝6',
  `prom_step7` varchar(255) DEFAULT NULL COMMENT '진입스텝7',
  `prom_step8` varchar(255) DEFAULT NULL COMMENT '진입스텝8',
  `prom_step9` varchar(255) DEFAULT NULL COMMENT '진입스텝9',
  `prom_step10` varchar(255) DEFAULT NULL COMMENT '진입스텝10',
  `mtx_position` char(1) DEFAULT NULL COMMENT '신규기업의 사업화 가능성',
  `mtx_maturity` char(1) DEFAULT NULL COMMENT '산업의 수명주기',
  `mtx_main_text` text DEFAULT NULL COMMENT '수명주기 내용',
  `mtx_sub_text` text DEFAULT NULL COMMENT '수명주기 서브 내용',
  `mtx_source` varchar(1000) DEFAULT NULL COMMENT '수명주기 출처',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 산업분석';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:53
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `innodb_table_stats`
--

DROP TABLE IF EXISTS `innodb_table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) NOT NULL,
  `table_name` varchar(199) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:07
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comp_data_all_setup_cleansing_new`
--

DROP TABLE IF EXISTS `comp_data_all_setup_cleansing_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comp_data_all_setup_cleansing_new` (
  `index` bigint(20) DEFAULT NULL,
  `level_0` bigint(20) DEFAULT NULL,
  `사업자번호` text DEFAULT NULL,
  `업체코드` text DEFAULT NULL,
  `설립일` text DEFAULT NULL,
  `최근종업원수` double DEFAULT NULL,
  `10차산업코드` text DEFAULT NULL,
  `한글주요제품` text DEFAULT NULL,
  `매출액` double DEFAULT NULL,
  `자본총계` double DEFAULT NULL,
  `자산총계` double DEFAULT NULL,
  `사업목적` text DEFAULT NULL,
  `인원` double DEFAULT NULL,
  `index_x` bigint(20) DEFAULT NULL,
  `index_y` double DEFAULT NULL,
  `NICE_c_f_001` text DEFAULT NULL,
  `사업목적_New` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:22
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `promising_items`
--

DROP TABLE IF EXISTS `promising_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promising_items` (
  `item_id` int(11) unsigned NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `summary` mediumtext DEFAULT NULL,
  `application` text DEFAULT NULL,
  `business_area` mediumtext DEFAULT NULL,
  `category_indu` tinyint(2) DEFAULT NULL,
  `category_indu2` tinyint(2) DEFAULT NULL,
  `category_6t` tinyint(2) DEFAULT NULL,
  `cagr_o` float DEFAULT NULL,
  `cagr_i` float DEFAULT NULL,
  `growth_cycle` tinyint(2) DEFAULT NULL,
  `investment` varchar(20) DEFAULT NULL,
  `invest_trend` text DEFAULT NULL,
  `competition_o` mediumtext DEFAULT NULL,
  `competition_i` mediumtext DEFAULT NULL,
  `devel_trend` mediumtext DEFAULT NULL,
  `forecast` mediumtext DEFAULT NULL,
  `accessibility` tinyint(2) DEFAULT NULL,
  `hotitem_id_1` varchar(100) DEFAULT NULL,
  `hotitem_id_2` varchar(100) DEFAULT NULL,
  `hotitem_id_3` varchar(100) DEFAULT NULL,
  `hotitem_id_4` varchar(100) DEFAULT NULL,
  `hotitem_id_5` varchar(100) DEFAULT NULL,
  `invest_sum` float DEFAULT NULL,
  `invest_speed` float DEFAULT NULL,
  `invest_acceleration` float DEFAULT NULL,
  `invest_risk` float DEFAULT NULL,
  `technology` text DEFAULT NULL,
  `source` varchar(500) DEFAULT NULL,
  `origin_dt` date DEFAULT NULL,
  `progress_stage` tinyint(2) DEFAULT NULL,
  `news_count` int(11) unsigned DEFAULT NULL,
  `change_rate` float DEFAULT NULL,
  `mannkendal` float DEFAULT NULL,
  `frequency` int(11) unsigned DEFAULT NULL,
  `add_1_t` varchar(50) DEFAULT NULL,
  `add_1_c` varchar(255) DEFAULT NULL,
  `add_2_t` varchar(50) DEFAULT NULL,
  `add_2_c` varchar(255) DEFAULT NULL,
  `add_3_t` varchar(50) DEFAULT NULL,
  `add_3_c` varchar(255) DEFAULT NULL,
  `add_4_t` varchar(50) DEFAULT NULL,
  `add_4_c` varchar(255) DEFAULT NULL,
  `add_5_t` varchar(50) DEFAULT NULL,
  `add_5_c` varchar(255) DEFAULT NULL,
  `add_6_t` varchar(50) DEFAULT NULL,
  `add_6_c` varchar(255) DEFAULT NULL,
  `add_7_t` varchar(50) DEFAULT NULL,
  `add_7_c` varchar(255) DEFAULT NULL,
  `add_8_t` varchar(50) DEFAULT NULL,
  `add_8_c` varchar(255) DEFAULT NULL,
  `add_9_t` varchar(50) DEFAULT NULL,
  `add_9_c` varchar(255) DEFAULT NULL,
  `add_10_t` varchar(50) DEFAULT NULL,
  `add_10_c` varchar(255) DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) DEFAULT NULL,
  `report_sys_file` varchar(100) DEFAULT NULL,
  `report_org_file` varchar(100) DEFAULT NULL,
  `report_ext` varchar(10) DEFAULT NULL,
  `attach1_sys_file` varchar(100) DEFAULT NULL,
  `attach1_org_file` varchar(100) DEFAULT NULL,
  `attach1_ext` varchar(10) DEFAULT NULL,
  `attach2_sys_file` varchar(100) DEFAULT NULL,
  `attach2_org_file` varchar(100) DEFAULT NULL,
  `attach2_ext` varchar(10) DEFAULT NULL,
  `attach3_sys_file` varchar(100) DEFAULT NULL,
  `attach3_org_file` varchar(100) DEFAULT NULL,
  `attach3_ext` varchar(10) DEFAULT NULL,
  `attach4_sys_file` varchar(100) DEFAULT NULL,
  `attach4_org_file` varchar(100) DEFAULT NULL,
  `attach4_ext` varchar(10) DEFAULT NULL,
  `attach5_sys_file` varchar(100) DEFAULT NULL,
  `attach5_org_file` varchar(100) DEFAULT NULL,
  `attach5_ext` varchar(10) DEFAULT NULL,
  `summary_info` text DEFAULT NULL COMMENT '요약정보',
  `o_market_desc` text DEFAULT NULL COMMENT '해외시장 설명',
  `o_market_org` varchar(500) DEFAULT NULL COMMENT '해외시장 출처',
  `i_market_desc` text DEFAULT NULL COMMENT '국내시장 설명',
  `i_market_org` varchar(500) DEFAULT NULL COMMENT '국내시장 출처',
  `invest_desc` text DEFAULT NULL,
  `item_sort` tinyint(2) DEFAULT 1,
  `choice_year` int(4) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:07
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_user_report_component`
--

DROP TABLE IF EXISTS `tb_user_report_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_report_component` (
  `report_component_id` bigint(20) NOT NULL,
  `report_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `component_name` varchar(200) NOT NULL,
  `filter` text DEFAULT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `file_data_id` bigint(20) DEFAULT NULL,
  `ref_id` bigint(20) DEFAULT NULL,
  `creat_dt` datetime DEFAULT NULL,
  `creat_id` bigint(20) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `updt_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`report_component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:46
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_a_tb_0004_search`
--

DROP TABLE IF EXISTS `vc_ntis_a_tb_0004_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_a_tb_0004_search` (
  `NTIS_A_F_004_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '사업_부처명ID',
  `NTIS_A_F_004` varchar(1000) DEFAULT NULL COMMENT '사업_부처명',
  PRIMARY KEY (`NTIS_A_F_004_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='사업_부처명코드테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:08
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dnw_review_tb`
--

DROP TABLE IF EXISTS `dnw_review_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnw_review_tb` (
  `pcategory` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '카테고리 고유값',
  `pcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT NULL COMMENT '리뷰 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성 날짜',
  `rating` int(11) DEFAULT NULL COMMENT '리뷰 별점',
  `date` date DEFAULT NULL COMMENT '리뷰 작성 일자',
  `mall` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 구매처',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '리뷰 제목',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '리뷰 본문'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='리뷰 데이터 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:29
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_opposition_i`
--

DROP TABLE IF EXISTS `pi_opposition_i`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_opposition_i` (
  `item_id` int(11) unsigned NOT NULL,
  `seq` int(11) unsigned NOT NULL,
  `opposition` varchar(255) NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:20
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_a_tb_0001_202310`
--

DROP TABLE IF EXISTS `vc_ntis_a_tb_0001_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_a_tb_0001_202310` (
  `NTIS_A_F_001` varchar(100) DEFAULT NULL COMMENT '제출년도',
  `NTIS_A_F_002` mediumtext DEFAULT NULL COMMENT '사업명',
  `NTIS_A_F_003` varchar(100) DEFAULT NULL COMMENT '사업구분',
  `NTIS_A_F_004` varchar(100) DEFAULT NULL COMMENT '사업_부처명',
  `NTIS_A_F_005` varchar(100) DEFAULT NULL COMMENT '계속과제여부구분코드',
  `NTIS_A_F_006` varchar(100) DEFAULT NULL COMMENT '계속과제여부',
  `NTIS_A_F_007` longtext DEFAULT NULL COMMENT '이전(기관)세부과제번호',
  `NTIS_A_F_008` longtext DEFAULT NULL COMMENT '이전과제고유번호',
  `NTIS_A_F_009` longtext DEFAULT NULL COMMENT '내역사업명',
  `NTIS_A_F_010` longtext DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_A_F_011` varchar(20) NOT NULL COMMENT '과제고유번호',
  `NTIS_A_F_012` longtext DEFAULT NULL COMMENT '주관과제(기관)세부과제번호',
  `NTIS_A_F_013` varchar(100) DEFAULT NULL COMMENT '주관과제고유번호',
  `NTIS_A_F_014` longtext DEFAULT NULL COMMENT '과제명',
  `NTIS_A_F_015` varchar(100) DEFAULT NULL COMMENT '총연구기간-시작년월일',
  `NTIS_A_F_016` varchar(100) DEFAULT NULL COMMENT '총연구기간-종료년월일',
  `NTIS_A_F_017` varchar(100) DEFAULT NULL COMMENT '주관협동구분',
  `NTIS_A_F_018` varchar(100) DEFAULT NULL COMMENT '연구수행주체코드',
  `NTIS_A_F_019` varchar(100) DEFAULT NULL COMMENT '연구수행주체',
  `NTIS_A_F_020` varchar(100) DEFAULT NULL COMMENT '지역코드',
  `NTIS_A_F_021` varchar(100) DEFAULT NULL COMMENT '지역',
  `NTIS_A_F_022` varchar(100) DEFAULT NULL COMMENT '기초자치단체코드',
  `NTIS_A_F_023` varchar(100) DEFAULT NULL COMMENT '기초자치단체',
  `NTIS_A_F_024` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-대',
  `NTIS_A_F_025` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-대',
  `NTIS_A_F_026` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-중',
  `NTIS_A_F_027` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-중',
  `NTIS_A_F_028` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-소',
  `NTIS_A_F_029` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-소',
  `NTIS_A_F_030` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치1',
  `NTIS_A_F_031` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드2-대',
  `NTIS_A_F_032` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류2-대',
  `NTIS_A_F_033` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코2-중',
  `NTIS_A_F_034` varchar(100) DEFAULT NULL COMMENT '과학기드술표준분류2-중',
  `NTIS_A_F_035` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드2-소',
  `NTIS_A_F_036` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류2-소',
  `NTIS_A_F_037` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치2',
  `NTIS_A_F_038` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-대',
  `NTIS_A_F_039` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-대',
  `NTIS_A_F_040` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-중',
  `NTIS_A_F_041` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-중',
  `NTIS_A_F_042` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-소',
  `NTIS_A_F_043` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-소',
  `NTIS_A_F_044` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치3',
  `NTIS_A_F_045` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-대',
  `NTIS_A_F_046` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-대',
  `NTIS_A_F_047` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-중',
  `NTIS_A_F_048` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-중',
  `NTIS_A_F_049` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-소',
  `NTIS_A_F_050` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-소',
  `NTIS_A_F_051` varchar(100) DEFAULT NULL COMMENT '적용분야코드1',
  `NTIS_A_F_052` varchar(100) DEFAULT NULL COMMENT '적용분야1',
  `NTIS_A_F_053` varchar(100) DEFAULT NULL COMMENT '적용분야가중치1',
  `NTIS_A_F_054` varchar(100) DEFAULT NULL COMMENT '적용분야코드2',
  `NTIS_A_F_055` varchar(100) DEFAULT NULL COMMENT '적용분야2',
  `NTIS_A_F_056` varchar(100) DEFAULT NULL COMMENT '적용분야가중치2',
  `NTIS_A_F_057` varchar(100) DEFAULT NULL COMMENT '적용분야코드3',
  `NTIS_A_F_058` varchar(100) DEFAULT NULL COMMENT '적용분야3',
  `NTIS_A_F_059` varchar(100) DEFAULT NULL COMMENT '적용분야가중치3',
  `NTIS_A_F_060` varchar(100) DEFAULT NULL COMMENT '녹색기술분류코드',
  `NTIS_A_F_061` varchar(100) DEFAULT NULL COMMENT '녹색기술분류',
  `NTIS_A_F_062` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-대',
  `NTIS_A_F_063` varchar(100) DEFAULT NULL COMMENT '6T관련기술-대',
  `NTIS_A_F_064` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-중',
  `NTIS_A_F_065` varchar(100) DEFAULT NULL COMMENT '6T관련기술-중',
  `NTIS_A_F_066` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-소',
  `NTIS_A_F_067` varchar(100) DEFAULT NULL COMMENT '6T관련기술-소',
  `NTIS_A_F_068` varchar(100) DEFAULT NULL COMMENT '경제사회목적코드',
  `NTIS_A_F_069` varchar(100) DEFAULT NULL COMMENT '경제사회목적',
  `NTIS_A_F_070` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-대',
  `NTIS_A_F_071` varchar(100) DEFAULT NULL COMMENT '국가전략기술-대',
  `NTIS_A_F_072` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-중',
  `NTIS_A_F_073` varchar(100) DEFAULT NULL COMMENT '국가전략기술-중',
  `NTIS_A_F_074` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-소',
  `NTIS_A_F_075` varchar(100) DEFAULT NULL COMMENT '국가전략기술-소',
  `NTIS_A_F_076` longtext DEFAULT NULL COMMENT '요약문_연구목표',
  `NTIS_A_F_077` longtext DEFAULT NULL COMMENT '요약문_연구목표_1',
  `NTIS_A_F_078` longtext DEFAULT NULL COMMENT '요약문_연구목표_2',
  `NTIS_A_F_079` longtext DEFAULT NULL COMMENT '요약문_연구목표_3',
  `NTIS_A_F_080` longtext DEFAULT NULL COMMENT '요약문_연구내용',
  `NTIS_A_F_081` longtext DEFAULT NULL COMMENT '요약문_연구내용_1',
  `NTIS_A_F_082` longtext DEFAULT NULL COMMENT '요약문_연구내용_2',
  `NTIS_A_F_083` longtext DEFAULT NULL COMMENT '요약문_연구내용_3',
  `NTIS_A_F_084` longtext DEFAULT NULL COMMENT '요약문_기대효과',
  `NTIS_A_F_085` longtext DEFAULT NULL COMMENT '요약문_기대효과_1',
  `NTIS_A_F_086` longtext DEFAULT NULL COMMENT '요약문_기대효과_2',
  `NTIS_A_F_087` longtext DEFAULT NULL COMMENT '요약문_기대효과_3',
  `NTIS_A_F_088` longtext DEFAULT NULL COMMENT '요약문_한글키워드',
  `NTIS_A_F_089` longtext DEFAULT NULL COMMENT '요약문_영문키워드',
  `NTIS_A_F_090` varchar(100) DEFAULT NULL COMMENT '당해연구기간-시작년월일',
  `NTIS_A_F_091` varchar(100) DEFAULT NULL COMMENT '당해연구기간-종료년월일',
  `NTIS_A_F_092` varchar(100) DEFAULT NULL COMMENT '대표전문기관',
  `NTIS_A_F_093` varchar(100) DEFAULT NULL COMMENT '과제관리기관',
  `NTIS_A_F_094` mediumtext DEFAULT NULL COMMENT '과제수행기관명',
  `NTIS_A_F_095` varchar(100) DEFAULT NULL COMMENT '사업자등록번호',
  `NTIS_A_F_096` varchar(100) DEFAULT NULL COMMENT '사업자등록번호_FN',
  `NTIS_A_F_097` varchar(100) DEFAULT NULL COMMENT '연구개발단계코드',
  `NTIS_A_F_098` varchar(100) DEFAULT NULL COMMENT '연구개발단계',
  `NTIS_A_F_099` varchar(100) DEFAULT NULL COMMENT '세부과제지원코드',
  `NTIS_A_F_100` varchar(100) DEFAULT NULL COMMENT '세부과제지원유형',
  `NTIS_A_F_101` varchar(100) DEFAULT NULL COMMENT '정부연구비(원)',
  `NTIS_A_F_102` varchar(100) DEFAULT NULL COMMENT '인건비-현금(원)',
  `NTIS_A_F_103` varchar(100) DEFAULT NULL COMMENT '인건비-현물(원)',
  `NTIS_A_F_104` varchar(100) DEFAULT NULL COMMENT '직접비-현금(원)',
  `NTIS_A_F_105` varchar(100) DEFAULT NULL COMMENT '직접비-현물(원)',
  `NTIS_A_F_106` varchar(100) DEFAULT NULL COMMENT '간접비(원)',
  `NTIS_A_F_107` varchar(100) DEFAULT NULL COMMENT '위탁연구비(원)',
  `NTIS_A_F_108` varchar(100) DEFAULT NULL COMMENT '물건비(원)',
  `NTIS_A_F_109` varchar(100) DEFAULT NULL COMMENT '매칭펀드-지방정부-현금(원)',
  `NTIS_A_F_110` varchar(100) DEFAULT NULL COMMENT '매칭펀드-지방정부-현물(원)',
  `NTIS_A_F_111` varchar(100) DEFAULT NULL COMMENT '매칭펀드-대학-현금(원)',
  `NTIS_A_F_112` varchar(100) DEFAULT NULL COMMENT '매칭펀드-대학-현물(원)',
  `NTIS_A_F_113` varchar(100) DEFAULT NULL COMMENT '매칭펀드-대기업-현금(원)',
  `NTIS_A_F_114` varchar(100) DEFAULT NULL COMMENT '매칭펀드-대기업-현물(원)',
  `NTIS_A_F_115` varchar(100) DEFAULT NULL COMMENT '매칭펀드-중견기업-현금(원)',
  `NTIS_A_F_116` varchar(100) DEFAULT NULL COMMENT '매칭펀드-중견기업-현물(원)',
  `NTIS_A_F_117` varchar(100) DEFAULT NULL COMMENT '매칭펀드-중소기업-현물(원)',
  `NTIS_A_F_118` varchar(100) DEFAULT NULL COMMENT '매칭펀드-중소기업-현금(원)',
  `NTIS_A_F_119` varchar(100) DEFAULT NULL COMMENT '매칭펀드-기업-현금(원)',
  `NTIS_A_F_120` varchar(100) DEFAULT NULL COMMENT '매칭펀드-기업-현물(원)',
  `NTIS_A_F_121` varchar(100) DEFAULT NULL COMMENT '매칭펀드-기타-현금(원)',
  `NTIS_A_F_122` varchar(100) DEFAULT NULL COMMENT '매칭펀드-기타-현물(원)',
  `NTIS_A_F_123` varchar(100) DEFAULT NULL COMMENT '민간연구비_소계',
  `NTIS_A_F_124` varchar(100) DEFAULT NULL COMMENT '총연구비_현금(원)',
  `NTIS_A_F_125` varchar(100) DEFAULT NULL COMMENT '총연구비_현물(원)',
  `NTIS_A_F_126` varchar(100) DEFAULT NULL COMMENT '총연구비_합계(원)',
  `NTIS_A_F_127` varchar(100) DEFAULT NULL COMMENT '공동연구여부_기업',
  `NTIS_A_F_128` varchar(100) DEFAULT NULL COMMENT '공동연구여부_대학',
  `NTIS_A_F_129` varchar(100) DEFAULT NULL COMMENT '공동연구여부_출연연',
  `NTIS_A_F_130` varchar(100) DEFAULT NULL COMMENT '공동연구여부_외국',
  `NTIS_A_F_131` varchar(100) DEFAULT NULL COMMENT '공동연구여부_기타',
  `NTIS_A_F_132` varchar(100) DEFAULT NULL COMMENT '참여연구원_성별_남',
  `NTIS_A_F_133` varchar(100) DEFAULT NULL COMMENT '참여연구원_성별_여',
  `NTIS_A_F_134` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_박사',
  `NTIS_A_F_135` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_석사',
  `NTIS_A_F_136` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_학사이하',
  `NTIS_A_F_137` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_이학',
  `NTIS_A_F_138` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_공학',
  `NTIS_A_F_139` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_농학',
  `NTIS_A_F_140` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_의학',
  `NTIS_A_F_141` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_인문',
  `NTIS_A_F_142` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_기타',
  `NTIS_A_F_143` mediumtext DEFAULT NULL COMMENT '연구책임자소속기관명',
  `NTIS_A_F_144` varchar(100) DEFAULT NULL COMMENT '연구책임자사업자번호',
  `NTIS_A_F_145` varchar(100) DEFAULT NULL COMMENT '연구책임자성별',
  `NTIS_A_F_146` varchar(100) DEFAULT NULL COMMENT '연구책임자전공',
  `NTIS_A_F_147` varchar(100) DEFAULT NULL COMMENT '연구책임자학위',
  PRIMARY KEY (`NTIS_A_F_011`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='과제통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:17
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wiki_itemlist_tb_1`
--

DROP TABLE IF EXISTS `wiki_itemlist_tb_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_itemlist_tb_1` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(300) DEFAULT NULL,
  `pagerank` double DEFAULT NULL,
  `pageviews` double DEFAULT NULL,
  `EPV` double DEFAULT NULL,
  KEY `IDX_WIKI_ITEMLIST_TB_1` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:25
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wiki_item_info`
--

DROP TABLE IF EXISTS `wiki_item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_item_info` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `SECTION_TEXT` longtext DEFAULT NULL,
  `TRANSLATED` longtext DEFAULT NULL,
  `CATEGORY` varchar(100) DEFAULT NULL,
  `SUB_CATEGORY` varchar(100) DEFAULT NULL,
  `EXPLANATION` longtext DEFAULT NULL,
  `TECH_CLASS12` varchar(200) DEFAULT NULL,
  `TECH_CLASS_REASON` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:25
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dnw_product_detail_tb`
--

DROP TABLE IF EXISTS `dnw_product_detail_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnw_product_detail_tb` (
  `pcategory` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '카테고리 고유값',
  `pcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '품질특성 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성날짜',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상세정보명',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상세정보 서술'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='상품정보를 서술하는 table 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:31
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_vc`
--

DROP TABLE IF EXISTS `uitem_vc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_vc` (
  `record_no` int(11) NOT NULL AUTO_INCREMENT,
  `close_date` datetime DEFAULT NULL COMMENT '날짜',
  `total_value` float DEFAULT NULL COMMENT '총 투자금액(백만달러)',
  `buyers` varchar(4000) DEFAULT NULL COMMENT '밴처캐피탈',
  `ciq_id` varchar(100) DEFAULT NULL,
  `excel_com_id` varchar(100) DEFAULT NULL,
  `target` varchar(4000) DEFAULT NULL COMMENT '투자받은 회사',
  `industry1_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(1레벨)명',
  `industry1_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(1레벨)코드',
  `industry2_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(2레벨)명',
  `industry2_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(2레벨)코드',
  `industry3_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(3레벨)명',
  `industry3_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(3레벨)코드',
  `industry4_nm` varchar(100) DEFAULT NULL COMMENT '산업분류(4레벨)명',
  `industry4_cd` varchar(100) DEFAULT NULL COMMENT '산업분류(4레벨)코드',
  `industry_cd` varchar(100) DEFAULT NULL COMMENT '산업분류 풀코드',
  `nation` varchar(100) DEFAULT NULL COMMENT '국가',
  PRIMARY KEY (`record_no`)
) ENGINE=InnoDB AUTO_INCREMENT=48488 DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:17
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_review_keyword_tb`
--

DROP TABLE IF EXISTS `amz_review_keyword_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_review_keyword_tb` (
  `url` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '리뷰키워드 인덱스',
  `create_date` varchar(10) DEFAULT NULL COMMENT '생성날짜',
  `keyword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '리뷰키워드',
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='리뷰 목록에서 공통적으로 등장하는 언어를 다룬 리뷰키워드 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:46
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:25
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_category_tb`
--

DROP TABLE IF EXISTS `backup_amz_category_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_category_tb` (
  `level1` text DEFAULT NULL COMMENT '대분류',
  `level2` text DEFAULT NULL COMMENT '중분류',
  `level3` text DEFAULT NULL COMMENT '소분류',
  `level4` text DEFAULT NULL COMMENT '세분류',
  `url` text DEFAULT NULL COMMENT '카테고리 고유값'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='아마존 분류를 기준으로 하여\r\n각 분류당 상품 (최대) 100개에 대한 상품 순위와 asin코드들';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:41
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step3_value_tb`
--

DROP TABLE IF EXISTS `deep_step3_value_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step3_value_tb` (
  `key` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 키',
  `step3_key` int(11) NOT NULL DEFAULT 0 COMMENT 'step3키',
  `step1_key` int(11) DEFAULT 0 COMMENT ' x축 step1키',
  `target_key` int(11) DEFAULT 0 COMMENT 'y축 step1키',
  `target_value` int(11) NOT NULL DEFAULT 0 COMMENT 'x,y value',
  `score_type` tinyint(4) DEFAULT 1 COMMENT '상관계수점수유형(0:범위, 1:지정)',
  PRIMARY KEY (`key`),
  KEY `FK_deep_step3_value_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step3_value_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2829 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='품질특성 상관성 value 값';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:31
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_invest_test`
--

DROP TABLE IF EXISTS `uitem_invest_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_invest_test` (
  `item_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT 'item seq',
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `announce_dt` date DEFAULT NULL COMMENT 'all transactions announced date',
  `close_dt` date DEFAULT NULL COMMENT 'all transactions closed date',
  `business_desc` mediumtext DEFAULT NULL COMMENT 'business description [target/issuer]',
  `buyers` text DEFAULT NULL COMMENT 'buyers/investors',
  `ciq_id` varchar(20) DEFAULT NULL COMMENT 'ciq transaction id',
  `industry_1` varchar(100) DEFAULT NULL COMMENT 'industry [target/issuer]',
  `industry_2` varchar(100) DEFAULT NULL COMMENT 'industry [target/issuer].1',
  `product_desc` mediumtext DEFAULT NULL COMMENT 'product description [target/issuer]',
  `product_name` text DEFAULT NULL COMMENT 'product name [target/issuer]',
  `sector_1` varchar(200) DEFAULT NULL COMMENT 'sector [target/issuer]',
  `sector_2` varchar(200) DEFAULT NULL COMMENT 'sub sector [target/issuer]',
  `target_issuer` varchar(200) DEFAULT NULL COMMENT 'target/issuer',
  `target_issuer_id` varchar(20) DEFAULT NULL COMMENT 'target/issuer id',
  `total_value` float DEFAULT NULL COMMENT 'total transaction value ($usdmm, historical rate)',
  `trans_status` varchar(20) DEFAULT NULL COMMENT 'transaction status',
  `trans_types` varchar(50) DEFAULT NULL COMMENT 'transaction types',
  `item_list` varchar(500) DEFAULT NULL COMMENT 'item_li',
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(50) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`item_seq`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:10
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`),
  KEY `help_topic_id` (`help_topic_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:29
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotitemweek`
--

DROP TABLE IF EXISTS `hotitemweek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotitemweek` (
  `id` int(11) unsigned NOT NULL COMMENT '외래키',
  `frequency` int(11) unsigned DEFAULT NULL COMMENT '빈도수',
  `frequency_rate` float DEFAULT NULL COMMENT '빈도수 비율',
  `mannkendal` float DEFAULT NULL COMMENT '만켄달지수',
  `change_rate` float DEFAULT NULL COMMENT '증감률',
  PRIMARY KEY (`id`),
  KEY `frequency` (`frequency`),
  KEY `mannkendal` (`mannkendal`),
  KEY `change_rate` (`change_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='아이템에 대한 주간 통계를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:02
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  `aggregate` enum('NONE','GROUP') NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Stored Procedures';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:42
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itempool_2014`
--

DROP TABLE IF EXISTS `itempool_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itempool_2014` (
  `ITEM` varchar(255) NOT NULL DEFAULT '' COMMENT '아이템명',
  `EXTR_DATE` char(8) NOT NULL COMMENT '추출일자',
  `VERI_DATE` datetime DEFAULT NULL COMMENT '검증일자',
  `STATUS` char(1) NOT NULL COMMENT '상태(N:검증 전 아이템, Y:검증아이템, D:삭제아이템)',
  `DEL_DATE` datetime DEFAULT NULL COMMENT '삭제일자',
  `NEWS_COUNT` int(11) DEFAULT NULL COMMENT '기사건수',
  `HIT_COUNT` int(11) DEFAULT NULL COMMENT '조회수(클릭건수)',
  `GROUP_NAME` char(1) DEFAULT NULL COMMENT '그룹(A, B)',
  `ENG_NAME` varchar(255) DEFAULT NULL COMMENT '대역어',
  `SYNONYM` varchar(512) DEFAULT NULL COMMENT '유사어',
  `CATEGORY_INDU` char(32) DEFAULT NULL COMMENT '산업분류(6종+기타)',
  `CATEGORY_6T` char(32) DEFAULT NULL COMMENT '6T분류(6종기타)',
  `MANNKENDAL` float DEFAULT NULL COMMENT '만켄달지수(월간 통계)',
  `CHANGE_RATE` float DEFAULT NULL COMMENT '증감률(월간 통계)',
  PRIMARY KEY (`ITEM`),
  KEY `idx_itempool_extr_item` (`ITEM`),
  KEY `idx_itempool_extr_date` (`EXTR_DATE`),
  KEY `idx_itempool_status` (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT COMMENT='아이템에 대한 기본 정보를 담고 있는 테이블(아이템풀 관리에서 사용)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:35
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dnw_product_info_tb`
--

DROP TABLE IF EXISTS `dnw_product_info_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnw_product_info_tb` (
  `pcategory` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `pcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT NULL COMMENT '상품 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성 날짜',
  `product_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 이름',
  `product_price` int(11) DEFAULT NULL COMMENT '상품 가격',
  `launch_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '제품 런칭 날짜',
  `brand_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '브랜드명',
  `review_score` float DEFAULT NULL COMMENT '리뷰 별점',
  `review_number` int(11) DEFAULT NULL COMMENT '리뷰한 사람수',
  `5star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `4star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `3star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `2star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `1star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  KEY `pcategory` (`pcategory`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='상품에 대한 정보 (분류, 이름, 가격, 별점, 리뷰한 사람수, 각별점당 분포) 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:55
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dnw_model4_data_tb`
--

DROP TABLE IF EXISTS `dnw_model4_data_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnw_model4_data_tb` (
  `pcategory` varchar(20) DEFAULT NULL COMMENT '카테고리 고유값',
  `product_idx` int(11) DEFAULT NULL COMMENT '상품 인덱스(상품 순위)',
  `pcode` varchar(20) DEFAULT NULL COMMENT '상품 고유값',
  `product_name` text DEFAULT NULL COMMENT '상품 이름',
  `product_price` int(11) DEFAULT NULL COMMENT '상품 가격',
  `cluster` int(11) DEFAULT NULL COMMENT '군집 인덱스',
  `price_range` text DEFAULT NULL COMMENT '가격 범위',
  `cluster_name` text DEFAULT NULL COMMENT '군집별 이름',
  `brand_name` text DEFAULT NULL COMMENT '회사명 (브랜드명)',
  `title1` text DEFAULT NULL COMMENT '품질특성명',
  `content1` text DEFAULT NULL COMMENT '품질특성 점수',
  `title2` text DEFAULT NULL COMMENT '품질특성명',
  `content2` text DEFAULT NULL COMMENT '품질특성 점수',
  `title3` text DEFAULT NULL COMMENT '품질특성명',
  `content3` text DEFAULT NULL COMMENT '품질특성 점수',
  `title4` text DEFAULT NULL COMMENT '품질특성명',
  `content4` text DEFAULT NULL COMMENT '품질특성 점수',
  `title5` text DEFAULT NULL COMMENT '품질특성명',
  `content5` text DEFAULT NULL COMMENT '품질특성 점수',
  `title6` text DEFAULT NULL COMMENT '품질특성명',
  `content6` text DEFAULT NULL COMMENT '품질특성 점수',
  `title7` text DEFAULT NULL COMMENT '품질특성명',
  `content7` text DEFAULT NULL COMMENT '품질특성 점수',
  `needs_title_list` text DEFAULT NULL COMMENT '요구품질 리스트',
  `title_list` text DEFAULT NULL COMMENT '품질특성명 목록',
  `create_date` varchar(10) DEFAULT NULL COMMENT '모델생성날짜',
  KEY `pcategory` (`pcategory`),
  KEY `cluster` (`cluster`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:01
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ta_b_tb_0002_202310`
--

DROP TABLE IF EXISTS `vc_ta_b_tb_0002_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ta_b_tb_0002_202310` (
  `TA_B_F_001` varchar(20) NOT NULL COMMENT '성과ID',
  `TA_B_F_002` varchar(5) NOT NULL COMMENT '구분',
  `TA_B_F_003` varchar(10) NOT NULL COMMENT '사업자번호',
  `TA_B_F_004` varchar(10) NOT NULL COMMENT '과제고유번호',
  `TA_B_F_005` varchar(6) NOT NULL COMMENT '10차산업코드_중',
  `TA_B_F_006` varchar(100) NOT NULL COMMENT '10차산업코드명_중',
  `TA_B_F_007` mediumtext DEFAULT NULL COMMENT '한글주요제품',
  `TA_B_F_008` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1_대',
  `TA_B_F_009` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1_대',
  `TA_B_F_010` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1_중',
  `TA_B_F_011` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1_중',
  `TA_B_F_012` text DEFAULT NULL COMMENT '과제_키워드',
  `TA_B_F_013` text DEFAULT NULL COMMENT '사업화_기술거래명_키워드'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='ta_과제키워드_21';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:53
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_popup`
--

DROP TABLE IF EXISTS `uitem_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_popup` (
  `record_no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `s_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `use_yn` char(1) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `win_width` varchar(10) DEFAULT NULL,
  `win_height` varchar(10) DEFAULT NULL,
  `win_top` varchar(10) DEFAULT NULL,
  `win_left` varchar(10) DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`record_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:07
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoryinduweek`
--

DROP TABLE IF EXISTS `categoryinduweek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryinduweek` (
  `category_name` varchar(64) DEFAULT NULL COMMENT '카테고리 명',
  `count` int(10) unsigned DEFAULT NULL COMMENT '빈도수',
  `count_rate` float DEFAULT NULL COMMENT '분포 비율',
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='약 1,000개 아이템의 산업분류별 아이템 분포 정보를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:47
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` varchar(384) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  PRIMARY KEY (`db`,`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:59
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntb_a_tb_0001_20230905`
--

DROP TABLE IF EXISTS `vc_ntb_a_tb_0001_20230905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntb_a_tb_0001_20230905` (
  `NTB_A_F_001` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '판매기술코드',
  `NTB_A_F_002` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기업코드',
  `NTB_A_F_003` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기업명',
  `NTB_A_F_004` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '산업분류코드_세분류',
  `NTB_A_F_005` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '산업분류_세분류',
  `NTB_A_F_006` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '산업분류코드_중분류',
  `NTB_A_F_007` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '산업분류_중분류',
  `NTB_A_F_008` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '산업분류코드_대분류',
  `NTB_A_F_009` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '산업분류_대분류',
  `NTB_A_F_010` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술분류코드_세분류',
  `NTB_A_F_011` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술분류_세분류',
  `NTB_A_F_012` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술분류코드_대분류',
  `NTB_A_F_013` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술분류_대분류',
  `NTB_A_F_014` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술명',
  `NTB_A_F_015` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '영문기술명',
  `NTB_A_F_016` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수집일',
  `NTB_A_F_017` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '등록일',
  `NTB_A_F_018` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '키워드',
  `NTB_A_F_019` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '개요및특징',
  `NTB_A_F_020` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '개발상태코드',
  `NTB_A_F_021` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '개발상태',
  `NTB_A_F_022` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '응용분야',
  `NTB_A_F_023` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '이전여부',
  `NTB_A_F_024` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '희망거래유형',
  `NTB_A_F_025` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술이전조건',
  `NTB_A_F_026` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술이전조건_상태',
  `NTB_A_F_027` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술이전금액코드',
  `NTB_A_F_028` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술이전금액',
  `NTB_A_F_029` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사업화적용실적',
  `NTB_A_F_030` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사업화적용실적_상태',
  `NTB_A_F_031` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '도입시고려사항',
  `NTB_A_F_032` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '도입시고려사항_상태',
  `NTB_A_F_033` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '담당자전화번호',
  `NTB_A_F_034` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '개발자회사',
  `NTB_A_F_035` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '개발자전화번호',
  `NTB_A_F_036` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '요청방법코드',
  `NTB_A_F_037` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '요청방법',
  `NTB_A_F_038` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '판매가격',
  `NTB_A_F_039` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허출원번호',
  `NTB_A_F_040` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허출원일자',
  `NTB_A_F_041` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허공개번호',
  `NTB_A_F_042` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허공개일자',
  `NTB_A_F_043` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허공고번호',
  `NTB_A_F_044` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허공고일자',
  `NTB_A_F_045` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허등록번호',
  `NTB_A_F_046` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '특허등록일자',
  `NTB_A_F_047` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '발명의명칭',
  `NTB_A_F_048` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '발명자',
  `NTB_A_F_049` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '출원인',
  `NTB_A_F_050` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IPC',
  `NTB_A_F_051` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '초록',
  `NTB_A_F_052` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과제고유번호',
  `NTB_A_F_053` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과제세부번호',
  `NTB_A_F_054` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과제명칭_국문',
  `NTB_A_F_055` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과제명칭_영문',
  `NTB_A_F_056` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '예산사업명',
  `NTB_A_F_057` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기관사업명',
  `NTB_A_F_058` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '연구책임자명',
  `NTB_A_F_059` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '발주기관명',
  `NTB_A_F_060` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '주관연구기관명',
  `NTB_A_F_061` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '전문기관명',
  `NTB_A_F_062` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '부처명',
  `NTB_A_F_063` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기준년도',
  `NTB_A_F_064` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '보안과제여부',
  `NTB_A_F_065` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '당해년도_연구시작일',
  `NTB_A_F_066` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '당해년도_연구종료일',
  `NTB_A_F_067` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '총연구기간_연구시작일',
  `NTB_A_F_068` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '총연구기간_연구종료일',
  `NTB_A_F_069` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과학기술대분류',
  `NTB_A_F_070` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과학기술중분류',
  `NTB_A_F_071` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과학기술소분류',
  `NTB_A_F_072` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '연구수행주체',
  `NTB_A_F_073` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '연구개발단계',
  `NTB_A_F_074` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '기술수명주기',
  `NTB_A_F_075` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '지역구분',
  `NTB_A_F_076` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '6T기술명',
  `NTB_A_F_077` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '적용분야_대분류',
  `NTB_A_F_078` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '적용분야_중분류',
  `NTB_A_F_079` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '적용분야_소분류',
  `NTB_A_F_080` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '정책사업여부',
  `NTB_A_F_081` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:12
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_user_report`
--

DROP TABLE IF EXISTS `tb_user_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_report` (
  `report_id` bigint(20) NOT NULL,
  `report_name` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `file_report_path` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creat_dt` datetime DEFAULT NULL,
  `creat_id` bigint(20) DEFAULT NULL,
  `updt_dt` datetime DEFAULT NULL,
  `updt_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:48
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` varchar(2048) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(128) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT 0,
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` varchar(512) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:58
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_feature_rating_tb`
--

DROP TABLE IF EXISTS `backup_amz_feature_rating_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_feature_rating_tb` (
  `url` text DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) DEFAULT NULL COMMENT '상품고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '세부 특징 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성날짜',
  `feature_title` text DEFAULT NULL COMMENT '세부 특징 이름',
  `feature_rating` float DEFAULT 0 COMMENT '세부 특징 별점'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='세부 특징별 rating 점수 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:48
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itemtrendmonth`
--

DROP TABLE IF EXISTS `itemtrendmonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtrendmonth` (
  `id` int(11) unsigned NOT NULL COMMENT '외래키',
  `period_id` char(8) NOT NULL COMMENT '년월일 정보(YYYYMMDD 형태 - 20140725)',
  `frequency` int(11) unsigned DEFAULT NULL COMMENT '빈도수',
  PRIMARY KEY (`id`,`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT COMMENT='약 1,000개 아이템에 대한 월간 트렌드 정보를 저장한 테이블(일자별 데이터)					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:40
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_user_remember`
--

DROP TABLE IF EXISTS `tb_user_remember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_remember` (
  `user_nm` varchar(150) NOT NULL,
  `remember_key` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`remember_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:54
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fparam_tech_level_tb`
--

DROP TABLE IF EXISTS `fparam_tech_level_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fparam_tech_level_tb` (
  `techLevel_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '기술난이도 Key',
  `feat_param_manage_code` varchar(15) DEFAULT NULL COMMENT '품질특성산정 파라미터 관리코드',
  `techLevel_score` varchar(50) NOT NULL DEFAULT '0' COMMENT '기술난이도 점수',
  `techLevel_value` double NOT NULL DEFAULT 0 COMMENT '기술난이도 변환값',
  PRIMARY KEY (`techLevel_key`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='기술난이도 테이블(변환용)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:22
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_guest_set`
--

DROP TABLE IF EXISTS `uitem_guest_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_guest_set` (
  `option_name` varchar(200) DEFAULT NULL COMMENT '옵션명',
  `option_value` char(1) DEFAULT NULL COMMENT '옵션값'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:35
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntb_a_tb_0001_202310`
--

DROP TABLE IF EXISTS `vc_ntb_a_tb_0001_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntb_a_tb_0001_202310` (
  `NTB_A_F_001` varchar(11) NOT NULL COMMENT '판매기술코드',
  `NTB_A_F_002` varchar(12) DEFAULT NULL COMMENT '기업코드',
  `NTB_A_F_003` varchar(100) DEFAULT NULL COMMENT '기업명',
  `NTB_A_F_004` varchar(2) DEFAULT NULL COMMENT '산업분류코드_세분류',
  `NTB_A_F_005` varchar(100) DEFAULT NULL COMMENT '산업분류_세분류',
  `NTB_A_F_006` varchar(4) DEFAULT NULL COMMENT '산업분류코드_중분류',
  `NTB_A_F_007` varchar(100) DEFAULT NULL COMMENT '산업분류_중분류',
  `NTB_A_F_008` varchar(6) DEFAULT NULL COMMENT '산업분류코드_대분류',
  `NTB_A_F_009` varchar(100) DEFAULT NULL COMMENT '산업분류_대분류',
  `NTB_A_F_010` varchar(6) DEFAULT NULL COMMENT '기술분류코드_세분류',
  `NTB_A_F_011` varchar(100) DEFAULT NULL COMMENT '기술분류_세분류',
  `NTB_A_F_012` varchar(2) DEFAULT NULL COMMENT '기술분류코드_대분류',
  `NTB_A_F_013` varchar(100) DEFAULT NULL COMMENT '기술분류_대분류',
  `NTB_A_F_014` mediumtext DEFAULT NULL COMMENT '기술명',
  `NTB_A_F_015` mediumtext DEFAULT NULL COMMENT '영문기술명',
  `NTB_A_F_016` varchar(8) DEFAULT NULL COMMENT '수집일',
  `NTB_A_F_017` varchar(8) DEFAULT NULL COMMENT '등록일',
  `NTB_A_F_018` mediumtext DEFAULT NULL COMMENT '키워드',
  `NTB_A_F_019` mediumtext DEFAULT NULL COMMENT '개요및특징',
  `NTB_A_F_020` varchar(100) DEFAULT NULL COMMENT '개발상태코드',
  `NTB_A_F_021` varchar(100) DEFAULT NULL COMMENT '개발상태',
  `NTB_A_F_022` mediumtext DEFAULT NULL COMMENT '응용분야',
  `NTB_A_F_023` varchar(2) DEFAULT NULL COMMENT '이전여부',
  `NTB_A_F_024` varchar(100) DEFAULT NULL COMMENT '희망거래유형',
  `NTB_A_F_025` mediumtext DEFAULT NULL COMMENT '기술이전조건',
  `NTB_A_F_026` varchar(4) DEFAULT NULL COMMENT '기술이전조건_상태',
  `NTB_A_F_027` varchar(100) DEFAULT NULL COMMENT '기술이전금액코드',
  `NTB_A_F_028` varchar(100) DEFAULT NULL COMMENT '기술이전금액',
  `NTB_A_F_029` mediumtext DEFAULT NULL COMMENT '사업화적용실적',
  `NTB_A_F_030` varchar(4) DEFAULT NULL COMMENT '사업화적용실적_상태',
  `NTB_A_F_031` mediumtext DEFAULT NULL COMMENT '도입시고려사항',
  `NTB_A_F_032` varchar(4) DEFAULT NULL COMMENT '도입시고려사항_상태',
  `NTB_A_F_033` varchar(100) DEFAULT NULL COMMENT '담당자전화번호',
  `NTB_A_F_034` varchar(100) DEFAULT NULL COMMENT '개발자회사',
  `NTB_A_F_035` varchar(100) DEFAULT NULL COMMENT '개발자전화번호',
  `NTB_A_F_036` varchar(1) DEFAULT NULL COMMENT '요청방법코드',
  `NTB_A_F_037` varchar(100) DEFAULT NULL COMMENT '요청방법',
  `NTB_A_F_038` varchar(100) DEFAULT NULL COMMENT '판매가격',
  `NTB_A_F_039` varchar(17) DEFAULT NULL COMMENT '특허출원번호',
  `NTB_A_F_040` varchar(8) DEFAULT NULL COMMENT '특허출원일자',
  `NTB_A_F_041` varchar(13) DEFAULT NULL COMMENT '특허공개번호',
  `NTB_A_F_042` varchar(8) DEFAULT NULL COMMENT '특허공개일자',
  `NTB_A_F_043` varchar(13) DEFAULT NULL COMMENT '특허공고번호',
  `NTB_A_F_044` varchar(8) DEFAULT NULL COMMENT '특허공고일자',
  `NTB_A_F_045` varchar(15) DEFAULT NULL COMMENT '특허등록번호',
  `NTB_A_F_046` varchar(8) DEFAULT NULL COMMENT '특허등록일자',
  `NTB_A_F_047` mediumtext DEFAULT NULL COMMENT '발명의명칭',
  `NTB_A_F_048` mediumtext DEFAULT NULL COMMENT '발명자',
  `NTB_A_F_049` varchar(100) DEFAULT NULL COMMENT '출원인',
  `NTB_A_F_050` mediumtext DEFAULT NULL COMMENT 'IPC',
  `NTB_A_F_051` mediumtext DEFAULT NULL COMMENT '초록',
  `NTB_A_F_052` varchar(11) DEFAULT NULL COMMENT '과제고유번호',
  `NTB_A_F_053` varchar(100) DEFAULT NULL COMMENT '과제세부번호',
  `NTB_A_F_054` mediumtext DEFAULT NULL COMMENT '과제명칭_국문',
  `NTB_A_F_055` mediumtext DEFAULT NULL COMMENT '과제명칭_영문',
  `NTB_A_F_056` varchar(100) DEFAULT NULL COMMENT '예산사업명',
  `NTB_A_F_057` varchar(100) DEFAULT NULL COMMENT '기관사업명',
  `NTB_A_F_058` varchar(100) DEFAULT NULL COMMENT '연구책임자명',
  `NTB_A_F_059` varchar(100) DEFAULT NULL COMMENT '발주기관명',
  `NTB_A_F_060` varchar(100) DEFAULT NULL COMMENT '주관연구기관명',
  `NTB_A_F_061` varchar(100) DEFAULT NULL COMMENT '전문기관명',
  `NTB_A_F_062` varchar(100) DEFAULT NULL COMMENT '부처명',
  `NTB_A_F_063` varchar(4) DEFAULT NULL COMMENT '기준년도',
  `NTB_A_F_064` varchar(4) DEFAULT NULL COMMENT '보안과제여부',
  `NTB_A_F_065` varchar(10) DEFAULT NULL COMMENT '당해년도_연구시작일',
  `NTB_A_F_066` varchar(10) DEFAULT NULL COMMENT '당해년도_연구종료일',
  `NTB_A_F_067` varchar(10) DEFAULT NULL COMMENT '총연구기간_연구시작일',
  `NTB_A_F_068` varchar(10) DEFAULT NULL COMMENT '총연구기간_연구종료일',
  `NTB_A_F_069` varchar(100) DEFAULT NULL COMMENT '과학기술대분류',
  `NTB_A_F_070` varchar(100) DEFAULT NULL COMMENT '과학기술중분류',
  `NTB_A_F_071` varchar(100) DEFAULT NULL COMMENT '과학기술소분류',
  `NTB_A_F_072` varchar(100) DEFAULT NULL COMMENT '연구수행주체',
  `NTB_A_F_073` varchar(100) DEFAULT NULL COMMENT '연구개발단계',
  `NTB_A_F_074` varchar(100) DEFAULT NULL COMMENT '기술수명주기',
  `NTB_A_F_075` varchar(100) DEFAULT NULL COMMENT '지역구분',
  `NTB_A_F_076` varchar(100) DEFAULT NULL COMMENT '6T기술명',
  `NTB_A_F_077` varchar(100) DEFAULT NULL COMMENT '적용분야_대분류',
  `NTB_A_F_078` varchar(100) DEFAULT NULL COMMENT '적용분야_중분류',
  `NTB_A_F_079` varchar(100) DEFAULT NULL COMMENT '적용분야_소분류',
  `NTB_A_F_080` varchar(100) DEFAULT NULL COMMENT '정책사업여부',
  `NTB_A_F_081` varchar(100) DEFAULT NULL COMMENT 'URL',
  PRIMARY KEY (`NTB_A_F_001`),
  KEY `vc_ntb_a_tb_0001_NTB_A_F_052_IDX` (`NTB_A_F_052`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='ntb_데이터';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:15
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comm_data_setup_202310`
--

DROP TABLE IF EXISTS `comm_data_setup_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comm_data_setup_202310` (
  `index` int(11) DEFAULT NULL,
  `과제고유번호` varchar(20) DEFAULT NULL,
  `성과발생년도` text DEFAULT NULL,
  `사업자번호` text DEFAULT NULL,
  `제출년도` text DEFAULT NULL,
  `지역코드` text DEFAULT NULL,
  `과학기술표준분류코드1_대` text DEFAULT NULL,
  `과학기술표준분류1_중` text DEFAULT NULL,
  `요약문_한글키워드` text DEFAULT NULL,
  `연구개발단계코드` text DEFAULT NULL,
  `총연구비_합계_원` text DEFAULT NULL,
  `기술명_국문` text DEFAULT NULL,
  `키워드_국문` text DEFAULT NULL,
  `매출액` text DEFAULT NULL,
  `자본총계` text DEFAULT NULL,
  `자산총계` text DEFAULT NULL,
  `인원` text DEFAULT NULL,
  `사업목적` text DEFAULT NULL,
  `업체코드` text DEFAULT NULL,
  `설립일` text DEFAULT NULL,
  `최근종업원수` text DEFAULT NULL,
  `10차산업코드` text DEFAULT NULL,
  `한글주요제품` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='임시테이블(모델1번)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:44
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_eval`
--

DROP TABLE IF EXISTS `uitem_eval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_eval` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `ma_s_1` int(4) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_1` int(4) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_s_2` int(4) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_2` int(4) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_s_3` int(4) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_3` int(4) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_s_4` int(4) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_4` int(4) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_s_5` int(4) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_5` int(4) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `ma_s_6` int(4) DEFAULT NULL COMMENT '시장매력도 (단기)',
  `ma_l_6` int(4) DEFAULT NULL COMMENT '시장매력도 (장기)',
  `tf_s_1` int(4) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_1` int(4) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_s_2` int(4) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_2` int(4) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_s_3` int(4) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_3` int(4) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_s_4` int(4) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_4` int(4) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_s_5` int(4) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_5` int(4) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `tf_s_6` int(4) DEFAULT NULL COMMENT '기술적합도 (단기)',
  `tf_l_6` int(4) DEFAULT NULL COMMENT '기술적합도 (장기)',
  `ma_s_tot` int(4) DEFAULT NULL COMMENT '시장매력도 단기 종합',
  `tf_s_tot` int(4) DEFAULT NULL COMMENT '기술적합성 단기 종합',
  `ma_l_tot` int(4) DEFAULT NULL COMMENT '시장매력도 장기 종합',
  `tf_l_tot` int(4) DEFAULT NULL COMMENT '기술적합성 장기 조합',
  `eval_main` text DEFAULT NULL COMMENT '사업성평가 내용',
  `eval_sub` text DEFAULT NULL COMMENT '사업성평가 서브',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 아이템 사업성 평가';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:15
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_data_status_meta_202310`
--

DROP TABLE IF EXISTS `tb_data_status_meta_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_data_status_meta_202310` (
  `SEQ` int(3) NOT NULL AUTO_INCREMENT,
  `dbName_detail` varchar(20) NOT NULL COMMENT '세부DB명',
  `gubun` varchar(10) DEFAULT NULL COMMENT '공공/크롤링 구분',
  `db_name` varchar(20) DEFAULT NULL COMMENT 'DB명',
  `num_of_data` int(11) DEFAULT NULL COMMENT '건수',
  `stYear` varchar(4) DEFAULT NULL COMMENT '최초수록년도',
  `edYear` varchar(4) DEFAULT NULL COMMENT '최종수록년도',
  `load_dt` datetime DEFAULT NULL COMMENT '최종적재일자',
  `useDq` varchar(5) DEFAULT NULL COMMENT 'DQ사용어부',
  `etc1` varchar(100) DEFAULT NULL COMMENT '기타1',
  `etc2` varchar(100) DEFAULT NULL COMMENT '기타2',
  PRIMARY KEY (`SEQ`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='데이터관리_데이터현황 메타 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:12
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_master_20161004`
--

DROP TABLE IF EXISTS `uitem_master_20161004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_master_20161004` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT '아이템번호',
  `unit_cd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '고유번호',
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '아이템명',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '대표 이미지',
  `category_indu1` tinyint(2) DEFAULT 0 COMMENT '산업분류(1) - 산업기술분류',
  `category_indu2` tinyint(2) DEFAULT 0 COMMENT '산업분류(2) - 산업기술분류',
  `category_6t` tinyint(2) DEFAULT 0 COMMENT '6T분류',
  `hotitem_id_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(1)',
  `hotitem_id_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(2)',
  `hotitem_id_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(3)',
  `hotitem_id_4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(4)',
  `hotitem_id_5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(5)',
  `insert_dt` datetime DEFAULT NULL COMMENT '등록일자',
  `insert_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '등록자',
  `modify_dt` datetime DEFAULT NULL COMMENT '수정일자',
  `modify_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수정자',
  `service_yn` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '서비스여부',
  `item_sort` int(11) DEFAULT 99999 COMMENT '아이템우선순위',
  `hit_cnt` int(11) DEFAULT 0 COMMENT '조회수',
  `select_year` int(4) DEFAULT NULL COMMENT '선정연도',
  `memo` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '메모',
  `indu_class` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '표준산업분류',
  `main_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '메인노출',
  `indu1_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '기계소재',
  `indu2_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '전기전자',
  `indu3_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '정보통신',
  `indu4_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '화학',
  `indu5_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '바이오의료',
  `indu6_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '에너지자원'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:29
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_opposition_o`
--

DROP TABLE IF EXISTS `pi_opposition_o`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_opposition_o` (
  `item_id` int(11) unsigned NOT NULL,
  `seq` int(11) unsigned NOT NULL,
  `opposition` varchar(255) NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:01
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `price_tb`
--

DROP TABLE IF EXISTS `price_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_tb` (
  `no` int(11) DEFAULT NULL,
  `classify` varchar(200) DEFAULT '' COMMENT '분류',
  `classify_code` varchar(20) DEFAULT '' COMMENT '분류코드',
  `item_code` varchar(20) DEFAULT '' COMMENT '품목코드',
  `standard_code` varchar(20) DEFAULT '' COMMENT '규격코드',
  `option_code` varchar(20) DEFAULT '' COMMENT '옵션코드',
  `product_name` varchar(500) DEFAULT '' COMMENT '품명',
  `model_name` varchar(100) DEFAULT '' COMMENT '모델명',
  `standard` varchar(100) DEFAULT '' COMMENT '규격',
  `unit` varchar(20) DEFAULT '' COMMENT '단위',
  `etc_option` varchar(50) DEFAULT '' COMMENT '기타옵션(지역, 보조규격)',
  `publish_year` varchar(20) DEFAULT '' COMMENT '발행년도',
  `publish` varchar(20) DEFAULT '' COMMENT '발행월',
  `dan` varchar(20) DEFAULT '' COMMENT '단가',
  `page` varchar(20) DEFAULT '' COMMENT '페이지',
  `investigation_step` varchar(100) DEFAULT '' COMMENT '조사단계',
  `terms_of_payment` varchar(20) DEFAULT '' COMMENT '결제조건',
  `transaction_quantity` varchar(150) DEFAULT '' COMMENT '거래수량',
  `surtax` varchar(50) DEFAULT '' COMMENT '부가세',
  `company_name` varchar(50) DEFAULT '' COMMENT '업체명',
  `company_number` varchar(50) DEFAULT '' COMMENT '사업자번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='사업화정보 -가격테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:51
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quality_tb`
--

DROP TABLE IF EXISTS `quality_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quality_tb` (
  `no` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `code` varchar(50) DEFAULT '' COMMENT '코드',
  `product_name` text DEFAULT NULL COMMENT '제품명',
  `product_define` text DEFAULT NULL COMMENT '정의',
  `citation` varchar(500) DEFAULT '' COMMENT '인용규격',
  `citation_name` varchar(500) DEFAULT '' COMMENT '인용표준명',
  `term` varchar(50) DEFAULT '',
  `ks_num` varchar(50) DEFAULT '' COMMENT 'KS지침 대분류번호',
  `large_name` varchar(100) DEFAULT '' COMMENT '대분류',
  `middle_name` varchar(100) DEFAULT '' COMMENT '중분류',
  `number` varchar(50) DEFAULT '' COMMENT '번호',
  `requested_function` text DEFAULT NULL COMMENT '요구기능',
  `function_condition` varchar(500) DEFAULT '' COMMENT '요구기능 조건',
  `divide` varchar(50) DEFAULT '' COMMENT '측정구분',
  `unit` varchar(50) DEFAULT '' COMMENT '측정단위',
  `above_below` varchar(50) DEFAULT '' COMMENT '이상이하',
  `lower_limit` varchar(50) DEFAULT '' COMMENT '하한',
  `upperlimit` varchar(50) DEFAULT '' COMMENT '상한',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=2285 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='품질정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:43
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_unit_tb`
--

DROP TABLE IF EXISTS `deep_unit_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_unit_tb` (
  `unit_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '단위key',
  `unit_type` varchar(50) NOT NULL DEFAULT '0' COMMENT '단위구분(ex:길이,무게)',
  `unit_content` text NOT NULL COMMENT '단위 설명',
  PRIMARY KEY (`unit_key`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='측정 단위 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:39
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pre_list_tb`
--

DROP TABLE IF EXISTS `pre_list_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_list_tb` (
  `project_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '프로젝트Key',
  `USER_ID` varchar(50) NOT NULL DEFAULT '' COMMENT '사용자ID',
  `procure_tech_large` varchar(500) DEFAULT '' COMMENT '조달청 분류_대',
  `procure_tech_large_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_대_코드',
  `procure_tech_middle` varchar(500) DEFAULT '' COMMENT '조달청 분류_중',
  `procure_tech_middle_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_중_코드',
  `procure_tech_small` varchar(500) DEFAULT '' COMMENT '조달청 분류_소',
  `procure_tech_small_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_소_코드',
  `procure_tech_detail` varchar(500) DEFAULT '' COMMENT '조달청 분류_세',
  `procure_tech_detail_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_세_코드',
  `procure_tech_detailed` varchar(500) DEFAULT '' COMMENT '조달청 분류_세세',
  `procure_tech_detailed_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_세세_코드',
  `perform_country` varchar(5) DEFAULT '' COMMENT '목표 국가 및 가격 선택 > 국가',
  `perform_price` varchar(5) DEFAULT '' COMMENT '목표 국가 및 가격 선택 > 가격',
  `product_name` varchar(500) DEFAULT '' COMMENT '제품명',
  `model_name` varchar(500) DEFAULT '' COMMENT '모델명',
  `product_image` varchar(500) DEFAULT '' COMMENT '제품 이미지',
  `product_image_path` text DEFAULT '' COMMENT '제품 이미지 주소',
  `product_func1` text DEFAULT '' COMMENT '제품 주요기능 1',
  `product_func2` text DEFAULT '' COMMENT '제품 주요기능 2',
  `product_func3` text DEFAULT '' COMMENT '제품 주요기능 3',
  `product_func4` text DEFAULT '' COMMENT '제품 주요기능 4',
  `product_func5` text DEFAULT '' COMMENT '제품 주요기능 5',
  `product_func6` text DEFAULT '' COMMENT '제품 주요기능 6',
  `product_func7` text DEFAULT '' COMMENT '제품 주요기능 7',
  `product_func8` text DEFAULT '' COMMENT '제품 주요기능 8',
  `product_func9` text DEFAULT '' COMMENT '제품 주요기능 9',
  `product_func10` text DEFAULT '' COMMENT '제품 주요기능 10',
  `product_feat1` text DEFAULT '' COMMENT '제품 특장점 1',
  `product_feat2` text DEFAULT '' COMMENT '제품 특장점 2',
  `product_feat3` text DEFAULT '' COMMENT '제품 특장점 3',
  `product_feat4` text DEFAULT '' COMMENT '제품 특장점 4',
  `product_feat5` text DEFAULT '' COMMENT '제품 특장점 5',
  `product_feat6` text DEFAULT '' COMMENT '제품 특장점 6',
  `product_feat7` text DEFAULT '' COMMENT '제품 특장점 7',
  `product_feat8` text DEFAULT '' COMMENT '제품 특장점 8',
  `product_feat9` text DEFAULT '' COMMENT '제품 특장점 9',
  `product_feat10` text DEFAULT '' COMMENT '제품 특장점 10',
  `product_price_symbol` varchar(50) DEFAULT '' COMMENT '제품 판매단위(ex : 1 set)',
  `product_price_symbol_type` varchar(50) DEFAULT '기타' COMMENT '제품 판매단위 (type)',
  `product_price_unit` varchar(50) DEFAULT '' COMMENT '제품 판매 가격 단위',
  `product_price_symbol_etc_type` varchar(50) DEFAULT '' COMMENT '제품 판매 가격 단위 (기타 TEXT)',
  `model_type` tinyint(4) DEFAULT 1 COMMENT '평가모형 (1: 기존 | 2: 카노)',
  `sale_price` varchar(200) DEFAULT '0' COMMENT '자사판매가격',
  `com_sale_price` varchar(200) DEFAULT '0' COMMENT '경쟁사판매가격',
  `com_info_assurance` varchar(200) DEFAULT '0' COMMENT '경쟁사 정보 확신여부(0 선택 안함, 1 정확, 2 잘모름)',
  `total_quality_level` double DEFAULT 0 COMMENT '종합 품질수준',
  `price_factor` double DEFAULT 0 COMMENT '가격경쟁력',
  `v_factor` double DEFAULT 0 COMMENT 'v계수',
  `v_factor_grade` varchar(50) DEFAULT NULL COMMENT '가치계수 등급',
  `delete_key` int(11) DEFAULT 0 COMMENT '삭제여부 (1:삭제 | 0: 삭제x)',
  `step1_state` int(11) DEFAULT 0 COMMENT 'step1 완료여부',
  `step2_state` int(11) DEFAULT 0 COMMENT 'step2 완료여부',
  `step3_state` int(11) DEFAULT 0 COMMENT 'step 3은 pdf 다운로드 하면 끝',
  `project_rank` int(11) DEFAULT NULL COMMENT '프로젝트 등급',
  `project_market_check` int(11) DEFAULT NULL COMMENT '프로젝트 시장성 확인',
  `access_state` tinyint(4) DEFAULT 0 COMMENT '1: 진행 | 2: 등록 | 3: 재평가',
  `reg_date` varchar(50) DEFAULT curdate() COMMENT '등록일',
  `last_update_date` varchar(50) DEFAULT curdate() COMMENT '마지막 수정일',
  `access_date` varchar(50) NOT NULL DEFAULT '' COMMENT '승인일',
  PRIMARY KEY (`project_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1534 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='프로젝트 TB(~2021-12-13)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:48
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `table_data_location`
--

DROP TABLE IF EXISTS `table_data_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_data_location` (
  `table_index` int(11) DEFAULT NULL COMMENT 'table_data_index',
  `lat` varchar(50) DEFAULT NULL COMMENT '위도',
  `lng` varchar(50) DEFAULT NULL COMMENT '경도',
  KEY `data_index` (`table_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='table_data 테이블의 기업 주소 기준 위도 경도 좌표정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:29
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ta_a_tb_0001_202310`
--

DROP TABLE IF EXISTS `vc_ta_a_tb_0001_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ta_a_tb_0001_202310` (
  `TA_A_F_001` varchar(20) NOT NULL COMMENT '성과ID',
  `TA_A_F_002` varchar(5) NOT NULL COMMENT '구분',
  `TA_A_F_003` varchar(10) NOT NULL COMMENT '사업자번호',
  `TA_A_F_004` varchar(10) NOT NULL COMMENT '과제고유번호',
  `TA_A_F_005` varchar(6) NOT NULL COMMENT '10차산업코드_중',
  `TA_A_F_006` varchar(100) NOT NULL COMMENT '10차산업코드명_중',
  `TA_A_F_007` mediumtext DEFAULT NULL COMMENT '한글주요제품',
  `TA_A_F_008` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1_대',
  `TA_A_F_009` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1_대',
  `TA_A_F_010` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1_중',
  `TA_A_F_011` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1_중',
  `TA_A_F_012` text DEFAULT NULL COMMENT 'NTB_산업분류',
  `TA_A_F_013` text DEFAULT NULL COMMENT 'NTB_산업분류_키워드'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='ta_ntb산업_21';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:45
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:04
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_product_info_tb`
--

DROP TABLE IF EXISTS `backup_amz_product_info_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_product_info_tb` (
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품고유값',
  `product_idx` int(11) DEFAULT NULL COMMENT '상품 인덱스(상품 순위)',
  `create_date` varchar(10) DEFAULT NULL COMMENT '생성날짜',
  `level1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '대분류',
  `level2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '중분류',
  `level3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '소분류',
  `level4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '세분류',
  `product_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 이름',
  `product_price` float DEFAULT NULL COMMENT '상품 가격',
  `review_score` float DEFAULT NULL COMMENT '별점',
  `review_number` int(11) DEFAULT NULL COMMENT '리뷰한 사람수',
  `5star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `4star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `3star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `2star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `1star` int(11) DEFAULT NULL COMMENT '각 별점당 분포'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='상품에 대한 정보 (분류, 이름, 가격, 별점, 리뷰한 사람수, 각별점당 분포) 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:39
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dnw_model4_tb`
--

DROP TABLE IF EXISTS `dnw_model4_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnw_model4_tb` (
  `pcategory` varchar(20) DEFAULT NULL COMMENT '카테고리 고유값',
  `cluster` int(11) DEFAULT NULL COMMENT '군집 인덱스',
  `title1` text DEFAULT NULL COMMENT '품질특성명',
  `content1` text DEFAULT NULL COMMENT '품질특성 내용',
  `title2` text DEFAULT NULL COMMENT '품질특성명',
  `content2` text DEFAULT NULL COMMENT '품질특성 내용',
  `title3` text DEFAULT NULL COMMENT '품질특성명',
  `content3` text DEFAULT NULL COMMENT '품질특성 내용',
  `title4` text DEFAULT NULL COMMENT '품질특성명',
  `content4` text DEFAULT NULL COMMENT '품질특성 내용',
  `title5` text DEFAULT NULL COMMENT '품질특성명',
  `content5` text DEFAULT NULL COMMENT '품질특성 내용',
  `title6` text DEFAULT NULL COMMENT '품질특성명',
  `content6` text DEFAULT NULL COMMENT '품질특성 내용',
  `title7` text DEFAULT NULL COMMENT '품질특성명',
  `content7` text DEFAULT NULL COMMENT '품질특성 내용',
  `needs` text DEFAULT NULL COMMENT '요구품질 리스트',
  `price_range` text DEFAULT NULL COMMENT '군집별 가격 범위',
  `cluster_name` text DEFAULT NULL COMMENT '군집별 이름',
  `title_list` text DEFAULT NULL COMMENT '품질특성명 목록',
  `create_date` varchar(10) DEFAULT NULL COMMENT '모델생성날짜',
  KEY `pcategory` (`pcategory`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:49
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_master`
--

DROP TABLE IF EXISTS `uitem_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_master` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '아이템번호',
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `item_name` varchar(255) NOT NULL COMMENT '아이템명',
  `thumbnail` varchar(255) NOT NULL COMMENT '대표 이미지',
  `category_indu1` tinyint(2) DEFAULT 0 COMMENT '산업분류(1) - 산업기술분류',
  `category_indu2` tinyint(2) DEFAULT 0 COMMENT '산업분류(2) - 산업기술분류',
  `category_6t` tinyint(2) DEFAULT 0 COMMENT '6T분류',
  `hotitem_id_1` varchar(100) DEFAULT '0' COMMENT '이슈아이템(1)',
  `hotitem_id_2` varchar(100) DEFAULT '0' COMMENT '이슈아이템(2)',
  `hotitem_id_3` varchar(100) DEFAULT '0' COMMENT '이슈아이템(3)',
  `hotitem_id_4` varchar(100) DEFAULT '0' COMMENT '이슈아이템(4)',
  `hotitem_id_5` varchar(100) DEFAULT '0' COMMENT '이슈아이템(5)',
  `insert_dt` datetime DEFAULT NULL COMMENT '등록일자',
  `insert_id` varchar(20) DEFAULT NULL COMMENT '등록자',
  `modify_dt` datetime DEFAULT NULL COMMENT '수정일자',
  `modify_id` varchar(20) DEFAULT NULL COMMENT '수정자',
  `service_yn` char(1) DEFAULT 'N' COMMENT '서비스여부',
  `item_sort` int(11) DEFAULT 99999 COMMENT '아이템우선순위',
  `hit_cnt` int(11) DEFAULT 0 COMMENT '조회수',
  `select_year` int(4) DEFAULT NULL COMMENT '선정연도',
  `memo` text DEFAULT NULL COMMENT '메모',
  `indu_class` varchar(10) DEFAULT NULL COMMENT '표준산업분류',
  `main_chk` char(1) DEFAULT 'N' COMMENT '메인노출',
  `indu1_chk` char(1) DEFAULT 'N' COMMENT '기계소재',
  `indu2_chk` char(1) DEFAULT 'N' COMMENT '전기전자',
  `indu3_chk` char(1) DEFAULT 'N' COMMENT '정보통신',
  `indu4_chk` char(1) DEFAULT 'N' COMMENT '화학',
  `indu5_chk` char(1) DEFAULT 'N' COMMENT '바이오의료',
  `indu6_chk` char(1) DEFAULT 'N' COMMENT '에너지자원',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=363 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 MASTER';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:00
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category6tmonth`
--

DROP TABLE IF EXISTS `category6tmonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category6tmonth` (
  `category_name` varchar(64) DEFAULT NULL COMMENT '카테고리 명',
  `count` int(10) unsigned DEFAULT NULL COMMENT '빈도수',
  `count_rate` float DEFAULT NULL COMMENT '분포 비율',
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='약 1,000개 아이템의 6T 분류별 아이템 분포 정보를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:17
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_product_feature_tb`
--

DROP TABLE IF EXISTS `amz_product_feature_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_product_feature_tb` (
  `url` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '상품코멘트 인덱스',
  `create_date` varchar(10) DEFAULT NULL COMMENT '생성 날짜',
  `feature_list_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품코멘트 본문내용',
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='판매자가 작성한 상품에대한 정보(상품 코멘트) 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:19
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_item_unearth_bak`
--

DROP TABLE IF EXISTS `tb_item_unearth_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_item_unearth_bak` (
  `SEQ` int(11) DEFAULT NULL COMMENT '일련번호',
  `product_key` varchar(100) DEFAULT NULL COMMENT '제품키',
  `product_name` varchar(255) DEFAULT NULL COMMENT '제품명',
  `pagerank` double DEFAULT NULL COMMENT '기술집약도',
  `pageviews` double DEFAULT NULL COMMENT '기술수요',
  `link_to_this_page` double DEFAULT NULL COMMENT '확산성',
  `EPV` double DEFAULT NULL COMMENT '부상성'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='유망아이템발굴_아이템';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:04
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `model3_result`
--

DROP TABLE IF EXISTS `model3_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model3_result` (
  `키워드` varchar(1000) DEFAULT NULL COMMENT '키워드',
  `업체코드` mediumtext DEFAULT NULL COMMENT '업체코드',
  `과제고유번호` mediumtext DEFAULT NULL COMMENT '과제고유번호',
  `업체코드키워드리스트` mediumtext DEFAULT NULL COMMENT '업체코드키워드리스트',
  `과제고유번호키워드리스트` mediumtext DEFAULT NULL COMMENT '과제고유번호키워드리스트'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='모델3번 용어집(임시)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:24
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_invest`
--

DROP TABLE IF EXISTS `uitem_invest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_invest` (
  `item_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT 'item seq',
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `announce_dt` date DEFAULT NULL COMMENT 'all transactions announced date',
  `close_dt` date DEFAULT NULL COMMENT 'all transactions closed date',
  `business_desc` mediumtext DEFAULT NULL COMMENT 'business description [target/issuer]',
  `buyers` text DEFAULT NULL COMMENT 'buyers/investors',
  `ciq_id` varchar(20) DEFAULT NULL COMMENT 'ciq transaction id',
  `industry_1` varchar(100) DEFAULT NULL COMMENT 'industry [target/issuer]',
  `industry_2` varchar(100) DEFAULT NULL COMMENT 'industry [target/issuer].1',
  `product_desc` mediumtext DEFAULT NULL COMMENT 'product description [target/issuer]',
  `product_name` text DEFAULT NULL COMMENT 'product name [target/issuer]',
  `sector_1` varchar(200) DEFAULT NULL COMMENT 'sector [target/issuer]',
  `sector_2` varchar(200) DEFAULT NULL COMMENT 'sub sector [target/issuer]',
  `target_issuer` varchar(200) DEFAULT NULL COMMENT 'target/issuer',
  `target_issuer_id` varchar(20) DEFAULT NULL COMMENT 'target/issuer id',
  `total_value` float DEFAULT NULL COMMENT 'total transaction value ($usdmm, historical rate)',
  `trans_status` varchar(20) DEFAULT NULL COMMENT 'transaction status',
  `trans_types` varchar(50) DEFAULT NULL COMMENT 'transaction types',
  `item_list` varchar(500) DEFAULT NULL COMMENT 'item_li',
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(50) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`item_seq`),
  KEY `idx_uitem_invest` (`unit_cd`)
) ENGINE=MyISAM AUTO_INCREMENT=28303 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:47
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_need_quality`
--

DROP TABLE IF EXISTS `simple_need_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_need_quality` (
  `need_quality_key` int(11) NOT NULL AUTO_INCREMENT,
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 키',
  `project_code` varchar(50) NOT NULL DEFAULT '' COMMENT '프로젝트 코드',
  `need_quality1` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 1',
  `need_quality2` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 2',
  `need_quality3` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 3',
  `need_quality4` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 4',
  `need_quality5` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 5',
  `need_quality6` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 6',
  `need_quality7` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 7',
  `need_quality8` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 8',
  `need_quality9` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 9',
  `need_quality10` varchar(50) NOT NULL DEFAULT '' COMMENT '요구품질 10',
  PRIMARY KEY (`need_quality_key`),
  KEY `FK_simple_need_quality_simple_list_tb` (`project_key`),
  CONSTRAINT `FK_simple_need_quality_simple_list_tb` FOREIGN KEY (`project_key`) REFERENCES `simple_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='간이평가 요구품질';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:50
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step2_compo_tb`
--

DROP TABLE IF EXISTS `deep_step2_compo_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step2_compo_tb` (
  `step2_compo_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'step2 구성품Key',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트Key',
  `compo_name` varchar(100) NOT NULL DEFAULT '' COMMENT '구성품명',
  PRIMARY KEY (`step2_compo_key`),
  KEY `FK_deep_step2_compo_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step2_compo_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='구성품명 저장용 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:46
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_vc_nation_temp`
--

DROP TABLE IF EXISTS `uitem_vc_nation_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_vc_nation_temp` (
  `nation` varchar(100) DEFAULT NULL COMMENT '국가'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:07
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_master_20160714`
--

DROP TABLE IF EXISTS `uitem_master_20160714`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_master_20160714` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT '아이템번호',
  `unit_cd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '고유번호',
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '아이템명',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '대표 이미지',
  `category_indu1` tinyint(2) DEFAULT 0 COMMENT '산업분류(1) - 산업기술분류',
  `category_indu2` tinyint(2) DEFAULT 0 COMMENT '산업분류(2) - 산업기술분류',
  `category_6t` tinyint(2) DEFAULT 0 COMMENT '6T분류',
  `hotitem_id_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(1)',
  `hotitem_id_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(2)',
  `hotitem_id_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(3)',
  `hotitem_id_4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(4)',
  `hotitem_id_5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(5)',
  `insert_dt` datetime DEFAULT NULL COMMENT '등록일자',
  `insert_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '등록자',
  `modify_dt` datetime DEFAULT NULL COMMENT '수정일자',
  `modify_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수정자',
  `service_yn` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '서비스여부',
  `item_sort` int(11) DEFAULT 99999 COMMENT '아이템우선순위',
  `hit_cnt` int(11) DEFAULT 0 COMMENT '조회수',
  `select_year` int(4) DEFAULT NULL COMMENT '선정연도',
  `memo` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '메모'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:35
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_master_20160922`
--

DROP TABLE IF EXISTS `uitem_master_20160922`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_master_20160922` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT '아이템번호',
  `unit_cd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '고유번호',
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '아이템명',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '대표 이미지',
  `category_indu1` tinyint(2) DEFAULT 0 COMMENT '산업분류(1) - 산업기술분류',
  `category_indu2` tinyint(2) DEFAULT 0 COMMENT '산업분류(2) - 산업기술분류',
  `category_6t` tinyint(2) DEFAULT 0 COMMENT '6T분류',
  `hotitem_id_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(1)',
  `hotitem_id_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(2)',
  `hotitem_id_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(3)',
  `hotitem_id_4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(4)',
  `hotitem_id_5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '이슈아이템(5)',
  `insert_dt` datetime DEFAULT NULL COMMENT '등록일자',
  `insert_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '등록자',
  `modify_dt` datetime DEFAULT NULL COMMENT '수정일자',
  `modify_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수정자',
  `service_yn` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '서비스여부',
  `item_sort` int(11) DEFAULT 99999 COMMENT '아이템우선순위',
  `hit_cnt` int(11) DEFAULT 0 COMMENT '조회수',
  `select_year` int(4) DEFAULT NULL COMMENT '선정연도',
  `memo` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '메모',
  `indu_class` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '표준산업분류',
  `main_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'N' COMMENT '메인노출'
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:02
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_review_keyword_tb`
--

DROP TABLE IF EXISTS `backup_amz_review_keyword_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_review_keyword_tb` (
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '리뷰키워드 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성날짜',
  `keyword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '리뷰키워드'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='리뷰 목록에서 공통적으로 등장하는 언어를 다룬 리뷰키워드 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:46
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:09
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoryindumonth`
--

DROP TABLE IF EXISTS `categoryindumonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryindumonth` (
  `category_name` varchar(64) DEFAULT NULL COMMENT '카테고리 명',
  `count` int(10) unsigned DEFAULT NULL COMMENT '빈도수',
  `count_rate` float DEFAULT NULL COMMENT '분포 비율',
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='약 1,000개 아이템의 산업분류별 아이템 분포 정보를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:41
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step4_value_tb`
--

DROP TABLE IF EXISTS `deep_step4_value_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step4_value_tb` (
  `key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 key',
  `step4_key` int(11) NOT NULL DEFAULT 0 COMMENT 'step4 key',
  `step2_key` int(11) NOT NULL DEFAULT 0 COMMENT 'step2 key',
  `target_key` int(11) NOT NULL DEFAULT 0 COMMENT '구성품column key',
  `target_value` int(11) NOT NULL DEFAULT 0 COMMENT '구성품 상관계수점수',
  `score_type` varchar(50) DEFAULT '0' COMMENT '상관계수점수유형(0:범위, 1:지정)',
  PRIMARY KEY (`key`),
  KEY `FK_deep_step4_value_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step4_value_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3760 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='구성 품 사양정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:59
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_qna`
--

DROP TABLE IF EXISTS `uitem_qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_qna` (
  `record_no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `attach_file_sys` varchar(500) DEFAULT NULL,
  `attach_file_org` varchar(500) DEFAULT NULL,
  `insert_id` varchar(100) DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `re_content` text DEFAULT NULL,
  `re_attach_file_sys` varchar(500) DEFAULT NULL,
  `re_attach_file_org` varchar(500) DEFAULT NULL,
  `re_insert_id` varchar(100) DEFAULT NULL,
  `re_insert_dt` datetime DEFAULT NULL,
  `status` char(1) DEFAULT 'W',
  PRIMARY KEY (`record_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:13
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_product_detail_tb`
--

DROP TABLE IF EXISTS `backup_amz_product_detail_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_product_detail_tb` (
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '품질특성 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성날짜',
  `detail_table_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상세정보명',
  `detail_table_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상세정보 서술'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='상품정보를 서술하는 table 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:22
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_vc_code`
--

DROP TABLE IF EXISTS `uitem_vc_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_vc_code` (
  `code` varchar(20) NOT NULL,
  `depth1_code` varchar(2) DEFAULT NULL,
  `depth1_name` varchar(500) DEFAULT NULL,
  `depth2_code` varchar(2) DEFAULT NULL,
  `depth2_name` varchar(500) DEFAULT NULL,
  `depth3_code` varchar(2) DEFAULT NULL,
  `depth3_name` varchar(500) DEFAULT NULL,
  `depth4_code` varchar(2) DEFAULT NULL,
  `depth4_name` varchar(500) DEFAULT NULL,
  `depth5_code` varchar(2) DEFAULT NULL,
  `depth5_name` varchar(500) DEFAULT NULL,
  `depth6_code` varchar(2) DEFAULT NULL,
  `depth6_name` varchar(500) DEFAULT NULL,
  `depth7_code` varchar(2) DEFAULT NULL,
  `depth7_name` varchar(500) DEFAULT NULL,
  `depth8_code` varchar(2) DEFAULT NULL,
  `depth8_name` varchar(500) DEFAULT NULL,
  `depth9_code` varchar(2) DEFAULT NULL,
  `depth9_name` varchar(500) DEFAULT NULL,
  `code_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step2_cost_tb`
--

DROP TABLE IF EXISTS `deep_step2_cost_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step2_cost_tb` (
  `step2_cost_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '원가비중Key',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트키',
  `project_code` varchar(150) NOT NULL DEFAULT '' COMMENT '프로젝트코드',
  `cost_name` varchar(150) NOT NULL DEFAULT '' COMMENT '구성품명',
  `cost_importance` varchar(50) NOT NULL DEFAULT '0' COMMENT '원가비중',
  PRIMARY KEY (`step2_cost_key`),
  KEY `FK__deep_list_tb` (`project_key`),
  CONSTRAINT `FK__deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='심층평가 step2 구성품특성, 원가비중 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:37
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `index_stats`
--

DROP TABLE IF EXISTS `index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_stats` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `index_name` varchar(64) NOT NULL,
  `prefix_arity` int(11) unsigned NOT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`index_name`,`prefix_arity`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Indexes';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:12
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step3_numerical_tb`
--

DROP TABLE IF EXISTS `deep_step3_numerical_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step3_numerical_tb` (
  `project_key` int(11) NOT NULL COMMENT '프로젝트Key',
  `strong_value` varchar(50) NOT NULL COMMENT '강한상관 값',
  `normal_value` varchar(50) NOT NULL COMMENT '보통상관 값',
  `weak_value` varchar(50) NOT NULL COMMENT '약한상관 값',
  `strong_negative_value` varchar(50) NOT NULL COMMENT '(-) 강한상관 값',
  `normal_negative_value` varchar(50) NOT NULL COMMENT '(-) 보통상관값',
  `weak_negative_value` varchar(50) NOT NULL COMMENT '(-) 약한상관 값',
  KEY `FK_deep_step3_numerical_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step3_numerical_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='심층평가_상관성값';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:00
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_nice_e_tb_0005_202310`
--

DROP TABLE IF EXISTS `vc_nice_e_tb_0005_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_nice_e_tb_0005_202310` (
  `NICE_E_F_001` varchar(6) NOT NULL COMMENT '업체코드',
  `NICE_E_F_002` float DEFAULT NULL COMMENT '2013년_매출액',
  `NICE_E_F_003` float DEFAULT NULL COMMENT '2014년_매출액',
  `NICE_E_F_004` float DEFAULT NULL COMMENT '2015년_매출액',
  `NICE_E_F_005` float DEFAULT NULL COMMENT '2016년_매출액',
  `NICE_E_F_006` float DEFAULT NULL COMMENT '2017년_매출액',
  `NICE_E_F_007` float DEFAULT NULL COMMENT '2018년_매출액',
  `NICE_E_F_008` float DEFAULT NULL COMMENT '2019년_매출액',
  `NICE_E_F_009` varchar(3) DEFAULT NULL COMMENT '구매처_판매처구분',
  `NICE_E_F_010` varchar(100) DEFAULT NULL COMMENT '거래처일련번호',
  `NICE_E_F_011` varchar(8) DEFAULT NULL COMMENT '정보기준일',
  `NICE_E_F_012` varchar(100) DEFAULT NULL COMMENT '거래처명',
  `NICE_E_F_013` varchar(10) DEFAULT NULL COMMENT '거래처사업자등록번호',
  `NICE_E_F_014` varchar(6) DEFAULT NULL COMMENT '거래처업체코드',
  `NICE_E_F_015` varchar(100) DEFAULT NULL COMMENT '거래비중',
  `NICE_E_F_016` float DEFAULT NULL COMMENT '거래금액'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='11_5_거래처_19';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:49
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step3_tb`
--

DROP TABLE IF EXISTS `deep_step3_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step3_tb` (
  `key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `step1_key` int(11) NOT NULL DEFAULT 0 COMMENT 'Step1 Key',
  `total_coefficient` double NOT NULL DEFAULT 0 COMMENT '종합점수',
  `import_coefficient` double NOT NULL DEFAULT 0 COMMENT '최종중요도',
  `weight` double NOT NULL DEFAULT 0 COMMENT '가중치',
  PRIMARY KEY (`key`),
  KEY `FK_deep_step3_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step3_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='품질특성 상관성 계산정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:13
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_model4_data_tb`
--

DROP TABLE IF EXISTS `amz_model4_data_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_model4_data_tb` (
  `url` varchar(220) DEFAULT NULL COMMENT '카테고리 고유값',
  `product_idx` int(11) DEFAULT NULL COMMENT '상품 인덱스(상품 순위)',
  `product_key` varchar(50) DEFAULT NULL COMMENT '상품 고유값',
  `product_name` text DEFAULT NULL COMMENT '상품 이름',
  `product_price` float DEFAULT NULL COMMENT '상품 가격',
  `cluster` int(11) DEFAULT NULL COMMENT '군집 인덱스',
  `price_range` varchar(50) DEFAULT NULL COMMENT '가격 범위',
  `cluster_name` varchar(50) DEFAULT NULL COMMENT '군집별 이름',
  `title1` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating1` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title2` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating2` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title3` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating3` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title4` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating4` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title5` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating5` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title6` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating6` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title7` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating7` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title_list` text DEFAULT NULL COMMENT '품질특성명 목록',
  `create_date` varchar(50) DEFAULT NULL COMMENT '모델생성날짜',
  KEY `url` (`url`),
  KEY `cluster` (`cluster`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:12
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_hidden`
--

DROP TABLE IF EXISTS `uitem_hidden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_hidden` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `all_hidden` char(1) DEFAULT 'N',
  PRIMARY KEY (`unit_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:36
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `xtools_2001_tb_202310`
--

DROP TABLE IF EXISTS `xtools_2001_tb_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xtools_2001_tb_202310` (
  `idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `product_key` text DEFAULT NULL COMMENT '고유번호',
  `product_name` text DEFAULT NULL COMMENT 'input에 해당하는 이름',
  `ID` text DEFAULT NULL COMMENT 'ID',
  `wikidata_ID` text DEFAULT NULL COMMENT 'wikidata_ID',
  `page_size` text DEFAULT NULL COMMENT 'page_size',
  `total_edits` text DEFAULT NULL COMMENT 'total_edits',
  `editors` text DEFAULT NULL COMMENT 'editors',
  `pageviews` text DEFAULT NULL COMMENT 'pageviews',
  `minor_edits` text DEFAULT NULL COMMENT 'minor_edits',
  `IP_edits` text DEFAULT NULL COMMENT 'IP_edits',
  `bot_edits` text DEFAULT NULL COMMENT 'bot_edits',
  `automated_edits` text DEFAULT NULL COMMENT 'automated_edits',
  `reverted_edits` text DEFAULT NULL COMMENT 'reverted_edits',
  `first_edit` text DEFAULT NULL COMMENT 'first_edit',
  `latest_edit` text DEFAULT NULL COMMENT 'latest_edit',
  `max_text_added` text DEFAULT NULL COMMENT 'max_text_added',
  `max_test_deleted` text DEFAULT NULL COMMENT 'max_test_deleted',
  `average_time_between_edits_per_day` text DEFAULT NULL COMMENT 'average_time_between_edits_per_day',
  `average_edits_per_user` text DEFAULT NULL COMMENT 'average_edits_per_user',
  `average_edits_per_day` text DEFAULT NULL COMMENT 'average_edits_per_day',
  `average_edits_per_month` text DEFAULT NULL COMMENT 'average_edits_per_month',
  `average_edits_per_year` text DEFAULT NULL COMMENT 'average_edits_per_year',
  `edits_made_by_the_top_10percent_of_editors` text DEFAULT NULL COMMENT 'edits_made_by_the_top_10percent_of_editors',
  `links_to_this_page` text DEFAULT NULL COMMENT 'links_to_this_page',
  `redirects` text DEFAULT NULL COMMENT 'redirects',
  `characters` text DEFAULT NULL COMMENT 'characters',
  `words` text DEFAULT NULL COMMENT 'words',
  `sections` text DEFAULT NULL COMMENT 'sections',
  `product_references` text DEFAULT NULL COMMENT 'product_references',
  `unique_references` text DEFAULT NULL COMMENT 'unique_references',
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=184321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='xtools페이지 ( 2001년부터 현재까지 )정보 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:20
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wiki_section_and_content_202310`
--

DROP TABLE IF EXISTS `wiki_section_and_content_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_section_and_content_202310` (
  `idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `title_key` text DEFAULT NULL COMMENT '고유번호',
  `title` text DEFAULT NULL COMMENT 'input에 해당하는 이름',
  `section` text DEFAULT NULL COMMENT 'section명',
  `content` text DEFAULT NULL COMMENT 'section별 본문내용',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=1166032 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='wikipedia페이지 본문 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:15
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_direction`
--

DROP TABLE IF EXISTS `uitem_direction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_direction` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `td_t_main` text DEFAULT NULL COMMENT '개술개발 방향-(Main)',
  `td_t_sub` text DEFAULT NULL COMMENT '개술개발 방향-(Sub)',
  `td_t_source` varchar(1000) DEFAULT NULL COMMENT '개술개발 방향-출처',
  `td_b_main` text DEFAULT NULL COMMENT '개술개발 방향 저해요인 및 해결방안-(Main)',
  `td_b_sub` text DEFAULT NULL COMMENT '개술개발 방향-(Sub)',
  `td_b_source` varchar(1000) DEFAULT NULL COMMENT '개술개발 방향-출처',
  `cd_t_main` text DEFAULT NULL COMMENT '시장확보 방향-(Main)',
  `cd_t_sub` text DEFAULT NULL COMMENT '시장확보 방향-(Sub)',
  `cd_t_source` varchar(1000) DEFAULT NULL COMMENT '시장확보 방향-출처',
  `cd_b_main` text DEFAULT NULL COMMENT '시장확보 방향 저해요인 및 해결방안-(Main)',
  `cd_b_sub` text DEFAULT NULL COMMENT '시장확보 방향-(Sub)',
  `cd_b_source` varchar(1000) DEFAULT NULL COMMENT '시장확보 방향-출처',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 사업화 방향 제시';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:06
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_product_feature_tb`
--

DROP TABLE IF EXISTS `backup_amz_product_feature_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_product_feature_tb` (
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '상품코멘트 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성 날짜',
  `feature_list_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품코멘트 본문내용'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='판매자가 작성한 상품에대한 정보(상품 코멘트) 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:14
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_market_q_tb`
--

DROP TABLE IF EXISTS `deep_market_q_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_market_q_tb` (
  `deep_market_q_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '사용자ID',
  `project_key` int(11) DEFAULT NULL COMMENT '프로젝트 Key',
  `q1_1_score` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Ⅰ-1. 독특성',
  `q1_2_score` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Ⅰ-2. 디자인 차별성',
  `q2_1_score` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Ⅱ-1. 필요성',
  `q2_2_score` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Ⅱ-2. 구입 의향',
  `q3_1_1` double NOT NULL DEFAULT 0 COMMENT 'Ⅲ-1. 판매 희망가격: 최소 지불 의향 가격(평균)',
  `q3_1_2` double NOT NULL DEFAULT 0 COMMENT 'Ⅲ-1. 판매 희망가격: 최대 지불 의향 가격(평균)',
  PRIMARY KEY (`deep_market_q_key`),
  KEY `FK_deep_market_q_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_market_q_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='심층평가 상품수용성평가 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:57
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `temp_model7`
--

DROP TABLE IF EXISTS `temp_model7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_model7` (
  `year` varchar(10) DEFAULT NULL,
  `KIS` varchar(100) DEFAULT NULL,
  `부가가치창출` decimal(10,0) DEFAULT NULL,
  `성장성` decimal(10,0) DEFAULT NULL,
  `수익성` decimal(10,0) DEFAULT NULL,
  `비용성` decimal(10,0) DEFAULT NULL,
  `안정성` decimal(10,0) DEFAULT NULL,
  `활동성` decimal(10,0) DEFAULT NULL,
  `기술혁신성` decimal(10,0) DEFAULT NULL,
  `종합점수` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:49
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_list_tb`
--

DROP TABLE IF EXISTS `simple_list_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_list_tb` (
  `project_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '프로젝트Key',
  `project_code` varchar(150) DEFAULT NULL COMMENT 'id_evs_YYYYseq(ex : vision_evs_2020001)',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '사용자ID',
  `company_key` int(11) NOT NULL DEFAULT 0 COMMENT '기업 key',
  `company_name` varchar(500) NOT NULL DEFAULT 'N/A' COMMENT '기업명',
  `company_number` varchar(50) DEFAULT 'N/A' COMMENT '사업자번호',
  `perform_country` varchar(5) DEFAULT '' COMMENT '목표 국가 및 가격 선택 > 국가',
  `perform_price` varchar(5) DEFAULT '' COMMENT '목표 국가 및 가격 선택 > 가격',
  `project_name` varchar(500) DEFAULT 'N/A' COMMENT '평가명',
  `project_institute` varchar(50) DEFAULT 'N/A' COMMENT '평가 생성기관',
  `project_writer` varchar(50) DEFAULT 'N/A' COMMENT '평가 생성자',
  `procure_tech_code` varchar(50) DEFAULT '' COMMENT '조달청 분류 코드',
  `procure_tech_name` varchar(500) DEFAULT '' COMMENT '조달청 분류 명',
  `procure_tech_large` varchar(500) DEFAULT '' COMMENT '기술분류_대',
  `procure_tech_large_code` varchar(500) DEFAULT '' COMMENT '기술분류_대_코드',
  `procure_tech_middle` varchar(500) DEFAULT '' COMMENT '기술분류_중',
  `procure_tech_middle_code` varchar(500) DEFAULT '' COMMENT '기술분류_중_코드',
  `procure_tech_small` varchar(500) DEFAULT '' COMMENT '기술분류_소',
  `procure_tech_small_code` varchar(500) DEFAULT '' COMMENT '기술분류_소_코드',
  `procure_tech_detail` varchar(500) DEFAULT '' COMMENT '기술분류_세',
  `procure_tech_detail_code` varchar(500) DEFAULT '' COMMENT '기술분류_세_코드',
  `procure_tech_detailed` varchar(500) DEFAULT '' COMMENT '기술분류_세세',
  `procure_tech_detailed_code` varchar(500) DEFAULT '' COMMENT '기술분류_세세_코드',
  `com_business` varchar(300) DEFAULT '' COMMENT '사업분류',
  `project_write_date` varchar(50) DEFAULT 'N/A' COMMENT '생성일자',
  `product_name` varchar(500) DEFAULT '' COMMENT '제품명',
  `model_name` varchar(500) DEFAULT '' COMMENT '모델명',
  `product_func` text DEFAULT NULL COMMENT '제품 주요기능',
  `product_feat` text DEFAULT NULL COMMENT '제품 특장점',
  `product_price_symbol` varchar(50) DEFAULT '' COMMENT '제품 대표가격',
  `product_price_symbol_type` varchar(50) DEFAULT NULL COMMENT '제품 판매단위 (type)',
  `product_price_unit` varchar(50) DEFAULT '' COMMENT '제품 판매 가격 단위',
  `product_price_symbol_etc_type` varchar(50) DEFAULT NULL COMMENT '제품 판매 가격 단위 (기타 TEXT)',
  `writer_name` varchar(50) DEFAULT '' COMMENT '작성자명',
  `writer_affiliation` varchar(50) DEFAULT '' COMMENT '작성자 소속',
  `writer_position` varchar(50) DEFAULT '' COMMENT '작성자 직급',
  `writer_phone` varchar(50) DEFAULT '' COMMENT '작성자 번호',
  `writer_email` varchar(50) DEFAULT '' COMMENT '작성자 이메일',
  `writer_department` varchar(50) DEFAULT '' COMMENT '작성자 부서',
  `sale_price` varchar(200) DEFAULT '0' COMMENT '자사판매가격',
  `model_type` tinyint(4) DEFAULT 1 COMMENT '평가모형 (1: 기존 | 2: 카노)',
  `com_sale_price` varchar(200) DEFAULT '0' COMMENT '경쟁사판매가격',
  `total_quality_level` double DEFAULT NULL COMMENT '종합 품질수준',
  `step1_tech_check` double DEFAULT 1 COMMENT 'step1 기술 확인',
  `step2_price_check` int(11) DEFAULT 0 COMMENT 'step2  비용 확인',
  `step3_comprice_check` int(11) DEFAULT 1 COMMENT 'step3 경쟁사 비용 확인',
  `delete_key` int(11) DEFAULT 0 COMMENT '삭제여부 (1 삭제 | 0 삭제x)',
  `step0_state` int(11) unsigned DEFAULT 0 COMMENT 'step0 완료 여부',
  `step0_com_state` int(11) unsigned DEFAULT 0 COMMENT 'step0_com 진행상태',
  `step1_state` int(11) DEFAULT 0 COMMENT 'step1 완료 여부',
  `step2_state` int(11) NOT NULL DEFAULT 0 COMMENT 'step2 완료 여부',
  `step3_state` int(11) DEFAULT 0 COMMENT 'step3 완료 여부',
  `step2_score_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '상관계수점수유형(0:범위, 1:지정)',
  `project_rank` int(11) DEFAULT 0 COMMENT '프로젝트 등급',
  `project_market_check` int(11) DEFAULT NULL COMMENT '프로젝트 시장성 확인',
  `1_range_val` int(11) DEFAULT NULL COMMENT 'Ⅰ-1	독특성',
  `2_range_val` int(11) DEFAULT NULL COMMENT 'Ⅰ-2	독특성',
  `3_range_val` int(11) DEFAULT NULL COMMENT 'Ⅰ-3	독특성',
  `4_range_val` int(11) DEFAULT NULL COMMENT 'Ⅰ-4	디자인 차별성',
  `5_range_val` int(11) DEFAULT NULL COMMENT 'Ⅰ-5	신뢰성',
  `6_range_val` int(11) DEFAULT NULL COMMENT 'Ⅱ-1	필요성',
  `7_range_val` int(11) DEFAULT NULL COMMENT 'Ⅱ-2	구입 의향',
  `8_range_val` int(11) DEFAULT NULL COMMENT 'Ⅱ-3	추천 의향',
  `9_range_val` int(11) DEFAULT NULL COMMENT 'Ⅲ.전반적 제품 선호도',
  `10_range_val` int(11) DEFAULT 0 COMMENT 'Ⅳ-1	판매 희망가격 최소 지불 의향 가격(평균)',
  `11_range_val` int(11) DEFAULT 0 COMMENT 'Ⅳ-1	판매 희망가격 최대 지불 의향 가격(평균)',
  `access_state` tinyint(4) DEFAULT 0 COMMENT '1: 진행 | 2: 등록 | 3: 재평가',
  `reg_date` varchar(50) DEFAULT curdate() COMMENT '최초 등록일',
  `last_update_date` varchar(50) DEFAULT curdate() COMMENT '마지막 수정일',
  `access_date` varchar(50) NOT NULL DEFAULT '' COMMENT '승인일',
  `v_factor` double DEFAULT NULL,
  PRIMARY KEY (`project_key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='프로젝트 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:22
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_market_breadth_o`
--

DROP TABLE IF EXISTS `pi_market_breadth_o`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_market_breadth_o` (
  `item_id` int(11) unsigned NOT NULL,
  `market_year` int(4) NOT NULL,
  `market_breadth` float NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`market_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:10
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_f_tb_0006_202310`
--

DROP TABLE IF EXISTS `vc_ntis_f_tb_0006_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_f_tb_0006_202310` (
  `NTIS_F_F_001` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_F_F_002` varchar(100) DEFAULT NULL COMMENT '성과발생부처',
  `NTIS_F_F_003` varchar(100) DEFAULT NULL COMMENT '성과사업ID',
  `NTIS_F_F_004` varchar(100) DEFAULT NULL COMMENT '성과사업명',
  `NTIS_F_F_005` varchar(100) DEFAULT NULL COMMENT '세부성과관리번호',
  `NTIS_F_F_006` varchar(100) DEFAULT NULL COMMENT 'NTIS_성과ID',
  `NTIS_F_F_007` varchar(100) DEFAULT NULL COMMENT 'KISTEP_성과ID',
  `NTIS_F_F_008` varchar(100) DEFAULT NULL COMMENT '검증결과',
  `NTIS_F_F_009` varchar(100) DEFAULT NULL COMMENT '검증내역',
  `NTIS_F_F_010` varchar(100) DEFAULT NULL COMMENT '학술연수장기국내수',
  `NTIS_F_F_011` varchar(100) DEFAULT NULL COMMENT '학술연수장기국외수',
  `NTIS_F_F_012` varchar(100) DEFAULT NULL COMMENT '학술연수단기국내수',
  `NTIS_F_F_013` varchar(100) DEFAULT NULL COMMENT '학술연수단기국외수',
  `NTIS_F_F_014` varchar(100) DEFAULT NULL COMMENT '기술연수장기국내수',
  `NTIS_F_F_015` varchar(100) DEFAULT NULL COMMENT '기술연수장기국외수',
  `NTIS_F_F_016` varchar(100) DEFAULT NULL COMMENT '기술연수단기국내수',
  `NTIS_F_F_017` varchar(100) DEFAULT NULL COMMENT '기술연수단기국외수',
  `NTIS_F_F_018` varchar(100) DEFAULT NULL COMMENT '과제수행년도',
  `NTIS_F_F_019` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_F_F_020` varchar(100) DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_F_F_021` longtext DEFAULT NULL COMMENT '과제명-국문'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='연수지원통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_vc_code_kor`
--

DROP TABLE IF EXISTS `uitem_vc_code_kor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_vc_code_kor` (
  `industry_cd` varchar(20) NOT NULL,
  `industry1_cd` varchar(2) DEFAULT NULL,
  `industry1_nm` varchar(500) DEFAULT NULL,
  `industry2_cd` varchar(2) DEFAULT NULL,
  `industry2_nm` varchar(500) DEFAULT NULL,
  `industry3_cd` varchar(2) DEFAULT NULL,
  `industry3_nm` varchar(500) DEFAULT NULL,
  `industry4_cd` varchar(2) DEFAULT NULL,
  `industry4_nm` varchar(500) DEFAULT NULL,
  `use` char(1) DEFAULT 'Y',
  `etc` varchar(1000) DEFAULT NULL,
  `info` text DEFAULT NULL,
  PRIMARY KEY (`industry_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='GICS한글분류(4depth)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:19
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comm_keyword_tb`
--

DROP TABLE IF EXISTS `comm_keyword_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comm_keyword_tb` (
  `word_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '금지어 key',
  `word_value` varchar(50) DEFAULT NULL COMMENT '금지어 값(단어)',
  `word_type` int(11) DEFAULT NULL COMMENT '금지어 타입',
  PRIMARY KEY (`word_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='금지어 Tb';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_d_tb_0004_202310`
--

DROP TABLE IF EXISTS `vc_ntis_d_tb_0004_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_d_tb_0004_202310` (
  `NTIS_D_F_001` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_D_F_002` varchar(100) DEFAULT NULL COMMENT '성과발생부처',
  `NTIS_D_F_003` varchar(100) DEFAULT NULL COMMENT '(종료시)성과사업년도',
  `NTIS_D_F_004` varchar(100) DEFAULT NULL COMMENT '(종료시)성과사업부처',
  `NTIS_D_F_005` varchar(100) DEFAULT NULL COMMENT '성과사업ID',
  `NTIS_D_F_006` mediumtext DEFAULT NULL COMMENT '성과사업명',
  `NTIS_D_F_007` varchar(100) DEFAULT NULL COMMENT '세부성과관리번호',
  `NTIS_D_F_008` varchar(100) DEFAULT NULL COMMENT 'NTIS_성과ID',
  `NTIS_D_F_009` varchar(100) DEFAULT NULL COMMENT 'KISTEP_성과ID',
  `NTIS_D_F_010` varchar(100) DEFAULT NULL COMMENT '검증결과',
  `NTIS_D_F_011` varchar(100) DEFAULT NULL COMMENT '검증내역',
  `NTIS_D_F_012` varchar(100) DEFAULT NULL COMMENT '출원/등록 국가코드',
  `NTIS_D_F_013` varchar(100) DEFAULT NULL COMMENT '출원/등록 국가',
  `NTIS_D_F_014` varchar(100) DEFAULT NULL COMMENT '출원/등록 구분코드',
  `NTIS_D_F_015` varchar(100) DEFAULT NULL COMMENT '출원/등록 구분',
  `NTIS_D_F_016` varchar(100) DEFAULT NULL COMMENT '출원번호',
  `NTIS_D_F_017` varchar(100) DEFAULT NULL COMMENT '출원번호_국가코드포함',
  `NTIS_D_F_018` varchar(100) DEFAULT NULL COMMENT '등록번호',
  `NTIS_D_F_019` varchar(100) DEFAULT NULL COMMENT '등록번호_국가코드포함',
  `NTIS_D_F_020` varchar(100) DEFAULT NULL COMMENT '출원일자',
  `NTIS_D_F_021` varchar(100) DEFAULT NULL COMMENT '등록일자',
  `NTIS_D_F_022` longtext DEFAULT NULL COMMENT '발명의 명칭',
  `NTIS_D_F_023` longtext DEFAULT NULL COMMENT '출원/등록 기관',
  `NTIS_D_F_024` varchar(100) DEFAULT NULL COMMENT '공개유무',
  `NTIS_D_F_025` varchar(100) DEFAULT NULL COMMENT '기여율(확정)',
  `NTIS_D_F_026` varchar(100) DEFAULT NULL COMMENT '과제수행년도',
  `NTIS_D_F_027` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_D_F_028` longtext DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_D_F_029` longtext DEFAULT NULL COMMENT '과제명-국문'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='특허통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:38
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_invest_trend`
--

DROP TABLE IF EXISTS `pi_invest_trend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_invest_trend` (
  `item_id` int(11) unsigned NOT NULL,
  `invest_year` int(4) NOT NULL,
  `invest_amount` float NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`invest_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:52
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itempool`
--

DROP TABLE IF EXISTS `itempool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itempool` (
  `ITEM` char(255) NOT NULL DEFAULT '',
  `extr_date` char(8) NOT NULL,
  `VERI_DATE` datetime DEFAULT NULL,
  `DEPTH` int(11) DEFAULT NULL,
  `P_ITEM` char(255) NOT NULL,
  `STATUS` char(1) NOT NULL,
  `C_COUNT` int(11) DEFAULT NULL,
  `I_FLAG` char(1) DEFAULT NULL,
  `DEL_DATE` datetime DEFAULT NULL,
  `ITEM_WEIGHT` varchar(20) DEFAULT NULL,
  `NEWS_COUNT` int(11) DEFAULT NULL,
  `HIT_COUNT` int(11) DEFAULT NULL,
  `CATEGORY` varchar(20) DEFAULT NULL,
  `GROUP_ITEM` text DEFAULT NULL,
  `SUB_ITEM` text DEFAULT NULL,
  `GROUP_NAME` char(1) DEFAULT NULL,
  `ENG_NAME` varchar(255) DEFAULT NULL,
  `SYNONYM` varchar(512) DEFAULT NULL,
  `CATEGORY_INDU` char(32) DEFAULT NULL,
  `CATEGORY_6T` char(32) DEFAULT NULL,
  `MANNKENDAL` float DEFAULT NULL,
  `CHANGE_RATE` float DEFAULT NULL,
  PRIMARY KEY (`ITEM`),
  KEY `idx_itempool_extr_item` (`ITEM`),
  KEY `idx_itempool_extr_date` (`extr_date`),
  KEY `idx_itempool_status` (`STATUS`),
  KEY `idx_itempool_p_item` (`P_ITEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:58
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:23
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_nice_a_tb_0001_202310`
--

DROP TABLE IF EXISTS `vc_nice_a_tb_0001_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_nice_a_tb_0001_202310` (
  `NICE_A_F_001` varchar(6) NOT NULL COMMENT '업체코드',
  `NICE_A_F_002` varchar(10) DEFAULT NULL COMMENT '사업자번호',
  `NICE_A_F_003` varchar(13) DEFAULT NULL COMMENT '법인번호',
  `NICE_A_F_004` text DEFAULT NULL COMMENT '한글업체명',
  `NICE_A_F_005` text DEFAULT NULL COMMENT '영문업체명',
  `NICE_A_F_006` varchar(100) DEFAULT NULL COMMENT '약식업체명',
  `NICE_A_F_007` varchar(5) DEFAULT NULL COMMENT '기업주체구분',
  `NICE_A_F_008` varchar(4) DEFAULT NULL COMMENT '기업규모구분',
  `NICE_A_F_009` varchar(100) DEFAULT NULL COMMENT '기업상세구분',
  `NICE_A_F_010` varchar(100) DEFAULT NULL COMMENT '기업공개',
  `NICE_A_F_011` varchar(100) DEFAULT NULL COMMENT '기업형태',
  `NICE_A_F_012` varchar(2) DEFAULT NULL COMMENT '법인_개인구분',
  `NICE_A_F_013` varchar(100) DEFAULT NULL COMMENT '상장시장구분',
  `NICE_A_F_014` varchar(2) DEFAULT NULL COMMENT '관리종목여부',
  `NICE_A_F_015` varchar(2) DEFAULT NULL COMMENT '외감여부',
  `NICE_A_F_016` varchar(2) DEFAULT NULL COMMENT '기업존속여부',
  `NICE_A_F_017` varchar(2) DEFAULT NULL COMMENT '벤처기업여부',
  `NICE_A_F_018` varchar(2) DEFAULT NULL COMMENT '이노비즈여부',
  `NICE_A_F_019` varchar(2) DEFAULT NULL COMMENT '메인비즈여부',
  `NICE_A_F_020` varchar(100) DEFAULT NULL COMMENT '재무구분코드',
  `NICE_A_F_021` varchar(2) DEFAULT NULL COMMENT '결산월',
  `NICE_A_F_022` varchar(8) DEFAULT NULL COMMENT '개업일',
  `NICE_A_F_023` varchar(8) DEFAULT NULL COMMENT '설립일',
  `NICE_A_F_024` varchar(8) DEFAULT NULL COMMENT '종업원기준일',
  `NICE_A_F_025` int(10) unsigned DEFAULT NULL COMMENT '최근종업원수',
  `NICE_A_F_026` varchar(100) DEFAULT NULL COMMENT '한글대표자명',
  `NICE_A_F_027` text DEFAULT NULL COMMENT '영문대표자명',
  `NICE_A_F_028` varchar(6) DEFAULT NULL COMMENT '휴폐업여부',
  `NICE_A_F_029` varchar(3) DEFAULT NULL COMMENT '휴폐업여부_new',
  `NICE_A_F_030` varchar(8) DEFAULT NULL COMMENT '휴폐업일자',
  `NICE_A_F_031` varchar(3) DEFAULT NULL COMMENT '그룹코드',
  `NICE_A_F_032` varchar(6) DEFAULT NULL COMMENT '10차산업코드',
  `NICE_A_F_033` varchar(100) DEFAULT NULL COMMENT '10차산업코드명',
  `NICE_A_F_034` varchar(100) DEFAULT NULL COMMENT '주거래은행코드',
  `NICE_A_F_035` varchar(100) DEFAULT NULL COMMENT '한글은행지점명',
  `NICE_A_F_036` varchar(100) DEFAULT NULL COMMENT '영문은행지점명',
  `NICE_A_F_037` text DEFAULT NULL COMMENT '한글주요제품',
  `NICE_A_F_038` text DEFAULT NULL COMMENT '영문주요제품',
  `NICE_A_F_039` varchar(100) DEFAULT NULL COMMENT '홈페이지URL',
  `NICE_A_F_040` text DEFAULT NULL COMMENT '기업이메일',
  `NICE_A_F_041` varchar(100) DEFAULT NULL COMMENT '무역업신고번호',
  `NICE_A_F_042` varchar(8) DEFAULT NULL COMMENT '상장일자',
  `NICE_A_F_043` varchar(8) DEFAULT NULL COMMENT '상장폐지일자',
  `NICE_A_F_044` varchar(100) DEFAULT NULL COMMENT '법인등기상태',
  `NICE_A_F_045` varchar(8) DEFAULT NULL COMMENT '법인등기상태변동일',
  `NICE_A_F_046` varchar(8) DEFAULT NULL COMMENT '기업상태변동일',
  `NICE_A_F_047` varchar(6) DEFAULT NULL COMMENT '소재지우편번호',
  `NICE_A_F_048` text DEFAULT NULL COMMENT '주소',
  `NICE_A_F_049` varchar(100) DEFAULT NULL COMMENT '전화번호',
  `NICE_A_F_050` varchar(100) DEFAULT NULL COMMENT '팩스번호',
  `NICE_A_F_051` varchar(5) DEFAULT NULL COMMENT '시.도',
  `NICE_A_F_052` varchar(5) DEFAULT NULL COMMENT '시.도 코드',
  PRIMARY KEY (`NICE_A_F_001`),
  KEY `vc_nice_a_tb_0001_NICE_A_F_002_IDX` (`NICE_A_F_002`) USING BTREE,
  KEY `NICE_A_F_032` (`NICE_A_F_032`),
  KEY `NICE_A_F_052` (`NICE_A_F_052`),
  KEY `NICE_A_F_037` (`NICE_A_F_037`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='11_1_기업개요_19';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:51
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_list_tb`
--

DROP TABLE IF EXISTS `deep_list_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_list_tb` (
  `project_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '프로젝트Key',
  `project_code` varchar(150) DEFAULT NULL COMMENT 'id_evs_YYYYseq(ex : vision_evs_2020001)',
  `USER_ID` varchar(50) NOT NULL COMMENT '사용자ID',
  `product_name` varchar(50) DEFAULT '' COMMENT '제품명',
  `model_name` varchar(500) DEFAULT '' COMMENT '모델명',
  `procure_tech_large` varchar(500) DEFAULT '' COMMENT '조달청 분류_대',
  `procure_tech_large_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_대_코드',
  `procure_tech_middle` varchar(500) DEFAULT '' COMMENT '조달청 분류_중',
  `procure_tech_middle_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_중_코드',
  `procure_tech_small` varchar(500) DEFAULT '' COMMENT '조달청 분류_소',
  `procure_tech_small_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_소_코드',
  `procure_tech_detail` varchar(500) DEFAULT '' COMMENT '조달청 분류_세',
  `procure_tech_detail_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_세_코드',
  `procure_tech_detailed` varchar(500) DEFAULT '' COMMENT '조달청 분류_세세',
  `procure_tech_detailed_code` varchar(500) DEFAULT '' COMMENT '조달청 분류_세세_코드',
  `perform_country` varchar(5) DEFAULT '' COMMENT '목표 국가 및 가격 선택 > 국가',
  `perform_price` varchar(5) DEFAULT '' COMMENT '목표 국가 및 가격 선택 > 가격',
  `project_name` varchar(500) DEFAULT '' COMMENT '평가명',
  `project_institute` varchar(500) DEFAULT '' COMMENT '평가 생성기관',
  `project_writer` varchar(500) DEFAULT '' COMMENT '평가 생성자',
  `com_business` varchar(300) DEFAULT '' COMMENT '사업명',
  `project_write_date` varchar(50) DEFAULT '' COMMENT '생성일자',
  `country_name` varchar(50) DEFAULT '' COMMENT '국가(본사)',
  `product_func` varchar(50) DEFAULT '' COMMENT '제품 주요기능',
  `product_feat` varchar(50) DEFAULT '' COMMENT '제품 특장점',
  `product_price_symbol` varchar(50) DEFAULT '' COMMENT '제품 대표가격',
  `product_price_symbol_type` varchar(50) DEFAULT NULL COMMENT '제품 판매단위 (type)',
  `product_price_unit` varchar(50) DEFAULT '' COMMENT '제품 판매 가격 단위',
  `product_price_symbol_etc_type` varchar(50) DEFAULT NULL COMMENT '제품 판매 가격 단위 (기타 TEXT)',
  `sale_price` double NOT NULL DEFAULT 0 COMMENT '자사판매가격',
  `model_type` tinyint(4) DEFAULT 1 COMMENT '평가모형 (1: 기존 | 2: 카노)',
  `writer_name` varchar(50) DEFAULT '' COMMENT '작성자명',
  `writer_affiliation` varchar(50) DEFAULT '' COMMENT '작성자 소속',
  `writer_position` varchar(50) DEFAULT '' COMMENT '작성자 직급',
  `writer_phone` varchar(50) DEFAULT '' COMMENT '작성자 번호',
  `writer_email` varchar(50) DEFAULT '' COMMENT '작성자 이메일',
  `writer_department` varchar(500) DEFAULT '' COMMENT '작성자 부서',
  `com_sale_price` varchar(200) DEFAULT '0' COMMENT '경쟁사판매가격(최대값)',
  `total_quality_level` double unsigned zerofill DEFAULT 0000000000000000000000 COMMENT '종합 품질수준',
  `step1_tech_check` int(11) DEFAULT 1 COMMENT '1선택 2미선택',
  `step2_price_check` int(11) DEFAULT 0 COMMENT '구성품원가입력여부(0 : 입력안함, 1 : 입력함)',
  `step3_score_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '상관계수점수유형(0:범위, 1:지정)',
  `step4_score_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '상관계수점수유형(0:범위, 1:지정)',
  `step5_comprice_check` int(11) DEFAULT 1 COMMENT '벤치마킹 대표가격여부(1 최소,2  평균,3  최대)',
  `delete_key` int(11) DEFAULT 0 COMMENT '삭제여부 (1:제거 | 0: 제거x)',
  `step0_state` int(11) unsigned DEFAULT 0 COMMENT 'step0 진행상태',
  `step0_com_state` int(11) unsigned DEFAULT 0 COMMENT 'step0_com 진행상태',
  `step1_state` int(11) unsigned DEFAULT 0 COMMENT 'step1 진행상태',
  `step2_state` int(11) DEFAULT 0 COMMENT 'step2 진행상태',
  `step3_state` int(11) DEFAULT 0 COMMENT 'step3 진행상태',
  `step4_state` int(11) DEFAULT 0 COMMENT 'step4 진행상태',
  `step5_state` int(11) DEFAULT 0 COMMENT 'step5 진행상태',
  `v_factor` double DEFAULT NULL COMMENT '가치계수 (V)',
  `project_rank` int(11) DEFAULT 0 COMMENT 'project 등급',
  `project_market_check` int(11) DEFAULT 0 COMMENT '시장전문가여부(0 : 비활성화, 1 : 활성화)',
  `access_state` tinyint(4) DEFAULT 0 COMMENT '1: 진행 | 2: 등록 | 3: 재평가',
  `reg_date` varchar(50) DEFAULT curdate() COMMENT '최초 등록일',
  `last_update_date` varchar(50) DEFAULT curdate() COMMENT '마지막 수정일',
  `access_date` varchar(50) DEFAULT '' COMMENT '승인일',
  PRIMARY KEY (`project_key`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='프로젝트 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:13
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_summary`
--

DROP TABLE IF EXISTS `uitem_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_summary` (
  `unit_cd` varchar(8) NOT NULL COMMENT '고유번호',
  `info_head` text DEFAULT NULL COMMENT '소개 머리글',
  `info_img` varchar(255) DEFAULT NULL COMMENT '소개 이미지',
  `info_img_source` varchar(1000) DEFAULT NULL COMMENT '소개 이미지 출처',
  `info_main_text` text DEFAULT NULL COMMENT '소개 내용',
  `info_sub_text` text DEFAULT NULL COMMENT '소개 서브 내용',
  `info_source` varchar(1000) DEFAULT NULL COMMENT '소개 출처',
  `comp_head` text DEFAULT NULL COMMENT '구성요소 머리글',
  `comp_img` varchar(255) DEFAULT NULL COMMENT '구성요소 이미지',
  `comp_img_source` varchar(1000) DEFAULT NULL COMMENT '구성요소 이미지 출처',
  `comp_main_text` text DEFAULT NULL COMMENT '구성요소 내용',
  `comp_sub_text` text DEFAULT NULL COMMENT '구성요소 서브 내용',
  `comp_source` varchar(1000) DEFAULT NULL COMMENT '구성요소 출처',
  `appl_head` text DEFAULT NULL COMMENT '활용분야 머리글',
  `appl_field1` varchar(100) DEFAULT NULL COMMENT '활용분야1',
  `appl_field2` varchar(100) DEFAULT NULL COMMENT '활용분야2',
  `appl_field3` varchar(100) DEFAULT NULL COMMENT '활용분야3',
  `appl_field4` varchar(100) DEFAULT NULL COMMENT '활용분야4',
  `appl_field5` varchar(100) DEFAULT NULL COMMENT '활용분야5',
  `appl_field6` varchar(100) DEFAULT NULL COMMENT '활용분야6',
  `appl_field7` varchar(100) DEFAULT NULL COMMENT '활용분야7',
  `appl_field8` varchar(100) DEFAULT NULL COMMENT '활용분야8',
  `appl_field9` varchar(100) DEFAULT NULL COMMENT '활용분야9',
  `appl_field10` varchar(100) DEFAULT NULL COMMENT '활용분야10',
  `appl_img` varchar(255) DEFAULT NULL COMMENT '활용분야 이미지',
  `appl_img_source` varchar(1000) DEFAULT NULL COMMENT '활용분야 이미지 출처',
  `appl_main_text` text DEFAULT NULL COMMENT '활용분야 내용',
  `appl_sub_text` text DEFAULT NULL COMMENT '활용분야 서브 내용',
  `appl_source` varchar(1000) DEFAULT NULL COMMENT '활용분야 출처',
  PRIMARY KEY (`unit_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='유망아이템 개요';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:15
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_product_info_tb`
--

DROP TABLE IF EXISTS `amz_product_info_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_product_info_tb` (
  `url` varchar(220) DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) DEFAULT NULL COMMENT '상품고유값',
  `product_idx` int(11) DEFAULT NULL COMMENT '상품 인덱스(상품 순위)',
  `create_date` varchar(10) DEFAULT NULL COMMENT '생성날짜',
  `product_name` text DEFAULT NULL COMMENT '상품 이름',
  `product_price` float DEFAULT NULL COMMENT '상품 가격',
  `review_score` float DEFAULT NULL COMMENT '별점',
  `review_number` int(11) DEFAULT NULL COMMENT '리뷰한 사람수',
  `5star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `4star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `3star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `2star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  `1star` int(11) DEFAULT NULL COMMENT '각 별점당 분포',
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:38
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_a_tb_0001_test3`
--

DROP TABLE IF EXISTS `vc_ntis_a_tb_0001_test3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_a_tb_0001_test3` (
  `NTIS_A_F_001` char(4) DEFAULT NULL COMMENT '제출년도',
  `NTIS_A_F_002` varchar(1000) DEFAULT NULL COMMENT '사업명',
  `NTIS_A_F_003` varchar(100) DEFAULT NULL COMMENT '사업구분',
  `NTIS_A_F_004` varchar(100) DEFAULT NULL COMMENT '사업_부처명',
  `NTIS_A_F_005` char(1) DEFAULT NULL COMMENT '계속과제여부구분코드',
  `NTIS_A_F_006` char(6) DEFAULT NULL COMMENT '계속과제여부',
  `NTIS_A_F_007` varchar(1000) DEFAULT NULL COMMENT '이전(기관)세부과제번호',
  `NTIS_A_F_008` varchar(1000) DEFAULT NULL COMMENT '이전과제고유번호',
  `NTIS_A_F_009` varchar(1000) DEFAULT NULL COMMENT '내역사업명',
  `NTIS_A_F_010` varchar(1000) DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_A_F_011` char(10) NOT NULL COMMENT '과제고유번호',
  `NTIS_A_F_012` varchar(500) DEFAULT NULL COMMENT '주관과제(기관)세부과제번호',
  `NTIS_A_F_013` varchar(100) DEFAULT NULL COMMENT '주관과제고유번호',
  `NTIS_A_F_014` varchar(1000) DEFAULT NULL COMMENT '과제명',
  `NTIS_A_F_015` char(8) DEFAULT NULL COMMENT '총연구기간-시작년월일',
  `NTIS_A_F_016` char(8) DEFAULT NULL COMMENT '총연구기간-종료년월일',
  `NTIS_A_F_017` varchar(100) DEFAULT NULL COMMENT '주관협동구분',
  `NTIS_A_F_018` char(2) DEFAULT NULL COMMENT '연구수행주체코드',
  `NTIS_A_F_019` varchar(100) DEFAULT NULL COMMENT '연구수행주체',
  `NTIS_A_F_020` char(2) DEFAULT NULL COMMENT '지역코드',
  `NTIS_A_F_021` varchar(100) DEFAULT NULL COMMENT '지역',
  `NTIS_A_F_022` varchar(100) DEFAULT NULL COMMENT '기초자치단체코드',
  `NTIS_A_F_023` varchar(100) DEFAULT NULL COMMENT '기초자치단체',
  `NTIS_A_F_024` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-대',
  `NTIS_A_F_025` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-대',
  `NTIS_A_F_026` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-중',
  `NTIS_A_F_027` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-중',
  `NTIS_A_F_028` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-소',
  `NTIS_A_F_029` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-소',
  `NTIS_A_F_030` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치1',
  `NTIS_A_F_031` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드2-대',
  `NTIS_A_F_032` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류2-대',
  `NTIS_A_F_033` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코2-중',
  `NTIS_A_F_034` varchar(100) DEFAULT NULL COMMENT '과학기드술표준분류2-중',
  `NTIS_A_F_035` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드2-소',
  `NTIS_A_F_036` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류2-소',
  `NTIS_A_F_037` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치2',
  `NTIS_A_F_038` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-대',
  `NTIS_A_F_039` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-대',
  `NTIS_A_F_040` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-중',
  `NTIS_A_F_041` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-중',
  `NTIS_A_F_042` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-소',
  `NTIS_A_F_043` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-소',
  `NTIS_A_F_044` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치3',
  `NTIS_A_F_045` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-대',
  `NTIS_A_F_046` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-대',
  `NTIS_A_F_047` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-중',
  `NTIS_A_F_048` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-중',
  `NTIS_A_F_049` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-소',
  `NTIS_A_F_050` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-소',
  `NTIS_A_F_051` varchar(100) DEFAULT NULL COMMENT '적용분야코드1',
  `NTIS_A_F_052` varchar(100) DEFAULT NULL COMMENT '적용분야1',
  `NTIS_A_F_053` varchar(100) DEFAULT NULL COMMENT '적용분야가중치1',
  `NTIS_A_F_054` varchar(100) DEFAULT NULL COMMENT '적용분야코드2',
  `NTIS_A_F_055` varchar(100) DEFAULT NULL COMMENT '적용분야2',
  `NTIS_A_F_056` varchar(100) DEFAULT NULL COMMENT '적용분야가중치2',
  `NTIS_A_F_057` varchar(100) DEFAULT NULL COMMENT '적용분야코드3',
  `NTIS_A_F_058` varchar(100) DEFAULT NULL COMMENT '적용분야3',
  `NTIS_A_F_059` varchar(100) DEFAULT NULL COMMENT '적용분야가중치3',
  `NTIS_A_F_060` varchar(100) DEFAULT NULL COMMENT '녹색기술분류코드',
  `NTIS_A_F_061` varchar(100) DEFAULT NULL COMMENT '녹색기술분류',
  `NTIS_A_F_062` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-대',
  `NTIS_A_F_063` varchar(100) DEFAULT NULL COMMENT '6T관련기술-대',
  `NTIS_A_F_064` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-중',
  `NTIS_A_F_065` varchar(100) DEFAULT NULL COMMENT '6T관련기술-중',
  `NTIS_A_F_066` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-소',
  `NTIS_A_F_067` varchar(100) DEFAULT NULL COMMENT '6T관련기술-소',
  `NTIS_A_F_068` varchar(100) DEFAULT NULL COMMENT '경제사회목적코드',
  `NTIS_A_F_069` varchar(100) DEFAULT NULL COMMENT '경제사회목적',
  `NTIS_A_F_070` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-대',
  `NTIS_A_F_071` varchar(100) DEFAULT NULL COMMENT '국가전략기술-대',
  `NTIS_A_F_072` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-중',
  `NTIS_A_F_073` varchar(100) DEFAULT NULL COMMENT '국가전략기술-중',
  `NTIS_A_F_074` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-소',
  `NTIS_A_F_075` varchar(100) DEFAULT NULL COMMENT '국가전략기술-소',
  `NTIS_A_F_076` text DEFAULT NULL COMMENT '요약문_연구목표',
  `NTIS_A_F_077` text DEFAULT NULL COMMENT '요약문_연구목표_1',
  `NTIS_A_F_078` text DEFAULT NULL COMMENT '요약문_연구목표_2',
  `NTIS_A_F_079` text DEFAULT NULL COMMENT '요약문_연구목표_3',
  `NTIS_A_F_080` text DEFAULT NULL COMMENT '요약문_연구내용',
  `NTIS_A_F_081` text DEFAULT NULL COMMENT '요약문_연구내용_1',
  `NTIS_A_F_082` text DEFAULT NULL COMMENT '요약문_연구내용_2',
  `NTIS_A_F_083` text DEFAULT NULL COMMENT '요약문_연구내용_3',
  `NTIS_A_F_084` text DEFAULT NULL COMMENT '요약문_기대효과',
  `NTIS_A_F_085` text DEFAULT NULL COMMENT '요약문_기대효과_1',
  `NTIS_A_F_086` text DEFAULT NULL COMMENT '요약문_기대효과_2',
  `NTIS_A_F_087` text DEFAULT NULL COMMENT '요약문_기대효과_3',
  `NTIS_A_F_088` text DEFAULT NULL COMMENT '요약문_한글키워드',
  `NTIS_A_F_089` text DEFAULT NULL COMMENT '요약문_영문키워드',
  `NTIS_A_F_090` varchar(100) DEFAULT NULL COMMENT '당해연구기간-시작년월일',
  `NTIS_A_F_091` varchar(100) DEFAULT NULL COMMENT '당해연구기간-종료년월일',
  `NTIS_A_F_092` varchar(100) DEFAULT NULL COMMENT '대표전문기관',
  `NTIS_A_F_093` varchar(100) DEFAULT NULL COMMENT '과제관리기관',
  `NTIS_A_F_094` varchar(500) DEFAULT NULL COMMENT '과제수행기관명',
  `NTIS_A_F_095` varchar(100) DEFAULT NULL COMMENT '사업자등록번호',
  `NTIS_A_F_096` varchar(100) DEFAULT NULL COMMENT '사업자등록번호_FN',
  `NTIS_A_F_097` char(2) DEFAULT NULL COMMENT '연구개발단계코드',
  `NTIS_A_F_098` varchar(100) DEFAULT NULL COMMENT '연구개발단계',
  `NTIS_A_F_099` varchar(100) DEFAULT NULL COMMENT '세부과제지원코드',
  `NTIS_A_F_100` varchar(100) DEFAULT NULL COMMENT '세부과제지원유형',
  `NTIS_A_F_101` float DEFAULT NULL COMMENT '정부연구비(원)',
  `NTIS_A_F_102` float DEFAULT NULL COMMENT '인건비-현금(원)',
  `NTIS_A_F_103` float DEFAULT NULL COMMENT '인건비-현물(원)',
  `NTIS_A_F_104` float DEFAULT NULL COMMENT '직접비-현금(원)',
  `NTIS_A_F_105` float DEFAULT NULL COMMENT '직접비-현물(원)',
  `NTIS_A_F_106` float DEFAULT NULL COMMENT '간접비(원)',
  `NTIS_A_F_107` float DEFAULT NULL COMMENT '위탁연구비(원)',
  `NTIS_A_F_108` float DEFAULT NULL COMMENT '물건비(원)',
  `NTIS_A_F_109` float DEFAULT NULL COMMENT '매칭펀드-지방정부-현금(원)',
  `NTIS_A_F_110` float DEFAULT NULL COMMENT '매칭펀드-지방정부-현물(원)',
  `NTIS_A_F_111` float DEFAULT NULL COMMENT '매칭펀드-대학-현금(원)',
  `NTIS_A_F_112` float DEFAULT NULL COMMENT '매칭펀드-대학-현물(원)',
  `NTIS_A_F_113` float DEFAULT NULL COMMENT '매칭펀드-대기업-현금(원)',
  `NTIS_A_F_114` float DEFAULT NULL COMMENT '매칭펀드-대기업-현물(원)',
  `NTIS_A_F_115` float DEFAULT NULL COMMENT '매칭펀드-중견기업-현금(원)',
  `NTIS_A_F_116` float DEFAULT NULL COMMENT '매칭펀드-중견기업-현물(원)',
  `NTIS_A_F_117` float DEFAULT NULL COMMENT '매칭펀드-중소기업-현물(원)',
  `NTIS_A_F_118` float DEFAULT NULL COMMENT '매칭펀드-중소기업-현금(원)',
  `NTIS_A_F_119` float DEFAULT NULL COMMENT '매칭펀드-기업-현금(원)',
  `NTIS_A_F_120` float DEFAULT NULL COMMENT '매칭펀드-기업-현물(원)',
  `NTIS_A_F_121` float DEFAULT NULL COMMENT '매칭펀드-기타-현금(원)',
  `NTIS_A_F_122` float DEFAULT NULL COMMENT '매칭펀드-기타-현물(원)',
  `NTIS_A_F_123` float DEFAULT NULL COMMENT '민간연구비_소계',
  `NTIS_A_F_124` float DEFAULT NULL COMMENT '총연구비_현금(원)',
  `NTIS_A_F_125` float DEFAULT NULL COMMENT '총연구비_현물(원)',
  `NTIS_A_F_126` float DEFAULT NULL COMMENT '총연구비_합계(원)',
  `NTIS_A_F_127` varchar(100) DEFAULT NULL COMMENT '공동연구여부_기업',
  `NTIS_A_F_128` varchar(100) DEFAULT NULL COMMENT '공동연구여부_대학',
  `NTIS_A_F_129` varchar(100) DEFAULT NULL COMMENT '공동연구여부_출연연',
  `NTIS_A_F_130` varchar(100) DEFAULT NULL COMMENT '공동연구여부_외국',
  `NTIS_A_F_131` varchar(100) DEFAULT NULL COMMENT '공동연구여부_기타',
  `NTIS_A_F_132` varchar(100) DEFAULT NULL COMMENT '참여연구원_성별_남',
  `NTIS_A_F_133` varchar(100) DEFAULT NULL COMMENT '참여연구원_성별_여',
  `NTIS_A_F_134` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_박사',
  `NTIS_A_F_135` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_석사',
  `NTIS_A_F_136` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_학사이하',
  `NTIS_A_F_137` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_이학',
  `NTIS_A_F_138` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_공학',
  `NTIS_A_F_139` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_농학',
  `NTIS_A_F_140` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_의학',
  `NTIS_A_F_141` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_인문',
  `NTIS_A_F_142` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_기타',
  `NTIS_A_F_143` varchar(200) DEFAULT NULL COMMENT '연구책임자소속기관명',
  `NTIS_A_F_144` varchar(100) DEFAULT NULL COMMENT '연구책임자사업자번호',
  `NTIS_A_F_145` varchar(100) DEFAULT NULL COMMENT '연구책임자성별',
  `NTIS_A_F_146` varchar(100) DEFAULT NULL COMMENT '연구책임자전공',
  `NTIS_A_F_147` varchar(100) DEFAULT NULL COMMENT '연구책임자학위',
  `NTIS_A_F_002_ID` int(11) DEFAULT NULL COMMENT '사업명ID',
  `NTIS_A_F_004_ID` int(11) DEFAULT NULL COMMENT '사업_부처명ID',
  `NTIS_A_F_014_ID` int(11) DEFAULT NULL COMMENT '과제명ID',
  PRIMARY KEY (`NTIS_A_F_011`),
  KEY `idx_NTIS_A_F_011` (`NTIS_A_F_011`),
  KEY `vc_ntis_a_tb_0001_NTIS_A_F_002_ID_IDX` (`NTIS_A_F_002_ID`) USING BTREE,
  KEY `vc_ntis_a_tb_0001_NTIS_A_F_004_ID_IDX` (`NTIS_A_F_004_ID`) USING BTREE,
  KEY `NTIS_A_F_096_IDX` (`NTIS_A_F_096`),
  KEY `NTIS_A_F_024_IDX` (`NTIS_A_F_024`,`NTIS_A_F_026`),
  FULLTEXT KEY `NTIS_A_F_014` (`NTIS_A_F_014`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='과제통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:01
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itemtrendyear`
--

DROP TABLE IF EXISTS `itemtrendyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtrendyear` (
  `id` int(11) unsigned NOT NULL COMMENT '외래키',
  `period_id` char(7) NOT NULL COMMENT '년월일 정보(YYYYMMW 형태 - 2014073)',
  `frequency` int(11) unsigned DEFAULT NULL COMMENT '빈도수',
  PRIMARY KEY (`id`,`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT COMMENT='약 1,000개 아이템에 대한 년간 트렌드 정보를 저장한 테이블(주별 데이터)					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:50
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotitem`
--

DROP TABLE IF EXISTS `hotitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `item_name` varchar(128) DEFAULT NULL COMMENT '아이템명',
  `category_indu` varchar(64) DEFAULT NULL COMMENT '산업 분류',
  `category_6t` varchar(64) DEFAULT NULL COMMENT '6T 분류',
  PRIMARY KEY (`id`),
  KEY `item_name` (`item_name`),
  KEY `category_indu` (`category_indu`),
  KEY `category_6t` (`category_6t`)
) ENGINE=InnoDB AUTO_INCREMENT=2365 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='아이템에 대한 기본 정보를 담고 있는 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:24
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_basic_tb`
--

DROP TABLE IF EXISTS `product_basic_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_basic_tb` (
  `no` int(11) NOT NULL COMMENT 'pk',
  `sku` varchar(50) DEFAULT NULL COMMENT '벤치마킹번호',
  `pclass` varchar(100) DEFAULT NULL COMMENT '제품분류',
  `department` varchar(100) DEFAULT NULL COMMENT '분류',
  `subclass` varchar(50) DEFAULT NULL COMMENT '제품분류2',
  `name` text DEFAULT NULL COMMENT '제품명',
  `manufacturer` varchar(500) DEFAULT '' COMMENT '제조사',
  `long_description` text DEFAULT NULL COMMENT '설명',
  `short_description_list` text DEFAULT NULL COMMENT '간이설명',
  `details` text DEFAULT NULL COMMENT '상세정보',
  `features` text DEFAULT NULL COMMENT '특징',
  `sale_price` text DEFAULT NULL COMMENT '판매가격',
  `reqular_price` text DEFAULT NULL COMMENT '표시가격',
  `customer_top_rated` text DEFAULT NULL COMMENT '인기제품여부',
  `customer_review_average` varchar(500) DEFAULT NULL COMMENT '고객평점',
  `type` varchar(50) DEFAULT NULL COMMENT '평가등급',
  `color` varchar(50) DEFAULT NULL COMMENT '색상',
  `depth` varchar(50) DEFAULT NULL COMMENT '두께',
  `height` varchar(50) DEFAULT NULL COMMENT '높이',
  `weight` varchar(50) DEFAULT NULL COMMENT '무게',
  `width` varchar(50) DEFAULT NULL COMMENT '너비',
  `release_date` varchar(50) DEFAULT NULL COMMENT '출시일자',
  `start_date` varchar(50) DEFAULT NULL COMMENT '생산일자',
  `best_selling_rank` varchar(50) DEFAULT NULL COMMENT '판매량순위',
  `model_number` varchar(50) DEFAULT NULL COMMENT '모델명'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPRESSED COMMENT='사업화정보 > 벤치마킹 > 기본정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:46
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pi_venture_invest`
--

DROP TABLE IF EXISTS `pi_venture_invest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pi_venture_invest` (
  `item_id` int(11) unsigned NOT NULL,
  `seq` int(11) unsigned NOT NULL,
  `item_name` varchar(500) DEFAULT NULL,
  `venture_company` varchar(500) NOT NULL,
  `invest_org` text DEFAULT NULL,
  `invest_amount` float DEFAULT NULL,
  `invest_year` int(4) NOT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `insert_id` varchar(20) DEFAULT NULL,
  `modify_dt` datetime DEFAULT NULL,
  `modify_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:20
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `section_tb`
--

DROP TABLE IF EXISTS `section_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_tb` (
  `section` text DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:06
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `column_stats`
--

DROP TABLE IF EXISTS `column_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `column_stats` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `column_name` varchar(64) NOT NULL,
  `min_value` varbinary(255) DEFAULT NULL,
  `max_value` varbinary(255) DEFAULT NULL,
  `nulls_ratio` decimal(12,4) DEFAULT NULL,
  `avg_length` decimal(12,4) DEFAULT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  `hist_size` tinyint(3) unsigned DEFAULT NULL,
  `hist_type` enum('SINGLE_PREC_HB','DOUBLE_PREC_HB') DEFAULT NULL,
  `histogram` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Columns';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:05
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step4_tb`
--

DROP TABLE IF EXISTS `deep_step4_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step4_tb` (
  `key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 key',
  `step1_key` int(11) NOT NULL DEFAULT 0 COMMENT 'step1 key',
  `total_coefficient` double NOT NULL DEFAULT 0 COMMENT '종합점수',
  `import_coefficient` float NOT NULL DEFAULT 0 COMMENT '최종중요도',
  PRIMARY KEY (`key`),
  KEY `FK_deep_step4_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step4_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='구성 품 사양정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:29
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step2_numerical_tb`
--

DROP TABLE IF EXISTS `simple_step2_numerical_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step2_numerical_tb` (
  `project_key` int(11) NOT NULL COMMENT '프로젝트 key',
  `project_code` varchar(150) DEFAULT NULL COMMENT '프로젝트 코드',
  `strong_value` varchar(50) NOT NULL COMMENT '강한상관 값',
  `normal_value` varchar(50) NOT NULL COMMENT '보통상관 값',
  `weak_value` varchar(50) NOT NULL COMMENT '약한상관 값',
  `strong_negative_value` varchar(50) NOT NULL COMMENT '강한상관(-) 값',
  `normal_negative_value` varchar(50) NOT NULL COMMENT '보통상관(-) 값',
  `weak_negative_value` varchar(50) NOT NULL COMMENT '약한상관(-) 값',
  KEY `project_key` (`project_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='간이평가 상관값';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:09
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fparam_v_factor_tb`
--

DROP TABLE IF EXISTS `fparam_v_factor_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fparam_v_factor_tb` (
  `v_factor_index` int(11) NOT NULL AUTO_INCREMENT COMMENT '가치평가등급 Index',
  `feat_param_manage_code` varchar(15) DEFAULT NULL COMMENT '품질특성산정 파라미터 관리코드',
  `v_factor_grade` varchar(6) NOT NULL DEFAULT '0' COMMENT '가치평가등급 점수',
  `v_factor_value` double DEFAULT 0 COMMENT '가치평가등급 변환값',
  PRIMARY KEY (`v_factor_index`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='가치평가등급 파라미터';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:52
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step5_tb`
--

DROP TABLE IF EXISTS `deep_step5_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step5_tb` (
  `step5_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `step1_competitor_key` varchar(50) NOT NULL DEFAULT '0' COMMENT 'step1 경쟁사 key',
  `step1_key` int(11) NOT NULL DEFAULT 0 COMMENT 'step1 key',
  `competitor_key` int(11) NOT NULL DEFAULT 0 COMMENT '경쟁사 key',
  `com_max_standard` double NOT NULL DEFAULT 0 COMMENT '상한값',
  `com_floor_standard` double NOT NULL DEFAULT 0 COMMENT '하한값',
  PRIMARY KEY (`step5_key`),
  KEY `FK_deep_step5_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step5_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='핵심기업 벤치마킹';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:13
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step5_txt_tb`
--

DROP TABLE IF EXISTS `simple_step5_txt_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step5_txt_tb` (
  `project_key` int(11) DEFAULT NULL COMMENT '평가 Key',
  `report_type` varchar(50) DEFAULT NULL COMMENT '개요 or 종합의견',
  `report_page` varchar(50) DEFAULT NULL COMMENT 'x번째 페이지 항목',
  `report_text` text DEFAULT NULL COMMENT 'textarea 입력 항목',
  KEY `FK_deep_step7_txt_tb_deep_list_tb` (`project_key`) USING BTREE,
  CONSTRAINT `simple_step5_txt_tb_ibfk_1` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='심층평가 결과보고서 textarea 입력항목 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:30
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step5_bench_tb`
--

DROP TABLE IF EXISTS `simple_step5_bench_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step5_bench_tb` (
  `project_key` int(11) DEFAULT NULL COMMENT '평가 key',
  `competitor_key` int(11) DEFAULT NULL COMMENT '경쟁사 key',
  `info_title` varchar(50) DEFAULT NULL COMMENT '추가정보 명',
  `info_content` varchar(50) DEFAULT NULL COMMENT '추가정보 내용',
  KEY `FK_deep_step7_bench_tb_deep_list_tb` (`project_key`) USING BTREE,
  CONSTRAINT `simple_step5_bench_tb_ibfk_1` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='벤치마킹 추가정보 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:10:28
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_a_tb_0001_test2`
--

DROP TABLE IF EXISTS `vc_ntis_a_tb_0001_test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_a_tb_0001_test2` (
  `NTIS_A_F_001` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '제출년도',
  `NTIS_A_F_002` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사업명',
  `NTIS_A_F_003` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사업구분',
  `NTIS_A_F_004` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사업_부처명',
  `NTIS_A_F_005` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '계속과제여부구분코드',
  `NTIS_A_F_006` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '계속과제여부',
  `NTIS_A_F_007` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '이전(기관)세부과제번호',
  `NTIS_A_F_008` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '이전과제고유번호',
  `NTIS_A_F_009` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '내역사업명',
  `NTIS_A_F_010` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_A_F_011` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '과제고유번호',
  `NTIS_A_F_012` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '주관과제(기관)세부과제번호',
  `NTIS_A_F_013` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '주관과제고유번호',
  `NTIS_A_F_014` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '과제명'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:53
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_result_tb`
--

DROP TABLE IF EXISTS `simple_result_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_result_tb` (
  `simple_result_key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 Key',
  `project_code` varchar(150) DEFAULT '' COMMENT '프로젝트 코드',
  `total_quality_level` double NOT NULL DEFAULT 0 COMMENT '총개선공헌도(총 품질개선계수)',
  `competitive_price` double NOT NULL DEFAULT 0 COMMENT '가격경쟁력(가격계수)',
  `v_factor` double NOT NULL DEFAULT 0 COMMENT 'V계수(가치계수)',
  `quality_improve` double NOT NULL DEFAULT 0 COMMENT '개선공헌도',
  `price` double NOT NULL DEFAULT 0 COMMENT '가격개선공헌도율',
  `competitiveness` double NOT NULL DEFAULT 0 COMMENT '품질개선도',
  PRIMARY KEY (`simple_result_key`),
  KEY `FK_simple_result_tb_simple_list_tb` (`project_key`),
  CONSTRAINT `FK_simple_result_tb_simple_list_tb` FOREIGN KEY (`project_key`) REFERENCES `simple_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='간이평가 결과 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:54
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_features_tb`
--

DROP TABLE IF EXISTS `product_features_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_features_tb` (
  `no` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `product_no` int(11) DEFAULT NULL COMMENT '벤치마킹Key',
  `features_order` int(11) DEFAULT NULL COMMENT '순번',
  `features_desc` text DEFAULT NULL COMMENT '제품특징',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=276301 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='벤치마킹정보 - 제품특징';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:45
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_body_content_tb`
--

DROP TABLE IF EXISTS `backup_amz_body_content_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_body_content_tb` (
  `url` text DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) DEFAULT NULL COMMENT '상품 고유값',
  `create_date` date DEFAULT NULL COMMENT '생성 날짜',
  `body_content` longtext DEFAULT NULL COMMENT '본문 내용'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='상품 내부 본문의 text 크롤링\r\n(product_description & from the manufacturer)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:22
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_per_name`
--

DROP TABLE IF EXISTS `uitem_per_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_per_name` (
  `record_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `status` varchar(2) NOT NULL COMMENT '상태',
  `per_name` varchar(255) NOT NULL COMMENT '아이템명',
  PRIMARY KEY (`record_no`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='권한명';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:25
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_referer_log`
--

DROP TABLE IF EXISTS `uitem_referer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_referer_log` (
  `referer_url` varchar(500) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `insert_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:40
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_step2_value_tb`
--

DROP TABLE IF EXISTS `simple_step2_value_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_step2_value_tb` (
  `key` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `project_key` int(11) NOT NULL DEFAULT 0 COMMENT '프로젝트 키',
  `step2_key` int(11) NOT NULL DEFAULT 0 COMMENT 'step3키',
  `step1_code` varchar(150) NOT NULL DEFAULT '0' COMMENT 'step1 코드',
  `step1_key` int(11) NOT NULL DEFAULT 0 COMMENT ' x축 step1키',
  `target_key` int(11) NOT NULL DEFAULT 0 COMMENT 'y축 step1키',
  `target_value` int(11) NOT NULL DEFAULT 0 COMMENT 'x,y value',
  `score_type` varchar(50) DEFAULT '0' COMMENT '상관계수점수유형(0:범위, 1:지정)',
  PRIMARY KEY (`key`),
  KEY `FK_simple_step2_value_tb_simple_list_tb` (`project_key`),
  CONSTRAINT `FK_simple_step2_value_tb_simple_list_tb` FOREIGN KEY (`project_key`) REFERENCES `simple_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='품질특성 상관성 value 값';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:11:14
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fparam_importance_tb`
--

DROP TABLE IF EXISTS `fparam_importance_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fparam_importance_tb` (
  `importance_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '중요도 점수 Key',
  `feat_param_manage_code` varchar(15) DEFAULT NULL COMMENT '품질특성산정 파라미터 관리코드',
  `importance_score` varchar(50) NOT NULL DEFAULT '0' COMMENT '중요도 점수',
  `importance_value` double NOT NULL DEFAULT 0 COMMENT '중요도 점수 변환값',
  PRIMARY KEY (`importance_key`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='중요도 점수 테이블(변환용)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:13:56
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_category`
--

DROP TABLE IF EXISTS `amz_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_category` (
  `level1` varchar(50) DEFAULT NULL COMMENT '대분류',
  `level2` varchar(50) DEFAULT NULL COMMENT '중분류',
  `level3` varchar(50) DEFAULT NULL COMMENT '소분류',
  `level4` varchar(50) DEFAULT NULL COMMENT '세분류',
  `url` varchar(220) DEFAULT NULL COMMENT '카테고리 고유값'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:14
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_member`
--

DROP TABLE IF EXISTS `uitem_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_member` (
  `id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '아이디',
  `pw` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '비밀번호',
  `name` varchar(100) DEFAULT NULL COMMENT '이름',
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '이메일',
  `affiliation` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '소속기관',
  `occupation` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '직종',
  `industry` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '관심분야',
  `age` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '나이',
  `insert_dt` datetime DEFAULT NULL COMMENT '가입일',
  `status` varchar(2) DEFAULT 'U' COMMENT '상태(회원 : U, 관리자 : A)',
  `last_login_dt` datetime DEFAULT NULL,
  `login_cnt` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr COLLATE=euckr_korean_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:02
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_a_tb_0001_test1`
--

DROP TABLE IF EXISTS `vc_ntis_a_tb_0001_test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_a_tb_0001_test1` (
  `NTIS_A_F_001` char(4) DEFAULT NULL COMMENT '제출년도',
  `NTIS_A_F_002` varchar(1000) DEFAULT NULL COMMENT '사업명',
  `NTIS_A_F_003` varchar(100) DEFAULT NULL COMMENT '사업구분',
  `NTIS_A_F_004` varchar(100) DEFAULT NULL COMMENT '사업_부처명',
  `NTIS_A_F_005` char(1) DEFAULT NULL COMMENT '계속과제여부구분코드',
  `NTIS_A_F_006` char(6) DEFAULT NULL COMMENT '계속과제여부',
  `NTIS_A_F_007` varchar(1000) DEFAULT NULL COMMENT '이전(기관)세부과제번호',
  `NTIS_A_F_008` varchar(1000) DEFAULT NULL COMMENT '이전과제고유번호',
  `NTIS_A_F_009` varchar(1000) DEFAULT NULL COMMENT '내역사업명',
  `NTIS_A_F_010` varchar(1000) DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_A_F_011` char(10) NOT NULL COMMENT '과제고유번호',
  `NTIS_A_F_012` varchar(500) DEFAULT NULL COMMENT '주관과제(기관)세부과제번호',
  `NTIS_A_F_013` varchar(100) DEFAULT NULL COMMENT '주관과제고유번호',
  `NTIS_A_F_014` varchar(1000) DEFAULT NULL COMMENT '과제명',
  `NTIS_A_F_015` char(8) DEFAULT NULL COMMENT '총연구기간-시작년월일',
  `NTIS_A_F_016` char(8) DEFAULT NULL COMMENT '총연구기간-종료년월일',
  `NTIS_A_F_017` varchar(100) DEFAULT NULL COMMENT '주관협동구분',
  `NTIS_A_F_018` char(2) DEFAULT NULL COMMENT '연구수행주체코드',
  `NTIS_A_F_019` varchar(100) DEFAULT NULL COMMENT '연구수행주체',
  `NTIS_A_F_020` char(2) DEFAULT NULL COMMENT '지역코드',
  `NTIS_A_F_021` varchar(100) DEFAULT NULL COMMENT '지역',
  `NTIS_A_F_022` varchar(100) DEFAULT NULL COMMENT '기초자치단체코드',
  `NTIS_A_F_023` varchar(100) DEFAULT NULL COMMENT '기초자치단체',
  `NTIS_A_F_024` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-대',
  `NTIS_A_F_025` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-대',
  `NTIS_A_F_026` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-중',
  `NTIS_A_F_027` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-중',
  `NTIS_A_F_028` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드1-소',
  `NTIS_A_F_029` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류1-소',
  `NTIS_A_F_030` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치1',
  `NTIS_A_F_031` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드2-대',
  `NTIS_A_F_032` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류2-대',
  `NTIS_A_F_033` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코2-중',
  `NTIS_A_F_034` varchar(100) DEFAULT NULL COMMENT '과학기드술표준분류2-중',
  `NTIS_A_F_035` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드2-소',
  `NTIS_A_F_036` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류2-소',
  `NTIS_A_F_037` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치2',
  `NTIS_A_F_038` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-대',
  `NTIS_A_F_039` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-대',
  `NTIS_A_F_040` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-중',
  `NTIS_A_F_041` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-중',
  `NTIS_A_F_042` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류코드3-소',
  `NTIS_A_F_043` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류3-소',
  `NTIS_A_F_044` varchar(100) DEFAULT NULL COMMENT '과학기술표준분류가중치3',
  `NTIS_A_F_045` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-대',
  `NTIS_A_F_046` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-대',
  `NTIS_A_F_047` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-중',
  `NTIS_A_F_048` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-중',
  `NTIS_A_F_049` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류코드-소',
  `NTIS_A_F_050` varchar(100) DEFAULT NULL COMMENT '중점과학기술분류-소',
  `NTIS_A_F_051` varchar(100) DEFAULT NULL COMMENT '적용분야코드1',
  `NTIS_A_F_052` varchar(100) DEFAULT NULL COMMENT '적용분야1',
  `NTIS_A_F_053` varchar(100) DEFAULT NULL COMMENT '적용분야가중치1',
  `NTIS_A_F_054` varchar(100) DEFAULT NULL COMMENT '적용분야코드2',
  `NTIS_A_F_055` varchar(100) DEFAULT NULL COMMENT '적용분야2',
  `NTIS_A_F_056` varchar(100) DEFAULT NULL COMMENT '적용분야가중치2',
  `NTIS_A_F_057` varchar(100) DEFAULT NULL COMMENT '적용분야코드3',
  `NTIS_A_F_058` varchar(100) DEFAULT NULL COMMENT '적용분야3',
  `NTIS_A_F_059` varchar(100) DEFAULT NULL COMMENT '적용분야가중치3',
  `NTIS_A_F_060` varchar(100) DEFAULT NULL COMMENT '녹색기술분류코드',
  `NTIS_A_F_061` varchar(100) DEFAULT NULL COMMENT '녹색기술분류',
  `NTIS_A_F_062` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-대',
  `NTIS_A_F_063` varchar(100) DEFAULT NULL COMMENT '6T관련기술-대',
  `NTIS_A_F_064` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-중',
  `NTIS_A_F_065` varchar(100) DEFAULT NULL COMMENT '6T관련기술-중',
  `NTIS_A_F_066` varchar(100) DEFAULT NULL COMMENT '6T관련기술코드-소',
  `NTIS_A_F_067` varchar(100) DEFAULT NULL COMMENT '6T관련기술-소',
  `NTIS_A_F_068` varchar(100) DEFAULT NULL COMMENT '경제사회목적코드',
  `NTIS_A_F_069` varchar(100) DEFAULT NULL COMMENT '경제사회목적',
  `NTIS_A_F_070` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-대',
  `NTIS_A_F_071` varchar(100) DEFAULT NULL COMMENT '국가전략기술-대',
  `NTIS_A_F_072` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-중',
  `NTIS_A_F_073` varchar(100) DEFAULT NULL COMMENT '국가전략기술-중',
  `NTIS_A_F_074` varchar(100) DEFAULT NULL COMMENT '국가전략기술코드-소',
  `NTIS_A_F_075` varchar(100) DEFAULT NULL COMMENT '국가전략기술-소',
  `NTIS_A_F_076` text DEFAULT NULL COMMENT '요약문_연구목표',
  `NTIS_A_F_077` text DEFAULT NULL COMMENT '요약문_연구목표_1',
  `NTIS_A_F_078` text DEFAULT NULL COMMENT '요약문_연구목표_2',
  `NTIS_A_F_079` text DEFAULT NULL COMMENT '요약문_연구목표_3',
  `NTIS_A_F_080` text DEFAULT NULL COMMENT '요약문_연구내용',
  `NTIS_A_F_081` text DEFAULT NULL COMMENT '요약문_연구내용_1',
  `NTIS_A_F_082` text DEFAULT NULL COMMENT '요약문_연구내용_2',
  `NTIS_A_F_083` text DEFAULT NULL COMMENT '요약문_연구내용_3',
  `NTIS_A_F_084` text DEFAULT NULL COMMENT '요약문_기대효과',
  `NTIS_A_F_085` text DEFAULT NULL COMMENT '요약문_기대효과_1',
  `NTIS_A_F_086` text DEFAULT NULL COMMENT '요약문_기대효과_2',
  `NTIS_A_F_087` text DEFAULT NULL COMMENT '요약문_기대효과_3',
  `NTIS_A_F_088` text DEFAULT NULL COMMENT '요약문_한글키워드',
  `NTIS_A_F_089` text DEFAULT NULL COMMENT '요약문_영문키워드',
  `NTIS_A_F_090` varchar(100) DEFAULT NULL COMMENT '당해연구기간-시작년월일',
  `NTIS_A_F_091` varchar(100) DEFAULT NULL COMMENT '당해연구기간-종료년월일',
  `NTIS_A_F_092` varchar(100) DEFAULT NULL COMMENT '대표전문기관',
  `NTIS_A_F_093` varchar(100) DEFAULT NULL COMMENT '과제관리기관',
  `NTIS_A_F_094` varchar(500) DEFAULT NULL COMMENT '과제수행기관명',
  `NTIS_A_F_095` varchar(100) DEFAULT NULL COMMENT '사업자등록번호',
  `NTIS_A_F_096` varchar(100) DEFAULT NULL COMMENT '사업자등록번호_FN',
  `NTIS_A_F_097` char(2) DEFAULT NULL COMMENT '연구개발단계코드',
  `NTIS_A_F_098` varchar(100) DEFAULT NULL COMMENT '연구개발단계',
  `NTIS_A_F_099` varchar(100) DEFAULT NULL COMMENT '세부과제지원코드',
  `NTIS_A_F_100` varchar(100) DEFAULT NULL COMMENT '세부과제지원유형',
  `NTIS_A_F_101` float DEFAULT NULL COMMENT '정부연구비(원)',
  `NTIS_A_F_102` float DEFAULT NULL COMMENT '인건비-현금(원)',
  `NTIS_A_F_103` float DEFAULT NULL COMMENT '인건비-현물(원)',
  `NTIS_A_F_104` float DEFAULT NULL COMMENT '직접비-현금(원)',
  `NTIS_A_F_105` float DEFAULT NULL COMMENT '직접비-현물(원)',
  `NTIS_A_F_106` float DEFAULT NULL COMMENT '간접비(원)',
  `NTIS_A_F_107` float DEFAULT NULL COMMENT '위탁연구비(원)',
  `NTIS_A_F_108` float DEFAULT NULL COMMENT '물건비(원)',
  `NTIS_A_F_109` float DEFAULT NULL COMMENT '매칭펀드-지방정부-현금(원)',
  `NTIS_A_F_110` float DEFAULT NULL COMMENT '매칭펀드-지방정부-현물(원)',
  `NTIS_A_F_111` float DEFAULT NULL COMMENT '매칭펀드-대학-현금(원)',
  `NTIS_A_F_112` float DEFAULT NULL COMMENT '매칭펀드-대학-현물(원)',
  `NTIS_A_F_113` float DEFAULT NULL COMMENT '매칭펀드-대기업-현금(원)',
  `NTIS_A_F_114` float DEFAULT NULL COMMENT '매칭펀드-대기업-현물(원)',
  `NTIS_A_F_115` float DEFAULT NULL COMMENT '매칭펀드-중견기업-현금(원)',
  `NTIS_A_F_116` float DEFAULT NULL COMMENT '매칭펀드-중견기업-현물(원)',
  `NTIS_A_F_117` float DEFAULT NULL COMMENT '매칭펀드-중소기업-현물(원)',
  `NTIS_A_F_118` float DEFAULT NULL COMMENT '매칭펀드-중소기업-현금(원)',
  `NTIS_A_F_119` float DEFAULT NULL COMMENT '매칭펀드-기업-현금(원)',
  `NTIS_A_F_120` float DEFAULT NULL COMMENT '매칭펀드-기업-현물(원)',
  `NTIS_A_F_121` float DEFAULT NULL COMMENT '매칭펀드-기타-현금(원)',
  `NTIS_A_F_122` float DEFAULT NULL COMMENT '매칭펀드-기타-현물(원)',
  `NTIS_A_F_123` float DEFAULT NULL COMMENT '민간연구비_소계',
  `NTIS_A_F_124` float DEFAULT NULL COMMENT '총연구비_현금(원)',
  `NTIS_A_F_125` float DEFAULT NULL COMMENT '총연구비_현물(원)',
  `NTIS_A_F_126` float DEFAULT NULL COMMENT '총연구비_합계(원)',
  `NTIS_A_F_127` varchar(100) DEFAULT NULL COMMENT '공동연구여부_기업',
  `NTIS_A_F_128` varchar(100) DEFAULT NULL COMMENT '공동연구여부_대학',
  `NTIS_A_F_129` varchar(100) DEFAULT NULL COMMENT '공동연구여부_출연연',
  `NTIS_A_F_130` varchar(100) DEFAULT NULL COMMENT '공동연구여부_외국',
  `NTIS_A_F_131` varchar(100) DEFAULT NULL COMMENT '공동연구여부_기타',
  `NTIS_A_F_132` varchar(100) DEFAULT NULL COMMENT '참여연구원_성별_남',
  `NTIS_A_F_133` varchar(100) DEFAULT NULL COMMENT '참여연구원_성별_여',
  `NTIS_A_F_134` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_박사',
  `NTIS_A_F_135` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_석사',
  `NTIS_A_F_136` varchar(100) DEFAULT NULL COMMENT '참여연구원_학위_학사이하',
  `NTIS_A_F_137` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_이학',
  `NTIS_A_F_138` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_공학',
  `NTIS_A_F_139` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_농학',
  `NTIS_A_F_140` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_의학',
  `NTIS_A_F_141` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_인문',
  `NTIS_A_F_142` varchar(100) DEFAULT NULL COMMENT '참여연구원_전공_기타',
  `NTIS_A_F_143` varchar(200) DEFAULT NULL COMMENT '연구책임자소속기관명',
  `NTIS_A_F_144` varchar(100) DEFAULT NULL COMMENT '연구책임자사업자번호',
  `NTIS_A_F_145` varchar(100) DEFAULT NULL COMMENT '연구책임자성별',
  `NTIS_A_F_146` varchar(100) DEFAULT NULL COMMENT '연구책임자전공',
  `NTIS_A_F_147` varchar(100) DEFAULT NULL COMMENT '연구책임자학위',
  `NTIS_A_F_002_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`NTIS_A_F_011`),
  KEY `idx_NTIS_A_F_011` (`NTIS_A_F_011`),
  KEY `idx_ORDER_BY_NTIS_A_F_011` (`NTIS_A_F_011`),
  KEY `vc_ntis_a_tb_0001_NTIS_A_F_002_IDX` (`NTIS_A_F_002`(333)) USING BTREE,
  KEY `vc_ntis_a_tb_0001_test_NTIS_A_F_002_ID_IDX` (`NTIS_A_F_002_ID`) USING BTREE,
  FULLTEXT KEY `NTIS_A_F_002` (`NTIS_A_F_002`),
  FULLTEXT KEY `vc_ntis_a_tb_0001_test_NTIS_A_F_025_IDX` (`NTIS_A_F_025`),
  FULLTEXT KEY `vc_ntis_a_tb_0001_test_NTIS_A_F_014_IDX` (`NTIS_A_F_014`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='과제통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:17
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:11
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `itemtrendterm`
--

DROP TABLE IF EXISTS `itemtrendterm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtrendterm` (
  `id` int(11) unsigned NOT NULL COMMENT '외래키',
  `period_id` char(6) NOT NULL COMMENT '년월 정보(YYYYMM 형태 - 201407)',
  `frequency` int(11) unsigned DEFAULT NULL COMMENT '빈도수',
  PRIMARY KEY (`id`,`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT COMMENT='약 1,000개 아이템에 대한 기간 지정 트렌드 정보를 저장한 테이블(월별 데이터)					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:09
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_product_detail_tb`
--

DROP TABLE IF EXISTS `amz_product_detail_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_product_detail_tb` (
  `url` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT 0 COMMENT '품질특성 인덱스',
  `create_date` varchar(10) DEFAULT NULL COMMENT '생성날짜',
  `detail_table_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상세정보명',
  `detail_table_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상세정보 서술',
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='상품정보를 서술하는 table 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `simple_unit_tb`
--

DROP TABLE IF EXISTS `simple_unit_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_unit_tb` (
  `unit_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '단위 key',
  `unit_type` varchar(50) NOT NULL DEFAULT '0' COMMENT '단위구분(ex:길이,무게)',
  `unit_content` text NOT NULL COMMENT '단위 설명',
  PRIMARY KEY (`unit_key`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='측정 단위 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:41
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_h_tb_0008_202310`
--

DROP TABLE IF EXISTS `vc_ntis_h_tb_0008_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_h_tb_0008_202310` (
  `NTIS_H_F_001` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_H_F_002` varchar(100) DEFAULT NULL COMMENT '성과발생부처',
  `NTIS_H_F_003` varchar(100) DEFAULT NULL COMMENT '성과사업ID',
  `NTIS_H_F_004` varchar(100) DEFAULT NULL COMMENT '성과사업명',
  `NTIS_H_F_005` longtext DEFAULT NULL COMMENT '세부성과관리번호',
  `NTIS_H_F_006` varchar(100) DEFAULT NULL COMMENT 'NTIS_성과ID',
  `NTIS_H_F_007` varchar(100) DEFAULT NULL COMMENT 'KISTEP_성과ID',
  `NTIS_H_F_008` varchar(100) DEFAULT NULL COMMENT '검증결과',
  `NTIS_H_F_009` varchar(100) DEFAULT NULL COMMENT '검증내역',
  `NTIS_H_F_010` varchar(100) DEFAULT NULL COMMENT 'SCI여부(입력시)',
  `NTIS_H_F_011` longtext DEFAULT NULL COMMENT '학술지명',
  `NTIS_H_F_012` longtext DEFAULT NULL COMMENT '논문명',
  `NTIS_H_F_013` varchar(100) DEFAULT NULL COMMENT 'ISBN',
  `NTIS_H_F_014` varchar(100) DEFAULT NULL COMMENT 'P-ISSN',
  `NTIS_H_F_015` varchar(100) DEFAULT NULL COMMENT 'E-ISSN',
  `NTIS_H_F_016` longtext DEFAULT NULL COMMENT '주저자명',
  `NTIS_H_F_017` varchar(100) DEFAULT NULL COMMENT '권(volume)',
  `NTIS_H_F_018` varchar(100) DEFAULT NULL COMMENT '호(issue)',
  `NTIS_H_F_019` varchar(100) DEFAULT NULL COMMENT '시작페이지',
  `NTIS_H_F_020` varchar(100) DEFAULT NULL COMMENT '논문번호',
  `NTIS_H_F_021` longtext DEFAULT NULL COMMENT 'DOI/url',
  `NTIS_H_F_022` varchar(100) DEFAULT NULL COMMENT '기여율(확정)',
  `NTIS_H_F_023` varchar(100) DEFAULT NULL COMMENT '과제수행년도',
  `NTIS_H_F_024` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_H_F_025` longtext DEFAULT NULL COMMENT '(기관)세부과제번호',
  `NTIS_H_F_026` longtext DEFAULT NULL COMMENT '과제명-국문'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='논문통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:02
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_model4_tb`
--

DROP TABLE IF EXISTS `backup_amz_model4_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_model4_tb` (
  `url` text DEFAULT NULL COMMENT '카테고리 고유값',
  `cluster` int(11) DEFAULT NULL COMMENT '군집 인덱스',
  `title1` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating1` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title2` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating2` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title3` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating3` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title4` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating4` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title5` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating5` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title6` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating6` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title7` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating7` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `price_range` varchar(50) DEFAULT NULL COMMENT '군집별 가격 범위',
  `cluster_name` varchar(50) DEFAULT NULL COMMENT '군집별 이름',
  `title_list` text DEFAULT NULL COMMENT '품질특성명 목록',
  `create_date` varchar(50) DEFAULT NULL COMMENT '모델생성날짜',
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:15
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backup_amz_model4_data_tb`
--

DROP TABLE IF EXISTS `backup_amz_model4_data_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_amz_model4_data_tb` (
  `url` text DEFAULT NULL COMMENT '카테고리 고유값',
  `product_key` varchar(50) DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) NOT NULL DEFAULT 0 COMMENT '상품 인덱스(상품 순위)',
  `level1` varchar(50) DEFAULT NULL COMMENT '대분류',
  `level2` varchar(50) DEFAULT NULL COMMENT '중분류',
  `level3` varchar(50) DEFAULT NULL COMMENT '소분류',
  `level4` varchar(50) DEFAULT NULL COMMENT '세분류',
  `product_name` text DEFAULT NULL COMMENT '상품 이름',
  `product_price` float DEFAULT NULL COMMENT '상품 가격',
  `cluster` int(11) DEFAULT NULL COMMENT '군집 인덱스',
  `price_range` varchar(50) DEFAULT NULL COMMENT '가격 범위',
  `cluster_name` varchar(50) DEFAULT NULL COMMENT '군집별 이름',
  `title1` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating1` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title2` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating2` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title3` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating3` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title4` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating4` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title5` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating5` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title6` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating6` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title7` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating7` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title_list` text DEFAULT NULL COMMENT '품질특성명 목록',
  `create_date` varchar(50) DEFAULT NULL COMMENT '모델생성날짜',
  KEY `url` (`url`(250)),
  KEY `cluster` (`cluster`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:11
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_j_tb_0010_202310`
--

DROP TABLE IF EXISTS `vc_ntis_j_tb_0010_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_j_tb_0010_202310` (
  `NTIS_J_F_001` varchar(100) DEFAULT NULL COMMENT '기준년도',
  `NTIS_J_F_002` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_J_F_003` longtext DEFAULT NULL COMMENT '과제명',
  `NTIS_J_F_004` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_J_F_005` varchar(100) DEFAULT NULL COMMENT '보고서등록번호',
  `NTIS_J_F_006` longtext DEFAULT NULL COMMENT '보고서제목',
  `NTIS_J_F_007` longtext DEFAULT NULL COMMENT '보고서제목_1',
  `NTIS_J_F_008` longtext DEFAULT NULL COMMENT '보고서제목_2',
  `NTIS_J_F_009` longtext DEFAULT NULL COMMENT '보고서제목_3',
  `NTIS_J_F_010` varchar(100) DEFAULT NULL COMMENT '발행기관명',
  `NTIS_J_F_011` varchar(100) DEFAULT NULL COMMENT '발행국가',
  `NTIS_J_F_012` varchar(100) DEFAULT NULL COMMENT '발행년월',
  `NTIS_J_F_013` varchar(100) DEFAULT NULL COMMENT '사용언어',
  `NTIS_J_F_014` longtext DEFAULT NULL COMMENT '초록_한글',
  `NTIS_J_F_015` longtext DEFAULT NULL COMMENT '초록_한글_1',
  `NTIS_J_F_016` longtext DEFAULT NULL COMMENT '초록_한글_2',
  `NTIS_J_F_017` longtext DEFAULT NULL COMMENT '초록_한글_3',
  `NTIS_J_F_018` longtext DEFAULT NULL COMMENT '초록_영문',
  `NTIS_J_F_019` longtext DEFAULT NULL COMMENT '초록_영문_1',
  `NTIS_J_F_020` longtext DEFAULT NULL COMMENT '초록_영문_2',
  `NTIS_J_F_021` longtext DEFAULT NULL COMMENT '초록_영문_3',
  `NTIS_J_F_022` longtext DEFAULT NULL COMMENT '한글키워드',
  `NTIS_J_F_023` longtext DEFAULT NULL COMMENT '영문키워드',
  `NTIS_J_F_024` varchar(100) DEFAULT NULL COMMENT '과제관리(전문)기관명',
  KEY `NTIS_J_F_002` (`NTIS_J_F_002`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='연구보고서통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:59
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_details_tb`
--

DROP TABLE IF EXISTS `product_details_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details_tb` (
  `no` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `product_no` int(11) DEFAULT NULL COMMENT '벤치마킹Key',
  `details_order` int(11) DEFAULT NULL COMMENT '순번',
  `details_name` text DEFAULT NULL COMMENT '분류명',
  `details_value` text DEFAULT NULL COMMENT '설명',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=1066387 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='사업화 정보  >벤치마킹 > 상세정보';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:20
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category6tyear`
--

DROP TABLE IF EXISTS `category6tyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category6tyear` (
  `category_name` varchar(64) DEFAULT NULL COMMENT '카테고리 명',
  `count` int(10) unsigned DEFAULT NULL COMMENT '빈도수',
  `count_rate` float DEFAULT NULL COMMENT '분포 비율',
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='약 1,000개 아이템의 6T 분류별 아이템 분포 정보를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:02:14
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:03
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wiki_seealso_tb_filtering_202310`
--

DROP TABLE IF EXISTS `wiki_seealso_tb_filtering_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_seealso_tb_filtering_202310` (
  `idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `source_title` varchar(1000) DEFAULT NULL COMMENT 'input에 해당하는 이름',
  `target_title` text DEFAULT NULL COMMENT 'seealso 제목',
  `step` int(11) DEFAULT NULL COMMENT '알고리즘 반복 횟수',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=525349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='wikipedia페이지 seealso 크롤링 (필터링 후)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:00
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step7_tb`
--

DROP TABLE IF EXISTS `deep_step7_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step7_tb` (
  `project_key` int(11) DEFAULT NULL COMMENT '프로젝트 key',
  `title_number` varchar(50) DEFAULT '0000-000-0000' COMMENT '표지 - 일련번호',
  `report_receiver` varchar(50) DEFAULT '' COMMENT '제출문 - 귀하',
  `report_agency` varchar(50) DEFAULT '' COMMENT '평가기관',
  `report_manager` varchar(50) DEFAULT '' COMMENT '평가총괄',
  `report_appraisal` varchar(50) DEFAULT '' COMMENT '평가자',
  `report_date` varchar(50) DEFAULT '' COMMENT '날짜',
  KEY `FK_deep_step7_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step7_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='결과보고서 항목 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:27
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pps_class_old`
--

DROP TABLE IF EXISTS `pps_class_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pps_class_old` (
  `DB_regTime` datetime NOT NULL DEFAULT current_timestamp(),
  `DB_modTime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `thngClsfcNo` bigint(20) NOT NULL DEFAULT 0,
  `thngClsfcNoNm` varchar(200) DEFAULT '',
  `thngClsfcNoEngNm` varchar(200) DEFAULT '',
  `prdctClsfcRltnDscrpt` varchar(4000) DEFAULT '',
  `prdctClsfcNoAplYn` tinyint(1) DEFAULT 0,
  `prdctClsfcNoUseYn` tinyint(1) DEFAULT 0,
  `prdctClsfcNoDltYn` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`thngClsfcNo`),
  KEY `idx_thngClsfcNo` (`thngClsfcNo`),
  KEY `idx_thngClsfcNoNm` (`thngClsfcNoNm`),
  KEY `idx_thngClsfcNoEngNm` (`thngClsfcNoEngNm`),
  KEY `idx_prdctClsfcRltnDscrpt` (`prdctClsfcRltnDscrpt`(768))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:52
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wiki_seealso_tb_202310`
--

DROP TABLE IF EXISTS `wiki_seealso_tb_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wiki_seealso_tb_202310` (
  `idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `source_title` text DEFAULT NULL COMMENT 'input에 해당하는 이름',
  `target_title` text DEFAULT NULL COMMENT 'seealso 제목',
  `step` int(11) DEFAULT NULL COMMENT '알고리즘 반복 횟수',
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=589816 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='wikipedia페이지 seealso 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:56
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_nice_c_tb_0003_202310`
--

DROP TABLE IF EXISTS `vc_nice_c_tb_0003_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_nice_c_tb_0003_202310` (
  `NICE_C_F_001` varchar(6) NOT NULL COMMENT '업체코드',
  `NICE_C_F_002` varchar(100) DEFAULT NULL COMMENT '일련번호',
  `NICE_C_F_003` varchar(6) DEFAULT NULL COMMENT '10차업종코드',
  `NICE_C_F_004` varchar(100) DEFAULT NULL COMMENT '10차업종코드명',
  `NICE_C_F_005` text DEFAULT NULL COMMENT '사업목적',
  `NICE_C_F_006` text DEFAULT NULL COMMENT '사업목적_1',
  `NICE_C_F_007` text DEFAULT NULL COMMENT '사업목적_2',
  `NICE_C_F_008` text DEFAULT NULL COMMENT '사업목적_3',
  `NICE_C_F_009` varchar(8) DEFAULT NULL COMMENT '기준일자',
  KEY `vc_nice_c_tb_0003_NICE_C_F_001_IDX` (`NICE_C_F_001`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='11_3_사업목적_19';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:51
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:23
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pre_business_tb`
--

DROP TABLE IF EXISTS `pre_business_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_business_tb` (
  `pre_business_key` int(11) NOT NULL AUTO_INCREMENT COMMENT '사업Key',
  `user_key` int(11) NOT NULL DEFAULT 0 COMMENT '유저키',
  `pre_business_name` varchar(300) DEFAULT '' COMMENT '지원사업명',
  `pre_business_year` varchar(50) DEFAULT '' COMMENT '지원사업 연도(2021)',
  `pre_business_seq` varchar(50) DEFAULT '' COMMENT '지원사업 (0001)',
  `pre_business_code` varchar(50) DEFAULT '' COMMENT '지원사업 (20210001)',
  `pre_business_url` varchar(500) DEFAULT '' COMMENT '지원사업 URL',
  `pre_business_file` varchar(500) DEFAULT '' COMMENT '제품 분류 코드 파일명',
  `pre_business_path` text DEFAULT '' COMMENT '제품 분류 코드 파일 패쓰',
  `pre_business_pass_max` varchar(50) DEFAULT '' COMMENT '평가기준 - 통과 (최대)',
  `pre_business_pass_min` varchar(50) DEFAULT '' COMMENT '평가기준 - 통과 (최소)',
  `pre_business_hold_max` varchar(50) DEFAULT '' COMMENT '평가기준 - 보류 (최대)',
  `pre_business_hold_min` varchar(50) DEFAULT '' COMMENT '평가기준 - 보류 (최소)',
  `pre_business_drop_max` varchar(50) DEFAULT '' COMMENT '평가기준 - 대기 (최대)',
  `pre_business_drop_min` varchar(50) DEFAULT '' COMMENT '평가기준 - 대기 (최소)',
  `pre_business_start` varchar(50) DEFAULT '' COMMENT '지원사업 평가 시작일',
  `pre_business_end` varchar(50) DEFAULT '' COMMENT '지원사업 평가 종료일',
  `pre_business_mgr_agency_name` varchar(50) DEFAULT '' COMMENT '기관명',
  `pre_business_mgr_agency_team` varchar(50) DEFAULT '' COMMENT '기관부서',
  `pre_business_mgr_name` varchar(50) DEFAULT '' COMMENT '담당자 성명',
  `pre_business_mgr_phone` varchar(50) DEFAULT '' COMMENT '담당자 연락처',
  `pre_business_mgr_email` varchar(50) DEFAULT '' COMMENT '담당자 이메일',
  `reg_date` varchar(50) DEFAULT '' COMMENT '등록일',
  PRIMARY KEY (`pre_business_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='사전평가 - 관리자가 생성한 지원사업 (~2021-12-13)';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:15:14
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `xtools_2021_tb_202310`
--

DROP TABLE IF EXISTS `xtools_2021_tb_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xtools_2021_tb_202310` (
  `idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `product_key` text DEFAULT NULL COMMENT '고유번호',
  `product_name` text DEFAULT NULL COMMENT 'input에 해당하는 이름',
  `ID` text DEFAULT NULL COMMENT 'ID',
  `wikidata_ID` text DEFAULT NULL COMMENT 'wikidata_ID',
  `page_size` text DEFAULT NULL COMMENT 'page_size',
  `total_edits` text DEFAULT NULL COMMENT 'total_edits',
  `editors` text DEFAULT NULL COMMENT 'editors',
  `pageviews` text DEFAULT NULL COMMENT 'pageviews',
  `minor_edits` text DEFAULT NULL COMMENT 'minor_edits',
  `IP_edits` text DEFAULT NULL COMMENT 'IP_edits',
  `bot_edits` text DEFAULT NULL COMMENT 'bot_edits',
  `automated_edits` text DEFAULT NULL COMMENT 'automated_edits',
  `reverted_edits` text DEFAULT NULL COMMENT 'reverted_edits',
  `first_edit` text DEFAULT NULL COMMENT 'first_edit',
  `latest_edit` text DEFAULT NULL COMMENT 'latest_edit',
  `max_text_added` text DEFAULT NULL COMMENT 'max_text_added',
  `max_test_deleted` text DEFAULT NULL COMMENT 'max_test_deleted',
  `average_time_between_edits_per_day` text DEFAULT NULL COMMENT 'average_time_between_edits_per_day',
  `average_edits_per_user` text DEFAULT NULL COMMENT 'average_edits_per_user',
  `average_edits_per_day` text DEFAULT NULL COMMENT 'average_edits_per_day',
  `average_edits_per_month` text DEFAULT NULL COMMENT 'average_edits_per_month',
  `average_edits_per_year` text DEFAULT NULL COMMENT 'average_edits_per_year',
  `edits_made_by_the_top_10percent_of_editors` text DEFAULT NULL COMMENT 'edits_made_by_the_top_10percent_of_editors',
  `links_to_this_page` text DEFAULT NULL COMMENT 'links_to_this_page',
  `redirects` text DEFAULT NULL COMMENT 'redirects',
  `characters` text DEFAULT NULL COMMENT 'characters',
  `words` text DEFAULT NULL COMMENT 'words',
  `sections` text DEFAULT NULL COMMENT 'sections',
  `product_references` text DEFAULT NULL COMMENT 'product_references',
  `unique_references` text DEFAULT NULL COMMENT 'unique_references',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=183522 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='xtools페이지 ( 2021년부터 현재까지 )정보 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:18
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uitem_login_log`
--

DROP TABLE IF EXISTS `uitem_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uitem_login_log` (
  `user_id` varchar(200) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `insert_dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`,`insert_dt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:08:20
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amz_model4_tb`
--

DROP TABLE IF EXISTS `amz_model4_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amz_model4_tb` (
  `url` varchar(220) DEFAULT NULL COMMENT '카테고리 고유값',
  `cluster` int(11) DEFAULT NULL COMMENT '군집 인덱스',
  `title1` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating1` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title2` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating2` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title3` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating3` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title4` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating4` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title5` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating5` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title6` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating6` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `title7` varchar(50) DEFAULT NULL COMMENT '품질특성명',
  `rating7` varchar(50) DEFAULT NULL COMMENT '품질특성 점수',
  `price_range` varchar(50) DEFAULT NULL COMMENT '군집별 가격 범위',
  `cluster_name` varchar(50) DEFAULT NULL COMMENT '군집별 이름',
  `title_list` text DEFAULT NULL COMMENT '품질특성명 목록',
  `create_date` varchar(50) DEFAULT NULL COMMENT '모델생성날짜',
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:04:44
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dnw_review_keyword_tb`
--

DROP TABLE IF EXISTS `dnw_review_keyword_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dnw_review_keyword_tb` (
  `pcategory` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '카테고리 고유값',
  `pcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '상품 고유값',
  `product_idx` int(11) DEFAULT NULL COMMENT '리뷰키워드 인덱스',
  `create_date` date DEFAULT NULL COMMENT '생성 날짜',
  `keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '리뷰키워드'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='리뷰 목록에서 공통적으로 등장하는 언어를 다룬 리뷰키워드 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:17:21
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deep_step7_txt_tb`
--

DROP TABLE IF EXISTS `deep_step7_txt_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deep_step7_txt_tb` (
  `project_key` int(11) DEFAULT NULL COMMENT '평가 Key',
  `report_type` varchar(50) DEFAULT NULL COMMENT '개요 or 종합의견',
  `report_page` varchar(50) DEFAULT NULL COMMENT 'x번째 페이지 항목',
  `report_text` text DEFAULT NULL COMMENT 'textarea 입력 항목',
  KEY `FK_deep_step7_txt_tb_deep_list_tb` (`project_key`),
  CONSTRAINT `FK_deep_step7_txt_tb_deep_list_tb` FOREIGN KEY (`project_key`) REFERENCES `deep_list_tb` (`project_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='심층평가 결과보고서 textarea 입력항목 TB';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:07:54
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `meta_table_info`
--

DROP TABLE IF EXISTS `meta_table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_table_info` (
  `name` varchar(50) DEFAULT NULL,
  `engine` varchar(50) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `row_format` varchar(50) DEFAULT NULL,
  `row_cnt` int(11) DEFAULT NULL,
  `avg_row_length` int(11) DEFAULT NULL,
  `data_length` bigint(20) DEFAULT NULL,
  `max_data_length` bigint(20) DEFAULT NULL,
  `index_length` int(11) DEFAULT NULL,
  `data_free` int(11) DEFAULT NULL,
  `auto_increment` int(11) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `update_time` varchar(50) DEFAULT NULL,
  `check_time` varchar(50) DEFAULT NULL,
  `collation` varchar(50) DEFAULT NULL,
  `checksum` varchar(50) DEFAULT NULL,
  `create_options` varchar(50) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:37
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_i_tb_0009_202310`
--

DROP TABLE IF EXISTS `vc_ntis_i_tb_0009_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_i_tb_0009_202310` (
  `NTIS_I_F_001` varchar(100) DEFAULT NULL COMMENT '기준년도',
  `NTIS_I_F_002` varchar(100) NOT NULL COMMENT '과제고유번호',
  `NTIS_I_F_003` longtext DEFAULT NULL COMMENT '과제명',
  `NTIS_I_F_004` varchar(100) DEFAULT NULL COMMENT '성과발생년도',
  `NTIS_I_F_005` varchar(100) DEFAULT NULL COMMENT '기술요약정보_등록번호',
  `NTIS_I_F_006` mediumtext DEFAULT NULL COMMENT '기술명_국문',
  `NTIS_I_F_007` longtext DEFAULT NULL COMMENT '기술명_영문',
  `NTIS_I_F_008` longtext DEFAULT NULL COMMENT '기술정의',
  `NTIS_I_F_009` longtext DEFAULT NULL COMMENT '기술내용_및_특장점',
  `NTIS_I_F_010` longtext DEFAULT NULL COMMENT '적용분야',
  `NTIS_I_F_011` mediumtext DEFAULT NULL COMMENT '키워드_국문',
  `NTIS_I_F_012` mediumtext DEFAULT NULL COMMENT '키워드_영문',
  `NTIS_I_F_013` varchar(100) DEFAULT NULL COMMENT '적용제품_예',
  `NTIS_I_F_014` varchar(100) DEFAULT NULL COMMENT '기술완성도',
  `NTIS_I_F_015` varchar(100) DEFAULT NULL COMMENT '기술이전담당자명',
  `NTIS_I_F_016` varchar(100) DEFAULT NULL COMMENT '기술이전담당자_전화번호',
  `NTIS_I_F_017` varchar(100) DEFAULT NULL COMMENT '추가기술 개발필요여부',
  KEY `vc_ntis_i_tb_0009_NTIS_I_F_002_IDX` (`NTIS_I_F_002`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='기술요약통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:14:03
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_custom_item_ps_202310`
--

DROP TABLE IF EXISTS `tb_custom_item_ps_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_custom_item_ps_202310` (
  `SEQ` int(11) NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `userId` varchar(50) DEFAULT NULL COMMENT '사용자ID',
  `gbn` varchar(20) DEFAULT NULL COMMENT '검색구분 (1. 제품명 2. 기술명)',
  `select_item_name` varchar(100) DEFAULT NULL COMMENT '선택제품명',
  `item_name` varchar(100) DEFAULT NULL COMMENT 'gbn이 1일 경우 제품명',
  `tech_nm` varchar(100) DEFAULT NULL COMMENT 'gbn이 2일 경우 기술명',
  `pagerank` varchar(100) DEFAULT NULL COMMENT '기술집약도',
  `pageviews` varchar(100) DEFAULT NULL COMMENT '기술수요',
  `links_to_this_page` varchar(100) DEFAULT NULL COMMENT '확산성',
  `EPV` varchar(100) DEFAULT NULL COMMENT '부상성',
  `REG_DT` date DEFAULT current_timestamp() COMMENT '등록일자',
  PRIMARY KEY (`SEQ`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='유망아이템 발굴 개인화';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:12:18
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vc_ntis_e_tb_0005_202310`
--

DROP TABLE IF EXISTS `vc_ntis_e_tb_0005_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_ntis_e_tb_0005_202310` (
  `NTIS_E_F_001` varchar(100) DEFAULT NULL COMMENT '과제수행년도',
  `NTIS_E_F_002` varchar(100) DEFAULT NULL COMMENT '사업명',
  `NTIS_E_F_003` varchar(100) DEFAULT NULL COMMENT '부처명',
  `NTIS_E_F_004` varchar(100) DEFAULT NULL COMMENT '공동위탁구분',
  `NTIS_E_F_005` longtext DEFAULT NULL COMMENT '상위과제(기관)세부과제번호',
  `NTIS_E_F_006` varchar(100) NOT NULL COMMENT '상위과제고유번호',
  `NTIS_E_F_007` longtext DEFAULT NULL COMMENT '공동위탁과제번호',
  `NTIS_E_F_008` longtext DEFAULT NULL COMMENT '위탁과제명',
  `NTIS_E_F_009` varchar(100) DEFAULT NULL COMMENT '참여형태코드',
  `NTIS_E_F_010` varchar(100) DEFAULT NULL COMMENT '참여형태',
  `NTIS_E_F_011` varchar(100) DEFAULT NULL COMMENT '참여국가코드',
  `NTIS_E_F_012` varchar(100) DEFAULT NULL COMMENT '참여국가',
  `NTIS_E_F_013` longtext DEFAULT NULL COMMENT '수행기관명',
  `NTIS_E_F_014` varchar(100) DEFAULT NULL COMMENT '수행기관사업자등록번호',
  `NTIS_E_F_015` varchar(100) DEFAULT NULL COMMENT '연구수행주체코드',
  `NTIS_E_F_016` varchar(100) DEFAULT NULL COMMENT '연구수행주체',
  `NTIS_E_F_017` varchar(100) DEFAULT NULL COMMENT '지역코드',
  `NTIS_E_F_018` varchar(100) DEFAULT NULL COMMENT '지역',
  `NTIS_E_F_019` varchar(100) DEFAULT NULL COMMENT '기초자치단체코드',
  `NTIS_E_F_020` varchar(100) DEFAULT NULL COMMENT '기초자치단체',
  `NTIS_E_F_021` varchar(100) DEFAULT NULL COMMENT '총연구기간시작일자',
  `NTIS_E_F_022` varchar(100) DEFAULT NULL COMMENT '총연구기간종료일자',
  `NTIS_E_F_023` varchar(100) DEFAULT NULL COMMENT '위탁과제연구비(원)',
  `NTIS_E_F_024` varchar(100) DEFAULT NULL COMMENT '공동연구비지출금액(원)',
  `NTIS_E_F_025` varchar(100) DEFAULT NULL COMMENT '공동연구비수입금액(원)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='공동위탁통합테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:09:54
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_category` (
  `idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `title_key` text DEFAULT NULL COMMENT '고유번호',
  `title` text DEFAULT NULL COMMENT 'input에 해당하는 이름',
  `category` text DEFAULT NULL COMMENT '카테고리명',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=854472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='wikipedia페이지 category 크롤링';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:47
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_custom_pub_rnd_ps_202310`
--

DROP TABLE IF EXISTS `tb_custom_pub_rnd_ps_202310`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_custom_pub_rnd_ps_202310` (
  `SEQ` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(50) NOT NULL COMMENT '사용자ID',
  `SRC_DITC` varchar(10) DEFAULT NULL COMMENT '구분코드 1_기업명 2_기업정보',
  `CORP_NM` varchar(100) DEFAULT NULL COMMENT '기업명',
  `CORP_INFO` varchar(1000) DEFAULT NULL COMMENT '기업정보',
  `SELECT_CORP` varchar(100) DEFAULT NULL COMMENT '선택기업',
  `EXE_YEAR` varchar(10) DEFAULT NULL COMMENT '수행년도',
  `EXE_ORG` varchar(50) DEFAULT NULL COMMENT '수행기관',
  `RND_NM` varchar(100) DEFAULT NULL COMMENT '과제명',
  `RESRC_DEV_STEP` varchar(20) DEFAULT NULL COMMENT '연구개발단계',
  `RESRC_PERFORM_AGENT` varchar(50) DEFAULT NULL COMMENT '연구수행주체',
  `RND_DEV_NATURE` varchar(100) DEFAULT NULL COMMENT '연구과제개발성격',
  `KEYWORD` varchar(100) DEFAULT NULL COMMENT '키워드',
  `SCIENCE_TEC_STN_CLASS_MAIN` varchar(50) DEFAULT NULL COMMENT '과학기술표준분류코드(대)',
  `TOT_RESRC_FUNDS` varchar(30) DEFAULT NULL COMMENT '총연구비',
  `REG_DATE` datetime DEFAULT NULL COMMENT '등록일자',
  `RND_ORGNUM` varchar(20) DEFAULT NULL COMMENT '과제고유번호',
  PRIMARY KEY (`SEQ`),
  KEY `tb_custom_pub_rnd_ps_USER_ID_IDX` (`USER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='공공기술매칭 - 맞춤형 공공 R&D추천 개인화';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:06:26
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `com_list_tb`
--

DROP TABLE IF EXISTS `com_list_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_list_tb` (
  `company_key` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`company_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:03:31
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category6tweek`
--

DROP TABLE IF EXISTS `category6tweek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category6tweek` (
  `category_name` varchar(64) DEFAULT NULL COMMENT '카테고리 명',
  `count` int(10) unsigned DEFAULT NULL COMMENT '빈도수',
  `count_rate` float DEFAULT NULL COMMENT '분포 비율',
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT COMMENT='약 1,000개 아이템의 6T 분류별 아이템 분포 정보를 저장한 테이블					\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:16:57
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 59.5.124.137    Database: apollo_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gtid_slave_pos`
--

DROP TABLE IF EXISTS `gtid_slave_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gtid_slave_pos` (
  `domain_id` int(10) unsigned NOT NULL,
  `sub_id` bigint(20) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `seq_no` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`domain_id`,`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Replication slave GTID position';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-21 13:05:13
