
drop table toy_member cascade constraints purge;
drop table find_member cascade constraints purge;

create table sideOn_member (
	memberId varchar2(20) not null,
	memberPw varchar2(20) not null,
	email varchar2(40) not null,
    grade varchar2(10) not null,
	name varchar2(20) not null,
	mobile varchar2(15) not null,
    restCount varchar2(5),
    reward varchar2(50),
	entryDate varchar2(15) not null,
    CONSTRAINT PK_member PRIMARY KEY (memberId)
    );
    
create table find_member (
    find_no Int primary key,
    find_title varchar2(60) not null,
    find_writer varchar2(20) not null,
    find_adress varchar2(60) not null,
    find_position varchar2(20), 
    find_imgpath varchar2(500),
    find_content varchar2(1500) not null,
    CONSTRAINT FK_find_member FOREIGN KEY (find_writer)
    REFERENCES sideOn_member(memberId)
    ON DELETE CASCADE
    );
    
    select * from sideOn_member;
    select * from find_member;
    
    commit;