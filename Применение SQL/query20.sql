select
yemets_otdel.name as otdel_name,
yemets_lesson_num.time_lesson,
yemets_day.name as day_name
from college.yemets_graduate
 inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_lesson_num on yemets_graduate_time.lesson_num_id=yemets_lesson_num.lesson_num_id
inner join college.yemets_day on yemets_graduate_time.day_id=yemets_day.day_id
inner join college.yemets_teacher on yemets_graduate.user_id=yemets_teacher.user_id
inner join college.yemets_otdel on yemets_teacher.otdel_id=yemets_otdel.otdel_id
where yemets_lesson_num.time_lesson between '9:00:00' and '12:00:00'
and yemets_day.name='Вторник'