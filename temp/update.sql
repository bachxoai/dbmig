-- Table: tb_data_status_meta
ALTER TABLE tb_data_status_meta
  MODIFY COLUMN `dbName_detail` varchar(200) NOT NULL COMMENT '세부DB명',
  MODIFY COLUMN `db_name` varchar(200) DEFAULT NULL COMMENT 'DB명';

-- Table: tb_topic
ALTER TABLE tb_topic
  ADD COLUMN `VIEW_COUNT` int(11) DEFAULT NULL,
  ADD COLUMN `receive_email` tinyint(4) DEFAULT 0;

-- Table: m7_score
ALTER TABLE m7_score
  MODIFY COLUMN `지역코드` char(2) DEFAULT NULL;

-- Table: tb_model_info
ALTER TABLE tb_model_info
  ADD COLUMN `ratio_1` varchar(20) DEFAULT NULL,
  ADD COLUMN `ratio_2` varchar(20) DEFAULT NULL;

-- Table: wiki_item_master
ALTER TABLE wiki_item_master
  MODIFY COLUMN `TITLE` varchar(1000) DEFAULT NULL COMMENT 'article name';

-- Table: tb_user_rnd
ALTER TABLE tb_user_rnd
  ADD COLUMN `project_mng_agency` varchar(100) DEFAULT NULL,
  ADD COLUMN `project_mng_org` varchar(500) DEFAULT NULL,
  ADD COLUMN `host_name` varchar(100) DEFAULT NULL,
  ADD COLUMN `CREAT_DT` datetime DEFAULT NULL COMMENT '생성_일시',
  ADD COLUMN `CREAT_ID` bigint(20) DEFAULT NULL COMMENT '생성_ID',
  ADD COLUMN `UPDT_DT` datetime DEFAULT NULL COMMENT '수정_일시',
  ADD COLUMN `UPDT_ID` bigint(20) DEFAULT NULL COMMENT '수정_ID';

-- Table: vc_ntis_a_tb_0001_s
ALTER TABLE vc_ntis_a_tb_0001_s
  ADD COLUMN `NTIS_A_F_094` varchar(500) DEFAULT NULL COMMENT '연구책임자소속기관명';

-- Table: tb_menu
ALTER TABLE tb_menu
  ADD COLUMN `PARENT_ID` bigint(20) NOT NULL;

