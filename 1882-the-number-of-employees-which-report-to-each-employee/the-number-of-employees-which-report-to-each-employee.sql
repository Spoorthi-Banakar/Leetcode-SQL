select m.employee_id,m.name,
count(e.employee_id) as  reports_count,
round(avg(e.age),0) as average_age
from Employees e
join Employees m
on e.reports_to = m.employee_id
group by employee_id
order by employee_id