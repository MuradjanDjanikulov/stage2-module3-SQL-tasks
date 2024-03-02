-- Insert students for grades 1, 2, and 3
INSERT INTO student (name, birthday, groupnumber) VALUES
                                                      ('John', '2005-01-01', 1),
                                                      ('Chris', '2005-02-02', 1),
                                                      ('Carl', '2005-03-03', 1),
                                                      ('Oliver', '2004-04-04', 2),
                                                      ('James', '2004-05-05', 2),
                                                      ('Lucas', '2004-06-06', 2),
                                                      ('Henry', '2003-07-07', 2),
                                                      ('Jacob', '2003-08-08', 3),
                                                      ('Logan', '2003-09-09', 3);

-- Insert more students for grades 4 and 5
-- Adjust accordingly

-- Insert subjects
INSERT INTO subject (name, description, grade) VALUES
                                                   ('Art and music', 'Subjects for grade 1', 1),
                                                   ('Geography and history', 'Subjects for grade 2', 2),
                                                   ('PE and math', 'Subjects for grade 3', 3),
                                                   ('Science and IT', 'Subjects for grade 4', 4),
                                                   ('Subject1', 'Subject for grade 5', 5),
                                                   ('Subject2', 'Subject for grade 5', 5);

-- Insert marks
INSERT INTO mark (student_id, subject_id, mark) VALUES
                                                    (2, 1, 8), -- Chris by Art
                                                    (4, 2, 5), -- Oliver by History
                                                    (5, 2, 9), -- James by Geography
                                                    (8, 3, 4), -- Jacob by Math
                                                    (9, 3, 9); -- Logan by PE

-- Insert more marks for students
-- Adjust accordingly

-- Insert payment types
INSERT INTO paymenttype (name) VALUES
                                   ('DAILY'),
                                   ('WEEKLY'),
                                   ('MONTHLY');

-- Insert payments
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
                                                                    (2, 100.00, '2024-03-02 12:00:00', 1), -- Weekly payment for John
                                                                    (3, 500.00, '2024-03-01 12:00:00', 4), -- Monthly payment for Oliver
                                                                    (2, 120.00, '2024-03-03 12:00:00', 6), -- Weekly payment for Henry
                                                                    (1, 10.00, '2024-03-02 12:00:00', 5); -- Daily payment for James

-- Insert more payments for students
-- Adjust accordingly
