CREATE TABLE TPNOTICE(
   NID      number(4)      PRIMARY KEY,
   FROMID      varchar2(10)       NOT NULL,
   TOID      varchar2(10)       NOT NULL,
   TITLE      varchar2(20)      NOT NULL,
   CONTENT      varchar2(100)      NOT NULL,
   STATUS      varchar2(2)      NOT NULL,
   INDATE      DATE         NOT NULL,
   SENTRECV   number(4)      NOT NULL);