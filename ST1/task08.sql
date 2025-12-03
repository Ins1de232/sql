SELECT order_date, concat(p.name, ' (age:', p.age, ')') as person_information from person_order po
NATURAL JOIN person p  
ORDER BY order_date ASC, person_information ASC