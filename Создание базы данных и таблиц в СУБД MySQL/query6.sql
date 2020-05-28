select distinct
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic,
yemets_lesson_num.name as course_name,
yemets_course.hours,
yemets_gruppa.name as gruppa_name
from college.yemets_user
inner join college.yemets_graduate on yemets_user.user_id=yemets_graduate.user_id
inner join college.yemets_course on yemets_graduate.course_id=yemets_course.course_id
inner join college.yemets_gruppa on yemets_graduate.gruppa_id=yemets_gruppa.gruppa_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_lesson_num on yemets_graduate_time.lesson_num_id=yemets_lesson_num.lesson_num_id
where yemets_lesson_num.time_lesson between "8:30:00" and "15:00:00"