-- Table: vc_ntb_a_tb_0001
ALTER TABLE vc_ntb_a_tb_0001
  MODIFY COLUMN `NTB_A_F_001` char(11) NOT NULL COMMENT '판매기술코드',
  MODIFY COLUMN `NTB_A_F_002` char(12) DEFAULT NULL COMMENT '기업코드',
  MODIFY COLUMN `NTB_A_F_003` varchar(100) DEFAULT NULL COMMENT '기업명',
  MODIFY COLUMN `NTB_A_F_004` varchar(2) DEFAULT NULL COMMENT '산업분류코드_세분류',
  MODIFY COLUMN `NTB_A_F_005` varchar(100) DEFAULT NULL COMMENT '산업분류_세분류',
  MODIFY COLUMN `NTB_A_F_006` varchar(4) DEFAULT NULL COMMENT '산업분류코드_중분류',
  MODIFY COLUMN `NTB_A_F_007` varchar(100) DEFAULT NULL COMMENT '산업분류_중분류',
  MODIFY COLUMN `NTB_A_F_008` varchar(6) DEFAULT NULL COMMENT '산업분류코드_대분류',
  MODIFY COLUMN `NTB_A_F_009` varchar(100) DEFAULT NULL COMMENT '산업분류_대분류',
  MODIFY COLUMN `NTB_A_F_010` varchar(6) DEFAULT NULL COMMENT '기술분류코드_세분류',
  MODIFY COLUMN `NTB_A_F_011` varchar(100) DEFAULT NULL COMMENT '기술분류_세분류',
  MODIFY COLUMN `NTB_A_F_012` char(2) DEFAULT NULL COMMENT '기술분류코드_대분류',
  MODIFY COLUMN `NTB_A_F_013` varchar(100) DEFAULT NULL COMMENT '기술분류_대분류',
  MODIFY COLUMN `NTB_A_F_014` text DEFAULT NULL COMMENT '기술명',
  MODIFY COLUMN `NTB_A_F_015` text DEFAULT NULL COMMENT '영문기술명',
  MODIFY COLUMN `NTB_A_F_016` char(8) DEFAULT NULL COMMENT '수집일',
  MODIFY COLUMN `NTB_A_F_017` char(8) DEFAULT NULL COMMENT '등록일',
  MODIFY COLUMN `NTB_A_F_018` varchar(2000) DEFAULT NULL COMMENT '키워드',
  MODIFY COLUMN `NTB_A_F_019` text DEFAULT NULL COMMENT '개요및특징',
  MODIFY COLUMN `NTB_A_F_020` varchar(100) DEFAULT NULL COMMENT '개발상태코드',
  MODIFY COLUMN `NTB_A_F_021` varchar(100) DEFAULT NULL COMMENT '개발상태',
  MODIFY COLUMN `NTB_A_F_022` mediumtext DEFAULT NULL COMMENT '응용분야',
  MODIFY COLUMN `NTB_A_F_023` varchar(2) DEFAULT NULL COMMENT '이전여부',
  MODIFY COLUMN `NTB_A_F_024` varchar(100) DEFAULT NULL COMMENT '희망거래유형',
  MODIFY COLUMN `NTB_A_F_025` mediumtext DEFAULT NULL COMMENT '기술이전조건',
  MODIFY COLUMN `NTB_A_F_026` varchar(4) DEFAULT NULL COMMENT '기술이전조건_상태',
  MODIFY COLUMN `NTB_A_F_027` varchar(100) DEFAULT NULL COMMENT '기술이전금액코드',
  MODIFY COLUMN `NTB_A_F_028` varchar(100) DEFAULT NULL COMMENT '기술이전금액',
  MODIFY COLUMN `NTB_A_F_029` mediumtext DEFAULT NULL COMMENT '사업화적용실적',
  MODIFY COLUMN `NTB_A_F_030` varchar(4) DEFAULT NULL COMMENT '사업화적용실적_상태',
  MODIFY COLUMN `NTB_A_F_031` mediumtext DEFAULT NULL COMMENT '도입시고려사항',
  MODIFY COLUMN `NTB_A_F_032` varchar(4) DEFAULT NULL COMMENT '도입시고려사항_상태',
  MODIFY COLUMN `NTB_A_F_033` varchar(100) DEFAULT NULL COMMENT '담당자전화번호',
  MODIFY COLUMN `NTB_A_F_034` varchar(100) DEFAULT NULL COMMENT '개발자회사',
  MODIFY COLUMN `NTB_A_F_035` varchar(100) DEFAULT NULL COMMENT '개발자전화번호',
  MODIFY COLUMN `NTB_A_F_036` char(1) DEFAULT NULL COMMENT '요청방법코드',
  MODIFY COLUMN `NTB_A_F_037` varchar(100) DEFAULT NULL COMMENT '요청방법',
  MODIFY COLUMN `NTB_A_F_038` varchar(100) DEFAULT NULL COMMENT '판매가격',
  MODIFY COLUMN `NTB_A_F_039` varchar(17) DEFAULT NULL COMMENT '특허출원번호',
  MODIFY COLUMN `NTB_A_F_040` varchar(8) DEFAULT NULL COMMENT '특허출원일자',
  MODIFY COLUMN `NTB_A_F_041` varchar(13) DEFAULT NULL COMMENT '특허공개번호',
  MODIFY COLUMN `NTB_A_F_042` varchar(8) DEFAULT NULL COMMENT '특허공개일자',
  MODIFY COLUMN `NTB_A_F_043` varchar(13) DEFAULT NULL COMMENT '특허공고번호',
  MODIFY COLUMN `NTB_A_F_044` varchar(8) DEFAULT NULL COMMENT '특허공고일자',
  MODIFY COLUMN `NTB_A_F_045` varchar(15) DEFAULT NULL COMMENT '특허등록번호',
  MODIFY COLUMN `NTB_A_F_046` varchar(8) DEFAULT NULL COMMENT '특허등록일자',
  MODIFY COLUMN `NTB_A_F_047` varchar(2000) DEFAULT NULL COMMENT '발명의명칭',
  MODIFY COLUMN `NTB_A_F_048` varchar(2000) DEFAULT NULL COMMENT '발명자',
  MODIFY COLUMN `NTB_A_F_049` varchar(100) DEFAULT NULL COMMENT '출원인',
  MODIFY COLUMN `NTB_A_F_050` varchar(2000) DEFAULT NULL COMMENT 'IPC',
  MODIFY COLUMN `NTB_A_F_051` mediumtext DEFAULT NULL COMMENT '초록',
  MODIFY COLUMN `NTB_A_F_052` varchar(11) DEFAULT NULL COMMENT '과제고유번호',
  MODIFY COLUMN `NTB_A_F_053` varchar(100) DEFAULT NULL COMMENT '과제세부번호',
  MODIFY COLUMN `NTB_A_F_054` varchar(1000) DEFAULT NULL COMMENT '과제명칭_국문',
  MODIFY COLUMN `NTB_A_F_055` varchar(1000) DEFAULT NULL COMMENT '과제명칭_영문',
  MODIFY COLUMN `NTB_A_F_056` varchar(100) DEFAULT NULL COMMENT '예산사업명',
  MODIFY COLUMN `NTB_A_F_057` varchar(100) DEFAULT NULL COMMENT '기관사업명',
  MODIFY COLUMN `NTB_A_F_058` varchar(100) DEFAULT NULL COMMENT '연구책임자명',
  MODIFY COLUMN `NTB_A_F_059` varchar(100) DEFAULT NULL COMMENT '발주기관명',
  MODIFY COLUMN `NTB_A_F_060` varchar(100) DEFAULT NULL COMMENT '주관연구기관명',
  MODIFY COLUMN `NTB_A_F_061` varchar(100) DEFAULT NULL COMMENT '전문기관명',
  MODIFY COLUMN `NTB_A_F_062` varchar(100) DEFAULT NULL COMMENT '부처명',
  MODIFY COLUMN `NTB_A_F_063` varchar(4) DEFAULT NULL COMMENT '기준년도',
  MODIFY COLUMN `NTB_A_F_064` varchar(4) DEFAULT NULL COMMENT '보안과제여부',
  MODIFY COLUMN `NTB_A_F_065` varchar(10) DEFAULT NULL COMMENT '당해년도_연구시작일',
  MODIFY COLUMN `NTB_A_F_066` varchar(10) DEFAULT NULL COMMENT '당해년도_연구종료일',
  MODIFY COLUMN `NTB_A_F_067` varchar(10) DEFAULT NULL COMMENT '총연구기간_연구시작일',
  MODIFY COLUMN `NTB_A_F_068` varchar(10) DEFAULT NULL COMMENT '총연구기간_연구종료일',
  MODIFY COLUMN `NTB_A_F_069` varchar(100) DEFAULT NULL COMMENT '과학기술대분류',
  MODIFY COLUMN `NTB_A_F_070` varchar(100) DEFAULT NULL COMMENT '과학기술중분류',
  MODIFY COLUMN `NTB_A_F_071` varchar(100) DEFAULT NULL COMMENT '과학기술소분류',
  MODIFY COLUMN `NTB_A_F_072` varchar(100) DEFAULT NULL COMMENT '연구수행주체',
  MODIFY COLUMN `NTB_A_F_073` varchar(100) DEFAULT NULL COMMENT '연구개발단계',
  MODIFY COLUMN `NTB_A_F_074` varchar(100) DEFAULT NULL COMMENT '기술수명주기',
  MODIFY COLUMN `NTB_A_F_075` varchar(100) DEFAULT NULL COMMENT '지역구분',
  MODIFY COLUMN `NTB_A_F_076` varchar(100) DEFAULT NULL COMMENT '6T기술명',
  MODIFY COLUMN `NTB_A_F_077` varchar(100) DEFAULT NULL COMMENT '적용분야_대분류',
  MODIFY COLUMN `NTB_A_F_078` varchar(100) DEFAULT NULL COMMENT '적용분야_중분류',
  MODIFY COLUMN `NTB_A_F_079` varchar(100) DEFAULT NULL COMMENT '적용분야_소분류',
  MODIFY COLUMN `NTB_A_F_080` varchar(100) DEFAULT NULL COMMENT '정책사업여부',
  MODIFY COLUMN `NTB_A_F_081` varchar(100) DEFAULT NULL COMMENT 'URL';

