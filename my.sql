# create db
CREATE DATABASE IF NOT EXISTS gb_hw;
USE gb_hw;

# create table
CREATE TABLE IF NOT EXISTS students
(
    id      INT PRIMARY KEY NOT NULL,
    name    VARCHAR(100)    NOT NULL,
    age     INT1            NOT NULL,
    address VARCHAR(100)    NOT NULL
);

# insert
INSERT IGNORE INTO students (id, name, age, address)
VALUES (1, 'Михаил', 25, 'Москва'),
       (2, 'Роман', 22, 'Санкт-Петербург'),
       (3, 'Дмитрий', 33, 'Нижний Новгород'),
       (4, 'Николай', 27, 'Москва'),
       (5, 'Владимир', 30, 'Саратов'),
       (6, 'Андрей', 30, 'Москва'),
       (7, 'Антон', 28, 'Москва'),
       (8, 'Константин', 24, 'Астрахань'),
       (9, 'Павел', 36, 'Москва'),
       (10, 'Сергей', 21, 'Москва')
;

# select
SELECT name
FROM students
WHERE address LIKE '%Москва%'
  AND age BETWEEN 18 AND 29
ORDER BY name;
