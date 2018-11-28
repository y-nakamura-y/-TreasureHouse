drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

insert into users (name, score) values ('taguchi', 5.8);
insert into users (name, score) values ('fkoji', 8.2);
insert into users (name, score) values ('dotinstall', 6.1);
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);

drop table if exists users_with_team;
create table users_with_team as
select
  id,
  name,
  score,
  case
    when score > 8.0 then 'Team-A'
    when score > 6.0 then 'Team-B'
    else 'Team-C'
  end as team
from users;

-- データの個数を調べる count()
-- nullを除きたいので count(score)と書く
-- nullも含む、単純な全行数取得の場合はselect count(*)とすればよい
--  select count(score) from users_with_team;
--  select count(id) from users_with_team;
--  select count(*) from users_with_team;


-- 合計などを求める命令文
-- select sum(score) from users_with_team;
-- select min(score) from users_with_team;
-- select max(score) from users_with_team;
-- select avg(score) from users_with_team;

-- 重複したレコードを取り除いて取得する方法
-- 今チームはいくつかあるが、teamはいくつ存在するのか
-- select distinct とするとユニークな値だけを取得できる
 select distinct team from users_with_team;
select count(distinct team) from users_with_team;