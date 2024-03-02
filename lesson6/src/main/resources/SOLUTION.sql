SELECT p.* FROM Payment p JOIN PaymentType pt ON p.type_id = pt.id WHERE pt.name = 'MONTHLY';
SELECT m.* FROM Mark m JOIN Subject s ON m.subject_id = s.id WHERE s.name = 'Art';
SELECT DISTINCT s.id, s.name, s.birthday, s.groupnumber FROM payment AS p JOIN paymenttype AS t ON p.type_id = t.id JOIN student AS s ON p.student_id = s.id WHERE t.name = 'WEEKLY';
SELECT s.* FROM Student s JOIN Mark m ON s.id = m.student_id JOIN Subject sb ON m.subject_id = sb.id WHERE sb.name = 'Math';