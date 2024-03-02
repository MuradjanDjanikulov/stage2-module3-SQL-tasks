-- Insert Students for Grades 1-5
INSERT INTO student (id, name, group_num) VALUES
                                              (1, 'John', 1),
                                              (2, 'Chris', 1),
                                              (3, 'Carl', 1),
                                              (4, 'Oliver', 2),
                                              (5, 'James', 2),
                                              (6, 'Lucas', 2),
                                              (7, 'Henry', 2),
                                              (8, 'Jacob', 3),
                                              (9, 'Logan', 3);

-- Insert more students for 4th and 5th grade

-- Insert Subjects for Grades 1-5
INSERT INTO subject (id, name, description) VALUES
                                                (1, 'Art and music', '1st-grade subject'),
                                                (2, 'Geography and history', '2nd-grade subject'),
                                                (3, 'PE and math', '3rd-grade subject'),
                                                (4, 'Science and IT', '4th-grade subject'),
                                                (5, 'Subject1', '5th-grade subject'),
                                                (6, 'Subject2', '5th-grade subject');

-- Insert Payment Types
INSERT INTO paymenttype (id, name) VALUES
                                       (1, 'DAILY'),
                                       (2, 'WEEKLY'),
                                       (3, 'MONTHLY');

-- Insert Payments
INSERT INTO payment (id, type_id, amount, student_id, payment_date) VALUES
                                                                        (1, 2, 0.0, 1, CURRENT_TIMESTAMP), -- John, WEEKLY
                                                                        (2, 3, 0.0, 4, CURRENT_TIMESTAMP), -- Oliver, MONTHLY
                                                                        (3, 2, 0.0, 7, CURRENT_TIMESTAMP), -- Henry, WEEKLY
                                                                        (4, 1, 0.0, 5, CURRENT_TIMESTAMP); -- James, DAILY

-- Insert more payments for students

-- Insert Marks
INSERT INTO mark (id, student_id, subject_id, mark) VALUES
                                                        (1, 2, 1, 8), -- Chris, Art
                                                        (2, 4, 2, 5), -- Oliver, History
                                                        (3, 5, 2, 9), -- James, Geography
                                                        (4, 8, 3, 4), -- Jacob, Math
                                                        (5, 9, 3, 9); -- Logan, PE

-- Insert more marks for students
