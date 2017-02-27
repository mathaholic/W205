select providerid, hospname, variance(carescore) as varscore
from hospital_qual
group by providerid,hospname
order by varscore desc
limit 10
;

