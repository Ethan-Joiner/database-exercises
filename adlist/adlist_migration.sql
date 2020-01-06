USE ad;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ad_category;

CREATE TABLE IF NOT EXISTS users(
     id INT UNSIGNED AUTO_INCREMENT,
     username VARCHAR(50),
     email VARCHAR(50),
     password VARCHAR(50),
     PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS ads(
      id INT UNSIGNED AUTO_INCREMENT,
      title VARCHAR(50),
      description VARCHAR(50),
      user_id INT UNSIGNED,
      PRIMARY KEY (id),
      FOREIGN KEY (user_id) REFERENCES users(id)
);
ALTER TABLE ads
    MODIFY description varchar(100) NULL;

CREATE TABLE IF NOT EXISTS categories(
      id INT UNSIGNED AUTO_INCREMENT,
      title VARCHAR(50),
      PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ad_category(
     ad_id INT UNSIGNED,
     category_id INT UNSIGNED,
     FOREIGN KEY (ad_id) REFERENCES ads(id),
     FOREIGN KEY (category_id) REFERENCES categories(id)

);