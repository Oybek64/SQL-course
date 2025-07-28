1. select top 1 concat(Employee_ID, '-', First_Name, ' ', Last_Name) from employees
order by employee_id;

2. update employees
set phone_number = replace(phone_number, '124', '999');	

3. select first_name, len(first_name) as string_length
from employees
where first_name like '[AJM]%'
order by first_name;

4. select manager_id, sum(salary) as total from employees
group by manager_id;

5. select 
       year1,
	   max(M.Sal) as max_value
	   from 
	   testmax
cross apply (values (max1), (max2), (max3)) M(sal)
group by year1;

6. select id, movie, description
from cinema
where id%2 = 1
and description <> 'boring';.

7. SELECT *
FROM SingleOrder
ORDER BY 
    CASE WHEN Id = 0 THEN 1 ELSE 0 END, Id;

8. select id, coalesce(ssn, passportid, itin) as first_non_null from person;

9. 






  
