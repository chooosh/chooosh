/* 
	SQL Script File : member_ddl.sql
	Member Sehema
*/

-- drop table
drop table member cascade constraints purge;

-- create table : 
create table member (
	member_id varchar2(30) primary key,
	member_pw varchar2(20) not null,
	name varchar2(20) not null,
	mobile varchar2(13) not null,
	email varchar2(30) not null,
	entry_date varchar2(10) not null,
	grade varchar2(1) not null,
	mileage number(6),
	manager varchar2(20)
);

-- init insert : 
insert into member(member_id, member_pw, name, mobile, email, entry_date, grade, mileage)
values('user01', 'password01', '홍길동', '010-1234-1111', 'user01@work.com', '2019.04.05', 'G', 7500);

insert into member
values('user02', 'password02', '강감찬', '010-1234-1112', 'user02@work.com', '2019.05.06', 'G', 95000, null);

insert into member
values('user03', 'password03', '이순신', '010-1234-1113', 'user03@work.com', '2019.11.07', 'G', 3000, null);

insert into member
values('user04', 'password04', '김유신', '010-1234-1114', 'user04@work.com', '2020.12.08', 'S', null, '송중기');

insert into member
values('user05', 'password05', '유관순', '010-1234-1115', 'user05@work.com', '2021.05.09', 'A', null, null);

insert into member
values('exosuho', 'exosuho522', '김준면', '010-0522-0522', 'suho@exo.com', '2021.05.09', 'A', null, null);

insert into member
values('exodo', '0112', '도경수', '010-0112-0112', 'do@exo.com', '2021.07.09', 'S', 104000, null);

insert into member
values('exobaekhyun', '0506', '변백현', '010-0506-0506', 'bbh@exo.com', '2021.05.06', 'S', 11000, null);

insert into member
values('exokai', '0114', '김종인', '010-0114-0114', 'kai@exo.com', '2020.07.11', 'A', null, '최성윤');

insert into member
values('oohsehun', 'sehun0412', '오세훈', '010-0412-0412', 'sehun@exo.com', '2021.07.12', 'S', null, '최성윤');

update member set grade='S' where member_id='exokai';


commit;




