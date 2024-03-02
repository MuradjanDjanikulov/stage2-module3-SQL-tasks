-- 1. Select all columns from Subject where average mark for that subject is more than average mark for all subjects
SELECT * FROM Subject WHERE (SELECT AVG(mark) FROM Mark WHERE Mark.subject_id = Subject.id) > (SELECT AVG(mark) FROM Mark);

-- 2. Select all students who paid for school less than the average paid amount for all students
SELECT s.* FROM student s INNER JOIN payment p ON s.id = p.student_id WHERE p.amount < (SELECT AVG(amount) FROM payment);
