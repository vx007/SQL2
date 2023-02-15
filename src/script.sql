INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Marina', 'Romanova', 'female', 35);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Timofey', 'Sidorov', 'male', 12);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Kirill', 'Nikolaev', 'male', 62);

SELECT first_name AS Имя,
       last_name  AS Фамилия
FROM employee;

SELECT *
FROM employee
WHERE age < 30
   OR age > 50;

SELECT *
FROM employee
WHERE age BETWEEN 30 AND 50;

SELECT *
FROM employee
ORDER BY last_name DESC;

SELECT *
FROM employee
WHERE length(first_name) > 4;

UPDATE employee
SET first_name = 'Marina',
    last_name  = 'Romanova',
    gender     = 'female'
WHERE first_name = 'Anna'
  AND last_name = 'Petrova';

UPDATE employee
SET first_name = 'Kirill',
    last_name  = 'Nikolaev',
    gender     = 'male'
WHERE first_name = 'Timofey'
  AND last_name = 'Sidorov';

SELECT first_name AS Имя,
       SUM(age)   AS Суммарный_возраст
FROM employee
GROUP BY Имя;

SELECT first_name, age
FROM employee
WHERE age = (SELECT MIN(age)
             FROM employee);

SELECT first_name,
       MAX(age) AS Max_age
FROM employee
GROUP BY first_name
HAVING count(first_name) > 1
ORDER BY Max_age;
