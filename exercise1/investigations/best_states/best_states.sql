select hospstate, avg(carescore) as avgscore, count(carescore) as num
from hospital_qual
group by hospstate
order by avgscore desc
limit 10
;

select hospstate, avg(performance_score) as avgscore
from hospvalue
group by hospstate
order by avgscore desc
limit 10;