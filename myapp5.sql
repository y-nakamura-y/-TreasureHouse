drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float,
  -- rank enum('gold', 'silver', 'bronze')
  coins set('gold', 'silver', 'bronze')
);

-- rank enum('gold', 'silver', 'bronze')にすると、rankはこの3種類からしか選べない。
-- rank に　red とか入れても弾かれる
-- insert into users (name, score, rank) values ('taguchi', 5.8, 'silver');
-- insert into users (name, score, rank) values ('fkoji', 8.2, 'gold');
-- insert into users (name, score, rank) values ('dotinstall', 6.1, 'red');

-- select * from users;
-- select * from users where rank = 'silver';
-- 配列とは違い、キーが1から与えられてるので、2を指定するとsilverが出てくる。
-- select * from users where rank = 2;

-- enum型は複数の選択肢から一つ選べるのに対し、
-- set型は複数選ぶことができる
insert into users (name, score, coins) values ('taguchi', 5.8, 'gold,silver');
insert into users (name, score, coins) values ('fkoji', 8.2, 'bronze,gold');
insert into users (name, score, coins) values ('dotinstall', 6.1, 'red');

-- select * from users;
-- select * from users where coins = 'gold,silver';
-- goldを持つ全てのユーザー
-- select * from users where coins like '%gold%';
-- setに関しても内部的には数値が割り当てられていて、最初の値には2の0乗、次は2の1乗
-- という感じで値を保持している。
-- 従って、1番目と2番目が含まれるレコードを指定したい場合は1+2でcoins=3とするとgoldとsilverを持つ
-- ユーザーを抽出することができる
 select * from users where coins = 3;