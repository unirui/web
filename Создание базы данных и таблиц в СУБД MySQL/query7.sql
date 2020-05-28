select
yemets_otdel.name,
count(*) as students_at_college
from college.yemets_user
inner join college.yemets_student on yemets_user.user_id=yemets_student.user_id
inner join college.yemets_gruppa on yemets_student.gruppa_id=yemets_gruppa.gruppa_id
inner join college.yemets_special on yemets_gruppa.special_id=yemets_special.special_id
inner join college.yemets_otdel on yemets_special.otdel_id=yemets_otdel.otdel_id
group by yemets_otdel.otdel_id