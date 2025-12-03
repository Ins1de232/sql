SELECT object_name from (select pizza_name as object_name, 2 as sort from menu
union all
SELECT name as object_name, 1 as sort from person)
ORDER BY sort, object_name 