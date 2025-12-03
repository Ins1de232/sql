SELECT 
    (SELECT name FROM person WHERE id = po.person_id) AS person_name,
    (SELECT pizza_name FROM menu WHERE id = po.menu_id) AS pizza_name,
    (SELECT name FROM pizzeria WHERE id = (
        SELECT pizzeria_id FROM menu WHERE id = po.menu_id
    )) AS pizzeria_name
FROM 
    person_order po
ORDER BY 
    person_name ASC, pizza_name ASC;