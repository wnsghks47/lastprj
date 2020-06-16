--------------------------------------------------------
--  파일이 생성됨 - 월요일-6월-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence EVENTNUMBER
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."EVENTNUMBER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EVTNUMBER
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."EVTNUMBER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PNUMBER
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."PNUMBER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."QNA_REPLY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RNUMBER
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."RNUMBER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MNUM
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."MNUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table PRODUCT_EVENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PRODUCT_EVENT" 
   (	"PNUMBER" NUMBER, 
	"PTITLE" VARCHAR2(100 BYTE), 
	"PDATE" DATE, 
	"PEVENTIMG" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_INFO
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PRODUCT_INFO" 
   (	"PNUMBER" NUMBER, 
	"PNAME" VARCHAR2(100 BYTE), 
	"PBRAND" VARCHAR2(100 BYTE), 
	"PCATEGORY" VARCHAR2(50 BYTE), 
	"PINFORMATION" VARCHAR2(1000 BYTE), 
	"PSCORE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_INGREDIENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PRODUCT_INGREDIENT" 
   (	"PNUMBER" NUMBER, 
	"INGREDIENT" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_PRICE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PRODUCT_PRICE" 
   (	"PNUMBER" NUMBER, 
	"UNIT" VARCHAR2(20 BYTE), 
	"PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_TAG
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PRODUCT_TAG" 
   (	"PNUMBER" NUMBER, 
	"TAG" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."QNA" 
   (	"QBID" NUMBER, 
	"QCATE" VARCHAR2(20 BYTE), 
	"QTITLE" VARCHAR2(200 BYTE), 
	"QCONTENT" VARCHAR2(1000 BYTE), 
	"TAG" VARCHAR2(1000 BYTE), 
	"VIEW_CNT" NUMBER(*,0) DEFAULT 0, 
	"QREG_ID" VARCHAR2(45 BYTE), 
	"QREG_DT" DATE, 
	"QDIT_DT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REPLYQNA
--------------------------------------------------------

  CREATE TABLE "SCOTT"."REPLYQNA" 
   (	"BNO" NUMBER, 
	"RNO" NUMBER, 
	"BCONTENT" VARCHAR2(1000 BYTE), 
	"BWRITER" VARCHAR2(100 BYTE), 
	"REG_DT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "SCOTT"."REVIEW" 
   (	"RNUMBER" NUMBER, 
	"PNUMBER" NUMBER, 
	"RGROUP" NUMBER, 
	"RSTEP" NUMBER, 
	"RINDENT" NUMBER, 
	"RTITLE" VARCHAR2(200 BYTE), 
	"RSCORE" NUMBER, 
	"RCONTENT" VARCHAR2(4000 BYTE), 
	"RDATE" TIMESTAMP (6), 
	"RID" VARCHAR2(20 BYTE), 
	"RAGE" VARCHAR2(10 BYTE), 
	"RGENDER" VARCHAR2(10 BYTE), 
	"RSKIN" VARCHAR2(10 BYTE), 
	"RLIKE" NUMBER, 
	"RDISLIKE" NUMBER, 
	"RDECLARATION" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WISHLIST
--------------------------------------------------------

  CREATE TABLE "SCOTT"."WISHLIST" 
   (	"MNUM" NUMBER, 
	"PNUMBER" NUMBER, 
	"WISH" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."LOD" 
   (	"MNUM" NUMBER, 
	"RNUMBER" NUMBER, 
	"LOD" NUMBER, 
	"DECLARATION" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."EVENT" 
   (	"ENUMBER" NUMBER, 
	"ETITLE" VARCHAR2(100 BYTE), 
	"ESTARTDATE" VARCHAR2(50 BYTE), 
	"EENDDATE" VARCHAR2(50 BYTE), 
	"EVENTIMG" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MEMBER" 
   (	"ID" VARCHAR2(50 BYTE), 
	"PWD" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(50 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"BIRTH" VARCHAR2(10 BYTE), 
	"IS_LUNAR" VARCHAR2(10 BYTE), 
	"CPHONE" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"HABIT" VARCHAR2(200 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBERLIST
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MEMBERLIST" 
   (	"MNUM" NUMBER, 
	"ID" VARCHAR2(20 BYTE), 
	"PASS" VARCHAR2(500 BYTE), 
	"MAIL" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(40 BYTE), 
	"BIRTH" VARCHAR2(50 BYTE), 
	"SKINTYPE" VARCHAR2(40 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"JOINDATE" TIMESTAMP (6), 
	"AUTHORITY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.PRODUCT_EVENT
SET DEFINE OFF;
Insert into SCOTT.PRODUCT_EVENT (PNUMBER,PTITLE,PDATE,PEVENTIMG) values (2,'aaa',to_date('20/05/20','RR/MM/DD'),'<p>aaa</p>');
REM INSERTING into SCOTT.PRODUCT_INFO
SET DEFINE OFF;
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (141,'포레스트 포맨 모이스처 로션','이니스프리 (innisfree)','로션/에멀젼','제주 피톤치드 컴플렉스가 피부 피로를 회복시켜주며 주름 개선,건조함을 케어하는 촉촉한 에센스 타입 로션

1. 피톤치드 성분의 피부 피로 회복
피톤치드가 우수하다는 깨끗한 제주의 소나무, 삼나무, 편백나무의 성분이 피부 피로를 완화시켜주며, 건강한 피부로 유지시켜 줍니다.

2. 주름 개선 효과
아데노신이 함유되어 주름개선에 도움을 줍니다.

3. 천연 유래 올리고당의 보습력
버섯류에 다량 함유되어 있어 "버섯당"이라고 불리며, 촉촉한 피부로 가꾸어 줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (142,'스킨밀크','우르오스 (ULOS)','로션/에멀젼','- 피부 컨디셔닝 AMP의 파워보습으로 피부를 매끈하게 관리
- 9가지 허브 추출물이 면도와 외부 자극으로 부터 손상된 남성 피부를 진정시켜줌
- 무파라벤, 무인공향료, 무인공색소로 자극이 적음
- 건강한 피부 턴오버 회복에 도움을 주어 매끈하고 부드러운 피부 유지',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (143,'오리지널 모이스처라이저','불독 (BULLDOG)','로션/에멀젼','불독 오리지널 모이스처라이저는 영국에서 온 내추럴 그루밍 전문 브랜드 불독의 대표상품으로 스킨과 로션을 하나로 결합한 2 in 1 모이스처라이저입니다. 카테킨, 비타민 성분이 풍부한 녹차잎과 해조류의 재생력이 8가지 천연 식물성 에센스와 혼합되어 손상된 피부를 진정시켜주며 촉촉하고 오래가는 보습효과를 선사합니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (144,'아쿠아파워 건성용','비오템옴므 (BIOTHERM HOMME)','로션/에멀젼','시어버터와 살구씨 오일이 더욱 강력히 피부에 영양을 공급하여 건조하고 민감한 피부를 진정시키고 부드러운 크림 타입 텍스처로 피부가 하루 종일 촉촉해지도록 도와줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (145,'디 오리지널 올인원 퍼펙트 솔루션','엠솔릭 (MSOLIC)','로션/에멀젼','2주 만에 밝아지는 수분미백 올인원 로션',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (146,'안티포어 리파이닝 로션','피토메스 (PHYTOMES)','로션/에멀젼','피부에 수분을 공급하는 베타인,판테놀이 피부에 보호막을 형성하여 거칠고 건조해진 피부를 항상 촉촉하게 가꾸어 줍니다. 나이아신아마이드가 피부를 투명하고 맑게 케어하여 칙칙한 피부톤을 밝고 환하게 개선해주며, 지치고 거칠어진 피부에 수분을 보충하여 윤기있고 부드러운 피부를 유지하는데 도움을 줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (147,'듀얼 액션 에센스 로션','라네즈 옴므 (LANEGE HOMME)','로션/에멀젼','남성 피부의 칙칙함과 모공탄력을 한방에 케어! 1SHOT 2KILL 에센스 로션

- 수분 에너지 공급으로 지친 남성 피부에 즉각적인 활력을 제공
- 모공 수렴을 도와주어 모공 고민 없는 탄탄한 남자 피부로 만들어 드립니다.
- 2가지 에센스가 하나의 로션같은 수분감을 주어 촉촉하고 산뜻하게 흡수됩니다.
- 주름, 미백 2중 기능성 화장품',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (148,'워터 로션','랩시리즈 (LAB SERIES)','로션/에멀젼','？ 가벼운 사용감의 보습 스킨으로 피부에 활력과 편안함을 주며 외부 자극으로부터 피부를 보호해줍니다.
？ 세안 후에 남아 있는 노폐물과 각질을 제거해주고 피부에 수분을 공급해주어 끈적임 없이 촉촉한 피부로 만들어줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (149,'더마 모이스트 로션','유키누 (UQINU)','로션/에멀젼','남자 피부의 컨디션을 리셋하는 48시간 보습 로션.

피부에 번들거림 없이 풍부한 보습감을 부여하고 과도한 피지는 케어해주고 피부 균형을 바로잡아줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (150,'맨 오가니언스 모이스처라이징 에멀전','프리메라 (primera)','로션/에멀젼','* 전성분 리뉴얼 된 제품입니다.

피부에 풍부한 수분을 공급하면서 번들거리지 않고 매끄럽게 마무리되는 남성 피부를 위한 에멀전

- 거칠어진 남성 피부에 편안한 휴식을 주어 건강하고 활력 있는 피부를 선사합니다.
- 피지 조절 효과가 우수한 탄성 실리콘 파우더 함유
- 센타우리 추출물이 피부를 진정시키고 피부 밸런스 조절은 더욱 건강한 피부로
- 강력한 보습 효과와 함께 산뜻하게 흡수되는 남성 에멀전',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (151,'옴므 블랙 퍼펙트 플루이드','헤라 (HERA)','로션/에멀젼','* 해당 제품은 성분과 제품 케이스가 리뉴얼 된 제품입니다.

- 피부를 맑게 가꾸어주며, 외부 유해환경으로부터 피부를 보호하여 강력한 피부 에너지를 공급하여 활력있고 생기 있는 피부를 완성
- 강력한 보습력을 가진 성분 함유로 건조한 피부에 풍부한 보습과 영양을 제공
- 부드럽게 피부를 감싸듯 발리며, 빠르게 흡수되어 끈적임 없는 마무리감으로 건강한 피부 생명력을 부여',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (152,'파워 디펜스 스마트 에멀전','BRTC (비알티씨)','로션/에멀젼','* 해당 제품 전성분 리뉴얼 된 제품입니다.

- 모공 수렴을 돕는 특허 콤플렉스로 벌어진 모공을 탄탄하게 조여주고, 끈적임 없이 산뜻하게 스며들어 피부 결을 매끄럽게 가꿔줍니다.
- 남성 피부를 위한 자연유래 성분 함유로 영양을 공급하고 유수분 밸런스를 도와줍니다.
- 미백, 주름 개선은 물론 거친 피부를 활력있고, 건강하게 케어',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (153,'나이트 리커버리 로션','랩시리즈 (LAB SERIES)','로션/에멀젼','？ 밤 사이 충분한 수분과 영양을 공급하여 손상된 피부를 개선해주어 더욱 활력 있는 피부로 만들어줍니다.
？ 항산화 물질들을 함유하여 더욱 탄력 있고 건강한 피부로 만들어줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (154,'로션 디어 매트','디티알티 (DTRT)','로션/에멀젼','기름지지말자!
- 여자친구 기름종이 쓰지말고 이젠 로션 하나로!
- 술 먹고 난 다음 올라오는 기름 밤샘 티내지 말고 로션 디어매트 하나로!

이런 남자에게 추천한다!
- 개기름 때문에 스트레스 받는 남자
- 끈적이는 로션이 싫은 남자',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (155,'아르쌩뜨 에코-테라피 포맨 마일드 로션','더페이스샵 (THE FACE SHOP)','로션/에멀젼','물 대신 대나무 추출물을, 알코올 대신 피톤치드 가득한 솔잎 추출물을 함유해 예민하고 피로한 남성 피부에 부드러운 보습감을 선사하며 순하고 깔끔하게 피부를 가꾸어 주는 에센스 겸용 로션입니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (156,'포 맨 모이스춰라이징 로션','크리니크 (CLINIQUE)','로션/에멀젼','피부 보호막을 강화시켜주는 남성용 노란 로션+.

식물 성분 복합체가 피부의 투명도와 광채를 개선시켜주며, 피부 진정 성분이 피부 자극을 완화시켜줍니다. 상쾌하고 가벼운 질감으로 피부에 빠르게 흡수되며 건조함 없이 피부를 편안하게 해줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (157,'네오클래식옴므 블랙 에센셜 80에멀젼','더페이스샵 (THE FACE SHOP)','로션/에멀젼','포근하게 가슴 설레이는 향취와 블랙 에센셜 성분 80% 이상 함유된 토탈 남성로션.

1. 남자의 매력적인 피부 자신감을 회복시켜주는 세련된 향취와 함께 주름 관리 및 미백 기능으로 피부 컨디션을 한층 업그레이드 해줄 부드러운 마무리감의 에센셜 로션입니다.
2. 세월의 흔적으로부터 남성의 거칠어진 피부결과 칙칙해진 피부 안색을 개선하여 더욱 탄력적이고 더욱 투명하게 가꿔줍니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (158,'프레스티지 로씨옹 데스까르고 옴므','잇츠스킨 (It＇S SKIN)','로션/에멀젼','*리뉴얼된 제품입니다.

거칠어진 남성피부에 적절한 유수분 밸런스를 맞춰주고 답답하거나 번들거림 없이 부드럽고 깔끔하게 마무리해주는 고급스러운 사용감의 주름기능성 에센스 인 로션입니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (159,'자양 로션','더 히스토리 오브 후 (The History of Whoo)','로션/에멀젼','남성 피부에 건강한 생기를 부여하는 궁중 한방 로션입니다. 균형 있는 유수분 공급을 통해 피부에 수분과 영양을 공급하여 피부에 촉촉함과 생기를 부여합니다.

부드러운 인상과 가슴속에 강인한 야망을 품고 있는 황제의 외유내강을 상징하는 남성 궁중한방 화장품 공진향:군 황제에게 진상되었던 성분과 궁중비방으로 겉은 부드러우면서도 속은 탄탄한 피부로 다스려 젊음과 활기를 되찾아 주는 남성 기초 라인입니다.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (160,'맨 엑스퍼트 이드라 에너제틱 멀티 액션 8 리바이빙 모이스춰라이저','로레알 파리 (LOREAL PARIS)','로션/에멀젼','8초 충전으로 24시간 지속되는 피부 에너지!
야근, 음주, 흡연, 스트레스로 지친 피부를 위한 에너자이징 수분 로션

멀티 액션 8은 야근, 흡연, 음주, 스트레스로 지친 피부의 모든 증상을 한번에 해결합니다. 매일 아침 단 8초의 투자로 24시간 촉촉하고 에너지 넘치는 피부를 유지하세요! 강력한 수분에너지 충전, 비타민C 충전, 마그네슘 미네랄 충전, 자연 민트의 피부 번들거림 완화 기능.',0);
REM INSERTING into SCOTT.PRODUCT_INGREDIENT
SET DEFINE OFF;
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'클로페네신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'포타슘소르베이트;포타슘솔베이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'디프로필렌글라이콜;다이프로필렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'변성알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'아세틸글루코사민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'트레할로스;트레할로오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'갈락토아라비난;갈락토아란비난');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'클라리추출물; 클레리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'캐모마일추출물; 마트리카리아추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'베타인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'폴리소르베이트20;폴리솔베이트20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'효모추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'포타슘소르베이트;포타슘솔베이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'위치하젤추출물;버지니아풍년화추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'다이소듐포스페이트;디소듐포스페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'소듐코코피지-디모늄클로라이드포스페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'소듐포스페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'메칠프로판디올;메틸프로판다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'네오펜틸글라이콜다이헵타노에이트;네오펜틸글라이콜디헵타노에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'하이드로제네이티드폴리(C6-14올레핀)');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'폴리쿼터늄-51');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'나이아신아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'폴리글리세릴-3메칠글루코오스디스테아레이트;폴리글리세릴-3메틸글루코오스다이스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'세라마이드엔피');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'하이드로제네이티드레시틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'소듐하이알루로네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'베타-글루칸');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'피토스테롤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'피토스핑고신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'삼나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'연꽃잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'효모발효여과물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'병풀추출물;센텔라추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'인삼열매추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'상황버섯추출물; 진흙버섯추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'우엉추출물; 우엉뿌리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'카바잎/뿌리/줄기추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'산자나무열매추출물;비타민나무열매추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'산자나무오일;비타민나무오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'회화나무캘러스배양추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'스쿠알란');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'메도우폼델타-락톤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'실리카');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'베타인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'글리세릴스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'카보머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'트로메타민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'소듐스테아로일글루타메이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'글리세릴글루코사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'알란토인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'하이드록시에칠아크릴레이트/소듐아크릴로일디메칠타우레이트코폴리머;하이드록시에틸아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'포스포리피드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'트로폴론');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'피이지-100스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'폴리소르베이트20;폴리솔베이트20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'폴리소르베이트60;폴리솔베이트60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'카프릴릴글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'1,2-헥산디올; 1,2-헥산다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'스쿠알란');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'디메치콘/비닐디메치콘크로스폴리머;다이메티콘/비닐다이메티콘크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'세틸에칠헥사노에이트;세틸에틸헥사노에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'사이클로헥사실록산;사이클로헥사실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'쉐어버터; 시어버터');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'쌀배아추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'가시칠엽수씨추출물;마로니에씨추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'콩싹추출물;검은콩싹추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'참깨싹추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'센타우리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'카페인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'만니톨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'징크글루코네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'암모늄글리시리제이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'세테아릴알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'베헤닐알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'글리세릴카프릴레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'글리세릴스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'C14-22알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'C12-20알킬글루코사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'프로판디올; 프로판다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'1,2-헥산디올; 1,2-헥산다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'피이지-100스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'C12-14파레스-12');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'디메치콘올;다이메티콘올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'카보머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'트로메타민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'알코올;에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'나이아신아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'사이클로헥사실록산;사이클로헥사실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'효모추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'아사이야자추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'아세로라추출물;서인도체리열매추출물;바베이도스체리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'복숭아나무잎추출물;복사나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'하이드롤라이즈드오크라추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'다이팔미토일하이드록시프롤린;디팔미토일하이드록시프롤린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'1,2-헥산디올; 1,2-헥산다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'글루타티온;글루타치온');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'메톡시피이지-114/폴리엡실론카프로락톤;메톡시피이지-114/폴리엡실론카프롤락톤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'비스-피이지-18메칠에텔디메칠실란;비스-피이지-18메틸에터다이메틸실레인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'소듐마그네슘실리케이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'아크릴레이트/C10-30알킬아크릴레이트크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'아크릴레이트/스테아릴아크릴레이트/디메치콘메타크릴레이트코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'카프릴릴글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'콜레스테롤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'펜틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'폴리소르베이트20;폴리솔베이트20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'프로판디올; 프로판다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'피이지-60하이드로제네이티드캐스터오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'하이드로제네이티드포스파티딜콜린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'하이드록시에칠아크릴레이트/소듐아크릴로일디메칠타우레이트코폴리머;하이드록시에틸아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'트로메타민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'디프로필렌글라이콜;다이프로필렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'카프릴릭/카프릭트리글리세라이드; 카프릴릭/카프릭트라이글리세라이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'나이아신아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'스테아릭애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'폴리글리세릴-10디스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'글리세릴스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'세테아릴알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'사이클로헥사실록산;사이클로헥사실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'베타인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'소듐하이알루로네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'자일리톨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'토코페릴아세테이트;토코페롤아세테이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'소르비탄스테아레이트;솔비탄스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'1,2-헥산디올; 1,2-헥산다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'알지닌');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'카보머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'판테놀');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'알란토인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'프로판디올; 프로판다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'카프릴릴글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'팔각회향추출물;스타아니스추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'클로페네신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'녹차추출물;백차추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'편백수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'구주소나무싹추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'다시마추출물;곤포추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'곰솔잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'클라리추출물; 클레리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'히아신스추출물;히아신스전초추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'병풀추출물;센텔라추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'황금추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'감초추출물;감초뿌리추출물;스페인감초뿌리추출물;창과감초뿌리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'캐모마일꽃추출물; 마트리카리아꽃추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'로즈마리잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'시호캘러스배양추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'레스베라트롤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'커피추출물;커피콩추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'홍화추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'호장근추출물; 호장근뿌리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'감나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'포도추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'밤껍질추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'산초나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'수레국화꽃추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'보리지추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'라벤더수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'캐모마일꽃/잎추출물;마트리카리아꽃/잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'트리카프릴린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'에칠헥실이소스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'세테아릴알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'쉐어버터; 시어버터');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'호호바에스터');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'호장근추출물; 호장근뿌리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'백단향추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'황백추출물;황벽나무껍질추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'보리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'효모추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'효모용해추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'토코페릴아세테이트;토코페롤아세테이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'소듐하이알루로네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'아스코빌토코페릴말리에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'하이드로제네이티드레시틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'세테아릴글루코사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'마이크로코쿠스용해물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'메칠글루세스-20; 메틸글루세스-20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'레시틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'하이드록시에칠아크릴레이트/소듐아크릴로일디메칠타우레이트코폴리머;하이드록시에틸아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'잔탄검');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'폴리소르베이트60;폴리솔베이트60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'벤조익애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'클로페네신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'메칠파라벤;메틸파라벤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'비에이치티;부틸레이티드하이드록시톨루엔');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'디메치콘/비닐디메치콘크로스폴리머;다이메티콘/비닐다이메티콘크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'변성알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'폴리소르베이트60;폴리솔베이트60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'하이드롤라이즈드밀단백질');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'세틸에칠헥사노에이트;세틸에틸헥사노에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'캐모마일꽃추출물; 마트리카리아꽃추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'라벤더추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'페퍼민트추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'로즈마리꽃추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'세이지잎추출물; 살비아잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'아크릴레이트/C10-30알킬아크릴레이트크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'사이클로헥사실록산;사이클로헥사실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'비닐디메치콘/메치콘실세스퀴옥산크로스폴리머;비닐다이메티콘/메티콘실세스퀴옥세인크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'소르비탄이소스테아레이트;솔비탄아이소스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'트레할로스;트레할로오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'폴리소르베이트20;폴리솔베이트20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'이소세테스-25;아이소세테스-25');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'이소세테스-10; 아이소세테스-10');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'글리세릴스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'피이지-100스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'폴리아크릴레이트-13');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'폴리이소부텐;폴리아이소부텐');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'실리카');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'티타늄디옥사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'트로메타민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'클로페네신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'카프릴릴글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'대나무추출물;밤부사 불가리스추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'디프로필렌글라이콜;다이프로필렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'펜타에리스리틸테트라에칠헥사노에이트;펜타에리스리틸테트라에틸헥사노에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'1,2-헥산디올; 1,2-헥산다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'소르비톨;솔비톨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'구주소나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'올리브오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'폴리글리세릴-3메칠글루코오스디스테아레이트;폴리글리세릴-3메틸글루코오스다이스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'실리카');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'아크릴레이트/C10-30알킬아크릴레이트크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'하이드로제네이티드레시틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'포타슘하이드록사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'잔탄검');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'미네랄오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'페트롤라툼');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'스테아릭애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'글리세릴스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'참깨오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'우레아');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'라놀린알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'트리에탄올아민;트라이에탄올아민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'오이추출물;오이열매추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'보리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'프로필렌글라이콜디카프레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'해바라기씨드케이크');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'소듐하이알루로네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'펜틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'트리소듐이디티에이;트라이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'적색227호');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'황색4호');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'황색5호');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'맥아추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'펜타에리스리틸테트라에칠헥사노에이트;펜타에리스리틸테트라에틸헥사노에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'나이아신아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'폴리글리세릴-3메칠글루코오스디스테아레이트;폴리글리세릴-3메틸글루코오스다이스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'세테아릴알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'글리세릴스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'피이지-6카프릴릭/카프릭글리세라이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'카프릴릭/카프릭글리세라이드;카프릴릭/카프릭글리세라이즈');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'피이지-100스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'폴리소르베이트60;폴리솔베이트60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'스쿠알란');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'온천수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'팔미토일올리고펩타이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'C12-13파레스-23');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'C12-13파레스-3');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'글리세릴폴리메타크릴레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'1,2-헥산디올; 1,2-헥산다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'프로필렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'판테놀');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'디비닐디메치콘/디메치콘코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'하이드록시에칠아크릴레이트/소듐아크릴로일디메칠타우레이트코폴리머;하이드록시에틸아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'카보머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'포타슘하이드록사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'달팽이점액여과물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'변성알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'피이지-32');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'소르비톨;솔비톨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'이소헥사데칸;아이소헥사데칸');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'이소스테아릴알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'송이버섯추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'슈도알테로모나스발효추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'아세틸헥사펩타이드-8');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'옥틸도데칸올;2-옥틸도데칸올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'부틸렌글라이콜코코에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'트리에탄올아민;트라이에탄올아민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'카보머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'클로페네신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'카프릴릴글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'아크릴레이트/C10-30알킬아크릴레이트크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'에칠셀룰로오스;에틸셀룰로오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (159,'성분정보 없음');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (160,'성분정보 없음');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'스쿠알란');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'세틸알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'하이드로제네이티드폴리(C6-14올레핀)');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'알코올;에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'펜타에리스리틸테트라에칠헥사노에이트;펜타에리스리틸테트라에틸헥사노에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'베타인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'사이클로헥사실록산;사이클로헥사실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'녹차추출물;백차추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'편백수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'삼나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'클러스터소나무껍질/싹추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'동백나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'백년초열매추출물; 코치닐선인장열매추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'난추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'귤껍질추출물;진피추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'녹나무잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'메도우폼씨오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'트레할로스;트레할로오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'하이드록시프로필스타치포스페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'세테아릴알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'피이지-100스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'글리세릴스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'트로메타민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'스테아릭애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'팔미틱애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'디메치콘올;다이메티콘올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'아크릴레이트/C10-30알킬아크릴레이트크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'카보머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'스테아릴베헤네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'폴리글리세릴-3메칠글루코오스디스테아레이트;폴리글리세릴-3메틸글루코오스다이스테아레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'하이드록시프로필비스팔미타마이드엠이에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'이눌린라우릴카바메이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'폴리소르베이트20;폴리솔베이트20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'알코올;에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'펜틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'베타인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'피이지-6');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'피이지-32');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'아데노신포스페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'소듐하이드록사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'피피지-6-데실테트라데세스-30');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'소듐디라우라미도글루타마이드라이신;소듐다이라우미도글루타미드라이신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'알진');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'시트릭애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'켈프추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'소듐하이알루로네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'터펜틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'아틀라스시다껍질오일; 아틀라스시다나무껍질오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'라임오일; 라임전초오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'라반딘오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'구주소나무잎오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'팔각회향열매/씨오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'페퍼민트오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'로즈마리잎오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'서양측백나무잎오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (143,'성분정보 없음');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'쉐어버터; 시어버터');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'행인오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'암모늄폴리아크릴로일디메칠타우레이트;암모늄폴리아크릴로일다이메틸타우레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'디메치콘올;다이메티콘올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'폴리퍼플루오로메칠이소프로필에텔');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'토코페릴아세테이트;토코페롤아세테이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'헥실렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'판테놀');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'팔미토일프롤린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'팔미틱애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'마그네슘글루코네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'콜레스테롤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'프룩토오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'트리에탄올아민;트라이에탄올아민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'글루코오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'아스코빌글루코사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'2-올레아미도-1,3-옥타데칸디올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'토코페롤');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'소듐팔미토일사코시네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'마그네슘팔미토일글루타메이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'멘톡시프로판디올;멘톡시프로판다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'비트레오실라발효물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'리날룰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'리모넨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'우레아');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'징크글루코네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'하이드록시팔미토일스핑가닌');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'세라마이드엔피');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'벤질살리실레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'하이드록시시트로넬알');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'덱스트린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'쿠마린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'시트로넬올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'카퍼글루코네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'시트랄');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'청색1호알루미늄레이크');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'헥실니코티네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'글루타믹애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'망가니즈글루코네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'슈크로오스;수크로오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'알라닌');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'아스파틱애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'변성알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'메칠프로판디올;메틸프로판다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'사이클로헥사실록산;사이클로헥사실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'베타인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'1,2-헥산디올; 1,2-헥산다이올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'나이아신아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'페닐트리메치콘;트라이페닐트라이메티콘;페닐트라이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'티타늄디옥사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'알코올;에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'폴리글리세릴-10라우레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'파라크레스추출물;올레라케아아크멜라추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'귀리커넬추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'봉의꼬리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'아티초크잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'카무카무추출물;까무까무열매추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'아보카도열매추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'유칼립투스잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'소듐하이알루로네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'하이드로제네이티드레시틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'암모늄아크릴로일다이메틸타우레이트/브이피코폴리머;암모늄아크릴로일디메칠타우레이트/브이피코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'디메치콘/비닐디메치콘크로스폴리머;다이메티콘/비닐다이메티콘크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'멘틸피씨에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'메틸다이아이소프로필프로피온아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'에칠멘탄카복사마이드;에틸멘탄카복사마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'트리에톡시카프릴릴실란;트라이에톡시카프릴릴실레인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'폴리쿼터늄-51');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'베타-글루칸');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'글라이신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'소듐피씨에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'소르비톨;솔비톨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'알라닌');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'알지닌');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'트레오닌');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'프롤린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'글루타믹애씨드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'라이신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'글루타티온;글루타치온');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'말토덱스트린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'사이클로메치콘;사이클로메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'세틸에칠헥사노에이트;세틸에틸헥사노에이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'나이아신아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'디메치콘;다이메티콘');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'페녹시에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'아크릴레이트/C10-30알킬아크릴레이트크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'트리에탄올아민;트라이에탄올아민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'클로페네신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'판테놀');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'라벤더추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'로즈마리잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'오레가노잎추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'선백리향추출물;타임추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'병풀추출물;센텔라추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'캐모마일꽃추출물; 마트리카리아꽃추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'감초추출물;감초뿌리추출물;스페인감초뿌리추출물;창과감초뿌리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'실리카');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'소듐하이알루로네이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'자일리톨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'사이클로펜타실록산;사이클로펜타실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'알코올;에탄올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'실리카');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'사이클로헥사실록산;사이클로헥사실록세인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'나이아신아마이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'티타늄디옥사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'하이드록시에칠아크릴레이트/소듐아크릴로일디메칠타우레이트코폴리머;하이드록시에틸아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'디메치콘/비닐디메치콘크로스폴리머;다이메티콘/비닐다이메티콘크로스폴리머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'만니톨');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'폴리실리콘-11');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'피이지-60하이드로제네이티드캐스터오일');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'향료');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'카보머');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'트로메타민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'글리세릴카프릴레이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'레시틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'에칠헥실글리세린;에틸헥실글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'피토스핑고신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'하이드로제네이티드폴리데센');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'판테놀');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'디소듐이디티에이;다이소듐이디티에이');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'아데노신');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'스테아릴알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'옥수수전분');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'세테아레스-20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'세틸알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'하이드로제네이티드레시틴');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'퀴노아씨추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'마그네슘설페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'칼슘클로라이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'황색5호');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'망가니즈설페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'징크설페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'아스코빌글루코사이드');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'디프로필렌글라이콜;다이프로필렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'변성알코올');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'부틸렌글라이콜');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'효모추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'글리세린');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'위치하젤추출물;버지니아풍년화추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'페퍼민트잎수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'캐모마일꽃추출물; 마트리카리아꽃추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'캐모마일추출물; 마트리카리아추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'클라리추출물; 클레리추출물');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'아세틸글루코사민');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'트레할로스;트레할로오스');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'베타인');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'다이소듐포스페이트;디소듐포스페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'소듐포스페이트');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'정제수');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'부틸렌글라이콜');
REM INSERTING into SCOTT.PRODUCT_PRICE
SET DEFINE OFF;
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (143,'100ml',20000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (144,'75ml',53000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (145,'145ml',28000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (146,'120ml',28000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (147,'40ml',35000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (148,'200ml',45000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (149,'125ml',25000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (150,'150ml',30000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (151,'120ml',60000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (152,'120ml',27000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (153,'50ml',53000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (154,'140ml',37000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (155,'160ml',13000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (156,'100ml',47000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (157,'110ml',22900);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (158,'118ml',28000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (159,'100ml',60000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (160,'50ml',15000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (141,'120ml',22000);
Insert into SCOTT.PRODUCT_PRICE (PNUMBER,UNIT,PRICE) values (142,'200ml',29700);
REM INSERTING into SCOTT.PRODUCT_TAG
SET DEFINE OFF;
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (141,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (142,'저자극');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (142,'피부진정');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'비타민함유');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'생기부여');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (144,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (144,'영양공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (144,'피부진정');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (145,'미백');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (145,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (145,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'모공관리');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'미백');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'주름개선');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'피지조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'모공관리');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'미백');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'주름개선');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'각질관리');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'저자극');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'피지조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'피부진정');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'피지조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'각질관리');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'생기부여');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'영양공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'피부결정돈');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'피부유연');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'모공관리');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'미백');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'영양공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'주름개선');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'피부진정');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'피지조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'나이트전용');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'피부유연');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'피부탄력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (154,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (154,'피지조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (155,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (155,'저자극');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (155,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (156,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (156,'피부진정');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (156,'피부투명');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'미백');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'영양공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'주름개선');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'피부유연');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'주름개선');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'피부탄력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'피지조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'생기부여');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'영양공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'유수분조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'피부활력');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'수분공급');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'피부결정돈');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'피지조절');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (141,'보습');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (141,'주름개선');
REM INSERTING into SCOTT.QNA
SET DEFINE OFF;
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (4,null,'<p>asdasdsad</p>','asdasda',null,0,null,null,null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (43,null,'sadadadasdsada','<p><img src="resources/img/reviewImg/20200514_133404.png" style="width: 1088px;"><br></p>',null,0,'asdasd',to_date('20/06/04','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (44,null,'asdsadsadsad','<p><img src="resources/img/reviewImg/20200514_1334041.png" style="width: 1088px;"><br></p>',null,0,'asdasd',to_date('20/06/04','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (65,null,'asdsadasdfsadas','<p>dasdasdasdasd</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (71,null,'asdasdsad','<p>sadadsadasdasda</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (74,null,'asdada','<p>dadsadsadsad</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (75,null,'asdsadsad','<p>sadsadasdasdadsadad</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (66,null,'asdsada','<p>dasdsadsads</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (21,null,'asdasda','<p>dsadsadsadad</p>',null,0,'asdasd',to_date('20/06/03','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (67,null,'sadsadsad','<p>sadadasdas</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (68,null,'asdasdsa','<p>dasdsadsa</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (69,null,'asdsadsads','<p>adasdsadsadsa</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (70,null,'asdsadasdsa','<p>dasdadsadsad</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (5,null,'<p>asdsadsadasdasd</p>','asdasdasdasdasdasda',null,0,'asdasd',null,null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (6,null,'asdadsad','<p>asdasdasdsa</p>',null,0,'asdasd',to_date('20/06/02','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (63,null,'asdadsadad','<p>sadsadsadsadasd</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (61,null,'dsfsddsa','<p>sadsadsa</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (62,null,'asdadsadsa','<p>asdasdsadsa</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (64,null,'asdsadsadsadasd','<p>sadsadasda</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (72,null,'sadsada','<p>dadadsadsadsads</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (73,null,'asdasds','<p>adasdsadsadsad</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (76,null,'asdadada','<p>dasdasdasdsaddsad</p>',null,0,'asdasd',to_date('20/06/08','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (81,null,'asdsadsa','<p>dsadsadsadasdsad</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (82,null,'asdad','<p>adadsadasdsad</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (83,null,'asdada','<p>sdasdadsadsadassad</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (84,null,'sadada','<p>dadsadsadsadsadsadsa</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (85,null,'asdsadada','<p>dsadsadsadsad</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (86,null,'asdada','<p>dadsadsadsadasd</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (87,null,'asdad','<p>adadadsadsad</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (88,null,'asdadad','<p>adsadsadsadad</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
Insert into SCOTT.QNA (QBID,QCATE,QTITLE,QCONTENT,TAG,VIEW_CNT,QREG_ID,QREG_DT,QDIT_DT) values (89,null,'asdad','<p>asdadadsa</p>',null,0,'asdasd',to_date('20/06/09','RR/MM/DD'),null);
REM INSERTING into SCOTT.REPLYQNA
SET DEFINE OFF;
Insert into SCOTT.REPLYQNA (BNO,RNO,BCONTENT,BWRITER,REG_DT) values (75,6,'asdasdasdad','asdasd',to_date('20/06/08','RR/MM/DD'));
Insert into SCOTT.REPLYQNA (BNO,RNO,BCONTENT,BWRITER,REG_DT) values (75,7,'sadadsadadsa','asdasd',to_date('20/06/08','RR/MM/DD'));
Insert into SCOTT.REPLYQNA (BNO,RNO,BCONTENT,BWRITER,REG_DT) values (76,9,'asdsada','asdasd',to_date('20/06/08','RR/MM/DD'));
Insert into SCOTT.REPLYQNA (BNO,RNO,BCONTENT,BWRITER,REG_DT) values (76,8,'fdsafasdfdsaf','asdasd',to_date('20/06/08','RR/MM/DD'));
Insert into SCOTT.REPLYQNA (BNO,RNO,BCONTENT,BWRITER,REG_DT) values (5,21,'ㄴㅁㅇㅁㅇㅁㄴㅇㅁ','asdasd',to_date('20/06/09','RR/MM/DD'));
REM INSERTING into SCOTT.REVIEW
SET DEFINE OFF;
REM INSERTING into SCOTT.WISHLIST
SET DEFINE OFF;
REM INSERTING into SCOTT.LOD
SET DEFINE OFF;
REM INSERTING into SCOTT.EVENT
SET DEFINE OFF;
Insert into SCOTT.EVENT (ENUMBER,ETITLE,ESTARTDATE,EENDDATE,EVENTIMG) values (125,'dsaasdsadas','2020-06-03','2020-06-18','<p style="text-align: center; "><img src="resources/img/reviewImg/20200514_1334041.png" style="width: 1011.33px;"></p><p style="text-align: center; ">-------------------------------------------------------</p><p style="text-align: center; ">sfdsafsdafsdads</p><p style="text-align: center; ">--------------------------------------------------------</p><p style="text-align: center; "><img src="resources/img/reviewImg/20200514_1334042.png" style="width: 1011.33px;"><br></p>');
Insert into SCOTT.EVENT (ENUMBER,ETITLE,ESTARTDATE,EENDDATE,EVENTIMG) values (124,'asdsadsad','2020-06-01','2020-06-16','<p><img src="resources/img/reviewImg/20200514_133404.png" style="width: 976.328px;"><br></p>');
REM INSERTING into SCOTT.MEMBER
SET DEFINE OFF;
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('blue2','asdasd','asdasd','남성','12-12-12','Solar','2313213132','wnsp@naver.com','music,movie',to_date('20/04/01','RR/MM/DD'));
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('js11','123','지성','남성','12-12-12','Solar','2313213132','wnsp@naver.com','music,trip',to_date('20/04/01','RR/MM/DD'));
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('blue1','123','hong','a','1980-5-5','양력','111-1111','aa@aa.com','movie',to_date('20/03/03','RR/MM/DD'));
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('aa',null,null,'남성','--','Solar',null,null,null,to_date('20/04/01','RR/MM/DD'));
REM INSERTING into SCOTT.MEMBERLIST
SET DEFINE OFF;
Insert into SCOTT.MEMBERLIST (MNUM,ID,PASS,MAIL,PHONE,BIRTH,SKINTYPE,GENDER,JOINDATE,AUTHORITY) values (61,'vvvvv','asdasd123456!','aaaa@naver.com','01077777777','2017-06-13','민감성','♂',to_timestamp('20/06/12 09:33:34.224000000','RR/MM/DD HH24:MI:SSXFF'),0);
Insert into SCOTT.MEMBERLIST (MNUM,ID,PASS,MAIL,PHONE,BIRTH,SKINTYPE,GENDER,JOINDATE,AUTHORITY) values (42,'asdasd','458cc88fa641ce086b5c45439c3d4463626668022e6df6e772b0a45269291a5b','asdasd@naver.com','0109848196','2020-06-18','건성','♂',to_timestamp('20/06/09 11:28:03.827000000','RR/MM/DD HH24:MI:SSXFF'),1);
--------------------------------------------------------
--  DDL for Procedure RE_SEQ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."RE_SEQ" 
(
gamescore in varchar2
)
is
val number;
begin
execute immediate 'select '|| gamescore ||'.nextval from dual ' into val;
execute immediate 'alter sequence ' || gamescore || ' increment by -'|| val || ' minvalue 0';
execute immediate 'select '|| gamescore ||'.nextval from dual ' into val;
execute immediate 'alter sequence '|| gamescore|| ' increment by 1 minvalue 0';
end;

/
--------------------------------------------------------
--  Constraints for Table PRODUCT_EVENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PRODUCT_EVENT" ADD PRIMARY KEY ("PNUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT_INFO
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PRODUCT_INFO" ADD PRIMARY KEY ("PNUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."QNA" ADD PRIMARY KEY ("QBID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REPLYQNA
--------------------------------------------------------

  ALTER TABLE "SCOTT"."REPLYQNA" ADD PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."REVIEW" ADD PRIMARY KEY ("RNUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."EVENT" ADD PRIMARY KEY ("ENUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBERLIST
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MEMBERLIST" ADD PRIMARY KEY ("MNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_INGREDIENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PRODUCT_INGREDIENT" ADD FOREIGN KEY ("PNUMBER")
	  REFERENCES "SCOTT"."PRODUCT_INFO" ("PNUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_PRICE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PRODUCT_PRICE" ADD FOREIGN KEY ("PNUMBER")
	  REFERENCES "SCOTT"."PRODUCT_INFO" ("PNUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_TAG
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PRODUCT_TAG" ADD FOREIGN KEY ("PNUMBER")
	  REFERENCES "SCOTT"."PRODUCT_INFO" ("PNUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "SCOTT"."REVIEW" ADD FOREIGN KEY ("PNUMBER")
	  REFERENCES "SCOTT"."PRODUCT_INFO" ("PNUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."LOD" ADD FOREIGN KEY ("MNUM")
	  REFERENCES "SCOTT"."MEMBERLIST" ("MNUM") ENABLE;
 
  ALTER TABLE "SCOTT"."LOD" ADD FOREIGN KEY ("RNUMBER")
	  REFERENCES "SCOTT"."REVIEW" ("RNUMBER") ENABLE;
