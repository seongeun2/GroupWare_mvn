--------------------------------------------------------
--  ������ ������ - ������-4��-16-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BOARD" 
   (	"NUM" NUMBER(*,0), 
	"BOARDID" VARCHAR2(1 BYTE) DEFAULT '1', 
	"WRITER" VARCHAR2(10 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"PASSWD" VARCHAR2(12 BYTE), 
	"REG_DATE" DATE, 
	"READCOUNT" NUMBER(*,0) DEFAULT 0, 
	"REF" NUMBER(*,0), 
	"RE_STEP" NUMBER(*,0), 
	"RE_LEVEL" NUMBER(*,0), 
	"CONTENT" VARCHAR2(3000 BYTE), 
	"IP" VARCHAR2(20 BYTE), 
	"FILENAME" VARCHAR2(30 BYTE), 
	"FILESIZE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.BOARD
SET DEFINE OFF;




-- �����Խ��� ������

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (82,'2','������','admin@daum.net','���� �������� ����','1',to_date('18/04/16','RR/MM/DD'),0,82,0,0,'�ֽ�ȸ�� ��ī�޵��Դϴ�.

2008�� 5�� 23��(��) 13:00~18:30�� �������б� �����ǰ����� ���� 30�ֳ� ��� "���ؼ� ������ ���� ���� ��������"�� �������б� �����ǰ����� �밭�翡�� �����Ͽ����ϴ�.
�̳� ���� ���ؼ��� ���� ����� ���� ����ǥ �� ���� �������⿡ ���� ���ǰ� ���� �Ǿ����ϴ�.
�����մϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BO
ARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (83,'2','������','admin@daum.net','TV ������� ����ȳ�','1',to_date('18/04/16','RR/MM/DD'),0,83,0,0,'TV ���� ���� 2007�� 7�� 1�Ϻ��� ���� ȭ���� SBS ������ħ �÷��� ��(09:00~09:30)���� �����ϰ� �ֽ��ϴ�.
�����ִ� �е鿡 ���� ���� ��Ź�帳�ϴ�.
�����մϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (84,'2','������','admin@daum.net','����μ������� ����','1',to_date('18/04/16','RR/MM/DD'),0,84,0,0,'2008�� 6�� 26�� ��������������� ���Ͽ� KOITA(�ѱ�������������ȸ)�κ��� ����μ������� ������ �����޾ҽ��ϴ�. 
������ ���� ���� R&D(������� �� ���� ��)�� ���� ���� �����ϴ� ��ī�޵� �ǰڽ��ϴ�.
�����մϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (86,'2','������','admin@daum.net','ǳ���� ���','1',to_date('18/04/16','RR/MM/DD'),0,86,0,0,'���� �޻�ó�� ǳ��Ӱ� ������ó�� Ǫ���� ���� �ǽð�, ���ص� ���� �е�� �Բ� �ϴ� ������ �Ѱ��� �ǽñ� ����մϴ�.

�߼� ���� ���� 
�Ͻ� : 2008�� 9�� 12��(��)~16��(ȭ)
�����մϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (87,'2','������','admin@daum.net','â����� �� ��������','1',to_date('18/04/16','RR/MM/DD'),0,87,0,0,'�ȳ��ϼ���.
�ֽ�ȸ�� ��ī�޵��Դϴ�.
�ݹ� 4�� 29�� â����� �� 5�� 1�� �ٷ����� ���� �����Ͽ� �ϱ�� ���� â����� ��ũ�� �� ���������� �����մϴ�.

*��ũ������
�Ͻ� : 2009��4��29��(��) ~ 30��(��) 
��� : ��������

*��������
�Ͻ� : 2009�� 5��1��(��)~5��(ȭ) 
��� : ��������','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (88,'2','������','admin@daum.net','�µ�����(Good Design) �����ȳ�','1',to_date('18/04/16','RR/MM/DD'),0,88,0,0,'�ֽ�ȸ�� ��ī�޵��Դϴ�.
�ѱ���������������� �����ϴ� 2009�⵵ ��ݱ� �µ�����(Good Design)��ǰ�� AML3000 ���� �����Ǿ����ϴ�.
�����ε� ���� ���� ��Ź�帳�ϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (89,'2','������','admin@daum.net','���ν��� ���� �̺�Ʈ','1',to_date('18/04/16','RR/MM/DD'),0,89,0,0,'�ȳ��ϼ���.
�ֽ�ȸ�� ��ī�޵� �Դϴ�.

2009�� 9�� 15�Ϻ��� 10�� 3�� ���� ��ī�޵� ���ν��Ӹ� ������ ���� �����մϴ�.
���ɸ޵��� �پ��� ��ǰ�� ����� ����� �� �ִ� ��ȸ�� Ǫ���� ��ǰ�� �����ϰ� ������ �����ִ� �е��� ���� ������ ��Ź�մϴ�.
�����մϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (90,'2','������','admin@daum.net','UL���� �ȳ�','1',to_date('18/04/16','RR/MM/DD'),0,90,0,0,'
�ȳ��ϼ���.
�ֽ�ȸ�� ��ī�޵� �Դϴ�.

���� ����� ���� www.ul.com ����Ʈ�� �����Ͻ� �� "alkamedi"�� �˻��Ͻø�, ������ ���� UL���� ������ Ȯ���Ͻ� �� �ֽ��ϴ�.

�ش�� : AMS 2000, AML 3000, AML 3000S
�ش��ǰ : Transformers 2����
','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (91,'2','������','admin@daum.net','���ν��� 1�� �ߴ�� ����','1',to_date('18/04/16','RR/MM/DD'),0,91,0,0,'�ȳ��ϼ���.
�ֽ�ȸ�� ��ī�޵� �Դϴ�. 
�ݹ� ����� ���ν��� ���� �̺�Ʈ ��÷�� �������� ���ϵ帳�ϴ�. 
[���ν��� 1�� �ߴ�� ����] ������ �� �о� ���ð� ���� �����Ͽ� �ֽñ� �ٶ��ϴ�. 
�̺�Ʈ�� ��÷�� �Ǽ̴��� �ߴ�Ŀ� �������� �����ø� ���ν��� �ڰ��� �־����� �ʽ��ϴ�. 

[(��)��ī�޵� ���ν��� 1�� �ߴ�� ����] 

1. �� �� : 2009�� 10�� 20��(11:00~14:30����, �߽�����, 10�� 50�б��� �� ���� ���ּ���) 
2. �� �� : �Ⱦ�ް��븮 1�� ��ȸ�ǽ�(��ȸ�ǽ� �Ա��� ������ ��ġ ����) 
(���ּ� : ��⵵ �Ⱦ�� ���ȱ� ���絿 799 �Ⱦ�ް����� 1��) 
3. ������ : 

��. �ڰ� ���� �̿� �� : 
Ȩ������ ȸ��Ұ�>ã�ƿ��ô� ��(�൵) ���� 
�׺���̼� �̿��
(��ȣ�˻�:��ī�޵�, ��ȭ��ȣ�˻�:031-421-5261, �ּҰ˻�: ���� ���ּ��Է�) 
�ް����� �ǹ� ���԰���Ʈ ��� �� ���� ������ ������ �̿�
(��ī�޵� �������� ���� ī�带 �����ֽø�, ���� �������� �帳�ϴ�) 

��. ����ö �̿� �� : 
����ö 4ȣ�� ���̿� 1���ⱸ �̿�, ���������� �ǹ� ��
�������������忡�� �Ⱦ�ް��������� ���� �̿�(����10��35�� ���) 
������ ��ģ ��� �� �ǳ��� ���̿� 3���ⱸ �տ��� �ý��̿�(�⺻���) ','0:0:0:0:0:0:0:1',null,0);


Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (92,'2','������','admin@daum.net','�������� �ȳ�','1',to_date('18/04/16','RR/MM/DD'),0,92,0,0,'�ȳ��ϼ���.
�ֽ�ȸ�� ��ī�޵��Դϴ�.

�� ���� �����ֽ� ������ ���Ծ� 2011�� ���ؿ� Ȯ�������� �ϰ� �Ǿ����ϴ�.
Ȯ�������� �����Ͽ� �ϱ������� ��ȭ �� ���ͳ� ���� � ������ ������ �� �־� �����մϴ�.

-  ��  ��  -  
�� Ȯ������ ��¥ : 2011�� 1�� 6��(��) ~ 8��(��) 3�ϰ�
�� ����ٹ� ��¥ : 2011�� 1�� 10�� �����Ϻ��� ~
�� ���� �� ���� ���� �ּ�
    ��⵵ �Ⱦ�� ���ȱ� ���絿 799 �Ⱦ�ް����� 601, 602ȣ
    ��ȭ : 031-421-5261(������ ����)
    �ѽ� : 031-426-5260(������ ����)

* 1�� 10�Ϻ��� �����Ǵ� ������ �ּҴ� ������ ���� �ּҷ� �߼ۺ�Ź�帳�ϴ�.
* ���� �Ⱓ���� �Ϲ���ȭ�� �ʵ� �� �������� ����� �ڵ����� �̿��� �ֽñ� �ٶ��ϴ�.

�����մϴ�.
','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (93,'2','������','admin@daum.net','Rohs �����ȳ�','1',to_date('18/04/16','RR/MM/DD'),0,93,0,0,'�ȳ��ϼ���.
�ֽ�ȸ�� ��ī�޵��Դϴ�.

��-EU FTA��ȿ�� �յΰ� �ִ� ������ EU���忡 ���� ������ ���� ����� ���� �ݿ� �ϱ� �ش�𵨿� ���� Rohs������ ȹ���Ͽ����ϴ�. �ش� ������� ��ü �� ���� �����ü�� ���� ������ ��Ź�帳�ϴ�.

�ش�� : AMS2000, AML3000, AMS2100, AMS4000, AMS4100 & S Type
�����մϴ�.','0:0:0:0:0:0:0:1',null,0);


Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (94,'2','������','admin@daum.net','2017 Winter vacation notice','1',to_date('18/04/16','RR/MM/DD'),1,94,0,0,'�ȳ��ϼ��� Ŀ�������Դϴ�.

Ŀ�������� �ϰ� �ް��� ���� ������ �帳�ϴ�.

Ŀ�������� �ϰ� �ް��Ⱓ�� 2017.12.26 ~ 2017.12.29 �Դϴ�.

�ϰ� �ް� ���� ���� �� �������� �帱 �� �ֵ��� ��ӵ帳�ϴ�.

���� �� ��ǰ�߼��� 1�� 2�� ���� ���� ó�� �� �����Դϴ�.



�����մϴ�.
     			','0:0:0:0:0:0:0:1',null,0);
                
Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (95,'2','������','admin@daum.net','������ ��ũ�� ����','1',to_date('18/04/16','RR/MM/DD'),2,95,0,0,'�ȳ��Ͻʴϱ�?

2013�⵵ ����� ''������ ��ũ��'' �� 11��15��(��) ~ 11��16��(��) ������ �����Ǿ� �ֽ��ϴ�.

�� �Ⱓ ���� �ټ� �����Ͻð����� ��ǰ�ֹ� �� ���� ���ݻ����� �� 2�ϰ� ��ũ�� ������ �����Ͻþ�
������ ���� ��� ��������̳� ��������� �������ֽñ� ��û�帳�ϴ�.

������ ���� �߿����׿� ���� �����Ͻð� �ǰ� �� ì��ñ� �ٶ��ϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (85,'2','������','admin@daum.net','�����ް� ����','1',to_date('18/04/16','RR/MM/DD'),0,85,0,0,'�ݳ� �ϰ� ���� �ް� ������ �ϱ�� ���� �����մϴ�.
������ ���������ñ� �ٶ��ϴ�.

�Ͻ� : 2008�� 8�� 6��(��)~9��(��)
��� : �� ������

* ����ٹ��� 11��(������)���� �����մϴ�.
�����մϴ�.','0:0:0:0:0:0:0:1',null,0);


-- �����Խ��� ������

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (97,'1','������','dam@naver.com','���� ���� ��������','1',to_date('18/04/16','RR/MM/DD'),0,97,0,0,'BAU 2015 (1�� 19 - 24��) - ���� ���� ��������, �����ý���, ���뺣�̼� ���� ��ǥ �ڶ�ȸ �ȳ� 

���� ���� �Ź����ڶ�ȸ���� 
2015�� 1�� 19 - 24�� 

����, ��� �� �ý����� ���� ���� ��ǥ �ڶ�ȸ�� BAU 2015�� ���� �Ź����ڶ�ȸ���Ϳ��� 2015�� 1�� 19��-24�ϱ��� ���ֵȴ�. 40�� ���� 2,000�� ���� ���þ�ü���� �����ϰ�, �� 150�������κ��� 230,000���� �湮���� ã�ƿ� ������ ����ȴ�. 180,000���� �̸��� ���ø������� ���ֵǴ� BAU������ ����� �� ���ÿ� �Ǽ�, �׸��� ���׸�� ���� �������� �ַ�ǰ� ��� �� �ý����� �����, ����� �������� �� ����ȭ�� ���� ���� ��ü�� �Ұ��ȴ�. 2�⸶�� ���ֵǴ� �� ��翡�� �Ǽ� �ι� ������ ������� ���� ��ü��, �׸��� ���� �ִ� �湮������ ��� �����Ѵ�. BAU�� �������ڿ� �����Ͼ���� ���� ���� �ִ��� �ڶ�ȸ�μ�, 38,000�� �̻��� ���� ���������� ��Ȥ��Ű�� �ִ�. ���� ���� ��ǰ�� ������ ���� ���� ���õǴµ�, ���� ������ ���� ��� ���� ������ �̷��� ��� ���� �ι����� �ٽ� �׸��� �ٷ��� �����̴�. ���� ������ ���������� �����ϴ� ���� �ִ� ���� �� �پ��� �δ� ���α׷����� ���� �ִ� ��縦 ���� ������ ���̴�. 

���� ������ ���� ���� ���� ��ȸ��� ���� ���� ������ü���� ���� ������ ������� ���� �ִ�. �̿� ���� BAU�� ���踦 ���� �÷������μ� �������� ���� ��ȭ�ϰ� ������, �ؿ� ������ Ȱ�� ���� ���� �þ�� �ִ�. �̿� ���Ҿ� ����, ��� �� �ý����� ���� ���� ��ǥ �ڶ�ȸ�� ������ �����ε� ���� ������ ������ ���ȴ�. 

* �ֿ����úо� 

�ǹ��� ���÷�, ��������, ��������, �ǹ��� �����, ����� ȭ����ǰ, ��ũ��Ʈ ����,��,����Ʈ,�ܿ�,�ǳ��ð�,��ũ,����Ʈ,������ ����, ����, ��� ��ġ, ���, �����, â�� 

���� Ȩ������ http://ketic.co.kr/bau 
���� Ȩ������ http://www.bau-muenchen.de 

���� �ȳ� ����ó: 

(��)��ƽ 
���� ���� �ڶ�ȸ �ѱ���ǥ�� 
����� ��걸 ������� 51�� 15, 302ȣ 
��ȭ : 02-794-9044 
�ѽ� : 02-794-9045 
e-mail: ketic@kotis.net 
http://ketic.co.kr/MMI','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (98,'1','������','dam@naver.com','ī�ٷα� �� ����� ��û','1',to_date('18/04/16','RR/MM/DD'),0,98,0,0,'�ȳ��ϼ��� ����E&C(��) �ڵ�ȭ����� ���쿵 �����Դϴ�. 

�ͻ翡�� �Ǹ��Ͻô� ��ǰ�� ī�ٷα� ��Ź�帳�ϴ�. 

������ ���ۿ� Ȱ���ϰ��� �Ͽ��� ��Ź�帳�ϴ�. 

����� ������ ������ 107-35 ����E&C(��) 

Tel) 02-3486-0691 

Fax) 02-3486-0696 

Mobile) 010-8722-3229 ','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (99,'1','������','dam@naver.com','���� �������� �ǳ���??','1',to_date('18/04/16','RR/MM/DD'),1,99,0,0,'��������� ���� ������ũ�� ���� ���εǳ���??','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (100,'1','������','dam@naver.com','�߰ſ� ������ ���� �����̵��̿� �Բ�����!','1',to_date('18/04/16','RR/MM/DD'),2,100,0,0,'���� �ִ��� û�ҳ� ������ ���۷����� ���� �����ϰ� 
���� 5�⵿�� ��õ������ ���л� ������ �缺�ؿ� 
�ѱ�û�ҳ⺥ó�������� 2006�� 05,06�й� ����ȸ���� �����մϴ�. 

�ѱ�û�ҳ⺥ó������ �Բ��ϴ� ����, ����� Ȱ���� ���簡 �˴ϴ�. 
�ٽ� ���ƿ��� ���� ������, �� ������ ��� Ư���� ���л�Ȱ�� ���ϽŴٸ� 
���� �ٷ� �ѱ�û�ҳ⺥ó�������� ���ʽÿ�! 


�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ� 
�Ʊ��� ����, �ְ��� û�ҳ�/���л� ������ ���� ���� �񿵸� �ΰ���ü�� 
�ƢƢƢƢƢƢƢƢƢƢƢ� �ѱ�û�ҳ⺥ó���� �ƢƢƢƢƢƢƢƢƢƢƢ� 
�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ� 

�츮���� ����, ����� �����ϴ�. 
���� �ٷ� Ȩ�������� �����ϼ���. 

�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ� 
�ƢƢƢƢƢƢƢƢƢƢƢ� http://kventure.org �ƢƢƢƢƢƢƢƢƢƢ� 
�ƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢƢ� ','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (101,'1','������','dam@naver.com','[���] ���� �˴ϴ�','1',to_date('18/04/16','RR/MM/DD'),0,99,1,1,'25���� ���ε˴ϴ�

3�������� �����ϼž��� �̴ϴ�','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (102,'1','������','dam@naver.com','[���] ���� ��û �����ؿ�','1',to_date('18/04/16','RR/MM/DD'),0,100,1,1,'�Բ� ������û �ؿ�
������ ���Ƽ� ������ ���׿�','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (104,'1','������','dam@naver.com','h.264�ڵ� �ο�Ƽ�� ���� �ñ���','1',to_date('18/04/16','RR/MM/DD'),0,104,0,0,'��κ��� �ڵ����� ��õ ����ڷḦ �����Ͽ� ���� ����Ѵ�. 
h.263�� ��õ Ư�� ����� ���� ����� ���������, h.264�� ��õƯ�� ����Ḧ �� Ư����ڿ��� MPEG LA�� ���Ͽ� �����ϰ� �ֽ��ϴ�.

�׷��� ���� �ñ��Ѱ��� �ΰ��� �Դϴ�.

1.������� h.264_AVC Ư����ڰ� h.264 basic Ư�� ������Ḧ �����ϴ���? ���� �����Ѵٸ�, ��õ�� ��õ(h.264) Ư��Ḧ ��� �й��ϴ��� �ñ��մϴ�.

2.h.264�� �̿��Ͽ�, ������ ���� ������ ������ �ο�Ƽ�� �����ؾ��ϴ°�?(��, 130�� �̳� ������)','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (81,'2','������','admin@daum.net','���� ������� ���� �ȳ�','1',to_date('18/04/16','RR/MM/DD'),0,81,0,0,'�ֽ�ȸ�� ��ī�޵� �Դϴ�.

�������� ���� �ϱ�� ���� �����ϰ� �ֽ��ϴ�.
�����ִ� �е鿡 ���� ���� ��Ź�帳�ϴ�.
�����մϴ�.

Radio Sponsor
KBS-��FM(89.1MHz - 07:00~09:00) Ȳ������ FM������
MBC-FM4U(91.9MHz - 09:00~11:00) ���þ���, �̹����Դϴ�
MBC-FM4U(91.9MHz - 11:00~12:00) ������ ����ũ
SBS-�Ŀ�FM(107.7MHz - 12:00~02:00) ��ȭ���� �Ŀ�Ÿ��
KBS-��FM(89.1MHz - 18:00~20:00) ����ϱ� ������ �̱����Դϴ�','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (96,'1','������','dam@naver.com','MCU-5000 �Ŵ��� ��û��','1',to_date('18/04/16','RR/MM/DD'),1,96,0,0,'MCU-5000 ��ġ�Ǿ������� ��޴����̾����ϴ� 


���Ϸκ�Ź �帳�ϴ� (taeho23@hanmail.net) ��Ź�帳�ϴ� 

����帳�ϴ�
     			','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (103,'1','������','dam@naver.com','���� ���� ����','1',to_date('18/04/16','RR/MM/DD'),0,103,0,0,'mpegkr@mpeg.or.kr ���� ��������� �ʹ� ���� �ɴϴ�.
���ϸ� ����Ʈ���� 
dhchoi@dosan.skku.ac.kr 
dhchoi@security.re.kr
�� �ּҸ� �����ּ����� �մϴ�.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (105,'1','������','dam@naver.com','ȸ�� ���� ����','1',to_date('18/04/16','RR/MM/DD'),0,105,0,0,'�ȳ��ϼ��� 
ȸ�� �����ؼ� ��� ���� �帱���� �ϴµ���
�켱 admin ���� ������ ������ �б� Ȯ���� ���� �ʰ�
�׸��� Ȩ���������� ������ ��ȣ�� ��ȭ�� �ص�
�ش� ��ȣ�� ���ٰ� ���ɴϴ�. ( 369-8257-9 )
562-7041-2�� ��ȣ�� ���µ� ��ȭ�� ���� �ʳ׿�

��� ���� �帮�� ���� ȸ�� �Ա� ��Ű�� �; 
������ ������ ���� ������ �Ҿ��ؼ� �Ա��� ���ϰڽ��ϴ�.

��� ����ڿ� ������ �����Ѱ���???','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (106,'1','������','dam@naver.com','MPEG-4�� ����ǥ��ȭ�� �̷�� ������?','1',to_date('18/04/16','RR/MM/DD'),1,106,0,0,'�ȳ��ϼ���.

MPEG-4�� ����ǥ��ȭ�� �̷�� ������?

MPEG-7,MPEG-21�� ���������ΰ���?
','0:0:0:0:0:0:0:1',null,0);
--------------------------------------------------------
--  DDL for Index SYS_C0011782
--------------------------------------------------------


  CREATE UNIQUE INDEX "SCOTT"."SYS_C0011782" ON "SCOTT"."BOARD" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------


  ALTER TABLE "SCOTT"."BOARD" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
 

  ALTER TABLE "SCOTT"."BOARD" MODIFY ("SUBJECT" NOT NULL ENABLE);
 

  ALTER TABLE "SCOTT"."BOARD" MODIFY ("PASSWD" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("REG_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("REF" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("RE_STEP" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("RE_LEVEL" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("IP" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" ADD PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