-- Table: wiki_itemlist_tb
ALTER TABLE wiki_itemlist_tb
  ADD COLUMN `link_to_this_page` double DEFAULT NULL,
  MODIFY COLUMN `EPV` double DEFAULT NULL;

-- Table: kpa_app_chg_document
ALTER TABLE kpa_app_chg_document
  MODIFY COLUMN `LDT` date DEFAULT NULL COMMENT '등록일자',
  MODIFY COLUMN `EDT` date DEFAULT NULL COMMENT '수정일자';

-- Table: tb_role_menu
ALTER TABLE tb_role_menu
  MODIFY COLUMN `role_id` varchar(20) NOT NULL;

-- Table: tb_user
ALTER TABLE tb_user
  MODIFY COLUMN `user_nm` varchar(150) NOT NULL COMMENT 'User Name',
  MODIFY COLUMN `password` varchar(500) NOT NULL COMMENT 'Password';

-- Table: tb_user_request_tracking
ALTER TABLE tb_user_request_tracking
  MODIFY COLUMN `REQUEST_DATA` longblob DEFAULT NULL COMMENT 'Request body(JSON)';

-- Table: tb_user_type
ALTER TABLE tb_user_type
  ADD COLUMN `id` bigint(20) NOT NULL,
  ADD COLUMN `description` varchar(200) NOT NULL,
  ADD COLUMN `READ_ONLY` tinyint(4) DEFAULT NULL,
  ADD COLUMN `CREAT_DT` datetime DEFAULT NULL COMMENT '생성_일시',
  ADD COLUMN `CREAT_ID` bigint(20) DEFAULT NULL COMMENT '생성_ID',
  ADD COLUMN `UPDT_DT` datetime DEFAULT NULL COMMENT '수정_일시',
  ADD COLUMN `UPDT_ID` bigint(20) DEFAULT NULL COMMENT '수정_ID';

