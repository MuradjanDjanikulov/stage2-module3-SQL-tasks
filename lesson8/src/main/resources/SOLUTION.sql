SELECT max(birthday) FROM student;
SELECT min(payment_date) FROM payment;
select AVG(MARK.MARK) from MARK left join SUBJECT on MARK.SUBJECT_ID = SUBJECT.ID where SUBJECT.NAME='Math';
select min(PAYMENT.AMOUNT) from PAYMENT left join PAYMENTTYPE on PAYMENT.TYPE_ID = PAYMENTTYPE.ID where PAYMENTTYPE.NAME='WEEKLY';