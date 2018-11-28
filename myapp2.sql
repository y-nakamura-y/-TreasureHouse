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

-- スコアを小さい順
-- select * from users order by score;
-- select * from users where score is not null order by score desc;
-- 最初の3件を表示
-- select * from users limit 3;
-- 次の3人
-- select * from users limit 3 offset 3;
-- 上位3名を表示
-- select * from users order by score desc limit 3;