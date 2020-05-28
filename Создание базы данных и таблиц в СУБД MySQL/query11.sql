select 
yemets_special.name as 'специальность без дисциплины'
from college.yemets_special
left join college.yemets_course on yemets_special.special_id=yemets_course.special_id
where yemets_course.special_id is null