select hospstate, avg(carescore) as avgscore
from hospital_qual
group by hospstate
order by avgscore desc
limit 10
;

