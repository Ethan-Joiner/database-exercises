USE ad;

SELECT email FROM users
WHERE id = (
    SELECT user_id
    FROM ads
    WHERE title = 'beer'
    );

SELECT title FROM categories
WHERE id = (
    SELECT category_id
    FROM ad_category
    WHERE ad_id = (
        SELECT id
        FROM ads
        WHERE title = 'van'
        )
    );

SELECT title FROM ads
WHERE id IN (
    SELECT ad_id
    FROM ad_category
    WHERE category_id IN (
        SELECT id
        FROM categories
        WHERE title = 'Help Wanted'
        )
    );

SELECT title FROM ads
WHERE user_id IN (
    SELECT id
    FROM users
    WHERE username = 'vkatte5'
    );
