-- 1. Select Payments with "MONTHLY" type
SELECT * FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'MONTHLY');

-- 2. Select all marks by Art
SELECT * FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'Art and music');

-- 3. Select all students who have "WEEKLY" payments
SELECT * FROM student WHERE id IN (SELECT student_id FROM payment WHERE type_id = (SELECT id FROM paymentType WHERE name = 'WEEKLY'));

-- 4. Select all students who have marks by Math
SELECT * FROM student WHERE id IN (SELECT student_id FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'PE and math'));
