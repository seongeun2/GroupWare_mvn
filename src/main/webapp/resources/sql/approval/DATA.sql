  
   --------------------------------------------------------
--  ������ ������ - �Ͽ���-4��-22-2018   
--------------------------------------------------------
REM INSERTING into APPROVAL
SET DEFINE OFF;
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (109,'������','ysh','18/04/22','���ߺμ�','����1��','doc03',null,null,'������Ǽ� �Դϴ�. ���� ��Ź�帳�ϴ�.','�������� : 2018-04-20
����ݾ� : 8,000
������� : �߱� �Ĵ�

�������� : 2018-04-22
����ݾ� : 13,000
������� : �߱� �ýú�
',null);
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (108,'������','ysh','18/04/22','���ߺμ�','����1��','doc01',null,null,'������ ���� ��η� ����� ��','�ű� �귣�� ������ ���࿡ ���� ��Ȱ�� ������ ���� ��η� ä�� �Ǵ� ���� �η� ������ �ް��� �Ͽ��� ���� �� �簡�Ͽ� �ֽñ� �ٶ��ϴ�.

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
6. �������� : ���γ�Ʈ�� ���� (�����̽�)',null);
commit;





   --------------------------------------------------------
--  ������ ������ - �Ͽ���-4��-22-2018   
--------------------------------------------------------
REM INSERTING into APPROVAL_PATH
SET DEFINE OFF;
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (109,'ysh','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (109,'pbg','�ں���','st01','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (109,'mskim','���','st02','ap03');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (108,'ysh','������','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (108,'pbg','�ں���','st01','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (108,'mskim','���','st02','ap03');
commit;