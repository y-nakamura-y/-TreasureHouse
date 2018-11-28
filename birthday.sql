SET @now = '2018-11-28', @birthday = '1993-07-31';
SELECT (YEAR(DATE(@now)) - YEAR(@birthday)) 
  - (RIGHT(@birthday, 5) > RIGHT(DATE(@now), 5)) AS age; // => 15