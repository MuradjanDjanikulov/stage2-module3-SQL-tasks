-- 1. Select all Payments with amount more or equal 500
SELECT * FROM payment WHERE amount >= 500;

-- 2. Select students older than 20
SELECT * FROM student WHERE dateadd(year, 20, birthday) < CURRENT_DATE;

-- 3. Select students from the same group (10) but younger than 20
SELECT * FROM student WHERE group_num = 10 AND dateadd(year, 20, birthday) > CURRENT_DATE;

-- 4. Select Students with Name ‘Mike’ or from the group 4, 5, 6
SELECT * FROM student WHERE name = 'Mike' OR group_num IN (4, 5, 6);

-- 5. Select Payments dated conducted in past 8 months
SELECT * FROM sayment WHERE payment_date >= dateadd(month, -8, CURRENT_DATE);

-- 6. Select all students whose name starts with ‘A’
SELECT * FROM student WHERE name LIKE 'A%';

-- 7. Select students with name = Roxi and group= 4 or name Tallie and group = 9
SELECT * FROM student WHERE (name = 'Roxi' AND group_num = 4) OR (name = 'Tallie' AND group_num = 9);
