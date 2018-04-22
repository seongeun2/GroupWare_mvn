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
--  파일이 생성됨 - 일요일-4월-22-2018   
--------------------------------------------------------
REM INSERTING into TPNOTICE
SET DEFINE OFF;
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (1,'yse','ysh','휴가건','내일 모레 휴가 신청합니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (2,'yse','ysh','결재요청','상기 항목에 대하여 결재 요청합니다.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (3,'ysh','yse','저녁?','다음주 저녁 같이 할까?','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (4,'pbg','ysh','내일 일정','내일 예정된 간담회에 꼭 참석해 주세요','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (5,'pbg','ysh','등산','이번 주 토요일 북한산 갑니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (6,'pbg','ysh','볼링','오늘 저녁 볼링 칩니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (7,'ysh','pbg','동호회건','회사내 동호회 활동에 대한 간담회 있습니다.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (8,'ysh','mskim','동호회건','동호회 관련 간담회 결과 공유합니다.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (9,'ysh','yse','19기모임','다음주 수요일 19기 저녁 모임 있습니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (10,'yysh','mskim','휴가','다음주 금요일 휴가 사용 예정입니다.','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (11,'ysh','mskim','결재요청','상기 항목에 대하여 결재 요청합니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (12,'mskim','pbg','내일 일정','내일은 민방위 날입니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (13,'ysh','yse','카풀모집','홍대입구에서 출발하는 카풀 모집합니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (14,'ysh','mskim','내일 일정','내일 오후 세미나에 꼭 참석해 주세요','1',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (15,'ysh','mskim','휴가','다음주에 여름 휴가 예정입니다.','0',to_date('18/04/21','RR/MM/DD'),1);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (16,'ysh','yse','프로그램 수정','7번 프로그램을 첨부와 같이 수정해 주세요','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (17,'pbg','ysh','요청','내용 숙지하여 내일 발표 바랍니다.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (18,'ysh','mskim','내용없음','내용없음','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (19,'pbg','ysh','확인바람','공용 서버에서 수정된 내용 확인해 주세요','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (20,'pbg','ysh','결재완료','결재 요청이 완료 되었습니다.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (21,'ysh','mskim','결재','상품 구매건 결재 부탁합니다.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (22,'yse','ysh','등산','정기 산행에 많은 참여 부탁합니다.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (23,'yse','ysh','볼링','부서대항 볼링대회 개최합니다.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (24,'ysh','mskim','동호회','동호회 지원에 대한 사장님 의견을 공지하였습니다.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (25,'pbg','ysh','내일 일정','내일 외빈 방문으로 대회의실 사용 못합니다.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (26,'pbg','ysh','한가지','본인의 기증품 한가지씩 준비해 주세요','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (27,'ysh','mskim','모임','모임 일정이 확정되었습니다.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (28,'ysh','mskim','결재 요청','용역 결재 부탁드립니다.','0',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (29,'ysh','mskim','휴가건','다음주 휴가 갑니다.','1',to_date('18/04/21','RR/MM/DD'),0);
Insert into TPNOTICE (NID,FROMID,TOID,TITLE,CONTENT,STATUS,INDATE,SENTRECV) values (30,'mskim','pbg','승인 완료','휴가 신청이 승인 되었습니다.','1',to_date('18/04/21','RR/MM/DD'),0);

commit;
