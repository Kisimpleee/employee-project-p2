--show all students
select (first_name||' ' ||last_name) as full_name 
from students

--show only female students
select * 
from students
WHERE gender = 'F'

--find students older than 14
select * from students

select (first_name||' ' ||last_name) as full_name, age 
from students
WHERE age  > '14'

--show students ordered by age from highest to lowest
select * 
from students
ORDER BY AGE DESC

--show the top 3 highest scoring students
select score, (s.first_name||' ' ||s.last_name) as full_name
FROM grades g
join students s on g.student_id = s.student_id
ORDER BY score DESC
LIMIT 3

--section B Aggregations
--Count total students
select Count(first_name)
from students

--Find average student age 
Select AVG(age)
from students

--Find highest score
select max(score) from grades

--Find lowest attendance percentage
