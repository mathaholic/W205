drop table hospital_qual;

create table hospital_qual AS
select
cast(hospitals.providerid as int) as providerid, hospitals.hospname as hospname, hospitals.hospstate as hospstate, hospitals.hosptype as hosptype, hospitals.ownership as ownership, hospitals.emergency as emergency, care.condition as condition, care.measureid as measureid, care.measurename as measurename, cast(care.score as float) as carescore, cast(readmissions.score as float) as readmitscore, cast(readmissions.lowest as float) as readmitlow, cast(readmissions.highest as float) as readmithigh, cast(surveys.hcahps_base as float) as survey_base, cast(surveys.hcahps_consist as float) as survey_consist, cast(hospvalue.performance_score as float) as perf_score
from hospitals
join care on cast(care.providerid as int) = cast(hospitals.providerid as int)
join readmissions on cast(readmissions.providerid as int) = cast(hospitals.providerid as int)
join surveys on surveys.hospname = hospitals.hospname
join hospvalue on hospvalue.hospname = hospitals.hospname


;
