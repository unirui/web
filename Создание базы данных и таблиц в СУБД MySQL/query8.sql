select
yemets_gruppa.name,
count(*) as 'количествo предметов'
from  college.yemets_course
inner join college.yemets_graduate on yemets_course.course_id=yemets_graduate.course_id
inner join college.yemets_gruppa on yemets_graduate.gruppa_id=yemets_gruppa.gruppa_id
group by yemets_graduate.gruppa_id
