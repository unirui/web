select yemets_special.name as 'специальность'
from college.yemets_special
inner join college.yemets_course on yemets_special.special_id=yemets_course.special_id
inner join college.yemets_graduate on yemets_course.course_id=yemets_graduate.course_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_lesson_num on yemets_graduate_time.lesson_num_id=yemets_lesson_num.lesson_num_id
inner join college.yemets_day on yemets_graduate_time.day_id=yemets_day.day_id
where yemets_day.name='Четверг' or yemets_day.name='Суббота'
and yemets_course.name is null
and yemets_lesson_num.time_lesson between '15:00:00' and '18:00:00'