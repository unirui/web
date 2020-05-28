select distinct
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic,
yemets_gruppa.name
from college.yemets_graduate
inner join college.yemets_user on yemets_graduate.user_id=yemets_user.user_id
inner join college.yemets_course on yemets_graduate.course_id=yemets_course.course_id
inner join college.yemets_gruppa on yemets_graduate.gruppa_id=yemets_gruppa.gruppa_id
where yemets_graduate.course_id='4'