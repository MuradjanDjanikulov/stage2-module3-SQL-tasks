alter table MARK add constraint CONSTRAINT_STD foreign key(STUDENT_ID) references STUDENT(ID) on delete cascade;
