-- Change 'Student' table
ALTER TABLE student
    MODIFY birthday date NOT NULL;

-- Change 'Mark' table
ALTER TABLE mark
    MODIFY mark INT CHECK (mark >= 1 AND mark <= 10) NOT NULL,
    MODIFY student_id bigint NOT NULL,
    MODIFY subject_id bigint NOT NULL;

-- Change 'Subject' table
ALTER TABLE subject
    MODIFY grade INT CHECK (grade >= 1 AND grade <= 5) NOT NULL;

-- Change 'PaymentType' table
ALTER TABLE paymentType
    ADD CONSTRAINT unique_payment_type_name UNIQUE (name);

-- Change 'Payment' table
ALTER TABLE payment
    MODIFY type_id bigint NOT NULL,
    MODIFY amount decimal NOT NULL,
    MODIFY payment_date datetime NOT NULL;
