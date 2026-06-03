-- ETAGE 3 : la requete principale (garde les cours au-dessus du seuil)
SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments 
ON enrollments.course_id = courses.id
GROUP BY courses.id
HAVING COUNT(*) > (

    -- ETAGE 2 : la moyenne des comptages (renvoie UN seul nombre)
    SELECT AVG(course_count)
    FROM (

        -- ETAGE 1 : nombre d'inscrits par cours (renvoie une liste)
        SELECT COUNT(*) AS course_count
        FROM enrollments
        GROUP BY course_id

    )
)
ORDER BY course_title;
