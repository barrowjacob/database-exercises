USE codeup_test_db;
SELECT 'Pink Floyd' AS 'Here are the albums from:';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The Beatles' AS 'Here are the albums from:';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'MJ' AS 'Here are the albums from:';
SELECT genre FROM albums WHERE name = 'Bad';

SELECT 'the 1990s' AS 'Here are the albums from:';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 2000;

SELECT 'Less than 20 million sales' AS 'Here are the albums that have:';
SELECT name FROM albums WHERE sales < 20;

SELECT 'Rock Albums' AS 'Albums with the genre of ''rock''';
SELECT name FROM albums WHERE genre = 'Rock';
