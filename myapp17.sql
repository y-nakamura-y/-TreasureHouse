drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text
);
drop table if exists comments;
create table comments (
  id int unsigned primary key auto_increment,
  post_id int unsigned not null,
  body text
);

-- last_insert_id() **********************************************************************************
insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

insert into comments (post_id, body) values (1, 'first comment for post 1');
insert into comments (post_id, body) values (1, 'second comment for post 1');
insert into comments (post_id, body) values (3, 'first comment for post 3');

-- レコードの挿入完了後、2番目のpostsを削除
delete from posts where id = 2;
-- その次に新しい記事を挿入
insert into posts (title, body) values ('new title', 'new body');

-- insert into comments (post_id, body) values (4, 'first comment for new post');
insert into comments (post_id, body) values (last_insert_id(), 'first comment for new post');


select * from posts;
select * from comments;