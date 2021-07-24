-- select 1, '2', '삼';

-- select 1 as One, '2' as Two, '삼' as Three
-- union
-- select 'four', '오', 6
-- union
-- select 7, 8, 9
-- union all
-- select 10, 11, 12
-- union
-- select 7, 8, 9

select '홍길동' as 'name', 39 as age
union all
select '김삼순', 33
union all
select '홍명보', 44
union all
select '박지삼', 22
union all
select '권명순', 10;

# MainQuery
select members.* from (
	/* SubQuery */
    select '홍길동' as 'name', 39 as age
	union all
	select '김삼순', 33
	union all
	select '홍명보', 44
	union all
	select '박지삼', 22
	union all
	select '권명순', 10
) members
where 1 = 1
and 2 = 2
and 3 = 3;