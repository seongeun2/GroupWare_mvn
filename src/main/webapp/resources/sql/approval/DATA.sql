--approval ���̺� ������
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPE,STARTDT,ENDDT,TITLE,CONTENT) values (2,'������','daramy','20180403','����1��','20','doc01',null,null,'������ ��� ���� ��ȼ�','���� ������ ��� ������ ����մϴ�');
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPE,STARTDT,ENDDT,TITLE,CONTENT) values (1,'������','daramy','20180401','����1��','10','doc02','20180405','20180407','�ް���û��','���λ������� ���� �ް� ��û �մϴ�.');

--approval_path ���̺� ������
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (2,'daramy','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (2,'zhdzhdgl','������','st02','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (1,'daramy','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (1,'zhdzhdgl','������','st02','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (1,'ok','����',null,'ap03');

commit;