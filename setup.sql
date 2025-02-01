
-- SQL statements

--In general there are two varieties of SQL statements
-- 1. Commands
-- 2. Queries

CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 0
);

-- Don't forget the semi-colon!

-- Dummy data:

-- CRUD(S)
-- create
-- read
--update
-- delete
-- scan

-- create

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES 
(
    "Angel",
    "Valentin",
    "Guitar"
),
(
    "Bob",
    "Martin",
    "Writing books"
),
(
    "John",
    "Doe",
    "Playing gold and watching TV"
);

-- read

SELECT * FROM user WHERE id=1;

-- scan *

SELECT * FROM user;

-- Update 
UPDATE user SET
    first_name="Tom",
    last_name="Smith",
    hobbies="Watching movies and listening to music"
WHERE id=1;

-- delete
DELETE FROM user WHERE id = 1;


-- Mini challenge 1

INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES 
(
    "Jane",
    "Doe",
    "playing tennis and video games"
),
(
    "Tom",
    "Jones",
    "ski and go bird watching"
),
(
    "Jenny",
    "Rogers",
    "code and watch youtube videos"
);

UPDATE user SET
    first_name="Thomas",
    last_name="Jones",
    hobbies="Watching movies and listening to music"
WHERE id=5;

-- Bonus

CREATE TABLE IF NOT EXISTS Vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year_made VARCHAR(45),
    make VARCHAR(45),
    Model VARCHAR(45),
     TEXT,
    in_inventory BOOLEAN DEFAULT 0
);