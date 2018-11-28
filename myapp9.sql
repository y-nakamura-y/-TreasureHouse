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

-- グループ集計
drop table if exists users_with_team;
create table users_with_team as
select
  id,
  name,
  score,
  case
    when score > 8.0 then 'Team-A'
    when score > 6.0 then 'Team-B'
    else 'Team-C'
  end as team
from users;

-- チームごとにスコアの合計を出したい
-- select sum(score), team from users_with_team group by team;
-- チームAから表示されるが、逆走したければdescを付ける
-- select sum(score), team from users_with_team group by team desc;

-- group by で集計した後のデータに対して条件を付けたい場合は
-- where ではなく having を使う
-- スコア合計が10より大きいチームだけ出したい時
-- select sum(score), team from users_with_team group by team having sum(score) > 10.0;

-- where と　group byを一緒に使った場合はwhere条件でデータ抽出を行った後にgroup byで集計を行うことになる
 select sum(score), team from users_with_team where id > 3 group by team;