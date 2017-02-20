select providerid, hospname, avg(carescore) as avgscore
from hospital_qual
group by providerid,hospname
order by avgscore desc
limit 10
;
