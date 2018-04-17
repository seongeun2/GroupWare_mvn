--------------------------------------------------------
--  파일이 생성됨 - 월요일-4월-16-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BOARD" 
   (	"NUM" NUMBER(*,0), 
	"BOARDID" VARCHAR2(1 BYTE) DEFAULT '1', 
	"WRITER" VARCHAR2(10 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"PASSWD" VARCHAR2(12 BYTE), 
	"REG_DATE" DATE, 
	"READCOUNT" NUMBER(*,0) DEFAULT 0, 
	"REF" NUMBER(*,0), 
	"RE_STEP" NUMBER(*,0), 
	"RE_LEVEL" NUMBER(*,0), 
	"CONTENT" VARCHAR2(3000 BYTE), 
	"IP" VARCHAR2(20 BYTE), 
	"FILENAME" VARCHAR2(30 BYTE), 
	"FILESIZE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.BOARD
SET DEFINE OFF;




-- 공지게시판 데이터

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (82,'2','관리자','admin@daum.net','국제 심포지엄 참석','1',to_date('18/04/16','RR/MM/DD'),0,82,0,0,'주식회사 알카메디입니다.

2008년 5월 23일(금) 13:00~18:30일 연세대학교 원주의과대학 개교 30주년 기념 "전해수 연구를 위한 국제 심포지엄"을 연세대학교 원주의과대학 대강당에서 개최하였습니다.
이날 행사는 전해수의 연구 결과에 대한 논문발표 및 향후 연구방향에 대한 토의가 진행 되었습니다.
감사합니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BO
ARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (83,'2','관리자','admin@daum.net','TV 방송협찬 광고안내','1',to_date('18/04/16','RR/MM/DD'),0,83,0,0,'TV 협찬 광고를 2007년 7월 1일부터 매주 화요일 SBS 좋은아침 플러스 원(09:00~09:30)에서 진행하고 있습니다.
관심있는 분들에 많은 성원 부탁드립니다.
감사합니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (84,'2','관리자','admin@daum.net','기업부설연구소 설립','1',to_date('18/04/16','RR/MM/DD'),0,84,0,0,'2008년 6월 26일 기술개발촉진법에 의하여 KOITA(한국산업기술진흥협회)로부터 기업부설연구소 설립을 인정받았습니다. 
앞으로 보다 많은 R&D(기술개발 및 연구 등)을 통해 더욱 발전하는 알카메디가 되겠습니다.
감사합니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (86,'2','관리자','admin@daum.net','풍성한 秋夕','1',to_date('18/04/16','RR/MM/DD'),0,86,0,0,'가을 햇살처럼 풍요롭고 보름달처럼 푸근한 연휴 되시고, 올해도 고마운 분들과 함께 하는 따뜻한 한가위 되시길 기원합니다.

추석 연휴 공지 
일시 : 2008년 9월 12일(금)~16일(화)
감사합니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (87,'2','관리자','admin@daum.net','창립기념 및 연휴일정','1',to_date('18/04/16','RR/MM/DD'),0,87,0,0,'안녕하세요.
주식회사 알카메디입니다.
금번 4월 29일 창립기념 및 5월 1일 근로자의 날을 맞이하여 하기와 같이 창립기념 워크샵 및 연휴일정을 공지합니다.

*워크샵일정
일시 : 2009년4월29일(수) ~ 30일(목) 
대상 : 전임직원

*연휴일정
일시 : 2009년 5월1일(금)~5일(화) 
대상 : 전임직원','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (88,'2','관리자','admin@daum.net','굿디자인(Good Design) 선정안내','1',to_date('18/04/16','RR/MM/DD'),0,88,0,0,'주식회사 알카메디입니다.
한국디자인진흥원에서 추최하는 2009년도 상반기 굿디자인(Good Design)상품에 AML3000 모델이 선정되었습니다.
앞으로도 많은 관심 부탁드립니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (89,'2','관리자','admin@daum.net','프로슈머 모집 이벤트','1',to_date('18/04/16','RR/MM/DD'),0,89,0,0,'안녕하세요.
주식회사 알카메디 입니다.

2009년 9월 15일부터 10월 3일 까지 알카메디 프로슈머를 상위와 같이 모집합니다.
알케메디의 다양한 제품을 무료로 사용할 수 있는 기회와 푸짐한 경품을 지원하고 있으니 관심있는 분들의 많은 참여를 부탁합니다.
감사합니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (90,'2','관리자','admin@daum.net','UL인증 안내','1',to_date('18/04/16','RR/MM/DD'),0,90,0,0,'
안녕하세요.
주식회사 알카메디 입니다.

상위 방법과 같이 www.ul.com 사이트에 접속하신 후 "alkamedi"를 검색하시면, 상위와 같이 UL인증 내역을 확인하실 수 있습니다.

해당모델 : AMS 2000, AML 3000, AML 3000S
해당부품 : Transformers 2종류
','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (91,'2','관리자','admin@daum.net','프로슈머 1기 발대식 공지','1',to_date('18/04/16','RR/MM/DD'),0,91,0,0,'안녕하세요.
주식회사 알카메디 입니다. 
금번 진행된 프로슈머 모집 이벤트 당첨을 진심으로 축하드립니다. 
[프로슈머 1기 발대식 공지] 내용을 꼭 읽어 보시고 필히 참여하여 주시기 바랍니다. 
이벤트에 당첨이 되셨더라도 발대식에 참석하지 않으시면 프로슈머 자격이 주어지지 않습니다. 

[(주)알카메디 프로슈머 1기 발대식 공지] 

1. 일 시 : 2009년 10월 20일(11:00~14:30까지, 중식제공, 10시 50분까지 꼭 도착 해주세요) 
2. 장 소 : 안양메가밸리 1층 대회의실(대회의실 입구에 현수막 설치 예정) 
(상세주소 : 경기도 안양시 동안구 관양동 799 안양메가벨리 1층) 
3. 교통편 : 

가. 자가 차량 이용 시 : 
홈페이지 회사소개>찾아오시는 길(약도) 참고 
네비게이션 이용시
(상호검색:알카메디, 전화번호검색:031-421-5261, 주소검색: 상위 상세주소입력) 
메가벨리 건물 출입게이트 통과 후 좌측 고객전용 주차장 이용
(알카메디 직원에게 주차 카드를 보여주시면, 무료 주차권을 드립니다) 

나. 지하철 이용 시 : 
지하철 4호선 평촌역 1번출구 이용, 동아프라자 건물 앞
마을버스정류장에서 안양메가벨리전용 버스 이용(오전10시35분 출발) 
버스를 놓친 경우 길 건너편 평촌역 3번출구 앞에서 택시이용(기본요금) ','0:0:0:0:0:0:0:1',null,0);


Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (92,'2','관리자','admin@daum.net','본사이전 안내','1',to_date('18/04/16','RR/MM/DD'),0,92,0,0,'안녕하세요.
주식회사 알카메디입니다.

그 동안 보내주신 성원에 힘입어 2011년 새해에 확장이전을 하게 되었습니다.
확장이전과 관련하여 하기일정에 전화 및 인터넷 업무 등에 차질이 빚어질 수 있어 공지합니다.

-  아  래  -  
○ 확장이전 날짜 : 2011년 1월 6일(목) ~ 8일(토) 3일간
○ 정상근무 날짜 : 2011년 1월 10일 월요일부터 ~
○ 본사 및 공장 이전 주소
    경기도 안양시 동안구 관양동 799 안양메가벨리 601, 602호
    전화 : 031-421-5261(기존과 동일)
    팩스 : 031-426-5260(기존과 동일)

* 1월 10일부터 도착되는 우편물의 주소는 이전된 본사 주소로 발송부탁드립니다.
* 이전 기간에는 일반전화가 않될 수 있음으로 담당자 핸드폰을 이용해 주시기 바랍니다.

감사합니다.
','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (93,'2','관리자','admin@daum.net','Rohs 인증안내','1',to_date('18/04/16','RR/MM/DD'),0,93,0,0,'안녕하세요.
주식회사 알카메디입니다.

한-EU FTA발효를 앞두고 있는 시점에 EU시장에 대한 폭넓은 수출 향상을 위해 금월 하기 해당모델에 대한 Rohs인증을 획득하였습니다. 해당 수출관련 업체 및 수출 진행업체의 많은 관심을 부탁드립니다.

해당모델 : AMS2000, AML3000, AMS2100, AMS4000, AMS4100 & S Type
감사합니다.','0:0:0:0:0:0:0:1',null,0);


Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (94,'2','관리자','admin@daum.net','2017 Winter vacation notice','1',to_date('18/04/16','RR/MM/DD'),1,94,0,0,'안녕하세요 커미조아입니다.

커미조아의 하계 휴가에 대해 공지해 드립니다.

커미조아의 하계 휴가기간은 2017.12.26 ~ 2017.12.29 입니다.

하계 휴가 이후 더욱 더 고객만족을 드릴 수 있도록 약속드립니다.

견적 및 제품발송은 1월 2일 이후 순차 처리 될 예정입니다.



감사합니다.
     			','0:0:0:0:0:0:0:1',null,0);
                
Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (95,'2','관리자','admin@daum.net','임직원 워크샵 일정','1',to_date('18/04/16','RR/MM/DD'),2,95,0,0,'안녕하십니까?

2013년도 당사의 ''임직원 워크샵'' 이 11월15일(금) ~ 11월16일(토) 까지로 예정되어 있습니다.

이 기간 동안 다소 불편하시겠지만 제품주문 및 업무 제반사항은 본 2일간 워크샵 일정을 예상하시어
사전에 저희 담당 영업사원이나 담당직원과 협의해주시길 요청드립니다.

날씨가 점점 추워지네요 감기 조심하시고 건강 잘 챙기시기 바랍니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (85,'2','관리자','admin@daum.net','여름휴가 공지','1',to_date('18/04/16','RR/MM/DD'),0,85,0,0,'금년 하계 여름 휴가 일정을 하기와 같이 공지합니다.
업무에 차질없으시길 바랍니다.

일시 : 2008년 8월 6일(수)~9일(토)
대상 : 전 임직원

* 정상근무는 11일(월요일)부터 가능합니다.
감사합니다.','0:0:0:0:0:0:0:1',null,0);


-- 자유게시판 데이터

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (97,'1','유성은','dam@naver.com','독일 뮌헨 건축자재','1',to_date('18/04/16','RR/MM/DD'),0,97,0,0,'BAU 2015 (1월 19 - 24일) - 독일 뮌헨 건축자재, 빌딩시스템, 레노베이션 세계 대표 박람회 안내 

독일 뮌헨 신무역박람회센터 
2015년 1월 19 - 24일 

건축, 재료 및 시스템을 위한 세계 대표 박람회인 BAU 2015는 뮌헨 신무역박람회센터에서 2015년 1월 19일-24일까지 개최된다. 40여 개국 2,000여 개의 전시업체들이 참가하고, 약 150개국으로부터 230,000명의 방문객이 찾아올 것으로 예상된다. 180,000㎡에 이르는 전시면적에서 개최되는 BAU에서는 상업용 및 주택용 건설, 그리고 인테리어를 위한 건축학적 솔루션과 재료 및 시스템을 비롯해, 신축과 개·보수 및 현대화에 관한 서비스 일체가 소개된다. 2년마다 개최되는 이 행사에는 건설 부문 시장의 리더들과 신진 업체들, 그리고 관심 있는 방문객들이 대거 참가한다. BAU는 건축학자와 엔지니어들을 위한 세계 최대의 박람회로서, 38,000명 이상의 건축 전문가들을 매혹시키고 있다. 건축 재료는 제품과 주제에 따라 구분 전시되는데, 지속 가능한 건축 등과 같은 업계의 미래가 모든 전시 부문에서 핵심 테마로 다뤄질 예정이다. 세계 각국의 전문가들이 참가하는 격조 있는 포럼 등 다양한 부대 프로그램들은 업계 최대 행사를 한층 빛내줄 것이다. 

세계 각국의 건축 관련 전문 협회들과 건축 자재 제조업체들의 업무 범위는 전세계로 뻗어 있다. 이에 따라 BAU도 업계를 위한 플랫폼으로서 국제성을 더욱 강화하고 있으며, 해외 마케팅 활동 역시 대폭 늘어나고 있다. 이와 더불어 건축, 재료 및 시스템을 위한 세계 대표 박람회의 위상이 앞으로도 한층 높아질 것으로 기대된다. 

* 주요전시분야 

건물용 피팅류, 건축자재, 빌딩섹션, 건물용 세라믹, 건축용 화학제품, 콘크리트 건축,문,게이트,단열,실내시공,라크,페인트,조립식 건축, 루핑, 비계 설치, 계단, 벽재료, 창문 

국문 홈페이지 http://ketic.co.kr/bau 
영문 홈페이지 http://www.bau-muenchen.de 

참가 안내 문의처: 

(주)케틱 
독일 뮌헨 박람회 한국대표부 
서울시 용산구 서빙고로 51길 15, 302호 
전화 : 02-794-9044 
팩스 : 02-794-9045 
e-mail: ketic@kotis.net 
http://ketic.co.kr/MMI','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (98,'1','유성은','dam@naver.com','카다로그 및 지명원 요청','1',to_date('18/04/16','RR/MM/DD'),0,98,0,0,'안녕하세요 준제E&C(주) 자동화사업부 나우영 과장입니다. 

귀사에서 판매하시는 제품의 카다로그 부탁드립니다. 

영업및 제작에 활용하고자 하오니 부탁드립니다. 

서울시 강남구 논현동 107-35 준제E&C(주) 

Tel) 02-3486-0691 

Fax) 02-3486-0696 

Mobile) 010-8722-3229 ','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (99,'1','유성은','dam@naver.com','블루원 직원할인 되나요??','1',to_date('18/04/16','RR/MM/DD'),1,99,0,0,'사원증으로 블루원 워터파크랑 숙박 할인되나요??','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (100,'1','유성은','dam@naver.com','뜨거운 열정을 갖은 젊은이들이여 함께가자!','1',to_date('18/04/16','RR/MM/DD'),2,100,0,0,'국내 최대의 청소년 리더십 컨퍼런스를 직접 개최하고 
지난 5년동안 일천여명의 대학생 리더를 양성해온 
한국청소년벤처포럼에서 2006년 05,06학번 신입회원을 모집합니다. 

한국청소년벤처포럼과 함께하는 순간, 당신의 활동은 역사가 됩니다. 
다시 돌아오지 않을 스무살, 그 열정을 담아 특별한 대학생활을 원하신다면 
지금 바로 한국청소년벤처포럼으로 오십시오! 


▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
▒국내 최초, 최고의 청소년/대학생 리더십 교육 전문 비영리 민간단체▒ 
▒▒▒▒▒▒▒▒▒▒▒▒ 한국청소년벤처포럼 ▒▒▒▒▒▒▒▒▒▒▒▒ 
▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 

우리에겐 아직, 당신이 없습니다. 
지금 바로 홈페이지로 접속하세요. 

▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 
▒▒▒▒▒▒▒▒▒▒▒▒ http://kventure.org ▒▒▒▒▒▒▒▒▒▒▒ 
▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (101,'1','유성희','dam@naver.com','[답글] 할인 됩니다','1',to_date('18/04/16','RR/MM/DD'),0,99,1,1,'25프로 할인됩니다

3일전에는 예약하셔야할 겁니다','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (102,'1','유성희','dam@naver.com','[답글] 참가 신청 같이해요','1',to_date('18/04/16','RR/MM/DD'),0,100,1,1,'함께 참가신청 해요
취지가 좋아서 관심이 가네요','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (104,'1','유성희','dam@naver.com','h.264코덱 로열티에 관한 궁금증','1',to_date('18/04/16','RR/MM/DD'),0,104,0,0,'대부분의 코덱들은 원천 기술자료를 오픈하여 공개 사용한다. 
h.263은 원천 특허 기술료 없이 무료로 사용하지만, h.264는 원천특허 기술료를 각 특허권자에게 MPEG LA를 통하여 지불하고 있습니다.

그런데 제가 궁금한것은 두가지 입니다.

1.예를들어 h.264_AVC 특허권자가 h.264 basic 특허 기술사용료를 지불하는지? 만약 지불한다면, 원천의 원천(h.264) 특허료를 어떻게 분배하는지 궁금합니다.

2.h.264를 이용하여, 웹에서 유료 컨텐츠 제공시 로열티를 지불해야하는가?(단, 130초 이내 콘텐츠)','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (81,'2','관리자','admin@daum.net','라디오 방송협찬 광고 안내','1',to_date('18/04/16','RR/MM/DD'),0,81,0,0,'주식회사 알카메디 입니다.

라디오협찬 광고를 하기와 같이 진행하고 있습니다.
관심있는 분들에 많은 성원 부탁드립니다.
감사합니다.

Radio Sponsor
KBS-쿨FM(89.1MHz - 07:00~09:00) 황정민의 FM대행진
MBC-FM4U(91.9MHz - 09:00~11:00) 오늘아참, 이문세입니다
MBC-FM4U(91.9MHz - 11:00~12:00) 김기덕의 골든디스크
SBS-파워FM(107.7MHz - 12:00~02:00) 최화정의 파워타임
KBS-쿨FM(89.1MHz - 18:00~20:00) 사랑하기 좋은날 이금희입니다','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (96,'1','유성은','dam@naver.com','MCU-5000 매뉴얼 요청건','1',to_date('18/04/16','RR/MM/DD'),1,96,0,0,'MCU-5000 설치되어있으나 운영메뉴얼이없읍니다 


메일로부탁 드립니다 (taeho23@hanmail.net) 부탁드립니다 

감사드립니다
     			','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (103,'1','유성희','dam@naver.com','메일 관련 문의','1',to_date('18/04/16','RR/MM/DD'),0,103,0,0,'mpegkr@mpeg.or.kr 에서 스펨메일이 너무 많이 옵니다.
메일링 리스트에서 
dhchoi@dosan.skku.ac.kr 
dhchoi@security.re.kr
위 주소를 지워주셨으면 합니다.','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (105,'1','유성희','dam@naver.com','회비 문의 관련','1',to_date('18/04/16','RR/MM/DD'),0,105,0,0,'안녕하세요 
회비 관련해서 몇가지 문의 드릴려고 하는데요
우선 admin 에게 메일을 보내도 읽기 확인이 되지 않고
그리고 홈페이지에서 나오는 번호로 전화를 해도
해당 번호가 없다고 나옵니다. ( 369-8257-9 )
562-7041-2는 신호는 가는데 전화를 받지 않네요

몇가지 문의 드리고 당장 회비를 입금 시키고 싶어도 
도무지 연락이 되지 않으니 불안해서 입금을 못하겠습니다.

어떻게 담당자와 연락이 가능한가요???','0:0:0:0:0:0:0:1',null,0);

Insert into SCOTT.BOARD (NUM,BOARDID,WRITER,EMAIL,SUBJECT,PASSWD,REG_DATE,READCOUNT,REF,RE_STEP,RE_LEVEL,CONTENT,IP,FILENAME,FILESIZE) values (106,'1','유성희','dam@naver.com','MPEG-4가 국제표준화가 이루어 졌나요?','1',to_date('18/04/16','RR/MM/DD'),1,106,0,0,'안녕하세요.

MPEG-4가 국제표준화가 이루어 졌나요?

MPEG-7,MPEG-21도 마찬가지인가요?
','0:0:0:0:0:0:0:1',null,0);
--------------------------------------------------------
--  DDL for Index SYS_C0011782
--------------------------------------------------------


  CREATE UNIQUE INDEX "SCOTT"."SYS_C0011782" ON "SCOTT"."BOARD" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------


  ALTER TABLE "SCOTT"."BOARD" MODIFY ("NUM" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
 

  ALTER TABLE "SCOTT"."BOARD" MODIFY ("SUBJECT" NOT NULL ENABLE);
 

  ALTER TABLE "SCOTT"."BOARD" MODIFY ("PASSWD" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("REG_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("REF" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("RE_STEP" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("RE_LEVEL" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" MODIFY ("IP" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."BOARD" ADD PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
