CREATE TABLE "TJOEUNIT"."GUESTBOOK" (
    "IDX" NUMBER(*,0) NOT NULL ENABLE, 
	"NAME" CHAR(20 BYTE) NOT NULL ENABLE, 
	"PASSWORD" CHAR(20 BYTE) NOT NULL ENABLE, 
	"MEMO" VARCHAR2(3000 BYTE) NOT NULL ENABLE, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"IP" CHAR(20 BYTE), 
	CONSTRAINT "GUESTBOOK_PK" PRIMARY KEY ("IDX")
);
   
-- 시퀀스 초기화 방법
-- 모든 데이터를 제거하고 시퀀스를 지우고 다시 만든다.
delete from guestbook;
-- 자동으로 1씩 증가시키기 위해 시퀀스를 만든다.
create sequence guestbook_idx_seq;



