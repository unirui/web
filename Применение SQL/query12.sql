select distinct
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic,
yemets_gender.name, 
yemets_lesson_num.time_lesson
from college.yemets_graduate
inner join college.yemets_student on yemets_graduate.gruppa_id=yemets_student.gruppa_id
inner join college.yemets_user on yemets_student.user_id=yemets_user.user_id
inner join college.yemets_gender on yemets_user.gender_id=yemets_gender.gender_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_lesson_num on yemets_graduate_time.lesson_num_id=yemets_lesson_num.lesson_num_id
where yemets_gender.gender_id=2
and yemets_lesson_num.time_lesson between '10:30:00' and '18:00:00'