USE spotify_db;
TRUNCATE song;
INSERT INTO song (title, artist, album, genre, duration)
VALUES ('when the party\'s over', 'billie eilish', 'when we all fall asleep', 'alt pop', '3:15'),
       ('bop', 'dababy', 'kirk', 'rap', '2:40'),
       ('how far i\'ll go', 'auli\'i cravalho', 'moana', 'happiness', '2:43'),
       ('fool for you', 'snoh aalegra', 'feels','r&b', '3:14'),
       ('dream on', 'aerosmith', 'aerosmith', 'rock', '4:27'),
       ('hey brother', 'the mayries', 'hey brother', 'indie', '3:41'),
       ('here i go again', 'whitesnake', 'whitesnake', 'hair rock', '5:09'),
       ('all for us', 'labrinth', 'imagination', 'alternative', '3:12'),
       ('los angeles', 'the midnight', 'days of thunder', 'synthwave', '6:29'),
       ('shadows', 'the midnight', 'nocturnal', 'synthwave', '6:28');