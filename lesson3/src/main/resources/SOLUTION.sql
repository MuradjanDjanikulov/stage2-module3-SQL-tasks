ALTER TABLE student ALTER COLUMN birthday SET NOT NULL;
ALTER TABLE mark ADD CONSTRAINT range_1_10 CHECK (mark BETWEEN 1 AND 10 );
ALTER TABLE subject ADD CONSTRAINT range_1_5 CHECK ( grade BETWEEN 1 AND 5);
ALTER TABLE mark ALTER COLUMN student_id SET NOT NULL ;
ALTER TABLE mark ALTER COLUMN subject_id SET NOT NULL ;
ALTER TABLE paymenttype ADD CONSTRAINT unique_name UNIQUE (name);
ALTER TABLE payment ALTER COLUMN type_id SET NOT NULL ;
ALTER TABLE payment ALTER COLUMN amount SET NOT NULL ;
ALTER TABLE payment ALTER COLUMN payment_date SET NOT NULL ;