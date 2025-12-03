SELECT
    id,
    name,
    CASE
        WHEN age > 18 AND age < 30 THEN 'young adult'
        WHEN age >= 30 AND age < 40 THEN 'adult'
        WHEN age >= 40 THEN 'senior adult'
        ELSE NULL
    END AS interval
FROM person
ORDER BY interval ASC;
