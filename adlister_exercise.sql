SELECT email FROM users
    JOIN ads
    ON ads.user_id = users.id
WHERE ads.title = 'mow lawn';

SELECT name AS category_name FROM categories
    JOIN ad_category AS ac
    ON ac.category_id = categories.id
    JOIN ads
    ON ads.id = ac.ad_id
WHERE ads.title = 'mow lawn';

SELECT * FROM ads
    JOIN ad_category AS ac
        ON ads.id = ac.ad_id
    JOIN categories AS c
        ON c.id = ac.category_id
WHERE c.name = 'vehicles';

SELECT * FROM ads
    JOIN users AS u
        ON u.id = ads.user_id
WHERE u.name = 'christian';
