select distinct
yemets_course.name as 'предмет',
yemets_course.hours as 'часы',
yemets_special.name as 'специальность'
from college.yemets_otdel
inner join college.yemets_special on yemets_otdel.otdel_id=yemets_special.otdel_id
inner join college.yemets_course on yemets_special.special_id=yemets_course.special_id
where yemets_otdel.name='Технические специальности'