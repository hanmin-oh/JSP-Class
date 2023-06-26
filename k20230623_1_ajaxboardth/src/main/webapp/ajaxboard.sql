CREATE TABLE "AJAX" (
    "IDX" NUMBER(*,0) NOT NULL, 
	"NAME" CHAR(20 BYTE) NOT NULL, 
	"AGE" NUMBER(*,0) NOT NULL, 
	"GENDER" CHAR(4 BYTE) NOT NULL, 
	"EMAIL" VARCHAR2(100 BYTE) NOT NULL, 
	CONSTRAINT "AJAX_PK" PRIMARY KEY ("IDX")
);

delete from ajax;
drop sequence ajax_idx_seq;
create sequence ajax_idx_seq;

insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, 'ȫ�浿', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '�Ӳ���', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '����', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '������', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '�տ���', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '���Ȱ�', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '�����', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '��縶', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '������', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, 'Ʈ��ũ��', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '��õ����', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '���κο�', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '�տ���', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, 'ũ����', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '����', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '���ݷ�', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '�߹�ġ', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '��ź', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '�츶��', 20, '����', 'a@a.com');
insert into ajax (idx, name, age, gender, email) values (ajax_idx_seq.nextval, '��ս�', 20, '����', 'a@a.com');

