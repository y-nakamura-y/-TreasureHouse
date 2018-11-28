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

-- 数値の演算↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
-- + - * /%
-- idが偶数の人のスコアを1.2倍したい
-- update users set score = score * 1.2 where id % 2 = 0;

-- select * from users;
-- select round(5.355); -- 5
-- select round(5.355, 1); -- 5.4
-- select floor(5.833); -- 5
-- select ceil(5.238); -- 6
-- 0以上1未満のランダムな数値を返す
-- select rand();

-- 抽選　乱数で並び替えて、そのうちの一つだけ取り出す。
-- select * from users order by rand() limit 1;

-- 文字列の演算↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
-- helloの文字数カウント
-- select length('Hello'); -- 5
-- 2文字目以降抽出
-- select substr('Hello', 2); -- ello
-- 2文字目以降から3文字分抽出
-- select substr('Hello', 2, 3); -- ell
-- 小文字を大文字に
-- select upper('Hello'); -- HELLO
-- 大文字を小文字に
-- select lower('Hello'); -- hello
-- 文字列の連結、何個でも並び替えて大丈夫
-- select concat('hello', 'world'); -- helloworld
-- 文字数と、名前を表示したい　ユーザーから　文字数が少ない順に並べる
-- select length(name), name from users order by length(name);
-- length(name)では長いので、len に変更　あとは上と同じ。
-- select length(name) as len, name from users order by len;