select abs(avg(score) - avg(hcahps_base)) as diff_scores
from care_surveys
order by diff_scores desc
limit 10
;

select corr(score,hcahps_base) as correlation
from care_surveys
order by correlation desc
limit 10;