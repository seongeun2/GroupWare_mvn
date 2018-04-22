CREATE TABLE TPNOTICE(
   NID      number(4)      PRIMARY KEY,
   FROMID      varchar2(10)       NOT NULL,
   TOID      varchar2(10)       NOT NULL,
   TITLE      varchar2(20)      NOT NULL,
   CONTENT      varchar2(1000)      NOT NULL,
   STATUS      varchar2(2)      NOT NULL,
   INDATE      DATE         NOT NULL,
   SENTRECV   number(4)      NOT NULL);
   
   
   
   //TPNOTICE test data
insert into tpnotice values(1, 'user1', 'user101', '휴가건', '내일 모레 휴가 신청합니다.', '0', sysdate, 1);
insert into tpnotice values(2, 'user1', 'user102', '결재요청', '상기 항목에 대하여 결재 요청합니다.', '1', sysdate, 1);
insert into tpnotice values(3, 'user1', 'user103', '저녁?', '다음주 저녁 같이 할까?', '1', sysdate, 1);
insert into tpnotice values(4, 'user1', 'user104', '내일 일정', '내일 예정된 간담회에 꼭 참석해 주세요', '1', sysdate, 1);
insert into tpnotice values(5, 'user1', 'user105', '등산', '이번 주 토요일 북한산 갑니다.', '0', sysdate, 1);
insert into tpnotice values(6, 'user1', 'user106', '볼링', '오늘 저녁 볼링 칩니다.', '0', sysdate, 1);
insert into tpnotice values(7, 'user1', 'user107', '동호회건', '회사내 동호회 활동에 대한 간담회 있습니다.', '1', sysdate, 1);
insert into tpnotice values(8, 'user1', 'user101', '동호회건', '동호회 관련 간담회 결과 공유합니다.', '1', sysdate, 1);
insert into tpnotice values(9, 'user1', 'user102', '19기모임', '다음주 수요일 19기 저녁 모임 있습니다.', '0', sysdate, 1);
insert into tpnotice values(10, 'user1', 'user103', '휴가', '다음주 금요일 휴가 사용 예정입니다.', '1', sysdate, 1);
insert into tpnotice values(11, 'user1', 'user104', '결재요청', '상기 항목에 대하여 결재 요청합니다.', '0', sysdate, 1);
insert into tpnotice values(12, 'user1', 'user105', '내일 일정', '내일은 민방위 날입니다.', '0', sysdate, 1);
insert into tpnotice values(13, 'user1', 'user106', '카풀모집', '홍대입구에서 출발하는 카풀 모집합니다.', '0', sysdate, 1);
insert into tpnotice values(14, 'user1', 'user107', '내일 일정', '내일 오후 세미나에 꼭 참석해 주세요', '1', sysdate, 1);
insert into tpnotice values(15, 'user1', 'user108', '휴가', '다음주에 여름 휴가 예정입니다.', '0', sysdate, 1);
insert into tpnotice values(16, 'user101', 'user1', '프로그램 수정', '7번 프로그램을 첨부와 같이 수정해 주세요', '0', sysdate, 0);
insert into tpnotice values(17, 'user102', 'user1', '요청', '내용 숙지하여 내일 발표 바랍니다.', '0', sysdate, 0);
insert into tpnotice values(18, 'user103', 'user1', '내용없음', '내용없음', '1', sysdate, 0);
insert into tpnotice values(19, 'user104', 'user1', '확인바람', '공용 서버에서 수정된 내용 확인해 주세요', '0', sysdate, 0);
insert into tpnotice values(20, 'user105', 'user1', '결재완료', '결재 요청이 완료 되었습니다.', '1', sysdate, 0);
insert into tpnotice values(21, 'user106', 'user1', '결재', '상품 구매건 결재 부탁합니다.', '1', sysdate, 0);
insert into tpnotice values(22, 'user107', 'user1', '등산', '정기 산행에 많은 참여 부탁합니다.', '0', sysdate, 0);
insert into tpnotice values(23, 'user108', 'user1', '볼링', '부서대항 볼링대회 개최합니다.', '0', sysdate, 0);
insert into tpnotice values(24, 'user101', 'user1', '동호회', '동호회 지원에 대한 사장님 의견을 공지하였습니다.', '1', sysdate, 0);
insert into tpnotice values(25, 'user102', 'user1', '내일 일정', '내일 외빈 방문으로 대회의실 사용 못합니다.', '0', sysdate, 0);
insert into tpnotice values(26, 'user103', 'user1', '한가지', '본인의 기증품 한가지씩 준비해 주세요', '0', sysdate, 0);
insert into tpnotice values(27, 'user104', 'user1', '모임', '모임 일정이 확정되었습니다.', '1', sysdate, 0);
insert into tpnotice values(28, 'user105', 'user1', '결재 요청', '용역 결재 부탁드립니다.', '0', sysdate, 0);
insert into tpnotice values(29, 'user106', 'user1', '휴가건', '다음주 휴가 갑니다.', '1', sysdate, 0);
insert into tpnotice values(30, 'user107', 'user1', '승인 완료', '휴가 신청이 승인 되었습니다.', '1', sysdate, 0);
commit;
