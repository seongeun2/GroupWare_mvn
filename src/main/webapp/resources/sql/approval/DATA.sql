--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-20-2018   
--------------------------------------------------------
REM INSERTING into APPROVAL
SET DEFINE OFF;
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (113,'������','yse','18/04/20','���ߺμ�','����1��','doc02','2018-04-23','2018-04-27','�ް���û�մϴ�.','���λ������� ���� ��� �ް� ��û�մϴ�.','����');
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (114,'������','yse','18/04/20','���ߺμ�','����1��','doc03',null,null,'������Ǽ� �Դϴ�. ���� ��Ź�帳�ϴ�.','�������� : 2018-04-20
����ݾ� : 8,000
������� : �߱� �Ĵ�

�������� : 2018-04-22
����ݾ� : 13,000
������� : �߱� �ýú�
 ',null);
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (112,'������','yse','18/04/20','���ߺμ�','����1��','doc01',null,null,'������ ���� ��η� ����� ��','�ű� �귣�� ������ ���࿡ ���� ��Ȱ�� ������ ���� ��η� ä�� �Ǵ� ���� �η� ������ �ް��� �Ͽ��� ���� �� �簡�Ͽ� �ֽñ� �ٶ��ϴ�.

----------------------------------------------------------------
1. ��� ���� : ������ ��û�� ���� ��Ʈ�� �ǽð� ��������
2. ��������
  1) ��Ʈ�� �ǽð� �������
  2) CPA ������ ���࿡ ���� ������ �м� �� ������ �м�����Ʈ
  3) ���� � �̽� ������ �� ������ Ȱ�� ����
3. ����η� : 1��
4. ����Ⱓ : 2013.03.17 ~ (������ ����)
5. �䱸����
  ��) ���ǽ� (����) ���α׷� �ɼ���
  ��) ��/����� ���� � ������
6. �������� : ���γ�Ʈ�� ���� (�����̽�)


',null);
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (115,'������','ysh','18/04/20','���ߺμ�','����1��','doc02','2018-04-23','2018-04-23','�ް� ��û�մϴ�.','���λ������� ���� �ް� ��û�մϴ�.','����');
commit;


--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-20-2018   
--------------------------------------------------------
REM INSERTING into APPROVAL_PATH
SET DEFINE OFF;
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (116,'ysh','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (115,'ysh','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (115,'mskim','���',null,'ap03');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (115,'cyj','�ֿ���','st02','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (114,'yse','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (114,'mskim','���',null,'ap03');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (114,'pbg','�ں���','st02','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (113,'yse','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (113,'cyj','�ֿ���','st02','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (113,'mskim','���',null,'ap03');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (112,'yse','������','st03','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (112,'mskim','���','st03','ap03');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (112,'pbg','�ں���','st03','ap02');
commit;