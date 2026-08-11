select e.name
from Employee e
join Employee m
on e.id=m.managerId
group by e.id,e.name
having count(e.id)>=5;
