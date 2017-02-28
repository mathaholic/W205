select corr(avgscore,hcahps_base) as avg_base_corr,
corr(avgscore,hcahps_consist) as avg_consist_corr,
corr(sdscore,hcahps_base) as sd_base_corr,
corr(sdscore,hcahps_consist) as sd_consist_corr
from care_surveys
;