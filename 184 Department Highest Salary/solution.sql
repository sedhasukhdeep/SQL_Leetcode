SELECT c.Department, c.Employee, c.Salary
FROM
    (SELECT d.Name as 'Department'
        , e.Name as 'Employee'
        , e.Salary as 'Salary'
        , rank() over(PARTITION by d.Name ORDER BY Salary DESC) as 'rank'
    FROM Employee e JOIN Department d on e.DepartmentId=d.Id) as c
    
WHERE rank=1