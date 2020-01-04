USE christmas_db;
DROP TABLE IF EXISTS people;
CREATE TABLE IF NOT EXISTS people(
    first_name VARCHAR(50),
    last_name VARCHAR(100) NOT NULL,
    age INT,
    birthday DATE,
    nice TINYINT,
    wishlist VARCHAR(1000),
    PRIMARY KEY(last_name)
);