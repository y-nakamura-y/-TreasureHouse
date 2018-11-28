drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

-- 索引　キーやインデックスと呼ばれる
-- 設定しておくとデータ抽出が早くなる

-- alter table　とした後に add indexとし、索引の名前を付ける
-- index scoreという索引を設定したいカラムを書く
alter table users add index index_score (score);
-- show index from users;

-- ちゃんとその索引が使用されているかどうかを確認するexplain
-- explain select * from users where score > 5.0;
-- explain select * from users where name = 'taguchi';
 alter table users drop index index_score;