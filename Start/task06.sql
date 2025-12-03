SELECT DISTINCT
    person.name
FROM person
WHERE EXISTS (
    SELECT 1  
    FROM person_order
    WHERE person_order.person_id = person.menu_id
      AND person_order.menu_id IN (13, 14, 18) 
      AND person_order.order_date = '2022-01-07'
)
ORDER BY person.name;
