select yemets_day.name as 'день недели',
count(*) as 'количество предметов'
from college.yemets_course
inner join college.yemets_graduate on yemets_course.course_id=yemets_graduate.course_id
inner join college.yemets_graduate_time on yemets_graduate.graduate_id=yemets_graduate_time.graduate_id
inner join college.yemets_day on yemets_graduate_time.day_id=yemets_day.day_id
group by yemets_day.name