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

-- 全員のスコアが5.9に
-- update users set score = 5.9;
-- id=1の人のスコアを5.9に
-- update users set score = 5.9 where id = 1;
-- 田中の名前が佐々木になり、スコアが2.9になる
-- update users set name = 'sasaki', score = 2.9 where name = 'tanaka';
-- 全件削除
-- delete from users;
-- スコア5.0以下の人全員削除
-- delete from users where score < 5.0;

 select * from users;