ALTER TABLE Payment DROP CONSTRAINT IF EXISTS payment_type_id_fkey;
ALTER TABLE Payment DROP CONSTRAINT IF EXISTS payment_student_id_fkey;
ALTER TABLE Mark DROP CONSTRAINT IF EXISTS mark_student_id_fkey;
ALTER TABLE Mark DROP CONSTRAINT IF EXISTS mark_subject_id_fkey;

ALTER TABLE Payment ADD CONSTRAINT payment_type_id_fkey FOREIGN KEY (type_id) REFERENCES PaymentType(id) ON DELETE CASCADE;
ALTER TABLE Payment ADD CONSTRAINT payment_student_id_fkey FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE;
ALTER TABLE Mark ADD CONSTRAINT mark_student_id_fkey FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE;
ALTER TABLE Mark ADD CONSTRAINT mark_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES Subject(id) ON DELETE CASCADE;