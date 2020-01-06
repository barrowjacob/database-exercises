USE adlister_exercise_db;
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;
CREATE TABLE IF NOT EXISTS ads (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    description text,
    user_id INT NOT NULL,
    PRIMARY KEY (id)
);


DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ad_category;
CREATE TABLE IF NOT EXISTS ad_category (
    ad_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
