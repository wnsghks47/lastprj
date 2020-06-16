--------------------------------------------------------
--  ������ ������ - ������-6��-15-2020   
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
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (141,'������Ʈ ���� ���̽�ó �μ�','�̴Ͻ����� (innisfree)','�μ�/������','���� ����ġ�� ���÷����� �Ǻ� �Ƿθ� ȸ�������ָ� �ָ� ����,�������� �ɾ��ϴ� ������ ������ Ÿ�� �μ�

1. ����ġ�� ������ �Ǻ� �Ƿ� ȸ��
����ġ�尡 ����ϴٴ� ������ ������ �ҳ���, �ﳪ��, ��鳪���� ������ �Ǻ� �Ƿθ� ��ȭ�����ָ�, �ǰ��� �Ǻη� �������� �ݴϴ�.

2. �ָ� ���� ȿ��
�Ƶ������ �����Ǿ� �ָ������� ������ �ݴϴ�.

3. õ�� ���� �ø������ ������
�������� �ٷ� �����Ǿ� �־� "������"�̶�� �Ҹ���, ������ �Ǻη� ���پ� �ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (142,'��Ų��ũ','�츣���� (ULOS)','�μ�/������','- �Ǻ� ����Ŵ� AMP�� �Ŀ��������� �Ǻθ� �Ų��ϰ� ����
- 9���� ��� ���⹰�� �鵵�� �ܺ� �ڱ����� ���� �ջ�� ���� �Ǻθ� ����������
- ���Ķ�, ���ΰ����, ���ΰ����ҷ� �ڱ��� ����
- �ǰ��� �Ǻ� �Ͽ��� ȸ���� ������ �־� �Ų��ϰ� �ε巯�� �Ǻ� ����',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (143,'�������� ���̽�ó������','�ҵ� (BULLDOG)','�μ�/������','�ҵ� �������� ���̽�ó�������� �������� �� ���߷� �׷�� ���� �귣�� �ҵ��� ��ǥ��ǰ���� ��Ų�� �μ��� �ϳ��� ������ 2 in 1 ���̽�ó�������Դϴ�. ī��Ų, ��Ÿ�� ������ ǳ���� �����ٰ� �������� ������� 8���� õ�� �Ĺ��� �������� ȥ�յǾ� �ջ�� �Ǻθ� ���������ָ� �����ϰ� �������� ����ȿ���� �����մϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (144,'������Ŀ� �Ǽ���','����ۿȹ� (BIOTHERM HOMME)','�μ�/������','�þ���Ϳ� �챸�� ������ ���� ������ �Ǻο� ������ �����Ͽ� �����ϰ� �ΰ��� �Ǻθ� ������Ű�� �ε巯�� ũ�� Ÿ�� �ؽ�ó�� �Ǻΰ� �Ϸ� ���� ������������ �����ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (145,'�� �������� ���ο� ����Ʈ �ַ��','���ָ� (MSOLIC)','�μ�/������','2�� ���� ������� ���й̹� ���ο� �μ�',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (146,'��Ƽ���� �����̴� �μ�','����޽� (PHYTOMES)','�μ�/������','�Ǻο� ������ �����ϴ� ��Ÿ��,���׳��� �Ǻο� ��ȣ���� �����Ͽ� ��ĥ�� �������� �Ǻθ� �׻� �����ϰ� ���پ� �ݴϴ�. ���̾ƽžƸ��̵尡 �Ǻθ� �����ϰ� ���� �ɾ��Ͽ� ĢĢ�� �Ǻ����� ��� ȯ�ϰ� �������ָ�, ��ġ�� ��ĥ���� �Ǻο� ������ �����Ͽ� �����ְ� �ε巯�� �Ǻθ� �����ϴµ� ������ �ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (147,'��� �׼� ������ �μ�','����� �ȹ� (LANEGE HOMME)','�μ�/������','���� �Ǻ��� ĢĢ�԰� ���ź���� �ѹ濡 �ɾ�! 1SHOT 2KILL ������ �μ�

- ���� ������ �������� ��ģ ���� �Ǻο� �ﰢ���� Ȱ���� ����
- ��� ������ �����־� ��� ��� ���� źź�� ���� �Ǻη� ����� �帳�ϴ�.
- 2���� �������� �ϳ��� �μǰ��� ���а��� �־� �����ϰ� ����ϰ� ����˴ϴ�.
- �ָ�, �̹� 2�� ��ɼ� ȭ��ǰ',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (148,'���� �μ�','���ø��� (LAB SERIES)','�μ�/������','�� ������ ��밨�� ���� ��Ų���� �Ǻο� Ȱ�°� ������� �ָ� �ܺ� �ڱ����κ��� �Ǻθ� ��ȣ���ݴϴ�.
�� ���� �Ŀ� ���� �ִ� ���󹰰� ������ �������ְ� �Ǻο� ������ �������־� ������ ���� ������ �Ǻη� ������ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (149,'���� ���̽�Ʈ �μ�','��Ű�� (UQINU)','�μ�/������','���� �Ǻ��� ������� �����ϴ� 48�ð� ���� �μ�.

�Ǻο� ����Ÿ� ���� ǳ���� �������� �ο��ϰ� ������ ������ �ɾ����ְ� �Ǻ� ������ �ٷ�����ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (150,'�� �����Ͼ� ���̽�ó����¡ ������','�����޶� (primera)','�μ�/������','* ������ ������ �� ��ǰ�Դϴ�.

�Ǻο� ǳ���� ������ �����ϸ鼭 ����Ÿ��� �ʰ� �Ų����� �������Ǵ� ���� �Ǻθ� ���� ������

- ��ĥ���� ���� �Ǻο� ����� �޽��� �־� �ǰ��ϰ� Ȱ�� �ִ� �Ǻθ� �����մϴ�.
- ���� ���� ȿ���� ����� ź�� �Ǹ��� �Ŀ�� ����
- ��Ÿ�츮 ���⹰�� �Ǻθ� ������Ű�� �Ǻ� �뷱�� ������ ���� �ǰ��� �Ǻη�
- ������ ���� ȿ���� �Բ� ����ϰ� ����Ǵ� ���� ������',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (151,'�ȹ� �� ����Ʈ �÷��̵�','��� (HERA)','�μ�/������','* �ش� ��ǰ�� ���а� ��ǰ ���̽��� ������ �� ��ǰ�Դϴ�.

- �Ǻθ� ���� ���پ��ָ�, �ܺ� ����ȯ�����κ��� �Ǻθ� ��ȣ�Ͽ� ������ �Ǻ� �������� �����Ͽ� Ȱ���ְ� ���� �ִ� �Ǻθ� �ϼ�
- ������ �������� ���� ���� ������ ������ �Ǻο� ǳ���� ������ ������ ����
- �ε巴�� �Ǻθ� ���ε� �߸���, ������ ����Ǿ� ������ ���� ������������ �ǰ��� �Ǻ� ������� �ο�',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (152,'�Ŀ� ���潺 ����Ʈ ������','BRTC (���Ƽ��)','�μ�/������','* �ش� ��ǰ ������ ������ �� ��ǰ�Դϴ�.

- ��� ������ ���� Ư�� ���÷����� ������ ����� źź�ϰ� �����ְ�, ������ ���� ����ϰ� ������ �Ǻ� ���� �Ų����� �����ݴϴ�.
- ���� �Ǻθ� ���� �ڿ����� ���� ������ ������ �����ϰ� ������ �뷱���� �����ݴϴ�.
- �̹�, �ָ� ������ ���� ��ģ �Ǻθ� Ȱ���ְ�, �ǰ��ϰ� �ɾ�',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (153,'����Ʈ ��Ŀ���� �μ�','���ø��� (LAB SERIES)','�μ�/������','�� �� ���� ����� ���а� ������ �����Ͽ� �ջ�� �Ǻθ� �������־� ���� Ȱ�� �ִ� �Ǻη� ������ݴϴ�.
�� �׻�ȭ �������� �����Ͽ� ���� ź�� �ְ� �ǰ��� �Ǻη� ������ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (154,'�μ� ��� ��Ʈ','��Ƽ��Ƽ (DTRT)','�μ�/������','�⸧��������!
- ����ģ�� �⸧���� �������� ���� �μ� �ϳ���!
- �� �԰� �� ���� �ö���� �⸧ ��� Ƽ���� ���� �μ� ����Ʈ �ϳ���!

�̷� ���ڿ��� ��õ�Ѵ�!
- ���⸧ ������ ��Ʈ���� �޴� ����
- �����̴� �μ��� ���� ����',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (155,'�Ƹ��߶� ����-�׶��� ���� ���ϵ� �μ�','�����̽��� (THE FACE SHOP)','�μ�/������','�� ��� �볪�� ���⹰��, ���ڿ� ��� ����ġ�� ������ ���� ���⹰�� ������ �����ϰ� �Ƿ��� ���� �Ǻο� �ε巯�� �������� �����ϸ� ���ϰ� ����ϰ� �Ǻθ� ���پ� �ִ� ������ ��� �μ��Դϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (156,'�� �� ���̽������¡ �μ�','ũ����ũ (CLINIQUE)','�μ�/������','�Ǻ� ��ȣ���� ��ȭ�����ִ� ������ ��� �μ�+.

�Ĺ� ���� ����ü�� �Ǻ��� ������ ��ä�� ���������ָ�, �Ǻ� ���� ������ �Ǻ� �ڱ��� ��ȭ�����ݴϴ�. �����ϰ� ������ �������� �Ǻο� ������ ����Ǹ� ������ ���� �Ǻθ� ����ϰ� ���ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (157,'�׿�Ŭ���Ŀȹ� �� ������ 80������','�����̽��� (THE FACE SHOP)','�μ�/������','�����ϰ� ���� �����̴� ����� �� ������ ���� 80% �̻� ������ ��Ż �����μ�.

1. ������ �ŷ����� �Ǻ� �ڽŰ��� ȸ�������ִ� ���õ� ����� �Բ� �ָ� ���� �� �̹� ������� �Ǻ� ������� ���� ���׷��̵� ���� �ε巯�� ���������� ������ �μ��Դϴ�.
2. ������ �������κ��� ������ ��ĥ���� �Ǻΰ�� ĢĢ���� �Ǻ� �Ȼ��� �����Ͽ� ���� ź�����̰� ���� �����ϰ� �����ݴϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (158,'������Ƽ�� �ξ��� ������� �ȹ�','������Ų (It��S SKIN)','�μ�/������','*������� ��ǰ�Դϴ�.

��ĥ���� �����Ǻο� ������ ������ �뷱���� �����ְ� ����ϰų� ����Ÿ� ���� �ε巴�� ����ϰ� ���������ִ� ��޽����� ��밨�� �ָ���ɼ� ������ �� �μ��Դϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (159,'�ھ� �μ�','�� �����丮 ���� �� (The History of Whoo)','�μ�/������','���� �Ǻο� �ǰ��� ���⸦ �ο��ϴ� ���� �ѹ� �μ��Դϴ�. ���� �ִ� ������ ������ ���� �Ǻο� ���а� ������ �����Ͽ� �Ǻο� �����԰� ���⸦ �ο��մϴ�.

�ε巯�� �λ�� �����ӿ� ������ �߸��� ǰ�� �ִ� Ȳ���� ���������� ��¡�ϴ� ���� �����ѹ� ȭ��ǰ ������:�� Ȳ������ ����Ǿ��� ���а� ���ߺ������ ���� �ε巯��鼭�� ���� źź�� �Ǻη� �ٽ��� ������ Ȱ�⸦ ��ã�� �ִ� ���� ���� �����Դϴ�.',0);
Insert into SCOTT.PRODUCT_INFO (PNUMBER,PNAME,PBRAND,PCATEGORY,PINFORMATION,PSCORE) values (160,'�� ������Ʈ �̵�� ������ƽ ��Ƽ �׼� 8 �����̺� ���̽��������','�η��� �ĸ� (LOREAL PARIS)','�μ�/������','8�� �������� 24�ð� ���ӵǴ� �Ǻ� ������!
�߱�, ����, ��, ��Ʈ������ ��ģ �Ǻθ� ���� ��������¡ ���� �μ�

��Ƽ �׼� 8�� �߱�, ��, ����, ��Ʈ������ ��ģ �Ǻ��� ��� ������ �ѹ��� �ذ��մϴ�. ���� ��ħ �� 8���� ���ڷ� 24�ð� �����ϰ� ������ ��ġ�� �Ǻθ� �����ϼ���! ������ ���п����� ����, ��Ÿ��C ����, ���׳׽� �̳׶� ����, �ڿ� ��Ʈ�� �Ǻ� ����Ÿ� ��ȭ ���.',0);
REM INSERTING into SCOTT.PRODUCT_INGREDIENT
SET DEFINE OFF;
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'Ŭ����׽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��Ÿ���Ҹ�����Ʈ;��Ÿ���ֺ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�������ʷ��۶�����;���������ʷ��۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�������ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�Ƽ�ƿ�۷��ڻ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'Ʈ���ҷν�;Ʈ���ҷο���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'������ƶ��;������ƶ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'Ŭ�����⹰; Ŭ�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'ĳ�������⹰; ��Ʈ��ī�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�����Ҹ�����Ʈ20;�����ֺ���Ʈ20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'ȿ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��Ÿ���Ҹ�����Ʈ;��Ÿ���ֺ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��ġ�������⹰;�����Ͼ�ǳ��ȭ���⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'���̼ҵ���������Ʈ;��ҵ���������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�ҵ���������-���Ŭ�ζ��̵���������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�ҵ���������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��ĥ�����ǵ��;��ƿ�����Ǵ��̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�׿���ƿ�۶����ݴ�����Ÿ�뿡��Ʈ;�׿���ƿ�۶����ݵ���Ÿ�뿡��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���̵��������Ƽ������(C6-14�÷���)');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�������ʹ�-51');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���̾ƽžƸ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�����۸�����-3��ĥ�۷��ڿ������׾Ʒ���Ʈ;�����۸�����-3��ƿ�۷��ڿ������̽��׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�����̵忣��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���̵��������Ƽ�巹��ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�ҵ����̾˷�γ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��Ÿ-�۷�ĭ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���佺�׷�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���佺�ΰ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�ﳪ�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'ȿ���ȿ������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��Ǯ���⹰;���ڶ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�λ￭�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��Ȳ�������⹰; ����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'������⹰; ����Ѹ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'ī����/�Ѹ�/�ٱ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���ڳ����������⹰;��Ÿ�γ����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���ڳ�������;��Ÿ�γ�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'ȸȭ����Ķ����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'����˶�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�޵�������Ÿ-����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�Ǹ�ī');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�۸��������׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'Ʈ�θ�Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�ҵ㽺�׾Ʒ��ϱ۷�Ÿ����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�۸������۷��ڻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�˶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���̵�Ͻÿ�ĥ��ũ������Ʈ/�ҵ��ũ�����ϵ��ĥŸ�췹��Ʈ��������;���̵�Ͻÿ�ƿ��ũ������Ʈ/�ҵ��ũ�����ϴ��̸�ƿŸ�췹��Ʈ��������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���������ǵ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'Ʈ������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'������-100���׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�����Ҹ�����Ʈ20;�����ֺ���Ʈ20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'�����Ҹ�����Ʈ60;�����ֺ���Ʈ60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'ī�������۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'1,2-�����; 1,2-�����̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (149,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'����˶�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'���ġ��/��ҵ��ġ��ũ�ν�������;���̸�Ƽ��/��Ҵ��̸�Ƽ��ũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'��ƿ��ĥ���뿡��Ʈ;��ƿ��ƿ���뿡��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'����Ŭ�����Ƿϻ�;����Ŭ�����Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'�������; �þ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'�ҹ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'����ĥ���������⹰;���δϿ������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'������⹰;����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'���������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'��Ÿ�츮���⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'¡ũ�۷��ڳ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'�ϸ𴽱۸��ø�����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'���׾Ƹ����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'����Ҿ��ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'�۸�����ī��������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'�۸��������׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'C14-22���ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'C12-20��ų�۷��ڻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'�����ǵ��; �����Ǵ��̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'1,2-�����; 1,2-�����̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'������-100���׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'C12-14�ķ���-12');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'���ġ�ܿ�;���̸�Ƽ�ܿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'Ʈ�θ�Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (150,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'���ڿ�;��ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'���̾ƽžƸ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'����Ŭ�����Ƿϻ�;����Ŭ�����Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'ȿ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�ƻ��̾������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�Ƽ��ζ����⹰;���ε�ü���������⹰;�ٺ��̵���ü�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�����Ƴ��������⹰;���糪�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'���̵�Ѷ�������ũ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�����ȹ��������̵�Ͻ����Ѹ�;���ȹ��������̵�Ͻ����Ѹ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'1,2-�����; 1,2-�����̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�۷�ŸƼ��;�۷�Ÿġ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�����������-114/�������Ƿ�ī���ζ���;�����������-114/�������Ƿ�ī���Ѷ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'��-������-18��ĥ���ڵ��ĥ�Ƕ�;��-������-18��ƿ���ʹ��̸�ƿ�Ƿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�ҵ㸶�׳׽��Ǹ�����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'��ũ������Ʈ/C10-30��ų��ũ������Ʈũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'��ũ������Ʈ/���׾Ƹ���ũ������Ʈ/���ġ�ܸ�Ÿũ������Ʈ��������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'ī�������۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�ݷ����׷�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�����Ҹ�����Ʈ20;�����ֺ���Ʈ20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'�����ǵ��; �����Ǵ��̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'������-60���̵��������Ƽ��ĳ���Ϳ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'���̵��������Ƽ��������Ƽ���ݸ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'���̵�Ͻÿ�ĥ��ũ������Ʈ/�ҵ��ũ�����ϵ��ĥŸ�췹��Ʈ��������;���̵�Ͻÿ�ƿ��ũ������Ʈ/�ҵ��ũ�����ϴ��̸�ƿŸ�췹��Ʈ��������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'Ʈ�θ�Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (151,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�������ʷ��۶�����;���������ʷ��۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'ī������/ī����Ʈ���۸������̵�; ī������/ī����Ʈ���̱۸������̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���̾ƽžƸ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���׾Ƹ��־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�����۸�����-10���׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�۸��������׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���׾Ƹ����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'����Ŭ�����Ƿϻ�;����Ŭ�����Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'��Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�ҵ����̾˷�γ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���ϸ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�����丱�Ƽ�����Ʈ;������ѾƼ�����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�Ҹ���ź���׾Ʒ���Ʈ;�ֺ�ź���׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'1,2-�����; 1,2-�����̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���׳�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�˶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�����ǵ��; �����Ǵ��̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'ī�������۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�Ȱ�ȸ�����⹰;��Ÿ�ƴϽ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'Ŭ����׽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�������⹰;�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���ּҳ��������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�ٽø����⹰;�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'Ŭ�����⹰; Ŭ�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���ƽŽ����⹰;���ƽŽ��������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'��Ǯ���⹰;���ڶ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'Ȳ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�������⹰;���ʻѸ����⹰;�����ΰ��ʻѸ����⹰;â�����ʻѸ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'ĳ���ϲ����⹰; ��Ʈ��ī���Ʋ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'��ȣĶ����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'��������Ʈ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'Ŀ�����⹰;Ŀ�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'ȫȭ���⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'ȣ������⹰; ȣ��ٻѸ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�㲮�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���ʳ��������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'������ȭ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'�󺥴���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'ĳ���ϲ�/�����⹰;��Ʈ��ī���Ʋ�/�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (152,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'Ʈ��ī������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��ĥ����̼ҽ��׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'���׾Ƹ����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�������; �þ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'ȣȣ�ٿ�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'ȣ������⹰; ȣ��ٻѸ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'Ȳ�����⹰;Ȳ�������������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'ȿ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'ȿ��������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�����丱�Ƽ�����Ʈ;������ѾƼ�����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�ҵ����̾˷�γ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�ƽ��ں������丱��������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'���̵��������Ƽ�巹��ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'���׾Ƹ��۷��ڻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'����ũ���������ع�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��ĥ�۷缼��-20; ��ƿ�۷缼��-20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'����ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'���̵�Ͻÿ�ĥ��ũ������Ʈ/�ҵ��ũ�����ϵ��ĥŸ�췹��Ʈ��������;���̵�Ͻÿ�ƿ��ũ������Ʈ/�ҵ��ũ�����ϴ��̸�ƿŸ�췹��Ʈ��������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�����Ҹ�����Ʈ60;�����ֺ���Ʈ60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'�����;־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'Ŭ����׽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��ĥ�Ķ�;��ƿ�Ķ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'����ġƼ;��ƿ����Ƽ�����̵�Ͻ���翣');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'���ġ��/��ҵ��ġ��ũ�ν�������;���̸�Ƽ��/��Ҵ��̸�Ƽ��ũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�������ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�����Ҹ�����Ʈ60;�����ֺ���Ʈ60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'���̵�Ѷ������дܹ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'��ƿ��ĥ���뿡��Ʈ;��ƿ��ƿ���뿡��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'ĳ���ϲ����⹰; ��Ʈ��ī���Ʋ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�󺥴����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'���۹�Ʈ���⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�����������⹰; ���������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'��ũ������Ʈ/C10-30��ų��ũ������Ʈũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'����Ŭ�����Ƿϻ�;����Ŭ�����Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'��ҵ��ġ��/��ġ�ܽǼ���������ũ�ν�������;��Ҵ��̸�Ƽ��/��Ƽ�ܽǼ�����������ũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�Ҹ���ź�̼ҽ��׾Ʒ���Ʈ;�ֺ�ź���̼ҽ��׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'Ʈ���ҷν�;Ʈ���ҷο���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�����Ҹ�����Ʈ20;�����ֺ���Ʈ20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�̼Ҽ��׽�-25;���̼Ҽ��׽�-25');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�̼Ҽ��׽�-10; ���̼Ҽ��׽�-10');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�۸��������׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'������-100���׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'������ũ������Ʈ-13');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�����̼Һ���;�������̼Һ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'�Ǹ�ī');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'ƼŸ��������̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'Ʈ�θ�Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'Ŭ����׽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'ī�������۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (154,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'�볪�����⹰;��λ� �Ұ��������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'�������ʷ��۶�����;���������ʷ��۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'��Ÿ��������ƿ��Ʈ��ĥ���뿡��Ʈ;��Ÿ��������ƿ��Ʈ��ƿ���뿡��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'1,2-�����; 1,2-�����̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'�Ҹ�����;�ֺ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'���ּҳ��������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'�ø������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'�����۸�����-3��ĥ�۷��ڿ������׾Ʒ���Ʈ;�����۸�����-3��ƿ�۷��ڿ������̽��׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'�Ǹ�ī');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'��ũ������Ʈ/C10-30��ų��ũ������Ʈũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'���̵��������Ƽ�巹��ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'��Ÿ�����̵�ϻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'��ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (155,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�̳׶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'��Ʈ�Ѷ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'���׾Ƹ��־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�۸��������׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'��������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�췹��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'Ʈ����ź�þƹ�;Ʈ���̿�ź�þƹ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�������⹰;���̿������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�����ʷ��۶����ݵ�ī������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�عٶ�⾾������ũ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'�ҵ����̾˷�γ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'Ʈ���ҵ��̵�Ƽ����;Ʈ���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'����227ȣ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'Ȳ��4ȣ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (156,'Ȳ��5ȣ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�ƾ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'��Ÿ��������ƿ��Ʈ��ĥ���뿡��Ʈ;��Ÿ��������ƿ��Ʈ��ƿ���뿡��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���̾ƽžƸ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�����۸�����-3��ĥ�۷��ڿ������׾Ʒ���Ʈ;�����۸�����-3��ƿ�۷��ڿ������̽��׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���׾Ƹ����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�۸��������׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'������-6ī������/ī�����۸������̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'ī������/ī�����۸������̵�;ī������/ī�����۸���������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'������-100���׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�����Ҹ�����Ʈ60;�����ֺ���Ʈ60');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'����˶�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'��õ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�ȹ����Ͽø�����Ÿ�̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'C12-13�ķ���-23');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'C12-13�ķ���-3');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�۸�����������Ÿũ������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'1,2-�����; 1,2-�����̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'�����ʷ��۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���׳�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���ҵ��ġ��/���ġ����������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���̵�Ͻÿ�ĥ��ũ������Ʈ/�ҵ��ũ�����ϵ��ĥŸ�췹��Ʈ��������;���̵�Ͻÿ�ƿ��ũ������Ʈ/�ҵ��ũ�����ϴ��̸�ƿŸ�췹��Ʈ��������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'��Ÿ�����̵�ϻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (157,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'���������׿�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�������ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'������-32');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�Ҹ�����;�ֺ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�̼���絥ĭ;���̼���絥ĭ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�̼ҽ��׾Ƹ����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'���̹������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�������׷θ𳪽���ȿ���⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'�Ƽ�ƿ�����Ÿ�̵�-8');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'��ƿ����ĭ��;2-��ƿ����ĭ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'��ƿ���۶��������ڿ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'Ʈ����ź�þƹ�;Ʈ���̿�ź�þƹ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'Ŭ����׽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'ī�������۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'��ũ������Ʈ/C10-30��ų��ũ������Ʈũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'��ĥ����ο���;��ƿ����ο���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (158,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (159,'�������� ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (160,'�������� ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'����˶�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (153,'��ƿ���ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���̵��������Ƽ������(C6-14�÷���)');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���ڿ�;��ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'��Ÿ��������ƿ��Ʈ��ĥ���뿡��Ʈ;��Ÿ��������ƿ��Ʈ��ƿ���뿡��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'��Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'����Ŭ�����Ƿϻ�;����Ŭ�����Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�������⹰;�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�ﳪ�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'Ŭ�����ͼҳ�������/�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���鳪�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'����ʿ������⹰; ��ġ�Ҽ����忭�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�ֲ������⹰;�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�쳪�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�޵�����������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'Ʈ���ҷν�;Ʈ���ҷο���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���̵�Ͻ������ʽ�Ÿġ��������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���׾Ƹ����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'������-100���׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�۸��������׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'Ʈ�θ�Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���׾Ƹ��־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�ȹ�ƽ�־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���ġ�ܿ�;���̸�Ƽ�ܿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'��ũ������Ʈ/C10-30��ų��ũ������Ʈũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���׾Ƹ��������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�����۸�����-3��ĥ�۷��ڿ������׾Ʒ���Ʈ;�����۸�����-3��ƿ�۷��ڿ������̽��׾Ʒ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���̵�Ͻ������ʺ��ȹ�Ÿ���̵忥�̿���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�̴�����츱ī�ٸ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'�����Ҹ�����Ʈ20;�����ֺ���Ʈ20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'���ڿ�;��ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'��Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'������-6');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'������-32');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�Ƶ������������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�ҵ����̵�ϻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'������-6-������Ʈ�󵥼���-30');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�ҵ�����̵��۷�Ÿ���̵���̽�;�ҵ���̶��̵��۷�Ÿ�̵���̽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'��Ʈ���־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�ҵ����̾˷�γ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'����ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'��Ʋ�󽺽ôٲ�������; ��Ʋ�󽺽ôٳ�����������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'���ӿ���; �������ʿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'��ݵ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'���ּҳ����ٿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�Ȱ�ȸ�⿭��/������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'���۹�Ʈ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'������ٿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (142,'�������鳪���ٿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (143,'�������� ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�������; �þ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���ο���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�ϸ�������ũ�����ϵ��ĥŸ�췹��Ʈ;�ϸ�������ũ�����ϴ��̸�ƿŸ�췹��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���ġ�ܿ�;���̸�Ƽ�ܿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�������÷���θ�ĥ�̼������ʿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�����丱�Ƽ�����Ʈ;������ѾƼ�����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��Ƿ��۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���׳�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�ȹ��������Ѹ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�ȹ�ƽ�־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���׳׽��۷��ڳ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�ݷ����׷�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'Ʈ����ź�þƹ�;Ʈ���̿�ź�þƹ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�۷��ڿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�ƽ��ں��۷��ڻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'2-�÷��ƹ̵�-1,3-��Ÿ��ĭ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�ҵ��ȹ����ϻ��ڽó���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���׳׽��ȹ����ϱ۷�Ÿ����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'����������ǵ��;����������Ǵ��̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��Ʈ�����Ƕ��ȿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�췹��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'¡ũ�۷��ڳ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���̵�Ͻ��ȹ����Ͻ��ΰ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�����̵忣��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�����츮�Ƿ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���̵�Ͻý�Ʈ�γھ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'����Ʈ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��Ʈ�γڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'ī�۱۷��ڳ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��Ʈ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'û��1ȣ�˷�̴�����ũ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��Ǵ���Ƽ����Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�۷�Ÿ�;־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��������۷��ڳ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'��ũ�ο���;��ũ�ο���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�˶��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�ƽ���ƽ�־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'�������ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (144,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��ĥ�����ǵ��;��ƿ�����Ǵ��̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'����Ŭ�����Ƿϻ�;����Ŭ�����Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'1,2-�����; 1,2-�����̿�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���̾ƽžƸ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���Ʈ����ġ��;Ʈ�������Ʈ���̸�Ƽ��;���Ʈ���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'ƼŸ��������̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���ڿ�;��ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�����۸�����-10��췹��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�Ķ�ũ�������⹰;�÷����ɾƾ�ũ������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�͸�Ŀ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���ǲ������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��Ƽ��ũ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'ī��ī�����⹰;���������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�ƺ�ī���������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��Į�����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�ҵ����̾˷�γ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���̵��������Ƽ�巹��ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�ϸ𴽾�ũ�����ϴ��̸�ƿŸ�췹��Ʈ/��������������;�ϸ𴽾�ũ�����ϵ��ĥŸ�췹��Ʈ/��������������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���ġ��/��ҵ��ġ��ũ�ν�������;���̸�Ƽ��/��Ҵ��̸�Ƽ��ũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��ƿ�Ǿ�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��ƿ���̾��̼������������ǿ¾Ƹ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��ĥ��źī���縶�̵�;��ƿ��źī���縶�̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'Ʈ�������ī�������Ƕ�;Ʈ���̿����ī�������Ƿ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�������ʹ�-51');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��Ÿ-�۷�ĭ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�۶��̽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�ҵ��Ǿ�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�Ҹ�����;�ֺ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�˶��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'Ʈ������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���Ѹ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�۷�Ÿ�;־���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���̽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'�۷�ŸƼ��;�۷�Ÿġ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���䵦��Ʈ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (145,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'����Ŭ�θ�ġ��;����Ŭ�θ�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'��ƿ��ĥ���뿡��Ʈ;��ƿ��ƿ���뿡��Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'���̾ƽžƸ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'���ġ��;���̸�Ƽ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'���ÿ�ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'��ũ������Ʈ/C10-30��ų��ũ������Ʈũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'Ʈ����ź�þƹ�;Ʈ���̿�ź�þƹ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'Ŭ����׽�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'���׳�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'�󺥴����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'����������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'�������������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'���鸮�����⹰;Ÿ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'��Ǯ���⹰;���ڶ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'ĳ���ϲ����⹰; ��Ʈ��ī���Ʋ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'�������⹰;���ʻѸ����⹰;�����ΰ��ʻѸ����⹰;â�����ʻѸ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'�Ǹ�ī');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'�ҵ����̾˷�γ���Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'���ϸ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (146,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'����Ŭ����Ÿ�Ƿϻ�;����Ŭ����Ÿ�Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���ڿ�;��ź��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'�Ǹ�ī');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'����Ŭ�����Ƿϻ�;����Ŭ�����Ƿϼ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���̾ƽžƸ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'ƼŸ��������̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���̵�Ͻÿ�ĥ��ũ������Ʈ/�ҵ��ũ�����ϵ��ĥŸ�췹��Ʈ��������;���̵�Ͻÿ�ƿ��ũ������Ʈ/�ҵ��ũ�����ϴ��̸�ƿŸ�췹��Ʈ��������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���ġ��/��ҵ��ġ��ũ�ν�������;���̸�Ƽ��/��Ҵ��̸�Ƽ��ũ�ν�������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'�����Ǹ���-11');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'������-60���̵��������Ƽ��ĳ���Ϳ���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'ī����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'Ʈ�θ�Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'�۸�����ī��������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'����ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'��ĥ��Ǳ۸�����;��ƿ��Ǳ۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���佺�ΰ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���̵��������Ƽ����������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���׳�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'��ҵ��̵�Ƽ����;���̼ҵ��̵�Ƽ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'�Ƶ����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���׾Ƹ����ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'����������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���׾Ʒ���-20');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'��ƿ���ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���̵��������Ƽ�巹��ƾ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'����ƾ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'���׳׽�������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'Į��Ŭ�ζ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'Ȳ��5ȣ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'�����������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'¡ũ������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (147,'�ƽ��ں��۷��ڻ��̵�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�������ʷ��۶�����;���������ʷ��۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�������ڿ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��ƿ���۶�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'ȿ�����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�۸�����');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��ġ�������⹰;�����Ͼ�ǳ��ȭ���⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'���۹�Ʈ�ټ�');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'ĳ���ϲ����⹰; ��Ʈ��ī���Ʋ����⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'ĳ�������⹰; ��Ʈ��ī�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'Ŭ�����⹰; Ŭ�������⹰');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�Ƽ�ƿ�۷��ڻ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'Ʈ���ҷν�;Ʈ���ҷο���');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'��Ÿ��');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'���̼ҵ���������Ʈ;��ҵ���������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (148,'�ҵ���������Ʈ');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'������');
Insert into SCOTT.PRODUCT_INGREDIENT (PNUMBER,INGREDIENT) values (141,'��ƿ���۶�����');
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
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (141,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (142,'���ڱ�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (142,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'��Ÿ������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'����ο�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (143,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (144,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (144,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (144,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (145,'�̹�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (145,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (145,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'�̹�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'�ָ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (146,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'�̹�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'�ָ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (147,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (148,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'���ڱ�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (149,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (150,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'����ο�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'�Ǻΰ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (151,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'�̹�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'�ָ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (152,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'����Ʈ����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'�Ǻ�ź��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (153,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (154,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (154,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (155,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (155,'���ڱ�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (155,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (156,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (156,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (156,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'�̹�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'�ָ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (157,'�Ǻ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'�ָ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'�Ǻ�ź��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (158,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'����ο�');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'�������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'����������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (159,'�Ǻ�Ȱ��');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'���а���');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'�Ǻΰ�����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (160,'��������');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (141,'����');
Insert into SCOTT.PRODUCT_TAG (PNUMBER,TAG) values (141,'�ָ�����');
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
Insert into SCOTT.REPLYQNA (BNO,RNO,BCONTENT,BWRITER,REG_DT) values (5,21,'������������������','asdasd',to_date('20/06/09','RR/MM/DD'));
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
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('blue2','asdasd','asdasd','����','12-12-12','Solar','2313213132','wnsp@naver.com','music,movie',to_date('20/04/01','RR/MM/DD'));
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('js11','123','����','����','12-12-12','Solar','2313213132','wnsp@naver.com','music,trip',to_date('20/04/01','RR/MM/DD'));
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('blue1','123','hong','a','1980-5-5','���','111-1111','aa@aa.com','movie',to_date('20/03/03','RR/MM/DD'));
Insert into SCOTT.MEMBER (ID,PWD,NAME,GENDER,BIRTH,IS_LUNAR,CPHONE,EMAIL,HABIT,REGDATE) values ('aa',null,null,'����','--','Solar',null,null,null,to_date('20/04/01','RR/MM/DD'));
REM INSERTING into SCOTT.MEMBERLIST
SET DEFINE OFF;
Insert into SCOTT.MEMBERLIST (MNUM,ID,PASS,MAIL,PHONE,BIRTH,SKINTYPE,GENDER,JOINDATE,AUTHORITY) values (61,'vvvvv','asdasd123456!','aaaa@naver.com','01077777777','2017-06-13','�ΰ���','��',to_timestamp('20/06/12 09:33:34.224000000','RR/MM/DD HH24:MI:SSXFF'),0);
Insert into SCOTT.MEMBERLIST (MNUM,ID,PASS,MAIL,PHONE,BIRTH,SKINTYPE,GENDER,JOINDATE,AUTHORITY) values (42,'asdasd','458cc88fa641ce086b5c45439c3d4463626668022e6df6e772b0a45269291a5b','asdasd@naver.com','0109848196','2020-06-18','�Ǽ�','��',to_timestamp('20/06/09 11:28:03.827000000','RR/MM/DD HH24:MI:SSXFF'),1);
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
