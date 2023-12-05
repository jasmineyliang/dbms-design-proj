-- 1
Update students
SET name = 'Scott'
where students.ssn = 746897816;

-- 2
Update major m
left join students s 
on m.snum = s.snum
SET m.name = 'Computer Science', m.level = 'MS'
where s.ssn = 746897816;

-- 3
Delete
from register r
where r.regtime = 'Spring2021';