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

-- トランザクション　一連の処理を必ずまとめて行いたい場合。
-- 以下の例ではfkojiからtaguchiに1.2ポイント渡す処理を行うが
-- この処理の間に何らかの処理が割り込んできたり、途中で止まると
-- scoreの整合性が取れなくなってしまう。
-- このような場合にトランザクションを使用する

start transaction;
-- fkojiからtaguchiに1.2ポイント渡す
update users set score = score - 1.2 where name = 'fkoji';
update users set score = score + 1.2 where name = 'taguchi';

-- start transactionからcommitまでの処理は必ずまとめて行われる保証がある
-- commit;

-- transaction中に何らかの不具合が置いた場合transactionを修了して変更内容を破棄することもできる
-- その場合にはrollbackを使用する
-- この時、上でupdateしているにも関わらず、変更されずに終わる
-- rollback;

select * from users;