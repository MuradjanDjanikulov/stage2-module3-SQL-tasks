-- 1. Select the youngest student's birthday
SELECT MAX(birthday) FROM Student;

-- 2. Find the earliest made payment's date
SELECT MIN(payment_date) FROM Payment;

-- 3. Find the average mark by Math
SELECT AVG(mark) FROM Mark WHERE subject_id = (SELECT id FROM Subject WHERE name = 'Math');

-- 4. Find the min amount of payment for payment type "WEEKLY"
SELECT MIN(amount) FROM Payment WHERE type_id = (SELECT id FROM PaymentType WHERE name = 'WEEKLY');
