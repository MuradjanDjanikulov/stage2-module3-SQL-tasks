-- 1. Select Payments with "MONTHLY" type
SELECT * FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'MONTHLY');

-- 2. Select all marks by Art
SELECT * FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'Art');

-- 3. Select all students who have "WEEKLY" payments
SELECT s.* FROM student s INNER JOIN payment p ON s.id = p.student_id WHERE p.type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY');

-- 4. Select all students who have marks by Math
SELECT s.* FROM student s INNER JOIN mark m ON s.id = m.student_id WHERE m.subject_id = (SELECT id FROM subject WHERE name = 'Math');

