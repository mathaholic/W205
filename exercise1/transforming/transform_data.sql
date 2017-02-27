drop table hospital_qual;

create table hospital_qual AS
select
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


drop table care_surveys;

create table care_surveys as
select
care.hospname as hospname,
care.hospstate as hospstate,
care.condition as condition,
cast(care.score as float) as score,
cast(surveys.hcahps_base as float) as hcahps_base,
cast(surveys.hcahps_consist as float) as hcahps_consist
from care
join surveys on surveys.hospname = care.hospname

;




