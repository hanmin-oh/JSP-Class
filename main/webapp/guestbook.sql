CREATE TABLE "TJOEUNIT"."GUESTBOOK" (
    "IDX" NUMBER(*,0) NOT NULL ENABLE, 
	"NAME" CHAR(20 BYTE) NOT NULL ENABLE, 
	"PASSWORD" CHAR(20 BYTE) NOT NULL ENABLE, 
	"MEMO" VARCHAR2(3000 BYTE) NOT NULL ENABLE, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"IP" CHAR(20 BYTE), 
	CONSTRAINT "GUESTBOOK_PK" PRIMARY KEY ("IDX")
);
   
-- ������ �ʱ�ȭ ���
-- ��� �����͸� �����ϰ� �������� ����� �ٽ� �����.
delete from guestbook;
-- �ڵ����� 1�� ������Ű�� ���� �������� �����.
create sequence guestbook_idx_seq;



