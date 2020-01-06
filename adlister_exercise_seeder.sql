USE adlister_exercise_db;

TRUNCATE users;
INSERT INTO users(name, email, password)
VALUES ('jacob', 'sdf@sdsdf.com', '123sdf'),
    ('chris', 'wer@sdfwer.com', '234234d'),
    ('alyssa', 'kdfk@weri.com', '99idk'),
       ('christian', 'iieke@sdfi.com','99dkei');;

INSERT INTO ads(title, description, user_id)
VALUES ('mow lawn', 'this is an ad', 1),
       ('housekeeping', 'boop', 1),
       ('new truck', 'hey', 2),
       ('laptop for sale','yes', 4),
       ('shirts','no',3);

INSERT INTO categories(name)
    VALUES ('services'),
           ('vehicles'),
           ('clothing'),
           ('tech'),
           ('appliances'),
           ('furniture');

INSERT INTO ad_category(ad_id, category_id)
    VALUES(1,1),
           (2,1),
           (3,2),
           (4,4),
           (5,3),
           (6, 1),
           (7, 1),
           (8, 2),
           (9,4),
           (10,3);