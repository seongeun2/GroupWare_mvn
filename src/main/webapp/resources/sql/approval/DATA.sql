--approval 테이블 데이터
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPE,STARTDT,ENDDT,TITLE,CONTENT) values (2,'떵으니','daramy','20180403','개발1팀','20','doc01',null,null,'디자인 장비 구입 기안서','고가의 디자인 장비 구입을 기안합니다');
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPE,STARTDT,ENDDT,TITLE,CONTENT) values (1,'떵으니','daramy','20180401','개발1팀','10','doc02','20180405','20180407','휴가신청서','개인사정으로 인한 휴가 신청 합니다.');

--approval_path 테이블 데이터
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (2,'daramy','떵으니','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (2,'zhdzhdgl','콩콩히','st02','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (1,'daramy','떵으니','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (1,'zhdzhdgl','콩콩히','st02','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (1,'ok','사장',null,'ap03');

commit;