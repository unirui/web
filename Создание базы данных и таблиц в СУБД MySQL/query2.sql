select distinct
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic,
yemets_gruppa.name as group_name,
yemets_special.name as special_name
from college.yemets_user
inner join college.yemets_student on yemets_user.user_id=yemets_student.user_id
inner join college.yemets_gruppa on yemets_student.gruppa_id=yemets_gruppa.gruppa_id
inner join college.yemets_special on yemets_gruppa.special_id=yemets_special.special_id
inner join college.yemets_otdel on yemets_special.otdel_id=yemets_otdel.otdel_id
where yemets_otdel.otdel_id='1'