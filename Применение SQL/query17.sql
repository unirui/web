select 
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic,
yemets_otdel.name
from college.yemets_graduate
inner join college.yemets_teacher on yemets_graduate.user_id=yemets_teacher.user_id
inner join college.yemets_user on yemets_teacher.user_id=yemets_user.user_id
inner join college.yemets_otdel on yemets_teacher.otdel_id=yemets_otdel.otdel_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_day on yemets_graduate_time.day_id=yemets_day.day_id
where yemets_day.day_id=6