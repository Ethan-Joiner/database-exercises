USE codeup_test_db;

show tables;
SELECT * FROM albums;
DESCRIBE albums;
ALTER TABLE albums
ADD UNIQUE (name, artist);
SHOW index FROM albums;
SHOW CREATE TABLE albums;
# ALTER TABLE albums
# DROP KEY name_2;

