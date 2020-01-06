USE spotify_db;

SELECT artist FROM song
WHERE title = 'hey brother';

SELECT * FROM song
ORDER BY duration desc
LIMIT 3;

SELECT COUNT(*) FROM song;

SELECT artist, COUNT(*) FROM song
GROUP BY artist
ORDER BY COUNT(*) desc
LIMIT 10;

