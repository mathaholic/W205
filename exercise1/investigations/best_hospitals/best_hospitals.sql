select providerid, hospname, avg(carescore) as avgscore
from hospital_qual
group by providerid,hospname
order by avgscore desc
limit 10
;

select providerid, hospname, avg(carescore) as avgscore, count(carescore) as num 
from hospital_qual 
group by providerid, hospname
order by avgscore desc
limit 10;

select providerid, hospname, avg(carescore) as avgscore, count(carescore) as num
from hospital_qual
group by providerid, hospname
having num > 20
order by avgscore desc
limit 10;


select providerid, hospname, performance_score
from hospvalue
order by performance_score desc
limit 10;
