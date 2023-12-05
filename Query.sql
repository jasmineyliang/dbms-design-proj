-- 1
select snum,ssn from students
where name =  'Becky';

-- 2
select m.name, m.level 
from students s 
left join major m
ON s.snum = m.snum
where s.ssn =  123097834;

-- 3
select c.name, c.number
from departments d
left join courses c
on d.code=c.department_code
where d.name = 'Computer Science' or d.name = 'Landscape Architect';

-- 4
select d.name, d.level
from departments
left join degrees d
on departments.code=d.department_code
where d.name = 'Computer Science';

-- 5 
select s.name
from students s
left join minor m
on s.snum  = m.snum 
where m.name is not null;

-- 6
select count(s.name)
from students s
left join minor m
on s.snum  = m.snum 
where m.name is not null;

-- 7 
select s.name, s.snum
from students s
left join register r on s.snum  = r.snum
left join courses c on r.course_number = c.number
where c.name = 'Algorithm';

-- 8
select s.name,s.snum
from students s 
where s.dob = (select min(s2.dob) from students s2);

-- 9
select s.name,s.snum
from students s 
where s.dob = (select max(s2.dob) from students s2);

-- 10
select s.name,s.snum, s.ssn
from students s 
where s.name like '%N%' or '%n%';

-- 11
select s.name,s.snum, s.ssn
from students s 
where s.name not like '%N%' or '%n%';

-- 12
select c.number, c.name, count(r.snum)
from courses c
left join register r 
on c.number = r.course_number
group by c.number;

-- 13
select s.name
from register r 
left join students s
on r.snum = s.snum
where regtime = 'Fall2020';

-- 14
select c.number,c.name
from departments d
left join courses c
on d.code=c.department_code
where d.name = 'Computer Science';

-- 15
select c.number,c.name
from departments d
left join courses c
on d.code=c.department_code
where d.name = 'Computer Science' or d.name = 'Landscape Architect';