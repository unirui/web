/*18. Получить список всех студентов которые обучаются дисциплинам у которых более 12
часов времени обучения с указанием Ф.И.О студента, названия группы и названия
специальности.*/
select distinct
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic,
yemets_gruppa.name as group_name,
yemets_special.name as 'специальность'
from college.yemets_graduate
inner join college.yemets_course on yemets_graduate.course_id=yemets_course.course_id
inner join college.yemets_special on yemets_course.special_id=yemets_special.special_id
inner join college.yemets_gruppa on yemets_graduate.gruppa_id=yemets_gruppa.gruppa_id
inner join college.yemets_student on yemets_gruppa.gruppa_id=yemets_student.gruppa_id
inner join college.yemets_user on yemets_student.user_id=yemets_user.user_id
where yemets_course.hours>12
