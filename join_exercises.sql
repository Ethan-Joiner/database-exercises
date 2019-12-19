USE join_test_db;

SHOW tables;
DESCRIBE users;
DESCRIBE roles;
INSERT INTO users (name, email, role_id) VALUES
('Dennis', 'theimplication@paddys.com', 2),
('Mac', 'ducktowel@paddys.com', 2),
('Charlie', 'pirate@paddys.com', null),
('Dee', 'bird@paddys.com', 2);
SELECT users.name, roles.name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;
