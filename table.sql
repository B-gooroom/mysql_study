show databases;
use test;
show tables;

create table members (
	member_pk int auto_increment primary key,
    name nvarchar(200) not null default 'member',
    age int null
);

drop table members;


insert into members(name, age) values('홍길동', 39);
insert into members(name, age) values('김삼순', null);
insert into members(name, age) values('홍명보', 44);
insert into members(name, age) values('박지삼', 22);
insert into members(name, age) values('권명순',10);
insert into members(name) values ('semin');
insert into members(age) values (23);
insert into members(name, age) values('정새미', 10);
select * from members;

update members set age = 33 where member_pk = 2;
update members set age = 33 where 1 = 1;
update members set age = 33;
update members set name = '정새미', age = 20 where member_pk = 1;

delete from members where member_pk = 1;
delete from members;
truncate table members;

create table members_copy as select * from members;
select * from members_copy;
insert into members_copy(name, age) values('정새미', 10);
insert into members_copy select * from members;