select distinct
yemets_gruppa.name,
yemets_gruppa.date_begin,
yemets_gruppa.date_end
from college.yemets_gruppa
inner join college.yemets_special on yemets_gruppa.special_id=yemets_special.special_id
inner join college.yemets_otdel on yemets_special.otdel_id=yemets_otdel.otdel_id
where yemets_otdel.name='Информационные системы'