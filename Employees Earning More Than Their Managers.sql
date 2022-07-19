SELECT name as Employee FROM employee e 
WHERE e.salary > (SELECT salary from employee WHERE e.managerid=id)
