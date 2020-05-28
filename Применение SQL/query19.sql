select 
yemets_course.name as course_name,
yemets_course.hours,
yemets_special.name as special_name,
yemets_otdel.name as otdel_name,
yemets_day.name as day_name
from college.yemets_otdel
inner join college.yemets_special on yemets_otdel.otdel_id = yemets_special.otdel_id
inner join college.yemets_course on yemets_special.special_id=yemets_course.special_id
inner join college.yemets_graduate on yemets_course.course_id=yemets_graduate.course_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_day on yemets_graduate_time.day_id=yemets_day.day_id
where yemets_day.name='Среда' or yemets_day.name='Пятница'
and yemets_otdel.name='Технические специальности'