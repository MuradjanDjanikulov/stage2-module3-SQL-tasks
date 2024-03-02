-- Delete all students with grade more or equals than 4 and all relationships with this student
DELETE FROM mark WHERE student_id IN (SELECT s.id FROM student s JOIN mark m ON s.id = m.student_id WHERE m.grade >= 4 );

-- Then, delete payments associated with students having grade >= 4
DELETE FROM payment WHERE student_id IN (SELECT id FROM student WHERE id IN (SELECT s.id FROM student s JOIN mark m ON s.id = m.student_id WHERE m.grade >= 4));

-- Finally, delete students having grade >= 4
DELETE FROM student WHERE id IN (SELECT id FROM student WHERE id IN (SELECT s.id FROM student s JOIN mark m ON s.id = m.student_id WHERE m.grade >= 4));

-- Delete students who have at least one mark less than 4
DELETE FROM Student WHERE id IN (SELECT student_id FROM Mark WHERE mark < 4);

-- Delete "Daily" payment type and all relationships with this type
DELETE FROM payment WHERE type_id IN ( SELECT id FROM paymenttype WHERE name = 'DAILY');

-- Then, delete the "Daily" payment type
DELETE FROM PaymentType WHERE name = 'DAILY';

-- Delete all marks less than 7
DELETE FROM Mark WHERE mark < 7;
