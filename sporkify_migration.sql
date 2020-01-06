

DROP TABLE IF EXISTS sporkify;
CREATE TABLE IF NOT EXISTS sporkify(
                                     id INT UNSIGNED AUTO_INCREMENT,
                                     artist VARCHAR(50),
                                     name VARCHAR(50),
                                     album VARCHAR(50),
                                     release_date INT,
                                     duration INT,
                                     PRIMARY KEY (id)
);