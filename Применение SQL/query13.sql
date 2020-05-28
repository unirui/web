select 
yemets_course.name,
yemets_lesson_num.time_lesson
from college.yemets_graduate
inner join college.yemets_course on yemets_graduate.course_id=yemets_course.course_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_lesson_num on yemets_graduate_time.lesson_num_id=yemets_lesson_num.lesson_num_id
where yemets_lesson_num.time_lesson between '12:30:00' and '18:30:00'
