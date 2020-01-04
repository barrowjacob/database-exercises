USE christmas_db;
TRUNCATE people;
INSERT INTO people (first_name, last_name, age, birthday, nice, wishlist)
VALUES ("jacob", "barrow", 29, '1990-01-25', false, "sandwiches"),
       ("jasmin", "eden", 32, '1987-09-05', true, "oinkers");
