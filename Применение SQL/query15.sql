select 
yemets_day.name as day_name,
yemets_course.name as course_name
from college.yemets_day
left join college.yemets_graduate_time on yemets_day.day_id=yemets_graduate_time.day_id
left join college.yemets_graduate on yemets_graduate_time.graduate_id=yemets_graduate.graduate_id
left join college.yemets_course on yemets_graduate.course_id=yemets_course.course_id
where yemets_course.name is null
