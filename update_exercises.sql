USE codeup_test_db;
SELECT 'All albums with sales * 10' AS '';
SELECT * FROM albums;
UPDATE albums
SET sales = (sales * 10);
SELECT * FROM albums;
SELECT 'Albums released before 1980 changed to 1800s' AS '';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;
SELECT * FROM albums;
SELECT 'ALL albums from Michael Jackson are changed to Peter Jackson' AS '';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;