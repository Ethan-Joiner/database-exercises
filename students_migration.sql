USE deimos_db;
CREATE TABLE students (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  birthday date DEFAULT NULL,
  projects text NOT NULL,
  isHired tinyint(4) DEFAULT NULL,
  PRIMARY KEY (id)
  );
