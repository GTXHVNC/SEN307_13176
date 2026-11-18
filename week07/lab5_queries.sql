USE sen307_VUG_SEN_24_13176;

SELECT
    s.full_name,
    s.matric_no,
    d.dept_name
FROM Student s
INNER JOIN Department d
    ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Software Engineering'
ORDER BY s.full_name ASC;

SELECT
    c.course_code,
    c.course_title,
    l.full_name AS lecturer_name
FROM Course c
INNER JOIN CourseAllocation ca
    ON c.course_id = ca.course_id
INNER JOIN Lecturer l
    ON ca.lecturer_id = l.lecturer_id
ORDER BY c.course_code ASC;

SELECT
    s.full_name,
    s.matric_no,
    c.course_title
FROM Student s
LEFT JOIN Enrolment e
    ON s.student_id = e.student_id
LEFT JOIN Course c
    ON e.course_id = c.course_id
ORDER BY s.full_name ASC;

SELECT
    s.full_name,
    s.matric_no,
    c.course_title
FROM Student s
LEFT JOIN Enrolment e
    ON s.student_id = e.student_id
LEFT JOIN Course c
    ON e.course_id = c.course_id
WHERE c.course_title IS NULL
ORDER BY s.full_name ASC;

SELECT
    s.full_name,
    s.matric_no,
    s.gender,
    s.date_of_birth,
    d.dept_name
FROM Student s
INNER JOIN Department d
    ON s.dept_id = d.dept_id
WHERE s.gender = 'F'
  AND d.dept_name IN (
      'Software Engineering',
      'Artificial Intelligence'
  )
  AND s.date_of_birth BETWEEN '2004-01-01' AND '2005-12-31'
ORDER BY s.full_name ASC;

SELECT *
FROM Enrolment
ORDER BY enrolment_id ASC
LIMIT 10 OFFSET 0;

SELECT *
FROM Enrolment
ORDER BY enrolment_id ASC
LIMIT 10 OFFSET 10;

SELECT
    s.full_name,
    s.matric_no,
    c.course_title
FROM Enrolment e
RIGHT JOIN Student s
    ON e.student_id = s.student_id
LEFT JOIN Course c
    ON e.course_id = c.course_id
ORDER BY s.full_name ASC;
