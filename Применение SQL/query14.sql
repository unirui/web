select 
yemets_user.lastname,
yemets_user.firstname,
yemets_user.patronomic
from college.yemets_graduate
inner join college.yemets_student on yemets_graduate.gruppa_id=yemets_student.gruppa_id
inner join college.yemets_user on yemets_student.user_id=yemets_user.user_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_day on yemets_graduate_time.day_id=yemets_day.day_id
where yemets_day.day_id='5'