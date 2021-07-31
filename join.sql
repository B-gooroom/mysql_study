select now();
select 'abc';
select date_add(now(), interval + 7 day);
select date_format(now(), '%Y-%m-%d %H:%i:%S');

select date_format(date_add(now(), interval + 1 hour), '%Y-%m-%d %p %h:%i:%S');

create table groceries (
	grocery_pk int auto_increment primary key,
    member_pk int not null,
    name nvarchar(200) not null,
    enter date not null,
    expire date not null
    -- foreign key(member_pk) references members(member_pk)
);

select * from members;
insert into groceries(member_pk, name, enter, expire)
values(1, '사과', '2021-01-01', '2021-01-15');
select * from groceries;

insert into groceries(member_pk, name, enter, expire)
values(1, '사과', date_format(now(),'%Y-%m-%d'), date_format(date_add(now(), interval + 2 week), '%Y-%m-%d'));
insert into groceries(member_pk, name, enter, expire)
values (1, '딸기', date_format(now(), '%Y-%m-%d'), date_format(date_add(now(), interval + 2 week), '%Y-%m-%d'));
insert into groceries(member_pk, name, enter, expire)
values (2, '바나나', date_format(now(), '%Y-%m-%d'), date_format(date_add(now(), interval + 2 week), '%Y-%m-%d'));
insert into groceries(member_pk, name, enter, expire)
values (3, '망고', date_format(now(), '%Y-%m-%d'), date_format(date_add(now(), interval + 2 week), '%Y-%m-%d'));
insert into groceries(member_pk, name, enter, expire)
values (100, '자몽', date_format(now(), '%Y-%m-%d'), date_format(date_add(now(), interval + 2 week), '%Y-%m-%d'));

select * from members m inner join groceries g on m.member_pk = g.member_pk where m.member_pk = 1;
select * from members m left outer join groceries g on m.member_pk = g.member_pk;
select * from members m right outer join groceries g on m.member_pk = g.member_pk;

create table items (
	item_pk int not null,
	member_pk int not null,
	name nvarchar(200) not null,
	enter date not null,
	expire date not null
);
select * from items;

insert into items (
	select grocery_pk as item_pk, member_pk, name, enter, expire from groceries
);
insert into items (
	select grocery_pk as item_pk, member_pk, name, enter, expire from groceries
    where grocery_pk = 1
);

select name, (
	select item_pk from items i where i.item_pk = g.grocery_pk
) from groceries g;

delete from items where item_pk = 3 and member_pk = 2;
truncate table items;
drop table groceries;
SET SQL_SAFE_UPDATES=0;