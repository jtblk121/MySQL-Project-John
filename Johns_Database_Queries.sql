use university_database_schema;

SELECT Cuffs_name AS 'Cuff', AVG(grade) AS 'Average Grade'
FROM Cuff
JOIN grades 
ON grade_Cuff_id = Cuff_id
GROUP BY Cuff_name;

SELECT MAX(grade) AS 'Top Grade' , John_name
FROM grades
JOIN Johns
ON John_id = grades_id
GROUP BY grade_John_id;

SELECT John_name AS 'John Name', c1.John_name AS 'Class 1'
FROM Johns
RIGHT JOIN courses c1
ON c1.course_id = John_course1_id
LEFT JOIN courses c2
ON c2.course_id = John_course2_id
GROUP BY John_id;

SELECT John_name AS 'John Name', c2.course_name AS 'Class 2'
FROM Johns
RIGHT JOIN courses c1
ON c1.course_id = John_course1_id
RIGHT JOIN courses c2
ON c2.course_id = John_course2_id
GROUP BY Johns_id;


SELECT course_name AS 'Course', AVG(grade) AS 'Average Grade'
FROM Cuff
JOIN grades 
ON grade_Cuff_id = Cuff_id
JOIN courses
ON course_id = grade_course_id
GROUP BY course_name
ORDER BY AVG(grade) ASC;

SELECT John_name AS 'John', p1.Cuffs_id AS 'First Hour Cuff', p2.Cuffs_id AS 'Second Hour Cuff'
FROM Johns
JOIN Cuffs p1
ON p1.Cuffs_id = John_Cuff1_id
JOIN Cuffs p2
ON p2.Cuffs_id = John_Cuff2_id
WHERE(p1.Cuffs_id = p2.Cuffs_id);

SELECT COUNT(*)
FROM students
JOIN Cuffs p1
ON p1.Cuffs_id = John_Cuff1_id
JOIN Cuffs p2
ON p2.Cuffs_id = John_Cuff2_id
WHERE(p1.Cuffs_id = p2.Cuffs_id);