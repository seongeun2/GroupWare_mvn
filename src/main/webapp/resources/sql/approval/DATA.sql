  
   --------------------------------------------------------
--  파일이 생성됨 - 일요일-4월-22-2018   
--------------------------------------------------------
REM INSERTING into APPROVAL
SET DEFINE OFF;
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (109,'유성희','ysh','18/04/22','개발부서','개발1팀','doc03',null,null,'지출결의서 입니다. 지급 부탁드립니다.','지출일자 : 2018-04-20
지출금액 : 8,000
지출계정 : 야근 식대

지출일자 : 2018-04-22
지출금액 : 13,000
지출계정 : 야근 택시비
',null);
Insert into APPROVAL (DOCNO,NAME,INID,INDT,DEPTNAME,TEAMNAME,TYPEGUBUN,STARTDT,ENDDT,TITLE,CONTENT,HOLIDAY) values (108,'유성희','ysh','18/04/22','개발부서','개발1팀','doc01',null,null,'정산을 위한 운영인력 충원의 건','신규 브랜드 마케팅 진행에 따라 원활한 정산을 위한 운영인력 채용 또는 내부 인력 배정을 받고자 하오니 검토 후 재가하여 주시기 바랍니다.

----------------------------------------------------------------
1. 충원 목적 : 마케터 요청에 따른 파트너 실시간 업무지원
2. 업무내용
  1) 파트너 실시간 정산업무
  2) CPA 마케팅 진행에 따른 가입자 분석 및 결제자 분석리포트
  3) 서비스 운영 이슈 서포팅 및 마케팅 활동 지원
3. 충원인력 : 1명
4. 충원기간 : 2013.03.17 ~ (마케팅 시점)
5. 요구사항
  가) 오피스 (엑셀) 프로그램 능숙자
  나) 웹/모바일 서비스 운영 경험자
6. 협조사항 : 개인노트북 지급 (보안이슈)',null);
commit;





   --------------------------------------------------------
--  파일이 생성됨 - 일요일-4월-22-2018   
--------------------------------------------------------
REM INSERTING into APPROVAL_PATH
SET DEFINE OFF;
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (109,'ysh','유성희','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (109,'pbg','박보검','st01','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (109,'mskim','김명선','st02','ap03');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (108,'ysh','유성희','st01','ap01');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (108,'pbg','박보검','st01','ap02');
Insert into APPROVAL_PATH (DOCNO,USERID,USERNAME,STATUS,GUBUN) values (108,'mskim','김명선','st02','ap03');
commit;