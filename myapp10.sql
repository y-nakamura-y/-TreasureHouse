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

-- 集計用に別テーブルを作らなくても
-- サブクエリを使えばいきなり集計ができるよ

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

select
-- t テーブルのスコア
  sum(t.score),
-- t　テーブルのチーム
  t.team
from
  (select
    id,
    name,
    score,
    case
      when score > 8.0 then 'Team-A'
      when score > 6.0 then 'Team-B'
      else 'Team-C'
    end as team
    -- as t　とすればscoreやteamは　t のカラムになる
  from users) as t 
group by t.team;