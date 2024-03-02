SELECT s.* FROM Student s JOIN Mark m ON m.student_id = s.id GROUP BY s.id HAVING AVG(m.mark) > 8;

SELECT s.id, s.name FROM Student s JOIN Mark m ON m.student_id = s.id GROUP BY s.id, s.name HAVING MIN(m.mark) > 7;

SELECT s.id, s.name FROM student AS s JOIN payment as p ON s.id = p.student_id WHERE EXTRACT(YEAR FROM p.payment_date) = 2019 GROUP BY (s.id, s.name) HAVING COUNT(*) > 2;