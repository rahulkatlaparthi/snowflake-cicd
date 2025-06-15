--! Description: Insert sample users
USE DATABASE SAMPLE;
USE SCHEMA my_schema;

INSERT INTO users (name, email) VALUES 
  ('Alice', 'alice@example.com'),
  ('Bob', 'bob@example.com'),
  ('Charlie', 'charlie@example.com');
