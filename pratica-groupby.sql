
-- QUERY DO EXERCÍCIO 1

select count("roleId") as currentExperiences  from experiences 
group by "userId";

-- QUERY DO EXERCÍCIO 2

select  "userId" as id ,count("courseId") as educations from educations e 
group by "userId";


-- QUERY DO EXERCÍCIO 3

select  u.name as writer ,count("writerId") as testimonailCount from testimonials t 
join users u 
on u.id = t."writerId" 
where t."writerId" = 435
group by u.name;


-- QUERY DO EXERCÍCIO 4

select max(salary) as "maximumSalary",r.name as role from jobs j
join roles r 
on r.id = j."roleId" 
where j.active = true
group by role 
order by "maximumSalary";