
-- 挿入・更新時刻でレコードを更新*****************************************************************************

drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text,
  -- 作成日時と更新日時を管理したい
  -- レコード挿入時にその時の日時を入れたいときは default current_timestamp
  created datetime default current_timestamp,
  updated datetime default current_timestamp on update current_timestamp
);

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

-- 日付はこんな感じで変更できるよ
 update posts set created = '2016-12-31 10:00:00' where id = 2;

-- 2017年　1月1日以降だよ
-- select * from posts where created > '2017-01-01';

-- 日時の計算 createdとcreatedに14日間足した日時を知りたいとき
 select created, date_add(created, interval 14 day) from posts;
 select created, date_add(created, interval 2 week) from posts;

-- 好きな書式で表示したい
-- select created, date_format(created, '%W %M %Y') from posts;

select * from posts;