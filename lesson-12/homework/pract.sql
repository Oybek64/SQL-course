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



5.select  girls.parentname as g_parentname, girls.name as g_name, boys.parentname as b_parentname
from girls
left join boys on girls.parentname = boys.parentname
where boys.parentname is null

6. 

7.select cart1.item as Item_cart_1, cart2.item as Item_cart_2
  from Cart1
  full join cart2
  on cart1.item = cart2.item

8. SELECT customers.name
FROM Customers
LEFT JOIN Orders ON customers.id = orders.customerId
WHERE orders.customerId IS NULL;

9.

 
