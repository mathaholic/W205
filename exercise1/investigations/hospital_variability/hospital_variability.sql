select measureid, measurename, stddev(score) as stdscore, count(score) as num
from care
group by measureid, measurename
order by stdscore desc
limit 10
;

select measureid, measurename, stddev(score) as stdscore, count(score) as num
from care
group by measureid, measurename
having num > 20
order by stdscore desc
limit 10
;

