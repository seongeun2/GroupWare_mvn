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
insert into tpnotice values(1, 'user1', 'user101', '�ް���', '���� �� �ް� ��û�մϴ�.', '0', sysdate, 1);
insert into tpnotice values(2, 'user1', 'user102', '�����û', '��� �׸� ���Ͽ� ���� ��û�մϴ�.', '1', sysdate, 1);
insert into tpnotice values(3, 'user1', 'user103', '����?', '������ ���� ���� �ұ�?', '1', sysdate, 1);
insert into tpnotice values(4, 'user1', 'user104', '���� ����', '���� ������ ����ȸ�� �� ������ �ּ���', '1', sysdate, 1);
insert into tpnotice values(5, 'user1', 'user105', '���', '�̹� �� ����� ���ѻ� ���ϴ�.', '0', sysdate, 1);
insert into tpnotice values(6, 'user1', 'user106', '����', '���� ���� ���� Ĩ�ϴ�.', '0', sysdate, 1);
insert into tpnotice values(7, 'user1', 'user107', '��ȣȸ��', 'ȸ�系 ��ȣȸ Ȱ���� ���� ����ȸ �ֽ��ϴ�.', '1', sysdate, 1);
insert into tpnotice values(8, 'user1', 'user101', '��ȣȸ��', '��ȣȸ ���� ����ȸ ��� �����մϴ�.', '1', sysdate, 1);
insert into tpnotice values(9, 'user1', 'user102', '19�����', '������ ������ 19�� ���� ���� �ֽ��ϴ�.', '0', sysdate, 1);
insert into tpnotice values(10, 'user1', 'user103', '�ް�', '������ �ݿ��� �ް� ��� �����Դϴ�.', '1', sysdate, 1);
insert into tpnotice values(11, 'user1', 'user104', '�����û', '��� �׸� ���Ͽ� ���� ��û�մϴ�.', '0', sysdate, 1);
insert into tpnotice values(12, 'user1', 'user105', '���� ����', '������ �ι��� ���Դϴ�.', '0', sysdate, 1);
insert into tpnotice values(13, 'user1', 'user106', 'īǮ����', 'ȫ���Ա����� ����ϴ� īǮ �����մϴ�.', '0', sysdate, 1);
insert into tpnotice values(14, 'user1', 'user107', '���� ����', '���� ���� ���̳��� �� ������ �ּ���', '1', sysdate, 1);
insert into tpnotice values(15, 'user1', 'user108', '�ް�', '�����ֿ� ���� �ް� �����Դϴ�.', '0', sysdate, 1);
insert into tpnotice values(16, 'user101', 'user1', '���α׷� ����', '7�� ���α׷��� ÷�ο� ���� ������ �ּ���', '0', sysdate, 0);
insert into tpnotice values(17, 'user102', 'user1', '��û', '���� �����Ͽ� ���� ��ǥ �ٶ��ϴ�.', '0', sysdate, 0);
insert into tpnotice values(18, 'user103', 'user1', '�������', '�������', '1', sysdate, 0);
insert into tpnotice values(19, 'user104', 'user1', 'Ȯ�ιٶ�', '���� �������� ������ ���� Ȯ���� �ּ���', '0', sysdate, 0);
insert into tpnotice values(20, 'user105', 'user1', '����Ϸ�', '���� ��û�� �Ϸ� �Ǿ����ϴ�.', '1', sysdate, 0);
insert into tpnotice values(21, 'user106', 'user1', '����', '��ǰ ���Ű� ���� ��Ź�մϴ�.', '1', sysdate, 0);
insert into tpnotice values(22, 'user107', 'user1', '���', '���� ���࿡ ���� ���� ��Ź�մϴ�.', '0', sysdate, 0);
insert into tpnotice values(23, 'user108', 'user1', '����', '�μ����� ������ȸ �����մϴ�.', '0', sysdate, 0);
insert into tpnotice values(24, 'user101', 'user1', '��ȣȸ', '��ȣȸ ������ ���� ����� �ǰ��� �����Ͽ����ϴ�.', '1', sysdate, 0);
insert into tpnotice values(25, 'user102', 'user1', '���� ����', '���� �ܺ� �湮���� ��ȸ�ǽ� ��� ���մϴ�.', '0', sysdate, 0);
insert into tpnotice values(26, 'user103', 'user1', '�Ѱ���', '������ ����ǰ �Ѱ����� �غ��� �ּ���', '0', sysdate, 0);
insert into tpnotice values(27, 'user104', 'user1', '����', '���� ������ Ȯ���Ǿ����ϴ�.', '1', sysdate, 0);
insert into tpnotice values(28, 'user105', 'user1', '���� ��û', '�뿪 ���� ��Ź�帳�ϴ�.', '0', sysdate, 0);
insert into tpnotice values(29, 'user106', 'user1', '�ް���', '������ �ް� ���ϴ�.', '1', sysdate, 0);
insert into tpnotice values(30, 'user107', 'user1', '���� �Ϸ�', '�ް� ��û�� ���� �Ǿ����ϴ�.', '1', sysdate, 0);
commit;
