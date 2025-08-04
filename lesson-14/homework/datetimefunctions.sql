1.    select id,
          ltrim(rtrim(substring(name, 1, charindex(',', name) - 1))) as Name,
		      ltrim(rtrim(substring(Name, charindex(',', name) + 1, len(name)))) as Surname
		  from testmultiplecolumns;

2. select * from testpercent
where strs like '%[%]%';

3. select id,
   ltrim(rtrim(substring(vals, 1, charindex('.', vals) - 1))) as val1,  
   ltrim(rtrim(case
		when charindex('.', vals, charindex('.', vals) + 1) > 0
		then substring(vals, charindex('.', vals) + 1,
			             charindex('.', vals, charindex('.', vals) + 1) - charindex('.', vals) - 1 )
		else substring(vals, charindex('.', vals) + 1, len(vals))
		end)) 
		as val2,
  ltrim(rtrim(case
		 when charindex('.', vals, charindex('.', vals) + 1) > 0
		 then substring(vals, charindex('.', vals, charindex('.', vals) + 1) + 1, len(vals)
		) 
		else null
		end
		)) as val3
                from splitter
4. 		 
SELECT 
  Id,
  VALS,
  TRANSLATE(VALS, '0123456789', 'XXXXXXXXXX') AS ReplacedDigits
FROM GetIntegers;

5. select *
from testdots
where len(vals) - len(replace(vals, '.', '')) > 2;

6. select texts, 
	len(texts) - len(replace(texts, ' ', ''))
	from countspaces;

7. select 
  e.name as empname,
  e.salary as empsalary,
  m.name as manname,
  m.salary as mansalary
  from employee e
  join employee m on e.managerid = m.id
where e.salary > m.salary;

8. select employee_id, first_name, last_name, hire_date,
datediff(year, hire_date, getdate()) as years_worked from employees
where datediff(year, hire_date, getdate()) > 10
and datediff(year, hire_date, getdate()) < 15;

10

11.
















