https://onecompiler.com/mysql/

https://onecompiler.com/mysql/3zzgw3qvg

-- SELECT * from jobs,
-- select *from employees,
-- select *
-- from departments,
-- SELECT * from locations

-- select emploees.first_name,employeers.last_name,jobs.job_title
-- from employees
-- join jobs on employees.job_id = jobs.job_id

//*Вывести имя, фамилию, зарплату, должность(job_title) и минимальную зарплату(MIN_SALARY) для этой должности для всех сотрудников.

select first_name, last_name, salary, job_title, min_salary
from employees
join jobs on employees.job_id = jobs.job_id

select t1.first_name, t1.last_name, t1.salary, t2.job_title, t2.min_salary
from employees t1
join jobs t2 on t1.job_id = t2.job_id;

//Вывести имя, фамилию, должность(job_title), департамент(department_name) и название города(city), где находится департамент.


select t1.first_name, t1.last_name, t2.job_title, t3.department_name, t4.city
from employees t1
join jobs t2 on t1.job_id = t2.job_id
join departments t3 on t1.department_id = t3.department_id
join locations t4 on t3.location_id = t4.location_id



//Вывести имя, фамилию, зарплату, должность, минимальную и максимальную зарплату для этой должности только тех сотрудников, у которых зарплата равняется либо минимальной зарплате, либо максимальной.

select t1.first_name, t1.last_name, t1.salary, t2.job_title, t2.min_salary, t2.max_salary
from employees t1
join jobs t2 on t1.job_id = t2.job_id
where t1.salary = t2.min_salary or t1.salary = t2.max_salary

//Вывести имя, фамилию, должность и название департамента только тех работников,
 которые находятся в Великобритании(UK).

select t1.first_name, t1.last_name, t2.job_title, t3.department_name
from employees t1
join jobs t2 on t1.job_id = t2.job_id
join departments t3 on t1.department_id = t3.department_id
join locations t4 on t3.location_id = t4.location_id
where t4.country_id = 'UK'

//--  функции для работы с числами

select 5 as value;

select -5 as value;

select 5.23 as value;

-- ABS: возвращает абсолютное значение числа.
select abs(-23) as abs;


-- POW(m, n): возвращает m, возведенную в степень n.
select pow(4, 2) as pow

-- RAND: генерирует случайное число с плавающей точкой в диапазоне от 0 до 1.
select round(rand()*10, 2) as rand;
