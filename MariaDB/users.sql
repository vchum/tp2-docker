CREATE USER IF NOT EXISTS 'user1'@'localhost' IDENTIFIED BY 'user1';
SET PASSWORD FOR 'user1'@'localhost' = PASSWORD('user1');
GRANT ALL PRIVILEGES ON parc_informatique.* TO 'user1'@'localhost' WITH GRANT OPTION;
