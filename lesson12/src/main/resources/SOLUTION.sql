delete from STUDENT where ID in (select MARK.STUDENT_ID from MARK inner join SUBJECT on MARK.SUBJECT_ID = SUBJECT.ID where SUBJECT.GRADE>=4);
delete from STUDENT where ID in (select MARK.STUDENT_ID from MARK where MARK.MARK<4);
delete from PAYMENTTYPE where NAME='DAILY';
delete from MARK where MARK<7;