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

-- select '홍길동' as '-- name', 39 as age
-- union all
-- select '김삼순', 33
-- union all
-- select '홍명보', 44
-- union all
-- select '박지삼', 22
-- union all
-- select '권명순', 10;

# MainQuery
select members.* from (
	/* SubQuery */
    select '홍길동' as 'name', 39 as age
	union all
	select '김삼순', 33
	union all
	select '홍명보', 44
	union all
    select '홍명보', 50
	union all
	select '박지삼', 22
	union all
	select '권명순', 10
) members
-- where 1 = 1 or (
--   members.name = '홍길동' or members.age = 33
--   );
   -- where members.name like '%삼%'; 
   -- where members.name in ('홍길동', '박지삼');
   -- order by members.name desc, members.age desc;
   -- limit 0, 10;
   -- limit 4, 2;
   where 1 = 1
   order by members.name
   limit 0, 10;