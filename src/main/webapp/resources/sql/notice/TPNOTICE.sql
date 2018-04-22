CREATE TABLE TPNOTICE(
   NID      number(4)      PRIMARY KEY,
   FROMID      varchar2(10)       NOT NULL,
   TOID      varchar2(10)       NOT NULL,
   TITLE      varchar2(20)      NOT NULL,
   CONTENT      varchar2(1000)      NOT NULL,
   STATUS      varchar2(2)      NOT NULL,
   INDATE      DATE         NOT NULL,
   SENTRECV   number(4)      NOT NULL);
   
   
   
--------------------------------------------------------
--  ������ ������ - �Ͽ���-4��-22-2018   
--------------------------------------------------------
REM INSERTING into TPNOTICE
SET DEFINE OFF;
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (1,'yse','ysh','�ް���','���� �� �ް� ��û�մϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (2,'yse','ysh','�����û','��� �׸� ���Ͽ� ���� ��û�մϴ�.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (3,'ysh','yse','����?','������ ���� ���� �ұ�?','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (4,'pbg','ysh','���� ����','���� ������ ����ȸ�� �� ������ �ּ���','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (5,'pbg','ysh','���','�̹� �� ����� ���ѻ� ���ϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (6,'pbg','ysh','����','���� ���� ���� Ĩ�ϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (7,'ysh','pbg','��ȣȸ��','ȸ�系 ��ȣȸ Ȱ���� ���� ����ȸ �ֽ��ϴ�.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (8,'ysh','mskim','��ȣȸ��','��ȣȸ ���� ����ȸ ��� �����մϴ�.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (9,'ysh','yse','19�����','������ ������ 19�� ���� ���� �ֽ��ϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (10,'yysh','mskim','�ް�','������ �ݿ��� �ް� ��� �����Դϴ�.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (11,'ysh','mskim','�����û','��� �׸� ���Ͽ� ���� ��û�մϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (12,'mskim','pbg','���� ����','������ �ι��� ���Դϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (13,'ysh','yse','īǮ����','ȫ���Ա����� ����ϴ� īǮ �����մϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (14,'ysh','mskim','���� ����','���� ���� ���̳��� �� ������ �ּ���','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (15,'ysh','mskim','�ް�','�����ֿ� ���� �ް� �����Դϴ�.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (16,'ysh','yse','���α׷� ����','7�� ���α׷��� ÷�ο� ���� ������ �ּ���','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (17,'pbg','ysh','��û','���� �����Ͽ� ���� ��ǥ �ٶ��ϴ�.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (18,'ysh','mskim','�������','�������','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (19,'pbg','ysh','Ȯ�ιٶ�','���� �������� ������ ���� Ȯ���� �ּ���','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (20,'pbg','ysh','����Ϸ�','���� ��û�� �Ϸ� �Ǿ����ϴ�.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (21,'ysh','mskim','����','��ǰ ���Ű� ���� ��Ź�մϴ�.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (22,'yse','ysh','���','���� ���࿡ ���� ���� ��Ź�մϴ�.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (23,'yse','ysh','����','�μ����� ������ȸ �����մϴ�.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (24,'ysh','mskim','��ȣȸ','��ȣȸ ������ ���� ����� �ǰ��� �����Ͽ����ϴ�.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (25,'pbg','ysh','���� ����','���� �ܺ� �湮���� ��ȸ�ǽ� ��� ���մϴ�.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (26,'pbg','ysh','�Ѱ���','������ ����ǰ �Ѱ����� �غ��� �ּ���','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (27,'ysh','mskim','����','���� ������ Ȯ���Ǿ����ϴ�.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (28,'ysh','mskim','���� ��û','�뿪 ���� ��Ź�帳�ϴ�.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (29,'ysh','mskim','�ް���','������ �ް� ���ϴ�.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (30,'mskim','pbg','���� �Ϸ�','�ް� ��û�� ���� �Ǿ����ϴ�.','1',to_date('18/04/21','RR/MM/DD'),0);

commit;
