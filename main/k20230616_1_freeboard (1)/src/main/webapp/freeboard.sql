CREATE TABLE "FREEBOARD" (
    "IDX" NUMBER(*,0) NOT NULL, 
	"NAME" CHAR(20) NOT NULL, 
	"PASSWORD" CHAR(20) NOT NULL, 
	"SUBJECT" VARCHAR2(200) NOT NULL, 
	"CONTENT" VARCHAR2(3000) NOT NULL, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"HIT" NUMBER(*,0) DEFAULT 0, 
	"NOTICE" CHAR(3 BYTE) DEFAULT 'NO', 
	"IP" CHAR(15), 
	CONSTRAINT "FREEBOARD_PK" PRIMARY KEY ("IDX")
);

CREATE TABLE "FREEBOARDCOMMENT" (
    "IDX" NUMBER(*,0) NOT NULL, 
	"GUP" NUMBER(*,0), 
	"NAME" CHAR(20) NOT NULL, 
	"PASSWORD" CHAR(20) NOT NULL, 
	"CONTENT" VARCHAR2(2000) NOT NULL, 
	"WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"IP" CHAR(15), 
	CONSTRAINT "FREEBOARDCOMMENT_PK" PRIMARY KEY ("IDX")
);

delete from freeboard;
drop sequence freeboard_idx_seq;
create sequence freeboard_idx_seq;

delete from freeboardcomment;
drop sequence freeboardcomment_idx_seq;
create sequence freeboardcomment_idx_seq;

select * from freeboard order by idx desc;
select count(*) from freeboard;
select * from freeboard where notice = 'YES' order by idx desc;

insert into freeboard (idx, name, password, subject, content, notice, ip) 
values (freeboard_idx_seq.nextval, '홍길동', '1111', '1등', '1등 입니다.', 'NO', '192.168.100.101');
insert into freeboard (idx, name, password, subject, content, notice, ip) 
values (freeboard_idx_seq.nextval, '임꺽정', '2222', '2등', '2등 입니다.', 'NO', '192.168.100.102');
insert into freeboard (idx, name, password, subject, content, notice, ip) 
values (freeboard_idx_seq.nextval, '장길산', '3333', '3등', '3등 입니다.', 'NO', '192.168.100.103');
insert into freeboard (idx, name, password, subject, content, notice, ip) 
values (freeboard_idx_seq.nextval, '일지매', '4444', '4등', '4등 입니다.', 'NO', '192.168.100.104');
commit;

