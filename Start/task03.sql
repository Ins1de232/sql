SELECT distinct person_id from person_visits 
WHERE (visit_date between '2022-01-06' and '2022-01-09') or (pizzeria_id = 2)
ORDER BY person_id desc 