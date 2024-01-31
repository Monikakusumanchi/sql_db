-- init.sql

-- Create the database
CREATE DATABASE IF NOT EXISTS mydatabase;

-- Switch to the database
USE mydatabase;

-- Create a table
CREATE TABLE IF NOT EXISTS mytable (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  age INT
);

-- Insert some data
INSERT INTO mytable (name, age) VALUES ('ramu Doe', 30);
INSERT INTO mytable (name, age) VALUES ('Jane Smith', 25);