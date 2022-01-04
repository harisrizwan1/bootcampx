SELECT cohorts.name, count(*) AS total_students
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY total_students ASC
;