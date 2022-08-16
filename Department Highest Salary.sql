SELECT d.name AS Department, e.name AS Employee, e.Salary AS Salary
FROM Employee e
LEFT JOIN Department d 
ON e.departmentID = d.id 
WHERE (d.id, e.salary) in (select departmentId, max(salary) from Employee group by departmentId)
