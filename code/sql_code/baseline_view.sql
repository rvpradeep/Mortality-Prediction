create view baselinefeatures_pvairamani3 as
(select intermediatefeatures_pvairamani3.subject_id, intermediatefeatures_pvairamani3.age, intermediatefeatures_pvairamani3.gender, SAPSII_pvairamani3.sapsii, intermediatefeatures_pvairamani3.expire_flag 
from intermediatefeatures_pvairamani3 inner join SAPSII_pvairamani3
on intermediatefeatures_pvairamani3.hadm_id = SAPSII_pvairamani3.hadm_id
where intermediatefeatures_pvairamani3.mostrecent = 1)