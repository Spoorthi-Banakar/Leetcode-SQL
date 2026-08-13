select query_name,
Round(Avg(rating*1.0/position),2) as quality,
Round(SUM(case when rating< 3 then 1 else 0 end)*100/count(*),2) as poor_query_percentage
from Queries
Group By query_name;

