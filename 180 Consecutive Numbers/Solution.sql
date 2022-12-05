Select num as ConsecutiveNums from
(SELECT lag(num) over (order by id) as before, num, lead(num) over (order by id) as after
FROM Logs) tmp
Where tmp.before = num and tmp.after=num
Group by num