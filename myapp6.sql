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

-- nameとscoreを表示　スコアが5より大きければOK というのをresultカラムに表示
--  select
--    name,
--    score,
--    if (score > 5.0, 'OK', 'NG') as result
--  from
--    users;

-- scoreの整数部分を2で割ったあまりに応じて偶数か奇数かを表示
-- 奇数ならodd 偶数ならeven
-- select
--   name,
--   score,
--   case floor(score) % 2
--     when 0 then 'even'
--     when 1 then 'odd'
--   else null
--   end as type
-- from
--   users;

-- スコアが8より大きければAチーム・・・
select
  name,
  score,
  case
    when score > 8.0 then 'Team-A'
    when score > 6.0 then 'Team-B'
    else 'Team-C'
  end as team
from
  users;