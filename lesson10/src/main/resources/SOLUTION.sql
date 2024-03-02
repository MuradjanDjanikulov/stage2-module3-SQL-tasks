-- 1. Select all columns from Subject where average mark for that subject is more than average mark for all subjects
SELECT * FROM Subject
WHERE (SELECT AVG(mark) FROM Mark WHERE Mark.subject_id = Subject.id) >
      (SELECT AVG(mark) FROM Mark);

-- 2. Select all students who paid for school less than the average paid amount for all students
SELECT * FROM Student
WHERE id IN (SELECT P.student_id FROM Payment P GROUP BY P.student_id HAVING AVG(P.amount) < (SELECT AVG(amount) FROM Payment));
