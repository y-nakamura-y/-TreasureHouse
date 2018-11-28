drop table if exists posts;
    create table posts(
        id int unsigned primary key auto_increment,
        title varchar(255),
        body text
    );

drop table if exists comments;
    create table comments(
        id int unsigned primary key auto_increment,
        post_id int not null,
        body text
    );

-- 内部結合　↓内部結合　↓内部結合　↓内部結合　↓内部結合　↓内部結合　↓内部結合　↓内部結合　↓内部結合　↓内部結合　↓内部結合　↓

insert into posts(title, body) values('title 1', 'body 1');
insert into posts(title, body) values('title 2', 'body 2');
insert into posts(title, body) values('title 3', 'body 3');

insert into comments (post_id, body) values (1, 'first comment for post 1');
insert into comments (post_id, body) values (1, 'second comment for post 1');
insert into comments (post_id, body) values (3, 'first comment for post 3');
insert into comments (post_id, body) values (4, 'first comment for post 4');

-- inner join 2つのテーブルに共通のデータだけを取得する
-- outer join 2つのテーブルで一致しないデータも含めて取得する方法
-- inner join の innerは省略することができる
-- comments にはid 2や4のデータはないので、レコードが作られることはない
-- こんな感じで共通データがあれば結合するのをinner joinと呼ぶ
-- select * from posts inner join comments on posts.id = comments.post_id;

-- select posts.id, posts.title, posts.body, comments.body from posts join comments on posts.id = comments.post_id;

-- select posts.id, title, posts.body, comments.body from posts join comments on posts.id = comments.post_id;

-- select * from posts;
-- select * from comments;