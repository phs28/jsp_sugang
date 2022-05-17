CREATE TABLE member (
    name VARCHAR2(20),
    id VARCHAR2(20) PRIMARY KEY,
    pw VARCHAR2(20),
    sex varchar2(20),
    age varchar2(20),
    phone VARCHAR2(20)
);

comment on table member is 'member';
comment on column member.name is 'name';
comment on column member.id is 'id';
comment on column member.pw is 'pw';
comment on column member.sex is 'sex';
comment on column member.age is 'age';
comment on column member.phone is 'phone';

select * from member;

create table sugang (
    stnum VARCHAR2(20) not null,
    grade VARCHAR2(20) not null,
    subject1 varchar2(20),
    subject2 varchar2(20),
    subject3 varchar2(20),
    subject4 varchar2(20),
    subject5 varchar2(20)
);

comment on table sugang is 'sugang';
comment on column sugang.stnum is 'stnum';
comment on column sugang.grade is 'grade';
comment on column sugang.subject1 is 'subject1';
comment on column sugang.subject2 is 'subject2';
comment on column sugang.subject3 is 'subject3';
comment on column sugang.subject4 is 'subject4';
comment on column sugang.subject5 is 'subject5';

select * from sugang;


