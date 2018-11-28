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

-- 抽出結果をテーブルにする
-- create table users_with_team as
-- select
--   id,
--   name,
--   score,
--   case
--     when score > 8.0 then 'Team-A'
--     when score > 6.0 then 'Team-B'
--     else 'Team-C'
--   end as team
-- from users;

-- select * from users_with_team;


-- テーブルのコピーも簡単にできる
-- create table users_copy select * from users;
--  select * from users_copy;

-- likeとやるとusers_emptyというusersと同じ構造の空テーブルが完成する
create table users_empty like users;
desc users_empty;
select * from users_empty;