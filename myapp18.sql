drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text
);
drop table if exists logs;
create table logs (
  id int unsigned primary key auto_increment,
  msg varchar(255)
);

-- トリガー　テーブルで何らかの変更が起きた時にそれをトリガーにして何かしらの処理をする
-- 今回postsテーブルにデータが挿入されたらほあのテーブルにログが残るようにする
-- まず、logsテーブルを作り、 msg varchar(255)というフィールドを作る
-- 以下のように記述すれば、postsに対してinsertした後、それぞれのレコードに対して
-- insert into logs(msg) values('post added!')を実行しなさいという意味になる
drop trigger if exists posts_insert_trigger;
create trigger posts_insert_trigger after insert on posts for each row insert into logs (msg) values ('post added!');

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

select * from posts;
select * from logs;

-- show triggers;
show triggers \G