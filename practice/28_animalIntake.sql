SELECT
animal_id
,name
,sex_upon_intake
from animal_ins
where NAME IN ('Lucy','Ella','Pickle','Rogan','Sabrina','Mitty')
order by animal_id;