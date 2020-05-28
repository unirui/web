select 
yemets_course.name as 'неизучаемый предмет'
from
college.yemets_course
left join college.yemets_graduate on (yemets_course.course_id=yemets_graduate.course_id)
where yemets_graduate.course_id is null
 
