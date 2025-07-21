1. select firstname, lastname, city, state 
   from person
   left join address on person.personid = address.personid; 

2.select emp1.name as emp_name
  from employee emp1
  join employee emp2 on emp1.managerid = emp2.id
  where emp1.salary > emp2.salary;

3.select email
  from person
  group by email
  having count(email) > 1

4. 

 
