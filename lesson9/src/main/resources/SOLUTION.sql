-- 1. Select all Students from Table Students having an average mark more than 8
SELECT id, name FROM Student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING AVG(mark) > 8);

-- 2. Select students (id and name) who have a minimum mark more than 7
SELECT id, name FROM Student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING MIN(mark) > 7);

-- 3. Select all students (id and name) who paid more than 2 times during 2019
SELECT s.id, s.name FROM student s INNER JOIN payment p ON s.id = p.student_id WHERE YEAR(payment_date) = 2019 GROUP BY s.id, s.name HAVING COUNT(p.id) > 2;
