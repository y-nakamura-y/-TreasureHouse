drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text
);
drop table if exists comments;
create table comments (
  id int unsigned primary key auto_increment,
  post_id int not null,
  body text
);

-- 外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合外部結合

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

insert into comments (post_id, body) values (1, 'first comment for post 1');
insert into comments (post_id, body) values (1, 'second comment for post 1');
insert into comments (post_id, body) values (3, 'first comment for post 3');
insert into comments (post_id, body) values (4, 'first comment for post 4');

-- inner join
-- outer join

-- left outer join は左側に書いたテーブル、つまりpostsを軸にするので
-- 関連するレコードがcommentsにあってもなくても全てのpostsレコードを取得する
-- postsは1～3まであるので、全件取得される
-- 一方、commentsで関連データが無い場合はnull になっている
-- select * from posts left outer join comments on posts.id = comments.post_id;

-- right outr join は右側、つまりcommentsを軸にする
-- select * from posts right outer join comments on posts.id = comments.post_id;

-- select * from posts left join comments on posts.id = comments.post_id;
-- select * from posts right join comments on posts.id = comments.post_id;