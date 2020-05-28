select distinct
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic,
yemets_gender.name as gender_name,
yemets_otdel.name as otdel_name
from college.yemets_user
inner join college.yemets_teacher on yemets_user.user_id=yemets_teacher.user_id
inner join college.yemets_gender on yemets_user.gender_id=yemets_gender.gender_id
inner join college.yemets_otdel on yemets_teacher.otdel_id=yemets_otdel.otdel_id
and yemets_teacher.otdel_id='1'