USE codeup_test_db;
SELECT 'DELETING ALBUMS AFTER 1991' AS '';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'DELETING ALBUMS WITH GENRE OF DISCO' AS '';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'DELETING ALBUMS FROM THE EAGLES' AS '';
DELETE FROM albums WHERE artist = 'Eagles';