-- Table: kr_assignment_pub (continued)
ALTER TABLE kr_assignment_pub
  MODIFY COLUMN `PUBLICATION_DATE` date DEFAULT NULL,
  MODIFY COLUMN `REG_DT` datetime DEFAULT current_timestamp(),
  ADD COLUMN `name` varchar(50) DEFAULT NULL,
  ADD COLUMN `engine` varchar(50) DEFAULT NULL,
  ADD COLUMN `version` int(11) DEFAULT NULL,
  ADD COLUMN `row_format` varchar(50) DEFAULT NULL,
  ADD COLUMN `rows_cnt` int(11) DEFAULT NULL,
  ADD COLUMN `avg_row_length` int(11) DEFAULT NULL,
  ADD COLUMN `data_length` int(11) DEFAULT NULL,
  ADD COLUMN `max_data_length` bigint(20) DEFAULT NULL,
  ADD COLUMN `index_length` int(11) DEFAULT NULL,
  ADD COLUMN `data_free` int(11) DEFAULT NULL,
  ADD COLUMN `auto_increment` int(11) DEFAULT NULL,
  ADD COLUMN `create_time` varchar(50) DEFAULT NULL,
  ADD COLUMN `update_time` varchar(50) DEFAULT NULL,
  ADD COLUMN `check_time` varchar(50) DEFAULT NULL,
  ADD COLUMN `collation` varchar(50) DEFAULT NULL,
  ADD COLUMN `checksum` varchar(50) DEFAULT NULL,
  ADD COLUMN `create_options` varchar(50) DEFAULT NULL,
  ADD COLUMN `comment` varchar(64) DEFAULT NULL;

-- Table: tb_user_company
ALTER TABLE tb_user_company
  ADD COLUMN `CREAT_DT` datetime DEFAULT NULL COMMENT '생성_일시',
  ADD COLUMN `CREAT_ID` bigint(20) DEFAULT NULL COMMENT '생성_ID',
  ADD COLUMN `UPDT_DT` datetime DEFAULT NULL COMMENT '수정_일시',
  ADD COLUMN `UPDT_ID` bigint(20) DEFAULT NULL COMMENT '수정_ID';

-- Table: tb_role
ALTER TABLE tb_role
  MODIFY COLUMN `role_id` varchar(20) NOT NULL,
  MODIFY COLUMN `CREAT_DT` datetime DEFAULT NULL,
  MODIFY COLUMN `CREAT_ID` bigint(20) DEFAULT NULL,
  MODIFY COLUMN `UPDT_DT` datetime DEFAULT NULL,
  MODIFY COLUMN `UPDT_ID` bigint(20) DEFAULT NULL;

-- Table: tb_market_bookmark
ALTER TABLE tb_market_bookmark
  ADD COLUMN `related_product` text DEFAULT NULL,
  ADD COLUMN `except_product` text DEFAULT NULL,
  ADD COLUMN `related_industry` text DEFAULT NULL,
  ADD COLUMN `related_industry_nm` text DEFAULT NULL,
  ADD COLUMN `except_industry` text DEFAULT NULL,
  ADD COLUMN `except_industry_nm` text DEFAULT NULL;

-- Table: tb_item_bookmark
ALTER TABLE tb_item_bookmark
  ADD COLUMN `target_kor` varchar(100) DEFAULT NULL COMMENT 'Item keyword korean',
  ADD COLUMN `tech_cate` varchar(50) DEFAULT NULL COMMENT 'Technology category',
  ADD COLUMN `item_cate` varchar(50) DEFAULT NULL COMMENT 'Item category',
  ADD COLUMN `related_item` varchar(500) DEFAULT NULL,
  ADD COLUMN `related_item_kor` varchar(500) DEFAULT NULL;