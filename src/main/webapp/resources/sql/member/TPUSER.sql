
  CREATE TABLE "SCOTT"."TPUSER" 
   (	"NAME" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"PHONE" VARCHAR2(40 BYTE), 
	"TEL" VARCHAR2(40 BYTE), 
	"EMNUM" NUMBER(4,0), 
	"TNUM" NUMBER(4,0), 
	"ID" VARCHAR2(50 BYTE), 
	"PW" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(60 BYTE), 
	"POSITION" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"JOIND" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"LOGIN" NUMBER(2,0) DEFAULT 0 NOT NULL ENABLE, 
	"SIGNATURE" VARCHAR2(60 BYTE), 
	"PROFILE" VARCHAR2(100 BYTE), 
	 PRIMARY KEY ("EMNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 
