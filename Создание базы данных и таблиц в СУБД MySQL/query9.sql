select distinct
yemets_user.lastname as 'фамилия',
yemets_user.firstname as 'имя',
yemets_user.patronomic as 'отчество',
yemets_graduate.course_id as 'дисциплина'
from college.yemets_graduate
right join college.yemets_teacher on yemets_graduate.user_id=yemets_teacher.user_id
inner join college.yemets_user on yemets_teacher.user_id = yemets_user.user_id
where yemets_graduate.course_id is null