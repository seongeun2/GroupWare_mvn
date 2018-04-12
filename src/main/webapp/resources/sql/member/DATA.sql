--TPTEAM 테이블  데이터
Insert into TPTEAM (TNUM,TNAME,DNUM) values (100,'대표',100);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (201,'인사팀',200);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (202,'회계팀',200);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (203,'고객관리팀',200);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (301,'개발1팀',300);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (302,'개발2팀',300);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (401,'디자인1팀',400);
Insert into TPTEAM (TNUM,TNAME,DNUM) values (402,'디자인2팀',400);

--TPUSER 테이블 데이터
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('사용자','010-5124-0316',' 02-2601-1234 ',1,100,'user','1111','xodgl@daum.net',1,'2017.03.16',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('관리자','010-5124-0316 ',' 02-2601-1235',2,201,'admin','1234','admin@daum.net',2,'2017.03.17',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('유성은','010-5123-9991','02-2601-1235',1001,201,'darmm','1111','dam@naver.com',3,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('유성희','010-5123-9991','02-2601-1235',1002,302,'darm','1111','dam@naver.com',4,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('유성은','010-5123-9991','02-2601-1235',1003,302,'dara','1111','dam@naver.com',3,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('유성희','010-5123-9991','02-2601-1235',1004,402,'dar','1111','dam@naver.com',4,'2013.02.03',0,null);
Insert into TPUSER (NAME,PHONE,TEL,EMNUM,TNUM,ID,PW,EMAIL,POSITION,JOIND,LOGIN,SIGNATURE) values ('유성은','010-5123-9991','02-2601-1235',1005,302,'da','1111','dam@naver.com',5,'2013.02.03',0,null);

--TPDEP 테이블 데이터
Insert into TPDEP (DNUM,DNAME) values (100,'대표');
Insert into TPDEP (DNUM,DNAME) values (200,'경영지원부서');
Insert into TPDEP (DNUM,DNAME) values (300,'개발부서');
Insert into TPDEP (DNUM,DNAME) values (400,'디자인부서');

commit;