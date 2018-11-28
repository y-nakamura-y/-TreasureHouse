drop table if exists users;
create table users(
    id int unsigned primary key auto_increment,
    -- name varchar(20) unique,
    name varchar(20),

    -- score float not null
    -- score float default 0.0
    score float

);

-- alter table users add column email varchar(255) after name;
-- alter table users drop column score;
-- alter table users change name user_name varchar(80) default 'nobady';
-- alter table users rename persons;
-- show tables;
-- drop table if rxists persons;

-- desc users;

--  insert into users (name, score) values('nakamura',5.8);
--  insert into users (name, score) values('inoue',8.2);
--  insert into users (name, score) values('akagi',6.1);

--  insert into users (name, score) values('nakamura',5.8);
--  insert into users (name, score) values('inoue',8.2);
--  insert into users (name, score) values('akagi',6.1);
--  insert into users (name, score) values('sakanoue',4.2);
--  insert into users (name, score) values('kato',null);
--  insert into users (name, score) values('fujita',7.9);
insert into users (name, score) values ('taguchi', 5.8);
insert into users (name, score) values ('fkoji', 8.2);
insert into users (name, score) values ('dotinstall', 6.1);
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);


-- select * from users;
-- select * from users where score >=6.0;
-- select * from users where score>=3.0 and score <=6.0;
-- select * from users where score between 3.0 and 6.0;
-- select * from users where name = 'taguchi';
-- 名前がtから始まる人
-- select * from users where name like 't%';
-- 名前にaを含む人
-- select * from users where name like '%a%';
-- 名前がaで終わる人
-- select * from users where name like '%a';
-- 大文字、小文字は関係ない
-- select * from users where name like 'T%';
-- 大文字のTで区別する
-- select * from users where name like binary 'T%';
-- name が6文字の人。アンダーバーの個数
-- select * from users where name like '______';
-- 名前の2文字目がaの人
-- select * from users where name like '_a%';


