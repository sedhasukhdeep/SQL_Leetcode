SELECT MAX(salary) SecondHighestSalary
FROM (SELECT salary, dense_rank() OVER (ORDER BY salary DESC) as rnk FROM Employee) tmp
WHERE rnk = 2