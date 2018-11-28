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

-- 抽出条件に名前を付けてテーブルのように扱うことができるview
drop view if exists top3;
create view top3 as select * from users order by score desc limit 3;
-- select * from top3;

-- viewはテーブルと同じ扱いになるのでshow tablesでviewも表示できる
-- show tables;

-- どのようにしてこのviewが作られたのか見たい時
 show create view top3;