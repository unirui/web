select 
yemets_special.name as 'специальность'
from college.yemets_graduate
inner join college.yemets_course on yemets_graduate.course_id=yemets_course.course_id
inner join college.yemets_special on yemets_course.special_id=yemets_special.special_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_day on yemets_graduate_time.day_id=yemets_day.day_id
where yemets_day.day_id='2'