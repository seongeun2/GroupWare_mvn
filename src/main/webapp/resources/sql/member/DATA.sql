--TPTEAM ���̺�  ������
Insert into TPTEAM (TNUM,TNAME,DNUM) values (100,'��ǥ',100);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (201,'�λ���',200);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (202,'ȸ����',200);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (203,'��������',200);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (301,'����1��',300);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (302,'����2��',300);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (401,'������1��',400);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (402,'������2��',400);

--TPUSER ���̺� ������
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('�����','010-5124-0316',' 02-2601-1234 ',1,100,'user','1111','xodgl@daum.net',1,'2017.03.16',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('������','010-5124-0316 ',' 02-2601-1235',2,201,'admin','1234','admin@daum.net',2,'2017.03.17',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('������','010-5123-9991','02-2601-1235',1001,201,'darmm','1111','dam@naver.com',3,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('������','010-5123-9991','02-2601-1235',1002,302,'darm','1111','dam@naver.com',4,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('������','010-5123-9991','02-2601-1235',1003,302,'dara','1111','dam@naver.com',3,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('������','010-5123-9991','02-2601-1235',1004,402,'dar','1111','dam@naver.com',4,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('������','010-5123-9991','02-2601-1235',1005,302,'da','1111','dam@naver.com',5,'2013.02.03',0,null);

--TPDEP ���̺� ������
Insert into TPDEP (DNUM,DNAME) values (100,'��ǥ');
Insert into TPDEP (DNUM,DNAME) values (200,'�濵�����μ�');
Insert into TPDEP (DNUM,DNAME) values (300,'���ߺμ�');
Insert into TPDEP (DNUM,DNAME) values (400,'�����κμ�');

commit;