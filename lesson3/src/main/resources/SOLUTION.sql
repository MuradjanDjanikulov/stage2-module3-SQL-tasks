-- Alter the Student table to make 'birthday' field not nullable
ALTER TABLE student MODIFY COLUMN birthday DATE NOT NULL;

-- Alter the Mark table to set a range for 'mark' and make 'student_id' and 'subject_id' not nullable
ALTER TABLE mark
    MODIFY COLUMN mark INT NOT NULL CHECK (mark BETWEEN 1 AND 10),
    MODIFY COLUMN student_id BIGINT NOT NULL,
    MODIFY COLUMN subject_id BIGINT NOT NULL;

-- Alter the Subject table to set a range for 'grade'
ALTER TABLE subject MODIFY COLUMN grade INT NOT NULL CHECK (grade BETWEEN 1 AND 5);

-- Alter the PaymentType table to make 'name' unique
ALTER TABLE paymenttype ADD CONSTRAINT unique_name UNIQUE (name);

-- Alter the Payment table to make 'type_id', 'amount', and 'date' not nullable
ALTER TABLE payment
    MODIFY COLUMN type_id BIGINT NOT NULL,
    MODIFY COLUMN amount DECIMAL NOT NULL,
    MODIFY COLUMN payment_date TIMESTAMP NOT NULL;
