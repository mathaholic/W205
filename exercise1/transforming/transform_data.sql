drop table hospital_qual;

create table hospital_qual as select
cast(hospitals.providerid as int) as providerid, 
hospitals.hospname as hospname, 
hospitals.hospstate as hospstate, 
hospitals.hosptype as hosptype, 
hospitals.ownership as ownership, 
hospitals.emergency as emergency, 
care.condition as condition, 
care.measureid as measureid, 
care.measurename as measurename, 
cast(care.score as float) as carescore
from hospitals
join care on cast(care.providerid as int) = cast(hospitals.providerid as int)
;


drop table avg_care;

create table avg_care as select
providerid, hospname, stddev(score) as sdscore, avg(score) as avgscore
from care
group by providerid, hospname
;


drop table care_surveys;

create table care_surveys as select
avg_care.providerid as providerid,
avg_care.hospname as hospname,
avg_care.sdscore as sdscore,
avg_care.avgscore as avgscore,
cast(surveys.hcahps_base as float) as hcahps_base,
cast(surveys.hcahps_consist as float) as hcahps_consist
from avg_care
join surveys on avg_care.providerid = surveys.providerid
;