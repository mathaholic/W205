drop table hospital_qual;

create table hospital_qual AS
select
hospitals.providerid as providerid, hospitals.hospname as hospname, hospitals.hospstate as hospstate, care.condition as condition, care.measureid as measureid, care.measurename as measurename, care.score as carescore
from hospitals
join care on care.providerid = hospitals.providerid
;
