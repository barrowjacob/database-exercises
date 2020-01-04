USE christmas_db;
# TRUNCATE people;
INSERT IGNORE INTO people (first_name, last_name, age, birthday, nice, wishlist)
VALUES ("jacob", "barrow", 29, '1990-01-25', 1, "sandwiches"),
       ("jasmin", "eden", 32, '1987-09-05', 1, "oinkers");