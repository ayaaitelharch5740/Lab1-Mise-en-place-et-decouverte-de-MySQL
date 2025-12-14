CREATE DATABASE testdb
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE testdb;

CREATE TABLE utilisateur (
  id    INT AUTO_INCREMENT PRIMARY KEY,
  nom   VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

INSERT INTO utilisateur (nom, email) VALUES
  ('Alice', 'alice@example.com'),
  ('Bob',   'bob@example.com');

SELECT * FROM utilisateur;

SELECT nom, email
FROM utilisateur
WHERE email LIKE '%@example.com';

SELECT COUNT(*) AS total
FROM utilisateur;
