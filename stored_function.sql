-- stored function
-- ほぼ、stored procedureと同じだが、唯一異なる点は
-- 実行した時に値を返すかどうか。という点。
-- stored functionは値を返す

-- stored functionを利用する前にrootで入って以下のコマンドを打つ。
-- mysql -u root

-- mysqlウインドウで以下の記述
-- SET GLOBAL log_bin_trust_function_creators=1;
-- SHOW VARIABLES LIKE 'log_bin_trust_function_creators';

-- log_bin_trust_function_creators が ONになっていないと
-- stored functionは使えない。

-- 標準体重を計算するfunction
delimiter //
create function ful(sintyo int) returns double
    begin
        return sintyo * sintyo *22/10000;
    end//
delimiter ;

-- mysqlウインドウで以下の記述
-- select ful(自分の体重);
