-- Student Table
CREATE TABLE Student (
                         id bigint PRIMARY KEY,
                         name varchar,
                         birthday date,
                         group_num int
);

-- Subject Table
CREATE TABLE Subject (
                         id bigint PRIMARY KEY,
                         name varchar,
                         description varchar
);

-- PaymentType Table
CREATE TABLE PaymentType (
                             id bigint PRIMARY KEY,
                             name varchar
);

-- Payment Table
CREATE TABLE Payment (
                         id bigint PRIMARY KEY,
                         type_id bigint,
                         amount decimal,
                         student_id bigint,
                         payment_date datetime,
                         FOREIGN KEY (type_id) REFERENCES PaymentType(id),
                         FOREIGN KEY (student_id) REFERENCES Student(id)
);

-- Mark Table
CREATE TABLE Mark (
                      id bigint PRIMARY KEY,
                      student_id bigint,
                      subject_id bigint,
                      mark int,
                      FOREIGN KEY (student_id) REFERENCES Student(id),
                      FOREIGN KEY (subject_id) REFERENCES Subject(id)
);


